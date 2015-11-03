; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

%struct._GUID = type { i64, i16, i16, [8 x i8] }
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
%struct.__anonstruct_WMIGUIDREGINFO_130 = type { %struct._GUID*, i64, i64 }
%struct._DEVICE_EXTENSION = type { %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT*, i64, [8 x i16], i64, %struct._DISK_PERFORMANCE*, %union._LARGE_INTEGER, i64, i64, %struct._KEVENT, i64, %struct._UNICODE_STRING, [64 x i16], %struct._WMILIB_CONTEXT }
%struct._DISK_PERFORMANCE = type { %union._LARGE_INTEGER, %union._LARGE_INTEGER, %union._LARGE_INTEGER, %union._LARGE_INTEGER, %union._LARGE_INTEGER, i64, i64, i64, i64, %union._LARGE_INTEGER, i64, [8 x i16] }
%struct._WMILIB_CONTEXT = type { i64, %struct.__anonstruct_WMIGUIDREGINFO_130*, i64 (%struct._DEVICE_OBJECT*, i64*, %struct._UNICODE_STRING*, %struct._UNICODE_STRING**, %struct._UNICODE_STRING*, %struct._DEVICE_OBJECT**)*, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i64, i64, i64, i64*, i64, i8*)*, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i64, i64, i64, i8*)*, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i64, i64, i64, i64, i8*)*, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i64, i64, i64, i64, i64, i8*)*, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i64, i32, i8)* }
%struct.__anonstruct_Overlay_48 = type { %union.__anonunion____missing_field_name_49, %struct._ETHREAD*, i8*, %struct.__anonstruct____missing_field_name_51, %struct._FILE_OBJECT* }
%union.__anonunion____missing_field_name_49 = type { %struct._KDEVICE_QUEUE_ENTRY }
%struct._ETHREAD = type opaque
%struct.__anonstruct____missing_field_name_51 = type { %struct._LIST_ENTRY, %union.__anonunion____missing_field_name_52 }
%union.__anonunion____missing_field_name_52 = type { %struct._IO_STACK_LOCATION* }
%struct._IO_STACK_LOCATION = type <{ i8, i8, i8, i8, %union.__anonunion_Parameters_55, %struct._DEVICE_OBJECT*, %struct._FILE_OBJECT*, {}*, i8* }>
%union.__anonunion_Parameters_55 = type { %struct.__anonstruct_Read_57 }
%struct.__anonstruct_Read_57 = type { i64, i64, %union._LARGE_INTEGER }
%struct.__anonstruct_DeviceIoControl_64 = type { i64, i64, i64, i8* }
%struct._IO_ERROR_LOG_PACKET = type { i8, i8, i16, i16, i16, i16, i64, i64, i64, i64, i64, %union._LARGE_INTEGER, [1 x i64] }
%struct._WMI_DISK_PERFORMANCE = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i16] }
%struct._STORAGE_DEVICE_NUMBER = type { i64, i64, i64 }
%struct._MOUNTDEV_NAME = type { i16, [1 x i16] }
%struct._VOLUME_NUMBER = type { i64, [8 x i16] }
%struct._FAST_MUTEX = type { i64, %struct._KTHREAD*, i64, %struct._KEVENT, i64 }
%struct._CONFIGURATION_INFORMATION = type { i64, i64, i64, i64, i64, i64, i64, i8, i8, i64, i64 }
%struct._KEY_VALUE_FULL_INFORMATION = type { i64, i64, i64, i64, i64, [1 x i16] }
%struct._OBJECT_TYPE = type opaque
%struct._OBJECT_HANDLE_INFORMATION = type { i64, i64 }
%struct._OBJECT_ATTRIBUTES = type { i64, i8*, %struct._UNICODE_STRING*, i64, i8*, i8* }
%struct._CLIENT_ID = type { i8*, i8* }
%struct._STRING = type { i16, i16, i8* }
%struct._RTL_QUERY_REGISTRY_TABLE = type { i64 (i16*, i64, i8*, i64, i8*, i8*)*, i64, i16*, i8*, i64, i8*, i64 }

@DiskClassGuid = constant %struct._GUID { i64 1408590599, i16 -18753, i16 4560, [8 x i8] c"\94\F2\00\A0\C9\1E\FB\8B" }, align 8
@CdRomClassGuid = constant %struct._GUID { i64 1408590600, i16 -18753, i16 4560, [8 x i8] c"\94\F2\00\A0\C9\1E\FB\8B" }, align 8
@PartitionClassGuid = constant %struct._GUID { i64 1408590602, i16 -18753, i16 4560, [8 x i8] c"\94\F2\00\A0\C9\1E\FB\8B" }, align 8
@TapeClassGuid = constant %struct._GUID { i64 1408590603, i16 -18753, i16 4560, [8 x i8] c"\94\F2\00\A0\C9\1E\FB\8B" }, align 8
@WriteOnceDiskClassGuid = constant %struct._GUID { i64 1408590604, i16 -18753, i16 4560, [8 x i8] c"\94\F2\00\A0\C9\1E\FB\8B" }, align 8
@VolumeClassGuid = constant %struct._GUID { i64 1408590605, i16 -18753, i16 4560, [8 x i8] c"\94\F2\00\A0\C9\1E\FB\8B" }, align 8
@MediumChangerClassGuid = constant %struct._GUID { i64 1408590608, i16 -18753, i16 4560, [8 x i8] c"\94\F2\00\A0\C9\1E\FB\8B" }, align 8
@FloppyClassGuid = constant %struct._GUID { i64 1408590609, i16 -18753, i16 4560, [8 x i8] c"\94\F2\00\A0\C9\1E\FB\8B" }, align 8
@CdChangerClassGuid = constant %struct._GUID { i64 1408590610, i16 -18753, i16 4560, [8 x i8] c"\94\F2\00\A0\C9\1E\FB\8B" }, align 8
@StoragePortClassGuid = constant %struct._GUID { i64 718077536, i16 -16080, i16 4562, [8 x i8] c"\B0\82\00\A0\C9\1E\FB\8B" }, align 8
@MOUNTDEV_MOUNTED_DEVICE_GUID = constant %struct._GUID { i64 1408590605, i16 -18753, i16 4560, [8 x i8] c"\94\F2\00\A0\C9\1E\FB\8B" }, align 8
@MSWmi_MofData_GUID = constant %struct._GUID { i64 93327905, i16 -10906, i16 4561, [8 x i8] c"\B2\F0\00\A0\C9\06)\10" }, align 8
@MSWmi_ProviderInfo_GUID = constant %struct._GUID { i64 3351197136, i16 -21797, i16 4561, [8 x i8] c"\BFJ\00\A0\C9\06)\10" }, align 8
@MSWmi_PnPDeviceId_GUID = constant %struct._GUID { i64 3351197138, i16 -21797, i16 4561, [8 x i8] c"\BFJ\00\A0\C9\06)\10" }, align 8
@MSWmi_PnPInstanceNames_GUID = constant %struct._GUID { i64 3351197139, i16 -21797, i16 4561, [8 x i8] c"\BFJ\00\A0\C9\06)\10" }, align 8
@MSSmBios_RawSMBiosTables_GUID = constant %struct._GUID { i64 2405959760, i16 -23164, i16 4561, [8 x i8] c"\BF8\00\A0\C9\06)\10" }, align 8
@MSPower_DeviceEnable_GUID = constant %struct._GUID { i64 2189167215, i16 -336, i16 4560, [8 x i8] c"\BD&\00\AA\00\B7\B3*" }, align 8
@MSPower_DeviceWakeEnable_GUID = constant %struct._GUID { i64 2840881794, i16 -336, i16 4560, [8 x i8] c"\BD&\00\AA\00\B7\B3*" }, align 8
@MSNdis_NetworkAddress_GUID = constant %struct._GUID { i64 3049101495, i16 513, i16 4561, [8 x i8] c"\A5\0E\00\A0\C9\06)\10" }, align 8
@MSNdis_NetworkShortAddress_GUID = constant %struct._GUID { i64 3049101496, i16 513, i16 4561, [8 x i8] c"\A5\0E\00\A0\C9\06)\10" }, align 8
@MSNdis_NetworkLinkSpeed_GUID = constant %struct._GUID { i64 1627155287, i16 3942, i16 4561, [8 x i8] c"\96\A7\00\C0O\C35\8C" }, align 8
@MSNdis_EnumerateAdapter_GUID = constant %struct._GUID { i64 2552180095, i16 -19981, i16 4560, [8 x i8] c"\8D\D7\00\C0O\C35\8C" }, align 8
@MSNdis_NotifyAdapterRemoval_GUID = constant %struct._GUID { i64 2552180096, i16 -19981, i16 4560, [8 x i8] c"\8D\D7\00\C0O\C35\8C" }, align 8
@MSNdis_NotifyAdapterArrival_GUID = constant %struct._GUID { i64 2552180097, i16 -19981, i16 4560, [8 x i8] c"\8D\D7\00\C0O\C35\8C" }, align 8
@MSNdis_NdisEnumerateVc_GUID = constant %struct._GUID { i64 2552180098, i16 -19981, i16 4560, [8 x i8] c"\8D\D7\00\C0O\C35\8C" }, align 8
@MSNdis_NotifyVcRemoval_GUID = constant %struct._GUID { i64 2552180089, i16 -19981, i16 4560, [8 x i8] c"\8D\D7\00\C0O\C35\8C" }, align 8
@MSNdis_NotifyVcArrival_GUID = constant %struct._GUID { i64 405773836, i16 -19981, i16 4560, [8 x i8] c"\8D\D7\00\C0O\C35\8C" }, align 8
@MSNdis_HardwareStatus_GUID = constant %struct._GUID { i64 1589707604, i16 -23014, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_MediaSupported_GUID = constant %struct._GUID { i64 1589707605, i16 -23014, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_MediaInUse_GUID = constant %struct._GUID { i64 1589707606, i16 -23014, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_MaximumLookahead_GUID = constant %struct._GUID { i64 1589707607, i16 -23014, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_MaximumFrameSize_GUID = constant %struct._GUID { i64 1589707608, i16 -23014, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_LinkSpeed_GUID = constant %struct._GUID { i64 1589707609, i16 -23014, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_TransmitBufferSpace_GUID = constant %struct._GUID { i64 1589707610, i16 -23014, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_ReceiveBufferSpace_GUID = constant %struct._GUID { i64 1589707611, i16 -23014, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_TransmitBlockSize_GUID = constant %struct._GUID { i64 1589707612, i16 -23014, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_ReceiveBlockSize_GUID = constant %struct._GUID { i64 1589707613, i16 -23014, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_VendorID_GUID = constant %struct._GUID { i64 1589707614, i16 -23014, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_VendorDescription_GUID = constant %struct._GUID { i64 1589707615, i16 -23014, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_CurrentPacketFilter_GUID = constant %struct._GUID { i64 1589707616, i16 -23014, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_CurrentLookahead_GUID = constant %struct._GUID { i64 1589707617, i16 -23014, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_DriverVersion_GUID = constant %struct._GUID { i64 1589707618, i16 -23014, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_MaximumTotalSize_GUID = constant %struct._GUID { i64 1589707619, i16 -23014, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_MacOptions_GUID = constant %struct._GUID { i64 1589707621, i16 -23014, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_MediaConnectStatus_GUID = constant %struct._GUID { i64 1589707622, i16 -23014, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_MaximumSendPackets_GUID = constant %struct._GUID { i64 1589707623, i16 -23014, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_VendorDriverVersion_GUID = constant %struct._GUID { i64 1148802809, i16 -23013, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_TransmitsOk_GUID = constant %struct._GUID { i64 1148802810, i16 -23013, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_ReceivesOk_GUID = constant %struct._GUID { i64 1148802811, i16 -23013, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_TransmitsError_GUID = constant %struct._GUID { i64 1148802812, i16 -23013, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_ReceiveError_GUID = constant %struct._GUID { i64 1148802813, i16 -23013, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_ReceiveNoBuffer_GUID = constant %struct._GUID { i64 1148802814, i16 -23013, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_CoHardwareStatus_GUID = constant %struct._GUID { i64 2031800722, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_CoMediaSupported_GUID = constant %struct._GUID { i64 2031800723, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_CoMediaInUse_GUID = constant %struct._GUID { i64 2031800724, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_CoLinkSpeed_GUID = constant %struct._GUID { i64 2031800725, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_CoVendorId_GUID = constant %struct._GUID { i64 2031800726, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_CoVendorDescription_GUID = constant %struct._GUID { i64 2031800727, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_CoDriverVersion_GUID = constant %struct._GUID { i64 2031800728, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_CoMacOptions_GUID = constant %struct._GUID { i64 2031800730, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_CoMediaConnectStatus_GUID = constant %struct._GUID { i64 2031800731, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_CoVendorDriverVersion_GUID = constant %struct._GUID { i64 2031800732, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_CoMinimumLinkSpeed_GUID = constant %struct._GUID { i64 2031800733, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_CoTransmitPdusOk_GUID = constant %struct._GUID { i64 169953285, i16 -7329, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_CoReceivePdusOk_GUID = constant %struct._GUID { i64 169953286, i16 -7329, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_CoTransmitPduErrors_GUID = constant %struct._GUID { i64 169953287, i16 -7329, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_CoReceivePduErrors_GUID = constant %struct._GUID { i64 169953288, i16 -7329, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_CoReceivePdusNoBuffer_GUID = constant %struct._GUID { i64 169953289, i16 -7329, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_AtmSupportedVcRates_GUID = constant %struct._GUID { i64 2031800734, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_AtmSupportedServiceCategory_GUID = constant %struct._GUID { i64 2031800735, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_AtmSupportedAalTypes_GUID = constant %struct._GUID { i64 2031800736, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_AtmHardwareCurrentAddress_GUID = constant %struct._GUID { i64 2031800737, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_AtmMaxActiveVcs_GUID = constant %struct._GUID { i64 2031800738, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_AtmMaxActiveVciBits_GUID = constant %struct._GUID { i64 2031800739, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_AtmMaxActiveVpiBits_GUID = constant %struct._GUID { i64 2031800740, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_AtmMaxAal0PacketSize_GUID = constant %struct._GUID { i64 2031800741, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_AtmMaxAal1PacketSize_GUID = constant %struct._GUID { i64 2031800742, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_AtmMaxAal34PacketSize_GUID = constant %struct._GUID { i64 2031800743, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_AtmMaxAal5PacketSize_GUID = constant %struct._GUID { i64 2031800721, i16 -7332, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_AtmReceiveCellsOk_GUID = constant %struct._GUID { i64 169953290, i16 -7329, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_AtmTransmitCellsOk_GUID = constant %struct._GUID { i64 169953291, i16 -7329, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_AtmReceiveCellsDropped_GUID = constant %struct._GUID { i64 169953292, i16 -7329, i16 4560, [8 x i8] c"\96\92\00\C0O\C35\8C" }, align 8
@MSNdis_EthernetPermanentAddress_GUID = constant %struct._GUID { i64 1148802815, i16 -23013, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_EthernetCurrentAddress_GUID = constant %struct._GUID { i64 1148802816, i16 -23013, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_EthernetMulticastList_GUID = constant %struct._GUID { i64 1148802817, i16 -23013, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_EthernetMaximumMulticastListSize_GUID = constant %struct._GUID { i64 1148802818, i16 -23013, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_EthernetMacOptions_GUID = constant %struct._GUID { i64 1148802819, i16 -23013, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_EthernetReceiveErrorAlignment_GUID = constant %struct._GUID { i64 1148802820, i16 -23013, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_EthernetOneTransmitCollision_GUID = constant %struct._GUID { i64 1148802821, i16 -23013, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_EthernetMoreTransmitCollisions_GUID = constant %struct._GUID { i64 1148802822, i16 -23013, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_TokenRingPermanentAddress_GUID = constant %struct._GUID { i64 1148802823, i16 -23013, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_TokenRingCurrentAddress_GUID = constant %struct._GUID { i64 1148802824, i16 -23013, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_TokenRingCurrentFunctional_GUID = constant %struct._GUID { i64 1148802825, i16 -23013, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_TokenRingCurrentGroup_GUID = constant %struct._GUID { i64 1148802826, i16 -23013, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_TokenRingLastOpenStatus_GUID = constant %struct._GUID { i64 1148802827, i16 -23013, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_TokenRingCurrentRingStatus_GUID = constant %struct._GUID { i64 2299148012, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_TokenRingCurrentRingState_GUID = constant %struct._GUID { i64 2901491762, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_TokenRingLineErrors_GUID = constant %struct._GUID { i64 2901491763, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_TokenRingLostFrames_GUID = constant %struct._GUID { i64 2901491764, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_FddiLongPermanentAddress_GUID = constant %struct._GUID { i64 2901491765, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_FddiLongCurrentAddress_GUID = constant %struct._GUID { i64 2901491766, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_FddiLongMulticastList_GUID = constant %struct._GUID { i64 2901491767, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_FddiLongMaximumListSize_GUID = constant %struct._GUID { i64 2901491768, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_FddiShortPermanentAddress_GUID = constant %struct._GUID { i64 2901491769, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_FddiShortCurrentAddress_GUID = constant %struct._GUID { i64 2901491770, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_FddiShortMulticastList_GUID = constant %struct._GUID { i64 2901491771, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_FddiShortMaximumListSize_GUID = constant %struct._GUID { i64 2901491772, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_FddiAttachmentType_GUID = constant %struct._GUID { i64 2901491773, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_FddiUpstreamNodeLong_GUID = constant %struct._GUID { i64 2901491774, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_FddiDownstreamNodeLong_GUID = constant %struct._GUID { i64 2901491775, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_FddiFrameErrors_GUID = constant %struct._GUID { i64 2901491776, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_FddiFramesLost_GUID = constant %struct._GUID { i64 2901491777, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_FddiRingManagmentState_GUID = constant %struct._GUID { i64 2901491778, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_FddiLctFailures_GUID = constant %struct._GUID { i64 2901491779, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_FddiLemRejects_GUID = constant %struct._GUID { i64 2901491780, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_FddiLConnectionState_GUID = constant %struct._GUID { i64 2901491781, i16 -23012, i16 4560, [8 x i8] c"\8D\D4\00\C0O\C35\8C" }, align 8
@MSNdis_StatusResetStart_GUID = constant %struct._GUID { i64 2552180086, i16 -19981, i16 4560, [8 x i8] c"\8D\D7\00\C0O\C35\8C" }, align 8
@MSNdis_StatusResetEnd_GUID = constant %struct._GUID { i64 2552180087, i16 -19981, i16 4560, [8 x i8] c"\8D\D7\00\C0O\C35\8C" }, align 8
@MSNdis_StatusMediaConnect_GUID = constant %struct._GUID { i64 2552180093, i16 -19981, i16 4560, [8 x i8] c"\8D\D7\00\C0O\C35\8C" }, align 8
@MSNdis_StatusMediaDisconnect_GUID = constant %struct._GUID { i64 2552180094, i16 -19981, i16 4560, [8 x i8] c"\8D\D7\00\C0O\C35\8C" }, align 8
@MSNdis_StatusMediaSpecificIndication_GUID = constant %struct._GUID { i64 2552180100, i16 -19981, i16 4560, [8 x i8] c"\8D\D7\00\C0O\C35\8C" }, align 8
@MSNdis_StatusLinkSpeedChange_GUID = constant %struct._GUID { i64 2552180101, i16 -19981, i16 4560, [8 x i8] c"\8D\D7\00\C0O\C35\8C" }, align 8
@MSNdis_StatusProtocolBind_GUID = constant %struct._GUID { i64 1410552604, i16 -19981, i16 4560, [8 x i8] c"\D7\8D\00\C0O\C35\8C" }, align 8
@MSNdis_StatusProtocolUnbind_GUID = constant %struct._GUID { i64 1849483756, i16 -19981, i16 4560, [8 x i8] c"\D7\8D\00\C0O\C35\8C" }, align 8
@MSKeyboard_PortInformation_GUID = constant %struct._GUID { i64 1194457242, i16 29131, i16 4561, [8 x i8] c"\A5,\00\A0\C9\06)\10" }, align 8
@MSMouse_PortInformation_GUID = constant %struct._GUID { i64 1194457244, i16 29131, i16 4561, [8 x i8] c"\A5,\00\A0\C9\06)\10" }, align 8
@MSMouse_ClassInformation_GUID = constant %struct._GUID { i64 1194457243, i16 29131, i16 4561, [8 x i8] c"\A5,\00\A0\C9\06)\10" }, align 8
@MSKeyboard_ClassInformation_GUID = constant %struct._GUID { i64 1194457241, i16 29131, i16 4561, [8 x i8] c"\A5,\00\A0\C9\06)\10" }, align 8
@MSAcpi_ThermalZoneTemperature_GUID = constant %struct._GUID { i64 2713458880, i16 -22584, i16 4561, [8 x i8] c"\BF<\00\A0\C9\06)\10" }, align 8
@MSDiskDriver_Geometry_GUID = constant %struct._GUID { i64 620789585, i16 22466, i16 4561, [8 x i8] c"\A5(\00\A0\C9\06)\10" }, align 8
@MSDiskDriver_PerformanceData_GUID = constant %struct._GUID { i64 3185075666, i16 -10303, i16 4560, [8 x i8] c"\A5\01\00\A0\C9\06)\10" }, align 8
@MSDiskDriver_Performance_GUID = constant %struct._GUID { i64 3185075665, i16 -10303, i16 4560, [8 x i8] c"\A5\01\00\A0\C9\06)\10" }, align 8
@MSStorageDriver_FailurePredictStatus_GUID = constant %struct._GUID { i64 2028716290, i16 19705, i16 4562, [8 x i8] c"\BAJ\00\A0\C9\06)\10" }, align 8
@MSStorageDriver_FailurePredictData_GUID = constant %struct._GUID { i64 2028716291, i16 19705, i16 4562, [8 x i8] c"\BAJ\00\A0\C9\06)\10" }, align 8
@MSStorageDriver_FailurePredictEvent_GUID = constant %struct._GUID { i64 2028716292, i16 19705, i16 4562, [8 x i8] c"\BAJ\00\A0\C9\06)\10" }, align 8
@MSStorageDriver_FailurePredictFunction_GUID = constant %struct._GUID { i64 2028716293, i16 19705, i16 4562, [8 x i8] c"\BAJ\00\A0\C9\06)\10" }, align 8
@MSIde_PortDeviceInfo_GUID = constant %struct._GUID { i64 1408590607, i16 -18753, i16 4560, [8 x i8] c"\94\F2\00\A0\C9\1E\FB\8B" }, align 8
@MSSerial_PortName_GUID = constant %struct._GUID { i64 2699825576, i16 -20116, i16 4561, [8 x i8] c"\BD\98\00\A0\C9\06\BE-" }, align 8
@MSSerial_CommInfo_GUID = constant %struct._GUID { i64 3987827298, i16 -20116, i16 4561, [8 x i8] c"\BD\98\00\A0\C9\06\BE-" }, align 8
@MSSerial_HardwareConfiguration_GUID = constant %struct._GUID { i64 655072134, i16 -20115, i16 4561, [8 x i8] c"\BD\98\00\A0\C9\06\BE-" }, align 8
@MSSerial_PerformanceInformation_GUID = constant %struct._GUID { i64 1447123660, i16 -20115, i16 4561, [8 x i8] c"\BD\98\00\A0\C9\06\BE-" }, align 8
@MSSerial_CommProperties_GUID = constant %struct._GUID { i64 2181688362, i16 11627, i16 4562, [8 x i8] c"\BAI\00\A0\C9\06)\10" }, align 8
@MSParallel_AllocFreeCounts_GUID = constant %struct._GUID { i64 1270573546, i16 26707, i16 4562, [8 x i8] c"\8E\CE\00\C0O\8E\F4\81" }, align 8
@MSParallel_DeviceBytesTransferred_GUID = constant %struct._GUID { i64 2315186902, i16 25931, i16 4562, [8 x i8] c"\9E\15\00\C0O\8E\F4\81" }, align 8
@MSRedbook_DriverInformationGuid = constant %struct._GUID { i64 3104133351, i16 -20982, i16 4561, [8 x i8] c"\A5q\00\C0O\A3G0" }, align 8
@MSRedbook_PerformanceGuid = constant %struct._GUID { i64 3104133352, i16 -20982, i16 4561, [8 x i8] c"\A5q\00\C0O\A3G0" }, align 8
@RegisteredGuids_GUID = constant %struct._GUID { i64 3823105981, i16 14613, i16 4562, [8 x i8] c"\91\03\00\C0O\B9\98\A2" }, align 8
@DiskPerfGuid = constant %struct._GUID { i64 3185075665, i16 -10303, i16 4560, [8 x i8] c"\A5\01\00\A0\C9\06)\10" }, align 8
@THERMAL_ZONE_GUID = constant %struct._GUID { i64 2713458880, i16 -22584, i16 4561, [8 x i8] c"\BF<\00\A0\C9\06)\10" }, align 8
@GlobalLoggerGuid = constant %struct._GUID { i64 3901786812, i16 -21884, i16 4562, [8 x i8] c"\9A\93\00\80_\85\D7\C6" }, align 8
@GenericMessageGuid = constant %struct._GUID { i64 2369794079, i16 -21686, i16 4562, [8 x i8] c"\9A\93\00\80_\85\D7\C6" }, align 8
@ProcessGuid = constant %struct._GUID { i64 1030727888, i16 -507, i16 4560, [8 x i8] c"\9D\DA\00\C0O\D7\BA|" }, align 8
@ThreadGuid = constant %struct._GUID { i64 1030727889, i16 -507, i16 4560, [8 x i8] c"\9D\DA\00\C0O\D7\BA|" }, align 8
@HardFaultGuid = constant %struct._GUID { i64 1030727890, i16 -507, i16 4560, [8 x i8] c"\9D\DA\00\C0O\D7\BA|" }, align 8
@PageFaultGuid = constant %struct._GUID { i64 1030727891, i16 -507, i16 4560, [8 x i8] c"\9D\DA\00\C0O\D7\BA|" }, align 8
@DiskIoGuid = constant %struct._GUID { i64 1030727892, i16 -507, i16 4560, [8 x i8] c"\9D\DA\00\C0O\D7\BA|" }, align 8
@FileIoGuid = constant %struct._GUID { i64 2429279289, i16 19006, i16 4561, [8 x i8] c"\84\F4\00\00\F8\04d\E3" }, align 8
@TcpIpGuid = constant %struct._GUID { i64 2586315456, i16 -14112, i16 4561, [8 x i8] c"\84\E2\00\C0O\B9\98\A2" }, align 8
@UdpIpGuid = constant %struct._GUID { i64 3208270021, i16 -22071, i16 18824, [8 x i8] c"\A0\05-\F0\B7\C8\0F\80" }, align 8
@ImageLoadGuid = constant %struct._GUID { i64 749821213, i16 24513, i16 4562, [8 x i8] c"\AB\E1\00\A0\C9\11\F5\18" }, align 8
@RegistryGuid = constant %struct._GUID { i64 2924704302, i16 -14237, i16 4562, [8 x i8] c"\86Y\00\C0O\A3!\A1" }, align 8
@TraceErrorGuid = constant %struct._GUID { i64 964792796, i16 11687, i16 4563, [8 x i8] c"\8B\98\00\80_\85\D7\C6" }, align 8
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
@DiskperfGuidList = global [1 x %struct.__anonstruct_WMIGUIDREGINFO_130] [%struct.__anonstruct_WMIGUIDREGINFO_130 { %struct._GUID* @DiskPerfGuid, i64 1, i64 0 }], align 16
@DiskPerfRegistryPath = common global %struct._UNICODE_STRING zeroinitializer, align 8
@KeNumberProcessors = common global i8* null, align 8
@myStatus = common global i32 0, align 4
@routine = common global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"\5C\00D\00e\00v\00i\00c\00e\00\5C\00H\00a\00r\00d\00d\00i\00s\00k\00%\00d\00\5C\00P\00a\00r\00t\00i\00t\00i\00o\00n\00%\00d\00\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"P\00h\00y\00s\00D\00i\00s\00k\00\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"L\00o\00g\00i\00D\00i\00s\00k\00\00", align 1
@pirp = common global %struct._IRP* null, align 8
@_SLAM_alloc_dummy = common global i8 0, align 1

; Function Attrs: nounwind ssp uwtable
define i64 @KeGetCurrentProcessorNumber() #0 {
  ret i64 0, !dbg !1984
}

; Function Attrs: nounwind ssp uwtable
define void @errorFn() #0 {
  br label %1, !dbg !1986

; <label>:1                                       ; preds = %0
  call void (...) @__VERIFIER_error() #5, !dbg !1987
  unreachable, !dbg !1987
                                                  ; No predecessors!
  ret void, !dbg !1989
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind ssp uwtable
define void @_BLAST_init() #0 {
  store i32 0, i32* @UNLOADED, align 4, !dbg !1990
  store i32 1, i32* @NP, align 4, !dbg !1992
  store i32 2, i32* @DC, align 4, !dbg !1993
  store i32 3, i32* @SKIP1, align 4, !dbg !1994
  store i32 4, i32* @SKIP2, align 4, !dbg !1995
  store i32 5, i32* @MPR1, align 4, !dbg !1996
  store i32 6, i32* @MPR3, align 4, !dbg !1997
  store i32 7, i32* @IPC, align 4, !dbg !1998
  %1 = load i32, i32* @UNLOADED, align 4, !dbg !1999
  store i32 %1, i32* @s, align 4, !dbg !2000
  store i32 0, i32* @pended, align 4, !dbg !2001
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* null, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** @compFptr, align 8, !dbg !2002
  store i32 0, i32* @compRegistered, align 4, !dbg !2003
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !2004
  store i32 0, i32* @setEventCalled, align 4, !dbg !2005
  store i32 0, i32* @customIrp, align 4, !dbg !2006
  ret void, !dbg !2007
}

; Function Attrs: nounwind ssp uwtable
define i64 @DriverEntry(%struct._DRIVER_OBJECT* %DriverObject, %struct._UNICODE_STRING* %RegistryPath) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %__BLAST_NONDET___0.i.i = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %x.i = alloca i8*, align 8
  %tmp.i = alloca i8*, align 8
  %6 = alloca %struct._DRIVER_OBJECT*, align 8
  %7 = alloca %struct._UNICODE_STRING*, align 8
  %dispatch = alloca i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)**, align 8
  %tmp = alloca i8*, align 8
  store %struct._DRIVER_OBJECT* %DriverObject, %struct._DRIVER_OBJECT** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._DRIVER_OBJECT** %6, metadata !2008, metadata !2009), !dbg !2010
  store %struct._UNICODE_STRING* %RegistryPath, %struct._UNICODE_STRING** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %7, metadata !2011, metadata !2009), !dbg !2012
  call void @llvm.dbg.declare(metadata i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*** %dispatch, metadata !2013, metadata !2009), !dbg !2015
  %8 = call i8* @__VERIFIER_nondet_pointer(), !dbg !2016
  %9 = bitcast i8* %8 to i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)**, !dbg !2016
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %9, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*** %dispatch, align 8, !dbg !2015
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !2017, metadata !2009), !dbg !2018
  %10 = load %struct._UNICODE_STRING*, %struct._UNICODE_STRING** %7, align 8, !dbg !2019
  %11 = getelementptr inbounds %struct._UNICODE_STRING, %struct._UNICODE_STRING* %10, i32 0, i32 0, !dbg !2022
  %12 = load i16, i16* %11, align 2, !dbg !2022
  %13 = zext i16 %12 to i32, !dbg !2023
  %14 = zext i32 %13 to i64, !dbg !2023
  %15 = add i64 %14, 2, !dbg !2024
  %16 = trunc i64 %15 to i16, !dbg !2023
  store i16 %16, i16* getelementptr inbounds (%struct._UNICODE_STRING, %struct._UNICODE_STRING* @DiskPerfRegistryPath, i32 0, i32 1), align 2, !dbg !2025
  %17 = load i16, i16* getelementptr inbounds (%struct._UNICODE_STRING, %struct._UNICODE_STRING* @DiskPerfRegistryPath, i32 0, i32 1), align 2, !dbg !2026
  %18 = zext i16 %17 to i64, !dbg !2027
  %19 = bitcast i32* %3 to i8*, !dbg !2028
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !2028
  %20 = bitcast i64* %4 to i8*, !dbg !2028
  call void @llvm.lifetime.start(i64 8, i8* %20), !dbg !2028
  %21 = bitcast i64* %5 to i8*, !dbg !2028
  call void @llvm.lifetime.start(i64 8, i8* %21), !dbg !2028
  %22 = bitcast i8** %x.i to i8*, !dbg !2028
  call void @llvm.lifetime.start(i64 8, i8* %22), !dbg !2028
  %23 = bitcast i8** %tmp.i to i8*, !dbg !2028
  call void @llvm.lifetime.start(i64 8, i8* %23), !dbg !2028
  store i32 1, i32* %3, align 4, !dbg !2028
  store i64 %18, i64* %4, align 8, !dbg !2028
  store i64 1718767684, i64* %5, align 8, !dbg !2028
  %24 = load i64, i64* %4, align 8, !dbg !2029
  %25 = trunc i64 %24 to i32, !dbg !2029
  %26 = bitcast i8** %1 to i8*, !dbg !2033
  call void @llvm.lifetime.start(i64 8, i8* %26) #4, !dbg !2033
  %27 = bitcast i32* %2 to i8*, !dbg !2033
  call void @llvm.lifetime.start(i64 4, i8* %27) #4, !dbg !2033
  %28 = bitcast i32* %__BLAST_NONDET___0.i.i to i8*, !dbg !2033
  call void @llvm.lifetime.start(i64 4, i8* %28) #4, !dbg !2033
  store i32 %25, i32* %2, align 4, !dbg !2033
  %29 = call i32 @__VERIFIER_nondet_int() #4, !dbg !2034
  store i32 %29, i32* %__BLAST_NONDET___0.i.i, align 4, !dbg !2036
  %30 = load i32, i32* %__BLAST_NONDET___0.i.i, align 4, !dbg !2037
  %31 = icmp ne i32 %30, 0, !dbg !2037
  br i1 %31, label %32, label %33, !dbg !2040

; <label>:32                                      ; preds = %0
  store i8* null, i8** %1, !dbg !2041
  br label %ExAllocatePoolWithTag.exit, !dbg !2041

; <label>:33                                      ; preds = %0
  store i8* inttoptr (i64 1 to i8*), i8** %1, !dbg !2043
  br label %ExAllocatePoolWithTag.exit, !dbg !2043

ExAllocatePoolWithTag.exit:                       ; preds = %32, %33
  %34 = load i8*, i8** %1, !dbg !2045
  %35 = bitcast i8** %1 to i8*, !dbg !2045
  call void @llvm.lifetime.end(i64 8, i8* %35) #4, !dbg !2045
  %36 = bitcast i32* %2 to i8*, !dbg !2045
  call void @llvm.lifetime.end(i64 4, i8* %36) #4, !dbg !2045
  %37 = bitcast i32* %__BLAST_NONDET___0.i.i to i8*, !dbg !2045
  call void @llvm.lifetime.end(i64 4, i8* %37) #4, !dbg !2045
  store i8* %34, i8** %tmp.i, align 8, !dbg !2046
  %38 = load i8*, i8** %tmp.i, align 8, !dbg !2047
  store i8* %38, i8** %x.i, align 8, !dbg !2048
  %39 = load i8*, i8** %x.i, align 8, !dbg !2049
  %40 = bitcast i32* %3 to i8*, !dbg !2050
  call void @llvm.lifetime.end(i64 4, i8* %40), !dbg !2050
  %41 = bitcast i64* %4 to i8*, !dbg !2050
  call void @llvm.lifetime.end(i64 8, i8* %41), !dbg !2050
  %42 = bitcast i64* %5 to i8*, !dbg !2050
  call void @llvm.lifetime.end(i64 8, i8* %42), !dbg !2050
  %43 = bitcast i8** %x.i to i8*, !dbg !2050
  call void @llvm.lifetime.end(i64 8, i8* %43), !dbg !2050
  %44 = bitcast i8** %tmp.i to i8*, !dbg !2050
  call void @llvm.lifetime.end(i64 8, i8* %44), !dbg !2050
  store i8* %39, i8** %tmp, align 8, !dbg !2051
  %45 = load i8*, i8** %tmp, align 8, !dbg !2052
  %46 = bitcast i8* %45 to i16*, !dbg !2052
  store i16* %46, i16** getelementptr inbounds (%struct._UNICODE_STRING, %struct._UNICODE_STRING* @DiskPerfRegistryPath, i32 0, i32 2), align 8, !dbg !2053
  %47 = load i16*, i16** getelementptr inbounds (%struct._UNICODE_STRING, %struct._UNICODE_STRING* @DiskPerfRegistryPath, i32 0, i32 2), align 8, !dbg !2054
  %48 = ptrtoint i16* %47 to i32, !dbg !2056
  %49 = icmp ne i32 %48, 0, !dbg !2057
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2058, metadata !2009), !dbg !2059
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0.i.i, metadata !2060, metadata !2009), !dbg !2036
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2061, metadata !2009), !dbg !2062
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2063, metadata !2009), !dbg !2064
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2065, metadata !2009), !dbg !2066
  call void @llvm.dbg.declare(metadata i8** %x.i, metadata !2067, metadata !2009), !dbg !2068
  call void @llvm.dbg.declare(metadata i8** %tmp.i, metadata !2069, metadata !2009), !dbg !2070
  br i1 %49, label %50, label %51, !dbg !2071

; <label>:50                                      ; preds = %ExAllocatePoolWithTag.exit
  br label %52, !dbg !2072

; <label>:51                                      ; preds = %ExAllocatePoolWithTag.exit
  store i16 0, i16* getelementptr inbounds (%struct._UNICODE_STRING, %struct._UNICODE_STRING* @DiskPerfRegistryPath, i32 0, i32 0), align 2, !dbg !2074
  store i16 0, i16* getelementptr inbounds (%struct._UNICODE_STRING, %struct._UNICODE_STRING* @DiskPerfRegistryPath, i32 0, i32 1), align 2, !dbg !2076
  br label %52

; <label>:52                                      ; preds = %51, %50
  %53 = load i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)**, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*** %dispatch, align 8, !dbg !2077
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfSendToNextDriver, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %53, align 8, !dbg !2078
  %54 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %6, align 8, !dbg !2079
  %55 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %54, i32 0, i32 14, !dbg !2080
  %56 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %55, i32 0, i64 0, !dbg !2079
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfCreate, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %56, align 8, !dbg !2081
  %57 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %6, align 8, !dbg !2082
  %58 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %57, i32 0, i32 14, !dbg !2083
  %59 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %58, i32 0, i64 3, !dbg !2082
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfReadWrite, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %59, align 8, !dbg !2084
  %60 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %6, align 8, !dbg !2085
  %61 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %60, i32 0, i32 14, !dbg !2086
  %62 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %61, i32 0, i64 4, !dbg !2085
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfReadWrite, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %62, align 8, !dbg !2087
  %63 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %6, align 8, !dbg !2088
  %64 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %63, i32 0, i32 14, !dbg !2089
  %65 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %64, i32 0, i64 14, !dbg !2088
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfDeviceControl, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %65, align 8, !dbg !2090
  %66 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %6, align 8, !dbg !2091
  %67 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %66, i32 0, i32 14, !dbg !2092
  %68 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %67, i32 0, i64 23, !dbg !2091
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfWmi, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %68, align 8, !dbg !2093
  %69 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %6, align 8, !dbg !2094
  %70 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %69, i32 0, i32 14, !dbg !2095
  %71 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %70, i32 0, i64 16, !dbg !2094
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfShutdownFlush, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %71, align 8, !dbg !2096
  %72 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %6, align 8, !dbg !2097
  %73 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %72, i32 0, i32 14, !dbg !2098
  %74 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %73, i32 0, i64 9, !dbg !2097
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfShutdownFlush, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %74, align 8, !dbg !2099
  %75 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %6, align 8, !dbg !2100
  %76 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %75, i32 0, i32 14, !dbg !2101
  %77 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %76, i32 0, i64 27, !dbg !2100
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfDispatchPnp, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %77, align 8, !dbg !2102
  %78 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %6, align 8, !dbg !2103
  %79 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %78, i32 0, i32 14, !dbg !2104
  %80 = getelementptr inbounds [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*], [28 x i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)*]* %79, i32 0, i64 22, !dbg !2103
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfDispatchPower, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)** %80, align 8, !dbg !2105
  %81 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %6, align 8, !dbg !2106
  %82 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %81, i32 0, i32 7, !dbg !2107
  %83 = load %struct._DRIVER_EXTENSION*, %struct._DRIVER_EXTENSION** %82, align 8, !dbg !2107
  %84 = getelementptr inbounds %struct._DRIVER_EXTENSION, %struct._DRIVER_EXTENSION* %83, i32 0, i32 1, !dbg !2108
  store i64 (%struct._DRIVER_OBJECT*, %struct._DEVICE_OBJECT*)* @DiskPerfAddDevice, i64 (%struct._DRIVER_OBJECT*, %struct._DEVICE_OBJECT*)** %84, align 8, !dbg !2109
  %85 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %6, align 8, !dbg !2110
  %86 = getelementptr inbounds %struct._DRIVER_OBJECT, %struct._DRIVER_OBJECT* %85, i32 0, i32 13, !dbg !2111
  store void (%struct._DRIVER_OBJECT*)* @DiskPerfUnload, void (%struct._DRIVER_OBJECT*)** %86, align 8, !dbg !2112
  ret i64 0, !dbg !2113
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @__VERIFIER_nondet_pointer() #3

; Function Attrs: nounwind ssp uwtable
define i8* @ExAllocatePoolWithTag(i32 %PoolType, i64 %NumberOfBytes, i64 %Tag) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %__BLAST_NONDET___0.i = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %x = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store i32 %PoolType, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2061, metadata !2009), !dbg !2114
  store i64 %NumberOfBytes, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2063, metadata !2009), !dbg !2115
  store i64 %Tag, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2065, metadata !2009), !dbg !2116
  call void @llvm.dbg.declare(metadata i8** %x, metadata !2067, metadata !2009), !dbg !2117
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !2069, metadata !2009), !dbg !2118
  %6 = load i64, i64* %4, align 8, !dbg !2119
  %7 = trunc i64 %6 to i32, !dbg !2119
  %8 = bitcast i8** %1 to i8*, !dbg !2120
  call void @llvm.lifetime.start(i64 8, i8* %8), !dbg !2120
  %9 = bitcast i32* %2 to i8*, !dbg !2120
  call void @llvm.lifetime.start(i64 4, i8* %9), !dbg !2120
  %10 = bitcast i32* %__BLAST_NONDET___0.i to i8*, !dbg !2120
  call void @llvm.lifetime.start(i64 4, i8* %10), !dbg !2120
  store i32 %7, i32* %2, align 4, !dbg !2120
  %11 = call i32 @__VERIFIER_nondet_int() #4, !dbg !2121
  store i32 %11, i32* %__BLAST_NONDET___0.i, align 4, !dbg !2123
  %12 = load i32, i32* %__BLAST_NONDET___0.i, align 4, !dbg !2124
  %13 = icmp ne i32 %12, 0, !dbg !2124
  br i1 %13, label %14, label %15, !dbg !2125

; <label>:14                                      ; preds = %0
  store i8* null, i8** %1, !dbg !2126
  br label %malloc.exit, !dbg !2126

; <label>:15                                      ; preds = %0
  store i8* inttoptr (i64 1 to i8*), i8** %1, !dbg !2127
  br label %malloc.exit, !dbg !2127

malloc.exit:                                      ; preds = %14, %15
  %16 = load i8*, i8** %1, !dbg !2128
  %17 = bitcast i8** %1 to i8*, !dbg !2128
  call void @llvm.lifetime.end(i64 8, i8* %17), !dbg !2128
  %18 = bitcast i32* %2 to i8*, !dbg !2128
  call void @llvm.lifetime.end(i64 4, i8* %18), !dbg !2128
  %19 = bitcast i32* %__BLAST_NONDET___0.i to i8*, !dbg !2128
  call void @llvm.lifetime.end(i64 4, i8* %19), !dbg !2128
  store i8* %16, i8** %tmp, align 8, !dbg !2129
  %20 = load i8*, i8** %tmp, align 8, !dbg !2130
  store i8* %20, i8** %x, align 8, !dbg !2131
  %21 = load i8*, i8** %x, align 8, !dbg !2132
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2058, metadata !2009), !dbg !2133
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0.i, metadata !2060, metadata !2009), !dbg !2123
  ret i8* %21, !dbg !2134
}

; Function Attrs: nounwind ssp uwtable
define i64 @DiskPerfSendToNextDriver(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca %struct._IRP*, align 8
  %deviceExtension = alloca %struct._DEVICE_EXTENSION*, align 8
  %tmp = alloca i64, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !2135, metadata !2009), !dbg !2136
  store %struct._IRP* %Irp, %struct._IRP** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %2, metadata !2137, metadata !2009), !dbg !2138
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension, metadata !2139, metadata !2009), !dbg !2141
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !2142, metadata !2009), !dbg !2143
  %3 = load i32, i32* @s, align 4, !dbg !2144
  %4 = load i32, i32* @NP, align 4, !dbg !2147
  %5 = icmp eq i32 %3, %4, !dbg !2148
  br i1 %5, label %6, label %8, !dbg !2149

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* @SKIP1, align 4, !dbg !2150
  store i32 %7, i32* @s, align 4, !dbg !2152
  br label %9, !dbg !2153

; <label>:8                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !2154
  unreachable, !dbg !2154

errorFn.exit:                                     ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %errorFn.exit, %6
  %10 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2158
  %11 = getelementptr inbounds %struct._IRP, %struct._IRP* %10, i32 0, i32 10, !dbg !2160
  %12 = load i8, i8* %11, align 1, !dbg !2160
  %13 = sext i8 %12 to i32, !dbg !2161
  %14 = add nsw i32 %13, 1, !dbg !2162
  %15 = trunc i32 %14 to i8, !dbg !2163
  %16 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2164
  %17 = getelementptr inbounds %struct._IRP, %struct._IRP* %16, i32 0, i32 10, !dbg !2165
  store i8 %15, i8* %17, align 1, !dbg !2166
  %18 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2167
  %19 = getelementptr inbounds %struct._IRP, %struct._IRP* %18, i32 0, i32 20, !dbg !2168
  %20 = bitcast %union.__anonunion_Tail_47* %19 to %struct.__anonstruct_Overlay_48*, !dbg !2169
  %21 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %20, i32 0, i32 3, !dbg !2170
  %22 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %21, i32 0, i32 1, !dbg !2171
  %23 = bitcast %union.__anonunion____missing_field_name_52* %22 to %struct._IO_STACK_LOCATION**, !dbg !2172
  %24 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %23, align 8, !dbg !2173
  %25 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %24, i64 1, !dbg !2173
  store %struct._IO_STACK_LOCATION* %25, %struct._IO_STACK_LOCATION** %23, align 8, !dbg !2173
  %26 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, align 8, !dbg !2174
  %27 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %26, i32 0, i32 11, !dbg !2175
  %28 = load i8*, i8** %27, align 8, !dbg !2175
  %29 = bitcast i8* %28 to %struct._DEVICE_EXTENSION*, !dbg !2176
  store %struct._DEVICE_EXTENSION* %29, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2177
  %30 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2178
  %31 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %30, i32 0, i32 1, !dbg !2179
  %32 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %31, align 8, !dbg !2179
  %33 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2180
  %34 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %32, %struct._IRP* %33), !dbg !2181
  store i64 %34, i64* %tmp, align 8, !dbg !2182
  %35 = load i64, i64* %tmp, align 8, !dbg !2183
  ret i64 %35, !dbg !2184
}

; Function Attrs: nounwind ssp uwtable
define i64 @DiskPerfCreate(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp) #0 {
  %1 = alloca %struct._IRP*, align 8
  %2 = alloca i8, align 1
  %3 = alloca %struct._DEVICE_OBJECT*, align 8
  %4 = alloca %struct._IRP*, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %3, metadata !2185, metadata !2009), !dbg !2186
  store %struct._IRP* %Irp, %struct._IRP** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %4, metadata !2187, metadata !2009), !dbg !2188
  %5 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2189
  %6 = getelementptr inbounds %struct._IRP, %struct._IRP* %5, i32 0, i32 6, !dbg !2192
  %7 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %6, i32 0, i32 0, !dbg !2193
  %8 = bitcast %union.__anonunion____missing_field_name_6* %7 to i64*, !dbg !2194
  store i64 0, i64* %8, align 8, !dbg !2195
  store i32 0, i32* @myStatus, align 4, !dbg !2196
  %9 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2197
  %10 = bitcast %struct._IRP** %1 to i8*, !dbg !2198
  call void @llvm.lifetime.start(i64 8, i8* %10), !dbg !2198
  call void @llvm.lifetime.start(i64 1, i8* %2), !dbg !2198
  store %struct._IRP* %9, %struct._IRP** %1, align 8, !dbg !2198
  store i8 0, i8* %2, align 1, !dbg !2198
  %11 = load i32, i32* @s, align 4, !dbg !2199
  %12 = load i32, i32* @NP, align 4, !dbg !2203
  %13 = icmp eq i32 %11, %12, !dbg !2204
  br i1 %13, label %IofCompleteRequest.exit, label %14, !dbg !2205

; <label>:14                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !2206
  unreachable, !dbg !2206

IofCompleteRequest.exit:                          ; preds = %0
  %15 = load i32, i32* @DC, align 4, !dbg !2210
  store i32 %15, i32* @s, align 4, !dbg !2212
  %16 = bitcast %struct._IRP** %1 to i8*, !dbg !2213
  call void @llvm.lifetime.end(i64 8, i8* %16), !dbg !2213
  call void @llvm.lifetime.end(i64 1, i8* %2), !dbg !2213
  call void @llvm.dbg.declare(metadata %struct._IRP** %1, metadata !2214, metadata !2009), !dbg !2215
  call void @llvm.dbg.declare(metadata i8* %2, metadata !2216, metadata !2009), !dbg !2217
  ret i64 0, !dbg !2218
}

; Function Attrs: nounwind ssp uwtable
define i64 @DiskPerfReadWrite(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca %struct._IRP*, align 8
  %deviceExtension.i.4 = alloca %struct._DEVICE_EXTENSION*, align 8
  %tmp.i.5 = alloca i64, align 8
  %3 = alloca %struct._DEVICE_OBJECT*, align 8
  %4 = alloca %struct._IRP*, align 8
  %deviceExtension.i.1 = alloca %struct._DEVICE_EXTENSION*, align 8
  %tmp.i.2 = alloca i64, align 8
  %5 = alloca %struct._DEVICE_OBJECT*, align 8
  %6 = alloca %struct._IRP*, align 8
  %deviceExtension.i = alloca %struct._DEVICE_EXTENSION*, align 8
  %tmp.i = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct._DEVICE_OBJECT*, align 8
  %9 = alloca %struct._IRP*, align 8
  %deviceExtension = alloca %struct._DEVICE_EXTENSION*, align 8
  %currentIrpStack = alloca %struct._IO_STACK_LOCATION*, align 8
  %nextIrpStack = alloca %struct._IO_STACK_LOCATION*, align 8
  %processor = alloca i64, align 8
  %tmp = alloca i64, align 8
  %partitionCounters = alloca %struct._DISK_PERFORMANCE*, align 8
  %queueLen = alloca i64, align 8
  %timeStamp = alloca %union._LARGE_INTEGER*, align 8
  %tmp___0 = alloca i64, align 8
  %irpSp = alloca %struct._IO_STACK_LOCATION*, align 8
  %tmp___1 = alloca i64, align 8
  %10 = alloca %union._LARGE_INTEGER, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %8, metadata !2219, metadata !2009), !dbg !2220
  store %struct._IRP* %Irp, %struct._IRP** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %9, metadata !2221, metadata !2009), !dbg !2222
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension, metadata !2223, metadata !2009), !dbg !2224
  call void @llvm.dbg.declare(metadata %struct._IO_STACK_LOCATION** %currentIrpStack, metadata !2225, metadata !2009), !dbg !2227
  call void @llvm.dbg.declare(metadata %struct._IO_STACK_LOCATION** %nextIrpStack, metadata !2228, metadata !2009), !dbg !2229
  call void @llvm.dbg.declare(metadata i64* %processor, metadata !2230, metadata !2009), !dbg !2231
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !2232, metadata !2009), !dbg !2233
  call void @llvm.dbg.declare(metadata %struct._DISK_PERFORMANCE** %partitionCounters, metadata !2234, metadata !2009), !dbg !2235
  call void @llvm.dbg.declare(metadata i64* %queueLen, metadata !2236, metadata !2009), !dbg !2237
  call void @llvm.dbg.declare(metadata %union._LARGE_INTEGER** %timeStamp, metadata !2238, metadata !2009), !dbg !2239
  call void @llvm.dbg.declare(metadata i64* %tmp___0, metadata !2240, metadata !2009), !dbg !2241
  call void @llvm.dbg.declare(metadata %struct._IO_STACK_LOCATION** %irpSp, metadata !2242, metadata !2009), !dbg !2243
  call void @llvm.dbg.declare(metadata i64* %tmp___1, metadata !2244, metadata !2009), !dbg !2245
  %11 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %8, align 8, !dbg !2246
  %12 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %11, i32 0, i32 11, !dbg !2249
  %13 = load i8*, i8** %12, align 8, !dbg !2249
  %14 = bitcast i8* %13 to %struct._DEVICE_EXTENSION*, !dbg !2246
  store %struct._DEVICE_EXTENSION* %14, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2250
  %15 = load %struct._IRP*, %struct._IRP** %9, align 8, !dbg !2251
  %16 = getelementptr inbounds %struct._IRP, %struct._IRP* %15, i32 0, i32 20, !dbg !2252
  %17 = bitcast %union.__anonunion_Tail_47* %16 to %struct.__anonstruct_Overlay_48*, !dbg !2253
  %18 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %17, i32 0, i32 3, !dbg !2254
  %19 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %18, i32 0, i32 1, !dbg !2255
  %20 = bitcast %union.__anonunion____missing_field_name_52* %19 to %struct._IO_STACK_LOCATION**, !dbg !2256
  %21 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %20, align 8, !dbg !2256
  store %struct._IO_STACK_LOCATION* %21, %struct._IO_STACK_LOCATION** %currentIrpStack, align 8, !dbg !2257
  %22 = load %struct._IRP*, %struct._IRP** %9, align 8, !dbg !2258
  %23 = getelementptr inbounds %struct._IRP, %struct._IRP* %22, i32 0, i32 20, !dbg !2259
  %24 = bitcast %union.__anonunion_Tail_47* %23 to %struct.__anonstruct_Overlay_48*, !dbg !2260
  %25 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %24, i32 0, i32 3, !dbg !2261
  %26 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %25, i32 0, i32 1, !dbg !2262
  %27 = bitcast %union.__anonunion____missing_field_name_52* %26 to %struct._IO_STACK_LOCATION**, !dbg !2263
  %28 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %27, align 8, !dbg !2263
  %29 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %28, i64 -1, !dbg !2264
  store %struct._IO_STACK_LOCATION* %29, %struct._IO_STACK_LOCATION** %nextIrpStack, align 8, !dbg !2265
  store i64 0, i64* %tmp, align 8, !dbg !2266
  %30 = load i64, i64* %tmp, align 8, !dbg !2267
  store i64 %30, i64* %processor, align 8, !dbg !2268
  store %struct._DISK_PERFORMANCE* null, %struct._DISK_PERFORMANCE** %partitionCounters, align 8, !dbg !2269
  %31 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2270
  %32 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %31, i32 0, i32 6, !dbg !2272
  %33 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %32, align 8, !dbg !2272
  %34 = ptrtoint %struct._DISK_PERFORMANCE* %33 to i32, !dbg !2273
  %35 = icmp ne i32 %34, 0, !dbg !2274
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %5, metadata !2135, metadata !2009), !dbg !2275
  call void @llvm.dbg.declare(metadata %struct._IRP** %6, metadata !2137, metadata !2009), !dbg !2280
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension.i, metadata !2139, metadata !2009), !dbg !2281
  call void @llvm.dbg.declare(metadata i64* %tmp.i, metadata !2142, metadata !2009), !dbg !2282
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %3, metadata !2135, metadata !2009), !dbg !2283
  call void @llvm.dbg.declare(metadata %struct._IRP** %4, metadata !2137, metadata !2009), !dbg !2289
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension.i.1, metadata !2139, metadata !2009), !dbg !2290
  call void @llvm.dbg.declare(metadata i64* %tmp.i.2, metadata !2142, metadata !2009), !dbg !2291
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !2135, metadata !2009), !dbg !2292
  call void @llvm.dbg.declare(metadata %struct._IRP** %2, metadata !2137, metadata !2009), !dbg !2298
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension.i.4, metadata !2139, metadata !2009), !dbg !2299
  call void @llvm.dbg.declare(metadata i64* %tmp.i.5, metadata !2142, metadata !2009), !dbg !2300
  br i1 %35, label %36, label %45, !dbg !2301

; <label>:36                                      ; preds = %0
  %37 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2302
  %38 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %37, i32 0, i32 6, !dbg !2304
  %39 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %38, align 8, !dbg !2304
  %40 = bitcast %struct._DISK_PERFORMANCE* %39 to i8*, !dbg !2305
  %41 = load i64, i64* %processor, align 8, !dbg !2306
  %42 = mul i64 %41, ptrtoint (%union._LARGE_INTEGER* getelementptr inbounds (%struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* null, i32 0, i32 9) to i64), !dbg !2307
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !2308
  %44 = bitcast i8* %43 to %struct._DISK_PERFORMANCE*, !dbg !2309
  store %struct._DISK_PERFORMANCE* %44, %struct._DISK_PERFORMANCE** %partitionCounters, align 8, !dbg !2310
  br label %46, !dbg !2311

; <label>:45                                      ; preds = %0
  br label %46

; <label>:46                                      ; preds = %45, %36
  %47 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2312
  %48 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %47, i32 0, i32 9, !dbg !2313
  %49 = load i64, i64* %48, align 8, !dbg !2313
  %50 = icmp sle i64 %49, 0, !dbg !2314
  br i1 %50, label %51, label %94, !dbg !2315

; <label>:51                                      ; preds = %46
  %52 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %8, align 8, !dbg !2316
  %53 = load %struct._IRP*, %struct._IRP** %9, align 8, !dbg !2317
  %54 = bitcast %struct._DEVICE_OBJECT** %5 to i8*, !dbg !2318
  call void @llvm.lifetime.start(i64 8, i8* %54), !dbg !2318
  %55 = bitcast %struct._IRP** %6 to i8*, !dbg !2318
  call void @llvm.lifetime.start(i64 8, i8* %55), !dbg !2318
  %56 = bitcast %struct._DEVICE_EXTENSION** %deviceExtension.i to i8*, !dbg !2318
  call void @llvm.lifetime.start(i64 8, i8* %56), !dbg !2318
  %57 = bitcast i64* %tmp.i to i8*, !dbg !2318
  call void @llvm.lifetime.start(i64 8, i8* %57), !dbg !2318
  store %struct._DEVICE_OBJECT* %52, %struct._DEVICE_OBJECT** %5, align 8, !dbg !2318
  store %struct._IRP* %53, %struct._IRP** %6, align 8, !dbg !2318
  %58 = load i32, i32* @s, align 4, !dbg !2319
  %59 = load i32, i32* @NP, align 4, !dbg !2320
  %60 = icmp eq i32 %58, %59, !dbg !2321
  br i1 %60, label %DiskPerfSendToNextDriver.exit, label %61, !dbg !2322

; <label>:61                                      ; preds = %51
  call void (...) @__VERIFIER_error() #6, !dbg !2323
  unreachable, !dbg !2323

DiskPerfSendToNextDriver.exit:                    ; preds = %51
  %62 = load i32, i32* @SKIP1, align 4, !dbg !2325
  store i32 %62, i32* @s, align 4, !dbg !2326
  %63 = load %struct._IRP*, %struct._IRP** %6, align 8, !dbg !2327
  %64 = getelementptr inbounds %struct._IRP, %struct._IRP* %63, i32 0, i32 10, !dbg !2328
  %65 = load i8, i8* %64, align 1, !dbg !2328
  %66 = sext i8 %65 to i32, !dbg !2329
  %67 = add nsw i32 %66, 1, !dbg !2330
  %68 = trunc i32 %67 to i8, !dbg !2331
  %69 = load %struct._IRP*, %struct._IRP** %6, align 8, !dbg !2332
  %70 = getelementptr inbounds %struct._IRP, %struct._IRP* %69, i32 0, i32 10, !dbg !2333
  store i8 %68, i8* %70, align 1, !dbg !2334
  %71 = load %struct._IRP*, %struct._IRP** %6, align 8, !dbg !2335
  %72 = getelementptr inbounds %struct._IRP, %struct._IRP* %71, i32 0, i32 20, !dbg !2336
  %73 = bitcast %union.__anonunion_Tail_47* %72 to %struct.__anonstruct_Overlay_48*, !dbg !2337
  %74 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %73, i32 0, i32 3, !dbg !2338
  %75 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %74, i32 0, i32 1, !dbg !2339
  %76 = bitcast %union.__anonunion____missing_field_name_52* %75 to %struct._IO_STACK_LOCATION**, !dbg !2340
  %77 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %76, align 8, !dbg !2341
  %78 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %77, i64 1, !dbg !2341
  store %struct._IO_STACK_LOCATION* %78, %struct._IO_STACK_LOCATION** %76, align 8, !dbg !2341
  %79 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %5, align 8, !dbg !2342
  %80 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %79, i32 0, i32 11, !dbg !2343
  %81 = load i8*, i8** %80, align 8, !dbg !2343
  %82 = bitcast i8* %81 to %struct._DEVICE_EXTENSION*, !dbg !2344
  store %struct._DEVICE_EXTENSION* %82, %struct._DEVICE_EXTENSION** %deviceExtension.i, align 8, !dbg !2345
  %83 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension.i, align 8, !dbg !2346
  %84 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %83, i32 0, i32 1, !dbg !2347
  %85 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %84, align 8, !dbg !2347
  %86 = load %struct._IRP*, %struct._IRP** %6, align 8, !dbg !2348
  %87 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %85, %struct._IRP* %86) #4, !dbg !2349
  store i64 %87, i64* %tmp.i, align 8, !dbg !2350
  %88 = load i64, i64* %tmp.i, align 8, !dbg !2351
  %89 = bitcast %struct._DEVICE_OBJECT** %5 to i8*, !dbg !2352
  call void @llvm.lifetime.end(i64 8, i8* %89), !dbg !2352
  %90 = bitcast %struct._IRP** %6 to i8*, !dbg !2352
  call void @llvm.lifetime.end(i64 8, i8* %90), !dbg !2352
  %91 = bitcast %struct._DEVICE_EXTENSION** %deviceExtension.i to i8*, !dbg !2352
  call void @llvm.lifetime.end(i64 8, i8* %91), !dbg !2352
  %92 = bitcast i64* %tmp.i to i8*, !dbg !2352
  call void @llvm.lifetime.end(i64 8, i8* %92), !dbg !2352
  store i64 %88, i64* %tmp___0, align 8, !dbg !2353
  %93 = load i64, i64* %tmp___0, align 8, !dbg !2354
  store i64 %93, i64* %7, !dbg !2355
  br label %292, !dbg !2355

; <label>:94                                      ; preds = %46
  %95 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2356
  %96 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %95, i32 0, i32 13, !dbg !2357
  %97 = getelementptr inbounds [64 x i16], [64 x i16]* %96, i32 0, i64 0, !dbg !2356
  %98 = load i16, i16* %97, align 2, !dbg !2356
  %99 = zext i16 %98 to i32, !dbg !2358
  %100 = icmp eq i32 %99, 0, !dbg !2359
  br i1 %100, label %101, label %144, !dbg !2360

; <label>:101                                     ; preds = %94
  %102 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %8, align 8, !dbg !2361
  %103 = load %struct._IRP*, %struct._IRP** %9, align 8, !dbg !2362
  %104 = bitcast %struct._DEVICE_OBJECT** %3 to i8*, !dbg !2363
  call void @llvm.lifetime.start(i64 8, i8* %104), !dbg !2363
  %105 = bitcast %struct._IRP** %4 to i8*, !dbg !2363
  call void @llvm.lifetime.start(i64 8, i8* %105), !dbg !2363
  %106 = bitcast %struct._DEVICE_EXTENSION** %deviceExtension.i.1 to i8*, !dbg !2363
  call void @llvm.lifetime.start(i64 8, i8* %106), !dbg !2363
  %107 = bitcast i64* %tmp.i.2 to i8*, !dbg !2363
  call void @llvm.lifetime.start(i64 8, i8* %107), !dbg !2363
  store %struct._DEVICE_OBJECT* %102, %struct._DEVICE_OBJECT** %3, align 8, !dbg !2363
  store %struct._IRP* %103, %struct._IRP** %4, align 8, !dbg !2363
  %108 = load i32, i32* @s, align 4, !dbg !2364
  %109 = load i32, i32* @NP, align 4, !dbg !2365
  %110 = icmp eq i32 %108, %109, !dbg !2366
  br i1 %110, label %DiskPerfSendToNextDriver.exit3, label %111, !dbg !2367

; <label>:111                                     ; preds = %101
  call void (...) @__VERIFIER_error() #6, !dbg !2368
  unreachable, !dbg !2368

DiskPerfSendToNextDriver.exit3:                   ; preds = %101
  %112 = load i32, i32* @SKIP1, align 4, !dbg !2370
  store i32 %112, i32* @s, align 4, !dbg !2371
  %113 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2372
  %114 = getelementptr inbounds %struct._IRP, %struct._IRP* %113, i32 0, i32 10, !dbg !2373
  %115 = load i8, i8* %114, align 1, !dbg !2373
  %116 = sext i8 %115 to i32, !dbg !2374
  %117 = add nsw i32 %116, 1, !dbg !2375
  %118 = trunc i32 %117 to i8, !dbg !2376
  %119 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2377
  %120 = getelementptr inbounds %struct._IRP, %struct._IRP* %119, i32 0, i32 10, !dbg !2378
  store i8 %118, i8* %120, align 1, !dbg !2379
  %121 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2380
  %122 = getelementptr inbounds %struct._IRP, %struct._IRP* %121, i32 0, i32 20, !dbg !2381
  %123 = bitcast %union.__anonunion_Tail_47* %122 to %struct.__anonstruct_Overlay_48*, !dbg !2382
  %124 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %123, i32 0, i32 3, !dbg !2383
  %125 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %124, i32 0, i32 1, !dbg !2384
  %126 = bitcast %union.__anonunion____missing_field_name_52* %125 to %struct._IO_STACK_LOCATION**, !dbg !2385
  %127 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %126, align 8, !dbg !2386
  %128 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %127, i64 1, !dbg !2386
  store %struct._IO_STACK_LOCATION* %128, %struct._IO_STACK_LOCATION** %126, align 8, !dbg !2386
  %129 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %3, align 8, !dbg !2387
  %130 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %129, i32 0, i32 11, !dbg !2388
  %131 = load i8*, i8** %130, align 8, !dbg !2388
  %132 = bitcast i8* %131 to %struct._DEVICE_EXTENSION*, !dbg !2389
  store %struct._DEVICE_EXTENSION* %132, %struct._DEVICE_EXTENSION** %deviceExtension.i.1, align 8, !dbg !2390
  %133 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension.i.1, align 8, !dbg !2391
  %134 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %133, i32 0, i32 1, !dbg !2392
  %135 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %134, align 8, !dbg !2392
  %136 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !2393
  %137 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %135, %struct._IRP* %136) #4, !dbg !2394
  store i64 %137, i64* %tmp.i.2, align 8, !dbg !2395
  %138 = load i64, i64* %tmp.i.2, align 8, !dbg !2396
  %139 = bitcast %struct._DEVICE_OBJECT** %3 to i8*, !dbg !2397
  call void @llvm.lifetime.end(i64 8, i8* %139), !dbg !2397
  %140 = bitcast %struct._IRP** %4 to i8*, !dbg !2397
  call void @llvm.lifetime.end(i64 8, i8* %140), !dbg !2397
  %141 = bitcast %struct._DEVICE_EXTENSION** %deviceExtension.i.1 to i8*, !dbg !2397
  call void @llvm.lifetime.end(i64 8, i8* %141), !dbg !2397
  %142 = bitcast i64* %tmp.i.2 to i8*, !dbg !2397
  call void @llvm.lifetime.end(i64 8, i8* %142), !dbg !2397
  store i64 %138, i64* %tmp___0, align 8, !dbg !2398
  %143 = load i64, i64* %tmp___0, align 8, !dbg !2399
  store i64 %143, i64* %7, !dbg !2400
  br label %292, !dbg !2400

; <label>:144                                     ; preds = %94
  %145 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %partitionCounters, align 8, !dbg !2401
  %146 = ptrtoint %struct._DISK_PERFORMANCE* %145 to i32, !dbg !2402
  %147 = icmp eq i32 %146, 0, !dbg !2403
  br i1 %147, label %148, label %191, !dbg !2404

; <label>:148                                     ; preds = %144
  %149 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %8, align 8, !dbg !2405
  %150 = load %struct._IRP*, %struct._IRP** %9, align 8, !dbg !2406
  %151 = bitcast %struct._DEVICE_OBJECT** %1 to i8*, !dbg !2407
  call void @llvm.lifetime.start(i64 8, i8* %151), !dbg !2407
  %152 = bitcast %struct._IRP** %2 to i8*, !dbg !2407
  call void @llvm.lifetime.start(i64 8, i8* %152), !dbg !2407
  %153 = bitcast %struct._DEVICE_EXTENSION** %deviceExtension.i.4 to i8*, !dbg !2407
  call void @llvm.lifetime.start(i64 8, i8* %153), !dbg !2407
  %154 = bitcast i64* %tmp.i.5 to i8*, !dbg !2407
  call void @llvm.lifetime.start(i64 8, i8* %154), !dbg !2407
  store %struct._DEVICE_OBJECT* %149, %struct._DEVICE_OBJECT** %1, align 8, !dbg !2407
  store %struct._IRP* %150, %struct._IRP** %2, align 8, !dbg !2407
  %155 = load i32, i32* @s, align 4, !dbg !2408
  %156 = load i32, i32* @NP, align 4, !dbg !2409
  %157 = icmp eq i32 %155, %156, !dbg !2410
  br i1 %157, label %DiskPerfSendToNextDriver.exit6, label %158, !dbg !2411

; <label>:158                                     ; preds = %148
  call void (...) @__VERIFIER_error() #6, !dbg !2412
  unreachable, !dbg !2412

DiskPerfSendToNextDriver.exit6:                   ; preds = %148
  %159 = load i32, i32* @SKIP1, align 4, !dbg !2414
  store i32 %159, i32* @s, align 4, !dbg !2415
  %160 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2416
  %161 = getelementptr inbounds %struct._IRP, %struct._IRP* %160, i32 0, i32 10, !dbg !2417
  %162 = load i8, i8* %161, align 1, !dbg !2417
  %163 = sext i8 %162 to i32, !dbg !2418
  %164 = add nsw i32 %163, 1, !dbg !2419
  %165 = trunc i32 %164 to i8, !dbg !2420
  %166 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2421
  %167 = getelementptr inbounds %struct._IRP, %struct._IRP* %166, i32 0, i32 10, !dbg !2422
  store i8 %165, i8* %167, align 1, !dbg !2423
  %168 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2424
  %169 = getelementptr inbounds %struct._IRP, %struct._IRP* %168, i32 0, i32 20, !dbg !2425
  %170 = bitcast %union.__anonunion_Tail_47* %169 to %struct.__anonstruct_Overlay_48*, !dbg !2426
  %171 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %170, i32 0, i32 3, !dbg !2427
  %172 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %171, i32 0, i32 1, !dbg !2428
  %173 = bitcast %union.__anonunion____missing_field_name_52* %172 to %struct._IO_STACK_LOCATION**, !dbg !2429
  %174 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %173, align 8, !dbg !2430
  %175 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %174, i64 1, !dbg !2430
  store %struct._IO_STACK_LOCATION* %175, %struct._IO_STACK_LOCATION** %173, align 8, !dbg !2430
  %176 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, align 8, !dbg !2431
  %177 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %176, i32 0, i32 11, !dbg !2432
  %178 = load i8*, i8** %177, align 8, !dbg !2432
  %179 = bitcast i8* %178 to %struct._DEVICE_EXTENSION*, !dbg !2433
  store %struct._DEVICE_EXTENSION* %179, %struct._DEVICE_EXTENSION** %deviceExtension.i.4, align 8, !dbg !2434
  %180 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension.i.4, align 8, !dbg !2435
  %181 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %180, i32 0, i32 1, !dbg !2436
  %182 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %181, align 8, !dbg !2436
  %183 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2437
  %184 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %182, %struct._IRP* %183) #4, !dbg !2438
  store i64 %184, i64* %tmp.i.5, align 8, !dbg !2439
  %185 = load i64, i64* %tmp.i.5, align 8, !dbg !2440
  %186 = bitcast %struct._DEVICE_OBJECT** %1 to i8*, !dbg !2441
  call void @llvm.lifetime.end(i64 8, i8* %186), !dbg !2441
  %187 = bitcast %struct._IRP** %2 to i8*, !dbg !2441
  call void @llvm.lifetime.end(i64 8, i8* %187), !dbg !2441
  %188 = bitcast %struct._DEVICE_EXTENSION** %deviceExtension.i.4 to i8*, !dbg !2441
  call void @llvm.lifetime.end(i64 8, i8* %188), !dbg !2441
  %189 = bitcast i64* %tmp.i.5 to i8*, !dbg !2441
  call void @llvm.lifetime.end(i64 8, i8* %189), !dbg !2441
  store i64 %185, i64* %tmp___0, align 8, !dbg !2442
  %190 = load i64, i64* %tmp___0, align 8, !dbg !2443
  store i64 %190, i64* %7, !dbg !2444
  br label %292, !dbg !2444

; <label>:191                                     ; preds = %144
  br label %192

; <label>:192                                     ; preds = %191
  br label %193

; <label>:193                                     ; preds = %192
  br label %194

; <label>:194                                     ; preds = %193
  %195 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2445
  %196 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %195, i32 0, i32 8, !dbg !2447
  %197 = call i64 @InterlockedIncrement(i64* %196), !dbg !2448
  store i64 %197, i64* %queueLen, align 8, !dbg !2449
  %198 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %nextIrpStack, align 8, !dbg !2450
  %199 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %currentIrpStack, align 8, !dbg !2451
  %200 = bitcast %struct._IO_STACK_LOCATION* %198 to i8*, !dbg !2452
  %201 = bitcast %struct._IO_STACK_LOCATION* %199 to i8*, !dbg !2452
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %200, i8* %201, i64 68, i32 4, i1 false), !dbg !2452
  %202 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %currentIrpStack, align 8, !dbg !2453
  %203 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %202, i32 0, i32 4, !dbg !2454
  %204 = bitcast %union.__anonunion_Parameters_55* %203 to %struct.__anonstruct_Read_57*, !dbg !2455
  %205 = bitcast %struct.__anonstruct_Read_57* %204 to %union._LARGE_INTEGER*, !dbg !2456
  store %union._LARGE_INTEGER* %205, %union._LARGE_INTEGER** %timeStamp, align 8, !dbg !2457
  %206 = load %union._LARGE_INTEGER*, %union._LARGE_INTEGER** %timeStamp, align 8, !dbg !2458
  %207 = call { i64, i64 } @KeQueryPerformanceCounter(%union._LARGE_INTEGER* null), !dbg !2459
  %208 = getelementptr %union._LARGE_INTEGER, %union._LARGE_INTEGER* %10, i32 0, i32 0, !dbg !2459
  %209 = bitcast %struct.__anonstruct____missing_field_name_1* %208 to { i64, i64 }*, !dbg !2459
  %210 = getelementptr { i64, i64 }, { i64, i64 }* %209, i32 0, i32 0, !dbg !2459
  %211 = extractvalue { i64, i64 } %207, 0, !dbg !2459
  store i64 %211, i64* %210, align 8, !dbg !2459
  %212 = getelementptr { i64, i64 }, { i64, i64 }* %209, i32 0, i32 1, !dbg !2459
  %213 = extractvalue { i64, i64 } %207, 1, !dbg !2459
  store i64 %213, i64* %212, align 8, !dbg !2459
  %214 = bitcast %union._LARGE_INTEGER* %206 to i8*, !dbg !2459
  %215 = bitcast %union._LARGE_INTEGER* %10 to i8*, !dbg !2459
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %214, i8* %215, i64 16, i32 8, i1 false), !dbg !2459
  %216 = load i64, i64* %queueLen, align 8, !dbg !2460
  %217 = icmp eq i64 %216, 1, !dbg !2462
  br i1 %217, label %218, label %238, !dbg !2463

; <label>:218                                     ; preds = %194
  %219 = load %union._LARGE_INTEGER*, %union._LARGE_INTEGER** %timeStamp, align 8, !dbg !2464
  %220 = bitcast %union._LARGE_INTEGER* %219 to i64*, !dbg !2466
  %221 = load i64, i64* %220, align 8, !dbg !2466
  %222 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2467
  %223 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %222, i32 0, i32 7, !dbg !2468
  %224 = bitcast %union._LARGE_INTEGER* %223 to i64*, !dbg !2469
  %225 = load i64, i64* %224, align 8, !dbg !2469
  %226 = sub nsw i64 %221, %225, !dbg !2470
  %227 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %partitionCounters, align 8, !dbg !2471
  %228 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %227, i32 0, i32 4, !dbg !2472
  %229 = bitcast %union._LARGE_INTEGER* %228 to i64*, !dbg !2473
  %230 = load i64, i64* %229, align 8, !dbg !2474
  %231 = add nsw i64 %230, %226, !dbg !2474
  store i64 %231, i64* %229, align 8, !dbg !2474
  %232 = load %union._LARGE_INTEGER*, %union._LARGE_INTEGER** %timeStamp, align 8, !dbg !2475
  %233 = bitcast %union._LARGE_INTEGER* %232 to i64*, !dbg !2476
  %234 = load i64, i64* %233, align 8, !dbg !2476
  %235 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2477
  %236 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %235, i32 0, i32 7, !dbg !2478
  %237 = bitcast %union._LARGE_INTEGER* %236 to i64*, !dbg !2479
  store i64 %234, i64* %237, align 8, !dbg !2480
  br label %239, !dbg !2481

; <label>:238                                     ; preds = %194
  br label %239

; <label>:239                                     ; preds = %238, %218
  %240 = load i32, i32* @s, align 4, !dbg !2482
  %241 = load i32, i32* @NP, align 4, !dbg !2484
  %242 = icmp ne i32 %240, %241, !dbg !2485
  br i1 %242, label %243, label %244, !dbg !2486

; <label>:243                                     ; preds = %239
  call void (...) @__VERIFIER_error() #6, !dbg !2487
  unreachable, !dbg !2487

errorFn.exit:                                     ; No predecessors!
  br label %250, !dbg !2491

; <label>:244                                     ; preds = %239
  %245 = load i32, i32* @compRegistered, align 4, !dbg !2492
  %246 = icmp ne i32 %245, 0, !dbg !2495
  br i1 %246, label %247, label %248, !dbg !2496

; <label>:247                                     ; preds = %244
  call void (...) @__VERIFIER_error() #6, !dbg !2497
  unreachable, !dbg !2497

errorFn.exit7:                                    ; No predecessors!
  br label %249, !dbg !2501

; <label>:248                                     ; preds = %244
  store i32 1, i32* @compRegistered, align 4, !dbg !2502
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* @DiskPerfIoCompletion, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** @compFptr, align 8, !dbg !2504
  store i32 1, i32* @routine, align 4, !dbg !2505
  br label %249

; <label>:249                                     ; preds = %248, %errorFn.exit7
  br label %250

; <label>:250                                     ; preds = %249, %errorFn.exit
  %251 = load %struct._IRP*, %struct._IRP** %9, align 8, !dbg !2506
  %252 = getelementptr inbounds %struct._IRP, %struct._IRP* %251, i32 0, i32 20, !dbg !2508
  %253 = bitcast %union.__anonunion_Tail_47* %252 to %struct.__anonstruct_Overlay_48*, !dbg !2509
  %254 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %253, i32 0, i32 3, !dbg !2510
  %255 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %254, i32 0, i32 1, !dbg !2511
  %256 = bitcast %union.__anonunion____missing_field_name_52* %255 to %struct._IO_STACK_LOCATION**, !dbg !2512
  %257 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %256, align 8, !dbg !2512
  %258 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %257, i64 -1, !dbg !2513
  store %struct._IO_STACK_LOCATION* %258, %struct._IO_STACK_LOCATION** %irpSp, align 8, !dbg !2514
  %259 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp, align 8, !dbg !2515
  %260 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %259, i32 0, i32 7, !dbg !2516
  %261 = bitcast {}** %260 to i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)**, !dbg !2516
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* @DiskPerfIoCompletion, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** %261, align 4, !dbg !2517
  %262 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %8, align 8, !dbg !2518
  %263 = bitcast %struct._DEVICE_OBJECT* %262 to i8*, !dbg !2518
  %264 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp, align 8, !dbg !2519
  %265 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %264, i32 0, i32 8, !dbg !2520
  store i8* %263, i8** %265, align 4, !dbg !2521
  %266 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp, align 8, !dbg !2522
  %267 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %266, i32 0, i32 3, !dbg !2523
  store i8 0, i8* %267, align 1, !dbg !2524
  %268 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp, align 8, !dbg !2525
  %269 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %268, i32 0, i32 3, !dbg !2526
  store i8 64, i8* %269, align 1, !dbg !2527
  %270 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp, align 8, !dbg !2528
  %271 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %270, i32 0, i32 3, !dbg !2529
  %272 = load i8, i8* %271, align 1, !dbg !2529
  %273 = zext i8 %272 to i32, !dbg !2530
  %274 = or i32 %273, 128, !dbg !2531
  %275 = trunc i32 %274 to i8, !dbg !2530
  %276 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp, align 8, !dbg !2532
  %277 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %276, i32 0, i32 3, !dbg !2533
  store i8 %275, i8* %277, align 1, !dbg !2534
  %278 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp, align 8, !dbg !2535
  %279 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %278, i32 0, i32 3, !dbg !2536
  %280 = load i8, i8* %279, align 1, !dbg !2536
  %281 = zext i8 %280 to i32, !dbg !2537
  %282 = or i32 %281, 32, !dbg !2538
  %283 = trunc i32 %282 to i8, !dbg !2537
  %284 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp, align 8, !dbg !2539
  %285 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %284, i32 0, i32 3, !dbg !2540
  store i8 %283, i8* %285, align 1, !dbg !2541
  %286 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2542
  %287 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %286, i32 0, i32 1, !dbg !2543
  %288 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %287, align 8, !dbg !2543
  %289 = load %struct._IRP*, %struct._IRP** %9, align 8, !dbg !2544
  %290 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %288, %struct._IRP* %289), !dbg !2545
  store i64 %290, i64* %tmp___1, align 8, !dbg !2546
  %291 = load i64, i64* %tmp___1, align 8, !dbg !2547
  store i64 %291, i64* %7, !dbg !2548
  br label %292, !dbg !2548

; <label>:292                                     ; preds = %250, %DiskPerfSendToNextDriver.exit6, %DiskPerfSendToNextDriver.exit3, %DiskPerfSendToNextDriver.exit
  %293 = load i64, i64* %7, !dbg !2549
  ret i64 %293, !dbg !2549
}

; Function Attrs: nounwind ssp uwtable
define i64 @DiskPerfDeviceControl(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp) #0 {
  %1 = alloca %struct._IRP*, align 8
  %2 = alloca i8, align 1
  %3 = alloca %struct._IRP*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca %struct._DEVICE_OBJECT*, align 8
  %7 = alloca %struct._IRP*, align 8
  %deviceExtension = alloca %struct._DEVICE_EXTENSION*, align 8
  %currentIrpStack = alloca %struct._IO_STACK_LOCATION*, align 8
  %status = alloca i64, align 8
  %i = alloca i64, align 8
  %totalCounters = alloca %struct._DISK_PERFORMANCE*, align 8
  %diskCounters = alloca %struct._DISK_PERFORMANCE*, align 8
  %frequency = alloca %union._LARGE_INTEGER, align 8
  %perfctr = alloca %union._LARGE_INTEGER, align 8
  %difference = alloca %union._LARGE_INTEGER, align 8
  %tmp = alloca i64, align 8
  %8 = alloca %union._LARGE_INTEGER, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %6, metadata !2550, metadata !2009), !dbg !2551
  store %struct._IRP* %Irp, %struct._IRP** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %7, metadata !2552, metadata !2009), !dbg !2553
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension, metadata !2554, metadata !2009), !dbg !2555
  call void @llvm.dbg.declare(metadata %struct._IO_STACK_LOCATION** %currentIrpStack, metadata !2556, metadata !2009), !dbg !2557
  call void @llvm.dbg.declare(metadata i64* %status, metadata !2558, metadata !2009), !dbg !2559
  call void @llvm.dbg.declare(metadata i64* %i, metadata !2560, metadata !2009), !dbg !2561
  call void @llvm.dbg.declare(metadata %struct._DISK_PERFORMANCE** %totalCounters, metadata !2562, metadata !2009), !dbg !2563
  call void @llvm.dbg.declare(metadata %struct._DISK_PERFORMANCE** %diskCounters, metadata !2564, metadata !2009), !dbg !2565
  call void @llvm.dbg.declare(metadata %union._LARGE_INTEGER* %frequency, metadata !2566, metadata !2009), !dbg !2567
  call void @llvm.dbg.declare(metadata %union._LARGE_INTEGER* %perfctr, metadata !2568, metadata !2009), !dbg !2569
  call void @llvm.dbg.declare(metadata %union._LARGE_INTEGER* %difference, metadata !2570, metadata !2009), !dbg !2571
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !2572, metadata !2009), !dbg !2573
  %9 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %6, align 8, !dbg !2574
  %10 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %9, i32 0, i32 11, !dbg !2576
  %11 = load i8*, i8** %10, align 8, !dbg !2576
  %12 = bitcast i8* %11 to %struct._DEVICE_EXTENSION*, !dbg !2574
  store %struct._DEVICE_EXTENSION* %12, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2577
  %13 = load %struct._IRP*, %struct._IRP** %7, align 8, !dbg !2578
  %14 = getelementptr inbounds %struct._IRP, %struct._IRP* %13, i32 0, i32 20, !dbg !2579
  %15 = bitcast %union.__anonunion_Tail_47* %14 to %struct.__anonstruct_Overlay_48*, !dbg !2580
  %16 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %15, i32 0, i32 3, !dbg !2581
  %17 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %16, i32 0, i32 1, !dbg !2582
  %18 = bitcast %union.__anonunion____missing_field_name_52* %17 to %struct._IO_STACK_LOCATION**, !dbg !2583
  %19 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %18, align 8, !dbg !2583
  store %struct._IO_STACK_LOCATION* %19, %struct._IO_STACK_LOCATION** %currentIrpStack, align 8, !dbg !2584
  %20 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %currentIrpStack, align 8, !dbg !2585
  %21 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %20, i32 0, i32 4, !dbg !2587
  %22 = bitcast %union.__anonunion_Parameters_55* %21 to %struct.__anonstruct_DeviceIoControl_64*, !dbg !2588
  %23 = getelementptr inbounds %struct.__anonstruct_DeviceIoControl_64, %struct.__anonstruct_DeviceIoControl_64* %22, i32 0, i32 2, !dbg !2589
  %24 = load i64, i64* %23, align 4, !dbg !2589
  %25 = icmp eq i64 %24, 458784, !dbg !2590
  call void @llvm.dbg.declare(metadata %struct._IRP** %3, metadata !2214, metadata !2009), !dbg !2591
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2216, metadata !2009), !dbg !2599
  call void @llvm.dbg.declare(metadata %struct._IRP** %1, metadata !2214, metadata !2009), !dbg !2600
  call void @llvm.dbg.declare(metadata i8* %2, metadata !2216, metadata !2009), !dbg !2603
  br i1 %25, label %26, label %173, !dbg !2604

; <label>:26                                      ; preds = %0
  %27 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %currentIrpStack, align 8, !dbg !2605
  %28 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %27, i32 0, i32 4, !dbg !2606
  %29 = bitcast %union.__anonunion_Parameters_55* %28 to %struct.__anonstruct_DeviceIoControl_64*, !dbg !2607
  %30 = getelementptr inbounds %struct.__anonstruct_DeviceIoControl_64, %struct.__anonstruct_DeviceIoControl_64* %29, i32 0, i32 0, !dbg !2608
  %31 = load i64, i64* %30, align 4, !dbg !2608
  %32 = icmp ult i64 %31, 152, !dbg !2609
  br i1 %32, label %33, label %37, !dbg !2610

; <label>:33                                      ; preds = %26
  store i64 -1073741789, i64* %status, align 8, !dbg !2611
  %34 = load %struct._IRP*, %struct._IRP** %7, align 8, !dbg !2613
  %35 = getelementptr inbounds %struct._IRP, %struct._IRP* %34, i32 0, i32 6, !dbg !2614
  %36 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %35, i32 0, i32 1, !dbg !2615
  store i64 0, i64* %36, align 8, !dbg !2616
  br label %156, !dbg !2617

; <label>:37                                      ; preds = %26
  %38 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2618
  %39 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %38, i32 0, i32 6, !dbg !2619
  %40 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %39, align 8, !dbg !2619
  store %struct._DISK_PERFORMANCE* %40, %struct._DISK_PERFORMANCE** %diskCounters, align 8, !dbg !2620
  %41 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %diskCounters, align 8, !dbg !2621
  %42 = ptrtoint %struct._DISK_PERFORMANCE* %41 to i32, !dbg !2622
  %43 = icmp eq i32 %42, 0, !dbg !2623
  br i1 %43, label %44, label %57, !dbg !2624

; <label>:44                                      ; preds = %37
  %45 = load %struct._IRP*, %struct._IRP** %7, align 8, !dbg !2625
  %46 = getelementptr inbounds %struct._IRP, %struct._IRP* %45, i32 0, i32 6, !dbg !2626
  %47 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %46, i32 0, i32 0, !dbg !2627
  %48 = bitcast %union.__anonunion____missing_field_name_6* %47 to i64*, !dbg !2628
  store i64 -1073741823, i64* %48, align 8, !dbg !2629
  store i32 -1073741823, i32* @myStatus, align 4, !dbg !2630
  %49 = load %struct._IRP*, %struct._IRP** %7, align 8, !dbg !2631
  %50 = bitcast %struct._IRP** %3 to i8*, !dbg !2632
  call void @llvm.lifetime.start(i64 8, i8* %50), !dbg !2632
  call void @llvm.lifetime.start(i64 1, i8* %4), !dbg !2632
  store %struct._IRP* %49, %struct._IRP** %3, align 8, !dbg !2632
  store i8 0, i8* %4, align 1, !dbg !2632
  %51 = load i32, i32* @s, align 4, !dbg !2633
  %52 = load i32, i32* @NP, align 4, !dbg !2634
  %53 = icmp eq i32 %51, %52, !dbg !2635
  br i1 %53, label %IofCompleteRequest.exit, label %54, !dbg !2636

; <label>:54                                      ; preds = %44
  call void (...) @__VERIFIER_error() #6, !dbg !2637
  unreachable, !dbg !2637

IofCompleteRequest.exit:                          ; preds = %44
  %55 = load i32, i32* @DC, align 4, !dbg !2639
  store i32 %55, i32* @s, align 4, !dbg !2640
  %56 = bitcast %struct._IRP** %3 to i8*, !dbg !2641
  call void @llvm.lifetime.end(i64 8, i8* %56), !dbg !2641
  call void @llvm.lifetime.end(i64 1, i8* %4), !dbg !2641
  store i64 -1073741823, i64* %5, !dbg !2642
  br label %196, !dbg !2642

; <label>:57                                      ; preds = %37
  br label %58

; <label>:58                                      ; preds = %57
  %59 = load %struct._IRP*, %struct._IRP** %7, align 8, !dbg !2643
  %60 = getelementptr inbounds %struct._IRP, %struct._IRP* %59, i32 0, i32 4, !dbg !2645
  %61 = bitcast %union.__anonunion_AssociatedIrp_44* %60 to i8**, !dbg !2646
  %62 = load i8*, i8** %61, align 8, !dbg !2646
  %63 = bitcast i8* %62 to %struct._DISK_PERFORMANCE*, !dbg !2647
  store %struct._DISK_PERFORMANCE* %63, %struct._DISK_PERFORMANCE** %totalCounters, align 8, !dbg !2648
  %64 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %totalCounters, align 8, !dbg !2649
  %65 = bitcast %struct._DISK_PERFORMANCE* %64 to i8*, !dbg !2649
  %66 = call i8* @memset(i8* %65, i32 0, i32 152), !dbg !2650
  %67 = call { i64, i64 } @KeQueryPerformanceCounter(%union._LARGE_INTEGER* %frequency), !dbg !2651
  %68 = getelementptr %union._LARGE_INTEGER, %union._LARGE_INTEGER* %8, i32 0, i32 0, !dbg !2651
  %69 = bitcast %struct.__anonstruct____missing_field_name_1* %68 to { i64, i64 }*, !dbg !2651
  %70 = getelementptr { i64, i64 }, { i64, i64 }* %69, i32 0, i32 0, !dbg !2651
  %71 = extractvalue { i64, i64 } %67, 0, !dbg !2651
  store i64 %71, i64* %70, align 8, !dbg !2651
  %72 = getelementptr { i64, i64 }, { i64, i64 }* %69, i32 0, i32 1, !dbg !2651
  %73 = extractvalue { i64, i64 } %67, 1, !dbg !2651
  store i64 %73, i64* %72, align 8, !dbg !2651
  %74 = bitcast %union._LARGE_INTEGER* %perfctr to i8*, !dbg !2651
  %75 = bitcast %union._LARGE_INTEGER* %8 to i8*, !dbg !2651
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 16, i32 8, i1 false), !dbg !2651
  %76 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %totalCounters, align 8, !dbg !2652
  %77 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %76, i32 0, i32 9, !dbg !2653
  call void @KeQuerySystemTime(%union._LARGE_INTEGER* %77), !dbg !2654
  store i64 0, i64* %i, align 8, !dbg !2655
  br label %78, !dbg !2656

; <label>:78                                      ; preds = %87, %58
  br label %79, !dbg !2658

; <label>:79                                      ; preds = %78
  %80 = load i64, i64* %i, align 8, !dbg !2659
  %81 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2662
  %82 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %81, i32 0, i32 5, !dbg !2663
  %83 = load i64, i64* %82, align 8, !dbg !2663
  %84 = icmp ult i64 %80, %83, !dbg !2664
  br i1 %84, label %85, label %86, !dbg !2665

; <label>:85                                      ; preds = %79
  br label %87, !dbg !2666

; <label>:86                                      ; preds = %79
  br label %101, !dbg !2668

; <label>:87                                      ; preds = %85
  %88 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %totalCounters, align 8, !dbg !2670
  %89 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %diskCounters, align 8, !dbg !2672
  %90 = bitcast %union._LARGE_INTEGER* %frequency to { i64, i64 }*, !dbg !2673
  %91 = getelementptr { i64, i64 }, { i64, i64 }* %90, i32 0, i32 0, !dbg !2673
  %92 = load i64, i64* %91, align 1, !dbg !2673
  %93 = getelementptr { i64, i64 }, { i64, i64 }* %90, i32 0, i32 1, !dbg !2673
  %94 = load i64, i64* %93, align 1, !dbg !2673
  call void @DiskPerfAddCounters(%struct._DISK_PERFORMANCE* %88, %struct._DISK_PERFORMANCE* %89, i64 %92, i64 %94), !dbg !2673
  %95 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %diskCounters, align 8, !dbg !2674
  %96 = bitcast %struct._DISK_PERFORMANCE* %95 to i8*, !dbg !2675
  %97 = getelementptr inbounds i8, i8* %96, i64 ptrtoint (%union._LARGE_INTEGER* getelementptr inbounds (%struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* null, i32 0, i32 9) to i64), !dbg !2676
  %98 = bitcast i8* %97 to %struct._DISK_PERFORMANCE*, !dbg !2677
  store %struct._DISK_PERFORMANCE* %98, %struct._DISK_PERFORMANCE** %diskCounters, align 8, !dbg !2678
  %99 = load i64, i64* %i, align 8, !dbg !2679
  %100 = add i64 %99, 1, !dbg !2679
  store i64 %100, i64* %i, align 8, !dbg !2679
  br label %78, !dbg !2656

; <label>:101                                     ; preds = %86
  %102 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2680
  %103 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %102, i32 0, i32 8, !dbg !2681
  %104 = load i64, i64* %103, align 8, !dbg !2681
  %105 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %totalCounters, align 8, !dbg !2682
  %106 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %105, i32 0, i32 7, !dbg !2683
  store i64 %104, i64* %106, align 8, !dbg !2684
  %107 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %totalCounters, align 8, !dbg !2685
  %108 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %107, i32 0, i32 7, !dbg !2687
  %109 = load i64, i64* %108, align 8, !dbg !2687
  %110 = icmp eq i64 %109, 0, !dbg !2688
  br i1 %110, label %111, label %137, !dbg !2689

; <label>:111                                     ; preds = %101
  %112 = bitcast %union._LARGE_INTEGER* %perfctr to i64*, !dbg !2690
  %113 = load i64, i64* %112, align 8, !dbg !2690
  %114 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2692
  %115 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %114, i32 0, i32 7, !dbg !2693
  %116 = bitcast %union._LARGE_INTEGER* %115 to i64*, !dbg !2694
  %117 = load i64, i64* %116, align 8, !dbg !2694
  %118 = sub nsw i64 %113, %117, !dbg !2695
  %119 = bitcast %union._LARGE_INTEGER* %difference to i64*, !dbg !2696
  store i64 %118, i64* %119, align 8, !dbg !2697
  %120 = bitcast %union._LARGE_INTEGER* %difference to i64*, !dbg !2698
  %121 = load i64, i64* %120, align 8, !dbg !2698
  %122 = icmp sgt i64 %121, 0, !dbg !2700
  br i1 %122, label %123, label %135, !dbg !2701

; <label>:123                                     ; preds = %111
  %124 = bitcast %union._LARGE_INTEGER* %difference to i64*, !dbg !2702
  %125 = load i64, i64* %124, align 8, !dbg !2702
  %126 = mul nsw i64 10000000, %125, !dbg !2704
  %127 = bitcast %union._LARGE_INTEGER* %frequency to i64*, !dbg !2705
  %128 = load i64, i64* %127, align 8, !dbg !2705
  %129 = sdiv i64 %126, %128, !dbg !2706
  %130 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %totalCounters, align 8, !dbg !2707
  %131 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %130, i32 0, i32 4, !dbg !2708
  %132 = bitcast %union._LARGE_INTEGER* %131 to i64*, !dbg !2709
  %133 = load i64, i64* %132, align 8, !dbg !2710
  %134 = add nsw i64 %133, %129, !dbg !2710
  store i64 %134, i64* %132, align 8, !dbg !2710
  br label %136, !dbg !2711

; <label>:135                                     ; preds = %111
  br label %136

; <label>:136                                     ; preds = %135, %123
  br label %138, !dbg !2712

; <label>:137                                     ; preds = %101
  br label %138

; <label>:138                                     ; preds = %137, %136
  %139 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2713
  %140 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %139, i32 0, i32 3, !dbg !2715
  %141 = load i64, i64* %140, align 8, !dbg !2715
  %142 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %totalCounters, align 8, !dbg !2716
  %143 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %142, i32 0, i32 10, !dbg !2717
  store i64 %141, i64* %143, align 8, !dbg !2718
  %144 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %totalCounters, align 8, !dbg !2719
  %145 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %144, i32 0, i32 11, !dbg !2720
  %146 = getelementptr inbounds [8 x i16], [8 x i16]* %145, i32 0, i64 0, !dbg !2719
  %147 = bitcast i16* %146 to i8*, !dbg !2721
  %148 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2722
  %149 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %148, i32 0, i32 4, !dbg !2723
  %150 = getelementptr inbounds [8 x i16], [8 x i16]* %149, i32 0, i64 0, !dbg !2722
  %151 = bitcast i16* %150 to i8*, !dbg !2724
  %152 = call i8* @memcpy(i8* %147, i8* %151, i32 16), !dbg !2725
  store i64 0, i64* %status, align 8, !dbg !2726
  %153 = load %struct._IRP*, %struct._IRP** %7, align 8, !dbg !2727
  %154 = getelementptr inbounds %struct._IRP, %struct._IRP* %153, i32 0, i32 6, !dbg !2728
  %155 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %154, i32 0, i32 1, !dbg !2729
  store i64 152, i64* %155, align 8, !dbg !2730
  br label %156

; <label>:156                                     ; preds = %138, %33
  %157 = load i64, i64* %status, align 8, !dbg !2731
  %158 = load %struct._IRP*, %struct._IRP** %7, align 8, !dbg !2732
  %159 = getelementptr inbounds %struct._IRP, %struct._IRP* %158, i32 0, i32 6, !dbg !2733
  %160 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %159, i32 0, i32 0, !dbg !2734
  %161 = bitcast %union.__anonunion____missing_field_name_6* %160 to i64*, !dbg !2735
  store i64 %157, i64* %161, align 8, !dbg !2736
  %162 = load i64, i64* %status, align 8, !dbg !2737
  %163 = trunc i64 %162 to i32, !dbg !2737
  store i32 %163, i32* @myStatus, align 4, !dbg !2738
  %164 = load %struct._IRP*, %struct._IRP** %7, align 8, !dbg !2739
  %165 = bitcast %struct._IRP** %1 to i8*, !dbg !2740
  call void @llvm.lifetime.start(i64 8, i8* %165), !dbg !2740
  call void @llvm.lifetime.start(i64 1, i8* %2), !dbg !2740
  store %struct._IRP* %164, %struct._IRP** %1, align 8, !dbg !2740
  store i8 0, i8* %2, align 1, !dbg !2740
  %166 = load i32, i32* @s, align 4, !dbg !2741
  %167 = load i32, i32* @NP, align 4, !dbg !2742
  %168 = icmp eq i32 %166, %167, !dbg !2743
  br i1 %168, label %IofCompleteRequest.exit1, label %169, !dbg !2744

; <label>:169                                     ; preds = %156
  call void (...) @__VERIFIER_error() #6, !dbg !2745
  unreachable, !dbg !2745

IofCompleteRequest.exit1:                         ; preds = %156
  %170 = load i32, i32* @DC, align 4, !dbg !2747
  store i32 %170, i32* @s, align 4, !dbg !2748
  %171 = bitcast %struct._IRP** %1 to i8*, !dbg !2749
  call void @llvm.lifetime.end(i64 8, i8* %171), !dbg !2749
  call void @llvm.lifetime.end(i64 1, i8* %2), !dbg !2749
  %172 = load i64, i64* %status, align 8, !dbg !2750
  store i64 %172, i64* %5, !dbg !2751
  br label %196, !dbg !2751

; <label>:173                                     ; preds = %0
  %174 = load %struct._IRP*, %struct._IRP** %7, align 8, !dbg !2752
  %175 = getelementptr inbounds %struct._IRP, %struct._IRP* %174, i32 0, i32 10, !dbg !2755
  %176 = load i8, i8* %175, align 1, !dbg !2755
  %177 = sext i8 %176 to i32, !dbg !2756
  %178 = add nsw i32 %177, 1, !dbg !2757
  %179 = trunc i32 %178 to i8, !dbg !2758
  %180 = load %struct._IRP*, %struct._IRP** %7, align 8, !dbg !2759
  %181 = getelementptr inbounds %struct._IRP, %struct._IRP* %180, i32 0, i32 10, !dbg !2760
  store i8 %179, i8* %181, align 1, !dbg !2761
  %182 = load %struct._IRP*, %struct._IRP** %7, align 8, !dbg !2762
  %183 = getelementptr inbounds %struct._IRP, %struct._IRP* %182, i32 0, i32 20, !dbg !2763
  %184 = bitcast %union.__anonunion_Tail_47* %183 to %struct.__anonstruct_Overlay_48*, !dbg !2764
  %185 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %184, i32 0, i32 3, !dbg !2765
  %186 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %185, i32 0, i32 1, !dbg !2766
  %187 = bitcast %union.__anonunion____missing_field_name_52* %186 to %struct._IO_STACK_LOCATION**, !dbg !2767
  %188 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %187, align 8, !dbg !2768
  %189 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %188, i64 1, !dbg !2768
  store %struct._IO_STACK_LOCATION* %189, %struct._IO_STACK_LOCATION** %187, align 8, !dbg !2768
  %190 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2769
  %191 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %190, i32 0, i32 1, !dbg !2770
  %192 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %191, align 8, !dbg !2770
  %193 = load %struct._IRP*, %struct._IRP** %7, align 8, !dbg !2771
  %194 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %192, %struct._IRP* %193), !dbg !2772
  store i64 %194, i64* %tmp, align 8, !dbg !2773
  %195 = load i64, i64* %tmp, align 8, !dbg !2774
  store i64 %195, i64* %5, !dbg !2775
  br label %196, !dbg !2775

; <label>:196                                     ; preds = %173, %IofCompleteRequest.exit1, %IofCompleteRequest.exit
  %197 = load i64, i64* %5, !dbg !2776
  ret i64 %197, !dbg !2776
}

; Function Attrs: nounwind ssp uwtable
define i64 @DiskPerfWmi(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca %struct._IRP*, align 8
  %deviceExtension.i.1 = alloca %struct._DEVICE_EXTENSION*, align 8
  %tmp.i.2 = alloca i64, align 8
  %3 = alloca %struct._IRP*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct._DEVICE_OBJECT*, align 8
  %6 = alloca %struct._IRP*, align 8
  %deviceExtension.i = alloca %struct._DEVICE_EXTENSION*, align 8
  %tmp.i = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct._DEVICE_OBJECT*, align 8
  %9 = alloca %struct._IRP*, align 8
  %irpSp = alloca %struct._IO_STACK_LOCATION*, align 8
  %status = alloca i64, align 8
  %wmilibContext = alloca %struct._WMILIB_CONTEXT*, align 8
  %disposition = alloca i32, align 4
  %deviceExtension = alloca %struct._DEVICE_EXTENSION*, align 8
  %tmp = alloca i64, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %8, metadata !2777, metadata !2009), !dbg !2778
  store %struct._IRP* %Irp, %struct._IRP** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %9, metadata !2779, metadata !2009), !dbg !2780
  call void @llvm.dbg.declare(metadata %struct._IO_STACK_LOCATION** %irpSp, metadata !2781, metadata !2009), !dbg !2782
  call void @llvm.dbg.declare(metadata i64* %status, metadata !2783, metadata !2009), !dbg !2784
  call void @llvm.dbg.declare(metadata %struct._WMILIB_CONTEXT** %wmilibContext, metadata !2785, metadata !2009), !dbg !2786
  call void @llvm.dbg.declare(metadata i32* %disposition, metadata !2787, metadata !2009), !dbg !2789
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension, metadata !2790, metadata !2009), !dbg !2791
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !2792, metadata !2009), !dbg !2793
  %10 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %8, align 8, !dbg !2794
  %11 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %10, i32 0, i32 11, !dbg !2796
  %12 = load i8*, i8** %11, align 8, !dbg !2796
  %13 = bitcast i8* %12 to %struct._DEVICE_EXTENSION*, !dbg !2794
  store %struct._DEVICE_EXTENSION* %13, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2797
  %14 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2798
  %15 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %14, i32 0, i32 14, !dbg !2799
  store %struct._WMILIB_CONTEXT* %15, %struct._WMILIB_CONTEXT** %wmilibContext, align 8, !dbg !2800
  %16 = load %struct._WMILIB_CONTEXT*, %struct._WMILIB_CONTEXT** %wmilibContext, align 8, !dbg !2801
  %17 = getelementptr inbounds %struct._WMILIB_CONTEXT, %struct._WMILIB_CONTEXT* %16, i32 0, i32 0, !dbg !2803
  %18 = load i64, i64* %17, align 8, !dbg !2803
  %19 = icmp eq i64 %18, 0, !dbg !2804
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %5, metadata !2135, metadata !2009), !dbg !2805
  call void @llvm.dbg.declare(metadata %struct._IRP** %6, metadata !2137, metadata !2009), !dbg !2809
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension.i, metadata !2139, metadata !2009), !dbg !2810
  call void @llvm.dbg.declare(metadata i64* %tmp.i, metadata !2142, metadata !2009), !dbg !2811
  call void @llvm.dbg.declare(metadata %struct._IRP** %3, metadata !2214, metadata !2009), !dbg !2812
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2216, metadata !2009), !dbg !2822
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !2135, metadata !2009), !dbg !2823
  call void @llvm.dbg.declare(metadata %struct._IRP** %2, metadata !2137, metadata !2009), !dbg !2826
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension.i.1, metadata !2139, metadata !2009), !dbg !2827
  call void @llvm.dbg.declare(metadata i64* %tmp.i.2, metadata !2142, metadata !2009), !dbg !2828
  br i1 %19, label %20, label %63, !dbg !2829

; <label>:20                                      ; preds = %0
  %21 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %8, align 8, !dbg !2830
  %22 = load %struct._IRP*, %struct._IRP** %9, align 8, !dbg !2831
  %23 = bitcast %struct._DEVICE_OBJECT** %5 to i8*, !dbg !2832
  call void @llvm.lifetime.start(i64 8, i8* %23), !dbg !2832
  %24 = bitcast %struct._IRP** %6 to i8*, !dbg !2832
  call void @llvm.lifetime.start(i64 8, i8* %24), !dbg !2832
  %25 = bitcast %struct._DEVICE_EXTENSION** %deviceExtension.i to i8*, !dbg !2832
  call void @llvm.lifetime.start(i64 8, i8* %25), !dbg !2832
  %26 = bitcast i64* %tmp.i to i8*, !dbg !2832
  call void @llvm.lifetime.start(i64 8, i8* %26), !dbg !2832
  store %struct._DEVICE_OBJECT* %21, %struct._DEVICE_OBJECT** %5, align 8, !dbg !2832
  store %struct._IRP* %22, %struct._IRP** %6, align 8, !dbg !2832
  %27 = load i32, i32* @s, align 4, !dbg !2833
  %28 = load i32, i32* @NP, align 4, !dbg !2834
  %29 = icmp eq i32 %27, %28, !dbg !2835
  br i1 %29, label %DiskPerfSendToNextDriver.exit, label %30, !dbg !2836

; <label>:30                                      ; preds = %20
  call void (...) @__VERIFIER_error() #6, !dbg !2837
  unreachable, !dbg !2837

DiskPerfSendToNextDriver.exit:                    ; preds = %20
  %31 = load i32, i32* @SKIP1, align 4, !dbg !2839
  store i32 %31, i32* @s, align 4, !dbg !2840
  %32 = load %struct._IRP*, %struct._IRP** %6, align 8, !dbg !2841
  %33 = getelementptr inbounds %struct._IRP, %struct._IRP* %32, i32 0, i32 10, !dbg !2842
  %34 = load i8, i8* %33, align 1, !dbg !2842
  %35 = sext i8 %34 to i32, !dbg !2843
  %36 = add nsw i32 %35, 1, !dbg !2844
  %37 = trunc i32 %36 to i8, !dbg !2845
  %38 = load %struct._IRP*, %struct._IRP** %6, align 8, !dbg !2846
  %39 = getelementptr inbounds %struct._IRP, %struct._IRP* %38, i32 0, i32 10, !dbg !2847
  store i8 %37, i8* %39, align 1, !dbg !2848
  %40 = load %struct._IRP*, %struct._IRP** %6, align 8, !dbg !2849
  %41 = getelementptr inbounds %struct._IRP, %struct._IRP* %40, i32 0, i32 20, !dbg !2850
  %42 = bitcast %union.__anonunion_Tail_47* %41 to %struct.__anonstruct_Overlay_48*, !dbg !2851
  %43 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %42, i32 0, i32 3, !dbg !2852
  %44 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %43, i32 0, i32 1, !dbg !2853
  %45 = bitcast %union.__anonunion____missing_field_name_52* %44 to %struct._IO_STACK_LOCATION**, !dbg !2854
  %46 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %45, align 8, !dbg !2855
  %47 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %46, i64 1, !dbg !2855
  store %struct._IO_STACK_LOCATION* %47, %struct._IO_STACK_LOCATION** %45, align 8, !dbg !2855
  %48 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %5, align 8, !dbg !2856
  %49 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %48, i32 0, i32 11, !dbg !2857
  %50 = load i8*, i8** %49, align 8, !dbg !2857
  %51 = bitcast i8* %50 to %struct._DEVICE_EXTENSION*, !dbg !2858
  store %struct._DEVICE_EXTENSION* %51, %struct._DEVICE_EXTENSION** %deviceExtension.i, align 8, !dbg !2859
  %52 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension.i, align 8, !dbg !2860
  %53 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %52, i32 0, i32 1, !dbg !2861
  %54 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %53, align 8, !dbg !2861
  %55 = load %struct._IRP*, %struct._IRP** %6, align 8, !dbg !2862
  %56 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %54, %struct._IRP* %55) #4, !dbg !2863
  store i64 %56, i64* %tmp.i, align 8, !dbg !2864
  %57 = load i64, i64* %tmp.i, align 8, !dbg !2865
  %58 = bitcast %struct._DEVICE_OBJECT** %5 to i8*, !dbg !2866
  call void @llvm.lifetime.end(i64 8, i8* %58), !dbg !2866
  %59 = bitcast %struct._IRP** %6 to i8*, !dbg !2866
  call void @llvm.lifetime.end(i64 8, i8* %59), !dbg !2866
  %60 = bitcast %struct._DEVICE_EXTENSION** %deviceExtension.i to i8*, !dbg !2866
  call void @llvm.lifetime.end(i64 8, i8* %60), !dbg !2866
  %61 = bitcast i64* %tmp.i to i8*, !dbg !2866
  call void @llvm.lifetime.end(i64 8, i8* %61), !dbg !2866
  store i64 %57, i64* %tmp, align 8, !dbg !2867
  %62 = load i64, i64* %tmp, align 8, !dbg !2868
  store i64 %62, i64* %7, !dbg !2869
  br label %140, !dbg !2869

; <label>:63                                      ; preds = %0
  br label %64

; <label>:64                                      ; preds = %63
  %65 = load %struct._IRP*, %struct._IRP** %9, align 8, !dbg !2870
  %66 = getelementptr inbounds %struct._IRP, %struct._IRP* %65, i32 0, i32 20, !dbg !2872
  %67 = bitcast %union.__anonunion_Tail_47* %66 to %struct.__anonstruct_Overlay_48*, !dbg !2873
  %68 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %67, i32 0, i32 3, !dbg !2874
  %69 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %68, i32 0, i32 1, !dbg !2875
  %70 = bitcast %union.__anonunion____missing_field_name_52* %69 to %struct._IO_STACK_LOCATION**, !dbg !2876
  %71 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %70, align 8, !dbg !2876
  store %struct._IO_STACK_LOCATION* %71, %struct._IO_STACK_LOCATION** %irpSp, align 8, !dbg !2877
  store i64 0, i64* %status, align 8, !dbg !2878
  %72 = load i32, i32* %disposition, align 4, !dbg !2879
  %73 = icmp eq i32 %72, 0, !dbg !2880
  br i1 %73, label %74, label %75, !dbg !2881

; <label>:74                                      ; preds = %64
  br label %82, !dbg !2882

; <label>:75                                      ; preds = %64
  %76 = load i32, i32* %disposition, align 4, !dbg !2884
  %77 = icmp eq i32 %76, 1, !dbg !2885
  br i1 %77, label %78, label %79, !dbg !2886

; <label>:78                                      ; preds = %75
  br label %83, !dbg !2887

; <label>:79                                      ; preds = %75
  br label %92, !dbg !2889
                                                  ; No predecessors!
  br i1 false, label %81, label %134, !dbg !2890

; <label>:81                                      ; preds = %80
  br label %82, !dbg !2891

; <label>:82                                      ; preds = %81, %74
  br label %135, !dbg !2892

; <label>:83                                      ; preds = %78
  %84 = load %struct._IRP*, %struct._IRP** %9, align 8, !dbg !2893
  %85 = bitcast %struct._IRP** %3 to i8*, !dbg !2894
  call void @llvm.lifetime.start(i64 8, i8* %85), !dbg !2894
  call void @llvm.lifetime.start(i64 1, i8* %4), !dbg !2894
  store %struct._IRP* %84, %struct._IRP** %3, align 8, !dbg !2894
  store i8 0, i8* %4, align 1, !dbg !2894
  %86 = load i32, i32* @s, align 4, !dbg !2895
  %87 = load i32, i32* @NP, align 4, !dbg !2896
  %88 = icmp eq i32 %86, %87, !dbg !2897
  br i1 %88, label %IofCompleteRequest.exit, label %89, !dbg !2898

; <label>:89                                      ; preds = %83
  call void (...) @__VERIFIER_error() #6, !dbg !2899
  unreachable, !dbg !2899

IofCompleteRequest.exit:                          ; preds = %83
  %90 = load i32, i32* @DC, align 4, !dbg !2901
  store i32 %90, i32* @s, align 4, !dbg !2902
  %91 = bitcast %struct._IRP** %3 to i8*, !dbg !2903
  call void @llvm.lifetime.end(i64 8, i8* %91), !dbg !2903
  call void @llvm.lifetime.end(i64 1, i8* %4), !dbg !2903
  br label %135, !dbg !2904

; <label>:92                                      ; preds = %79
  %93 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %8, align 8, !dbg !2905
  %94 = load %struct._IRP*, %struct._IRP** %9, align 8, !dbg !2906
  %95 = bitcast %struct._DEVICE_OBJECT** %1 to i8*, !dbg !2907
  call void @llvm.lifetime.start(i64 8, i8* %95), !dbg !2907
  %96 = bitcast %struct._IRP** %2 to i8*, !dbg !2907
  call void @llvm.lifetime.start(i64 8, i8* %96), !dbg !2907
  %97 = bitcast %struct._DEVICE_EXTENSION** %deviceExtension.i.1 to i8*, !dbg !2907
  call void @llvm.lifetime.start(i64 8, i8* %97), !dbg !2907
  %98 = bitcast i64* %tmp.i.2 to i8*, !dbg !2907
  call void @llvm.lifetime.start(i64 8, i8* %98), !dbg !2907
  store %struct._DEVICE_OBJECT* %93, %struct._DEVICE_OBJECT** %1, align 8, !dbg !2907
  store %struct._IRP* %94, %struct._IRP** %2, align 8, !dbg !2907
  %99 = load i32, i32* @s, align 4, !dbg !2908
  %100 = load i32, i32* @NP, align 4, !dbg !2909
  %101 = icmp eq i32 %99, %100, !dbg !2910
  br i1 %101, label %DiskPerfSendToNextDriver.exit3, label %102, !dbg !2911

; <label>:102                                     ; preds = %92
  call void (...) @__VERIFIER_error() #6, !dbg !2912
  unreachable, !dbg !2912

DiskPerfSendToNextDriver.exit3:                   ; preds = %92
  %103 = load i32, i32* @SKIP1, align 4, !dbg !2914
  store i32 %103, i32* @s, align 4, !dbg !2915
  %104 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2916
  %105 = getelementptr inbounds %struct._IRP, %struct._IRP* %104, i32 0, i32 10, !dbg !2917
  %106 = load i8, i8* %105, align 1, !dbg !2917
  %107 = sext i8 %106 to i32, !dbg !2918
  %108 = add nsw i32 %107, 1, !dbg !2919
  %109 = trunc i32 %108 to i8, !dbg !2920
  %110 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2921
  %111 = getelementptr inbounds %struct._IRP, %struct._IRP* %110, i32 0, i32 10, !dbg !2922
  store i8 %109, i8* %111, align 1, !dbg !2923
  %112 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2924
  %113 = getelementptr inbounds %struct._IRP, %struct._IRP* %112, i32 0, i32 20, !dbg !2925
  %114 = bitcast %union.__anonunion_Tail_47* %113 to %struct.__anonstruct_Overlay_48*, !dbg !2926
  %115 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %114, i32 0, i32 3, !dbg !2927
  %116 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %115, i32 0, i32 1, !dbg !2928
  %117 = bitcast %union.__anonunion____missing_field_name_52* %116 to %struct._IO_STACK_LOCATION**, !dbg !2929
  %118 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %117, align 8, !dbg !2930
  %119 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %118, i64 1, !dbg !2930
  store %struct._IO_STACK_LOCATION* %119, %struct._IO_STACK_LOCATION** %117, align 8, !dbg !2930
  %120 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, align 8, !dbg !2931
  %121 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %120, i32 0, i32 11, !dbg !2932
  %122 = load i8*, i8** %121, align 8, !dbg !2932
  %123 = bitcast i8* %122 to %struct._DEVICE_EXTENSION*, !dbg !2933
  store %struct._DEVICE_EXTENSION* %123, %struct._DEVICE_EXTENSION** %deviceExtension.i.1, align 8, !dbg !2934
  %124 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension.i.1, align 8, !dbg !2935
  %125 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %124, i32 0, i32 1, !dbg !2936
  %126 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %125, align 8, !dbg !2936
  %127 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2937
  %128 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %126, %struct._IRP* %127) #4, !dbg !2938
  store i64 %128, i64* %tmp.i.2, align 8, !dbg !2939
  %129 = load i64, i64* %tmp.i.2, align 8, !dbg !2940
  %130 = bitcast %struct._DEVICE_OBJECT** %1 to i8*, !dbg !2941
  call void @llvm.lifetime.end(i64 8, i8* %130), !dbg !2941
  %131 = bitcast %struct._IRP** %2 to i8*, !dbg !2941
  call void @llvm.lifetime.end(i64 8, i8* %131), !dbg !2941
  %132 = bitcast %struct._DEVICE_EXTENSION** %deviceExtension.i.1 to i8*, !dbg !2941
  call void @llvm.lifetime.end(i64 8, i8* %132), !dbg !2941
  %133 = bitcast i64* %tmp.i.2 to i8*, !dbg !2941
  call void @llvm.lifetime.end(i64 8, i8* %133), !dbg !2941
  store i64 %129, i64* %status, align 8, !dbg !2942
  br label %135, !dbg !2943

; <label>:134                                     ; preds = %80
  br label %135, !dbg !2944

; <label>:135                                     ; preds = %134, %DiskPerfSendToNextDriver.exit3, %IofCompleteRequest.exit, %82
  br label %136

; <label>:136                                     ; preds = %135
  br label %137

; <label>:137                                     ; preds = %136
  br label %138

; <label>:138                                     ; preds = %137
  %139 = load i64, i64* %status, align 8, !dbg !2945
  store i64 %139, i64* %7, !dbg !2946
  br label %140, !dbg !2946

; <label>:140                                     ; preds = %138, %DiskPerfSendToNextDriver.exit
  %141 = load i64, i64* %7, !dbg !2947
  ret i64 %141, !dbg !2947
}

; Function Attrs: nounwind ssp uwtable
define i64 @DiskPerfShutdownFlush(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca %struct._IRP*, align 8
  %deviceExtension = alloca %struct._DEVICE_EXTENSION*, align 8
  %tmp = alloca i64, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !2948, metadata !2009), !dbg !2949
  store %struct._IRP* %Irp, %struct._IRP** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %2, metadata !2950, metadata !2009), !dbg !2951
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension, metadata !2952, metadata !2009), !dbg !2953
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !2954, metadata !2009), !dbg !2955
  %3 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, align 8, !dbg !2956
  %4 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %3, i32 0, i32 11, !dbg !2959
  %5 = load i8*, i8** %4, align 8, !dbg !2959
  %6 = bitcast i8* %5 to %struct._DEVICE_EXTENSION*, !dbg !2956
  store %struct._DEVICE_EXTENSION* %6, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2960
  %7 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2961
  %8 = getelementptr inbounds %struct._IRP, %struct._IRP* %7, i32 0, i32 10, !dbg !2962
  %9 = load i8, i8* %8, align 1, !dbg !2962
  %10 = sext i8 %9 to i32, !dbg !2963
  %11 = add nsw i32 %10, 1, !dbg !2964
  %12 = trunc i32 %11 to i8, !dbg !2965
  %13 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2966
  %14 = getelementptr inbounds %struct._IRP, %struct._IRP* %13, i32 0, i32 10, !dbg !2967
  store i8 %12, i8* %14, align 1, !dbg !2968
  %15 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2969
  %16 = getelementptr inbounds %struct._IRP, %struct._IRP* %15, i32 0, i32 20, !dbg !2970
  %17 = bitcast %union.__anonunion_Tail_47* %16 to %struct.__anonstruct_Overlay_48*, !dbg !2971
  %18 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %17, i32 0, i32 3, !dbg !2972
  %19 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %18, i32 0, i32 1, !dbg !2973
  %20 = bitcast %union.__anonunion____missing_field_name_52* %19 to %struct._IO_STACK_LOCATION**, !dbg !2974
  %21 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %20, align 8, !dbg !2975
  %22 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %21, i64 1, !dbg !2975
  store %struct._IO_STACK_LOCATION* %22, %struct._IO_STACK_LOCATION** %20, align 8, !dbg !2975
  %23 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !2976
  %24 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %23, i32 0, i32 1, !dbg !2977
  %25 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %24, align 8, !dbg !2977
  %26 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !2978
  %27 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %25, %struct._IRP* %26), !dbg !2979
  store i64 %27, i64* %tmp, align 8, !dbg !2980
  %28 = load i64, i64* %tmp, align 8, !dbg !2981
  ret i64 %28, !dbg !2982
}

; Function Attrs: nounwind ssp uwtable
define i64 @DiskPerfDispatchPnp(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca %struct._IRP*, align 8
  %deviceExtension.i = alloca %struct._DEVICE_EXTENSION*, align 8
  %tmp.i = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._DEVICE_OBJECT*, align 8
  %5 = alloca %struct._IRP*, align 8
  %irpSp = alloca %struct._IO_STACK_LOCATION*, align 8
  %status = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %4, metadata !2983, metadata !2009), !dbg !2984
  store %struct._IRP* %Irp, %struct._IRP** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %5, metadata !2985, metadata !2009), !dbg !2986
  call void @llvm.dbg.declare(metadata %struct._IO_STACK_LOCATION** %irpSp, metadata !2987, metadata !2009), !dbg !2988
  call void @llvm.dbg.declare(metadata i64* %status, metadata !2989, metadata !2009), !dbg !2990
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !2991, metadata !2009), !dbg !2992
  %6 = load %struct._IRP*, %struct._IRP** %5, align 8, !dbg !2993
  %7 = getelementptr inbounds %struct._IRP, %struct._IRP* %6, i32 0, i32 20, !dbg !2995
  %8 = bitcast %union.__anonunion_Tail_47* %7 to %struct.__anonstruct_Overlay_48*, !dbg !2996
  %9 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %8, i32 0, i32 3, !dbg !2997
  %10 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %9, i32 0, i32 1, !dbg !2998
  %11 = bitcast %union.__anonunion____missing_field_name_52* %10 to %struct._IO_STACK_LOCATION**, !dbg !2999
  %12 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %11, align 8, !dbg !2999
  store %struct._IO_STACK_LOCATION* %12, %struct._IO_STACK_LOCATION** %irpSp, align 8, !dbg !3000
  %13 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp, align 8, !dbg !3001
  %14 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %13, i32 0, i32 1, !dbg !3003
  %15 = load i8, i8* %14, align 1, !dbg !3003
  %16 = zext i8 %15 to i32, !dbg !3001
  %17 = icmp eq i32 %16, 0, !dbg !3004
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !2135, metadata !2009), !dbg !3005
  call void @llvm.dbg.declare(metadata %struct._IRP** %2, metadata !2137, metadata !2009), !dbg !3014
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension.i, metadata !2139, metadata !2009), !dbg !3015
  call void @llvm.dbg.declare(metadata i64* %tmp.i, metadata !2142, metadata !2009), !dbg !3016
  br i1 %17, label %18, label %19, !dbg !3017

; <label>:18                                      ; preds = %0
  br label %29, !dbg !3018

; <label>:19                                      ; preds = %0
  %20 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp, align 8, !dbg !3020
  %21 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %20, i32 0, i32 1, !dbg !3021
  %22 = load i8, i8* %21, align 1, !dbg !3021
  %23 = zext i8 %22 to i32, !dbg !3020
  %24 = icmp eq i32 %23, 2, !dbg !3022
  br i1 %24, label %25, label %26, !dbg !3023

; <label>:25                                      ; preds = %19
  br label %33, !dbg !3024

; <label>:26                                      ; preds = %19
  br label %37, !dbg !3026
                                                  ; No predecessors!
  br i1 false, label %28, label %80, !dbg !3027

; <label>:28                                      ; preds = %27
  br label %29, !dbg !3028

; <label>:29                                      ; preds = %28, %18
  %30 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %4, align 8, !dbg !3029
  %31 = load %struct._IRP*, %struct._IRP** %5, align 8, !dbg !3031
  %32 = call i64 @DiskPerfStartDevice(%struct._DEVICE_OBJECT* %30, %struct._IRP* %31), !dbg !3032
  store i64 %32, i64* %status, align 8, !dbg !3033
  br label %81, !dbg !3034

; <label>:33                                      ; preds = %25
  %34 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %4, align 8, !dbg !3035
  %35 = load %struct._IRP*, %struct._IRP** %5, align 8, !dbg !3037
  %36 = call i64 @DiskPerfRemoveDevice(%struct._DEVICE_OBJECT* %34, %struct._IRP* %35), !dbg !3038
  store i64 %36, i64* %status, align 8, !dbg !3039
  br label %81, !dbg !3040

; <label>:37                                      ; preds = %26
  %38 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %4, align 8, !dbg !3041
  %39 = load %struct._IRP*, %struct._IRP** %5, align 8, !dbg !3042
  %40 = bitcast %struct._DEVICE_OBJECT** %1 to i8*, !dbg !3043
  call void @llvm.lifetime.start(i64 8, i8* %40), !dbg !3043
  %41 = bitcast %struct._IRP** %2 to i8*, !dbg !3043
  call void @llvm.lifetime.start(i64 8, i8* %41), !dbg !3043
  %42 = bitcast %struct._DEVICE_EXTENSION** %deviceExtension.i to i8*, !dbg !3043
  call void @llvm.lifetime.start(i64 8, i8* %42), !dbg !3043
  %43 = bitcast i64* %tmp.i to i8*, !dbg !3043
  call void @llvm.lifetime.start(i64 8, i8* %43), !dbg !3043
  store %struct._DEVICE_OBJECT* %38, %struct._DEVICE_OBJECT** %1, align 8, !dbg !3043
  store %struct._IRP* %39, %struct._IRP** %2, align 8, !dbg !3043
  %44 = load i32, i32* @s, align 4, !dbg !3044
  %45 = load i32, i32* @NP, align 4, !dbg !3045
  %46 = icmp eq i32 %44, %45, !dbg !3046
  br i1 %46, label %DiskPerfSendToNextDriver.exit, label %47, !dbg !3047

; <label>:47                                      ; preds = %37
  call void (...) @__VERIFIER_error() #6, !dbg !3048
  unreachable, !dbg !3048

DiskPerfSendToNextDriver.exit:                    ; preds = %37
  %48 = load i32, i32* @SKIP1, align 4, !dbg !3050
  store i32 %48, i32* @s, align 4, !dbg !3051
  %49 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !3052
  %50 = getelementptr inbounds %struct._IRP, %struct._IRP* %49, i32 0, i32 10, !dbg !3053
  %51 = load i8, i8* %50, align 1, !dbg !3053
  %52 = sext i8 %51 to i32, !dbg !3054
  %53 = add nsw i32 %52, 1, !dbg !3055
  %54 = trunc i32 %53 to i8, !dbg !3056
  %55 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !3057
  %56 = getelementptr inbounds %struct._IRP, %struct._IRP* %55, i32 0, i32 10, !dbg !3058
  store i8 %54, i8* %56, align 1, !dbg !3059
  %57 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !3060
  %58 = getelementptr inbounds %struct._IRP, %struct._IRP* %57, i32 0, i32 20, !dbg !3061
  %59 = bitcast %union.__anonunion_Tail_47* %58 to %struct.__anonstruct_Overlay_48*, !dbg !3062
  %60 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %59, i32 0, i32 3, !dbg !3063
  %61 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %60, i32 0, i32 1, !dbg !3064
  %62 = bitcast %union.__anonunion____missing_field_name_52* %61 to %struct._IO_STACK_LOCATION**, !dbg !3065
  %63 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %62, align 8, !dbg !3066
  %64 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %63, i64 1, !dbg !3066
  store %struct._IO_STACK_LOCATION* %64, %struct._IO_STACK_LOCATION** %62, align 8, !dbg !3066
  %65 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, align 8, !dbg !3067
  %66 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %65, i32 0, i32 11, !dbg !3068
  %67 = load i8*, i8** %66, align 8, !dbg !3068
  %68 = bitcast i8* %67 to %struct._DEVICE_EXTENSION*, !dbg !3069
  store %struct._DEVICE_EXTENSION* %68, %struct._DEVICE_EXTENSION** %deviceExtension.i, align 8, !dbg !3070
  %69 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension.i, align 8, !dbg !3071
  %70 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %69, i32 0, i32 1, !dbg !3072
  %71 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %70, align 8, !dbg !3072
  %72 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !3073
  %73 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %71, %struct._IRP* %72) #4, !dbg !3074
  store i64 %73, i64* %tmp.i, align 8, !dbg !3075
  %74 = load i64, i64* %tmp.i, align 8, !dbg !3076
  %75 = bitcast %struct._DEVICE_OBJECT** %1 to i8*, !dbg !3077
  call void @llvm.lifetime.end(i64 8, i8* %75), !dbg !3077
  %76 = bitcast %struct._IRP** %2 to i8*, !dbg !3077
  call void @llvm.lifetime.end(i64 8, i8* %76), !dbg !3077
  %77 = bitcast %struct._DEVICE_EXTENSION** %deviceExtension.i to i8*, !dbg !3077
  call void @llvm.lifetime.end(i64 8, i8* %77), !dbg !3077
  %78 = bitcast i64* %tmp.i to i8*, !dbg !3077
  call void @llvm.lifetime.end(i64 8, i8* %78), !dbg !3077
  store i64 %74, i64* %tmp, align 8, !dbg !3078
  %79 = load i64, i64* %tmp, align 8, !dbg !3079
  store i64 %79, i64* %3, !dbg !3080
  br label %86, !dbg !3080

; <label>:80                                      ; preds = %27
  br label %81, !dbg !3081

; <label>:81                                      ; preds = %80, %33, %29
  br label %82

; <label>:82                                      ; preds = %81
  br label %83

; <label>:83                                      ; preds = %82
  br label %84

; <label>:84                                      ; preds = %83
  %85 = load i64, i64* %status, align 8, !dbg !3082
  store i64 %85, i64* %3, !dbg !3083
  br label %86, !dbg !3083

; <label>:86                                      ; preds = %84, %DiskPerfSendToNextDriver.exit
  %87 = load i64, i64* %3, !dbg !3084
  ret i64 %87, !dbg !3084
}

; Function Attrs: nounwind ssp uwtable
define i64 @DiskPerfDispatchPower(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca %struct._IRP*, align 8
  %deviceExtension = alloca %struct._DEVICE_EXTENSION*, align 8
  %tmp = alloca i64, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !3085, metadata !2009), !dbg !3086
  store %struct._IRP* %Irp, %struct._IRP** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %2, metadata !3087, metadata !2009), !dbg !3088
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension, metadata !3089, metadata !2009), !dbg !3090
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !3091, metadata !2009), !dbg !3092
  %3 = load i32, i32* @s, align 4, !dbg !3093
  %4 = load i32, i32* @NP, align 4, !dbg !3096
  %5 = icmp eq i32 %3, %4, !dbg !3097
  br i1 %5, label %6, label %8, !dbg !3098

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* @SKIP1, align 4, !dbg !3099
  store i32 %7, i32* @s, align 4, !dbg !3101
  br label %9, !dbg !3102

; <label>:8                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !3103
  unreachable, !dbg !3103

errorFn.exit:                                     ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %errorFn.exit, %6
  %10 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !3107
  %11 = getelementptr inbounds %struct._IRP, %struct._IRP* %10, i32 0, i32 10, !dbg !3109
  %12 = load i8, i8* %11, align 1, !dbg !3109
  %13 = sext i8 %12 to i32, !dbg !3110
  %14 = add nsw i32 %13, 1, !dbg !3111
  %15 = trunc i32 %14 to i8, !dbg !3112
  %16 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !3113
  %17 = getelementptr inbounds %struct._IRP, %struct._IRP* %16, i32 0, i32 10, !dbg !3114
  store i8 %15, i8* %17, align 1, !dbg !3115
  %18 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !3116
  %19 = getelementptr inbounds %struct._IRP, %struct._IRP* %18, i32 0, i32 20, !dbg !3117
  %20 = bitcast %union.__anonunion_Tail_47* %19 to %struct.__anonstruct_Overlay_48*, !dbg !3118
  %21 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %20, i32 0, i32 3, !dbg !3119
  %22 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %21, i32 0, i32 1, !dbg !3120
  %23 = bitcast %union.__anonunion____missing_field_name_52* %22 to %struct._IO_STACK_LOCATION**, !dbg !3121
  %24 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %23, align 8, !dbg !3122
  %25 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %24, i64 1, !dbg !3122
  store %struct._IO_STACK_LOCATION* %25, %struct._IO_STACK_LOCATION** %23, align 8, !dbg !3122
  %26 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, align 8, !dbg !3123
  %27 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %26, i32 0, i32 11, !dbg !3124
  %28 = load i8*, i8** %27, align 8, !dbg !3124
  %29 = bitcast i8* %28 to %struct._DEVICE_EXTENSION*, !dbg !3125
  store %struct._DEVICE_EXTENSION* %29, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3126
  %30 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3127
  %31 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %30, i32 0, i32 1, !dbg !3128
  %32 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %31, align 8, !dbg !3128
  %33 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !3129
  %34 = call i64 @PoCallDriver(%struct._DEVICE_OBJECT* %32, %struct._IRP* %33), !dbg !3130
  store i64 %34, i64* %tmp, align 8, !dbg !3131
  %35 = load i64, i64* %tmp, align 8, !dbg !3132
  ret i64 %35, !dbg !3133
}

; Function Attrs: nounwind ssp uwtable
define i64 @DiskPerfAddDevice(%struct._DRIVER_OBJECT* %DriverObject, %struct._DEVICE_OBJECT* %PhysicalDeviceObject) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca %struct._DEVICE_OBJECT*, align 8
  %3 = alloca %struct._DEVICE_OBJECT*, align 8
  %__BLAST_NONDET___0.i.4 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %__BLAST_NONDET___0.i.i.1 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %x.i = alloca i8*, align 8
  %tmp.i.2 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %__BLAST_NONDET___0.i.i = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct._DRIVER_OBJECT*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct._UNICODE_STRING*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8, align 1
  %18 = alloca %struct._DEVICE_OBJECT**, align 8
  %__BLAST_NONDET___0.i = alloca i32, align 4
  %tmp.i = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct._DRIVER_OBJECT*, align 8
  %21 = alloca %struct._DEVICE_OBJECT*, align 8
  %status = alloca i64, align 8
  %filterDeviceObject = alloca %struct._DEVICE_OBJECT*, align 8
  %deviceExtension = alloca %struct._DEVICE_EXTENSION*, align 8
  %registrationFlag = alloca i64, align 8
  %wmilibContext = alloca %struct._WMILIB_CONTEXT*, align 8
  %buffer = alloca i8*, align 8
  %buffersize = alloca i64, align 8
  %tmp = alloca i8*, align 8
  %22 = alloca %union._LARGE_INTEGER, align 8
  store %struct._DRIVER_OBJECT* %DriverObject, %struct._DRIVER_OBJECT** %20, align 8
  call void @llvm.dbg.declare(metadata %struct._DRIVER_OBJECT** %20, metadata !3134, metadata !2009), !dbg !3135
  store %struct._DEVICE_OBJECT* %PhysicalDeviceObject, %struct._DEVICE_OBJECT** %21, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %21, metadata !3136, metadata !2009), !dbg !3137
  call void @llvm.dbg.declare(metadata i64* %status, metadata !3138, metadata !2009), !dbg !3139
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %filterDeviceObject, metadata !3140, metadata !2009), !dbg !3141
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension, metadata !3142, metadata !2009), !dbg !3143
  call void @llvm.dbg.declare(metadata i64* %registrationFlag, metadata !3144, metadata !2009), !dbg !3145
  call void @llvm.dbg.declare(metadata %struct._WMILIB_CONTEXT** %wmilibContext, metadata !3146, metadata !2009), !dbg !3147
  call void @llvm.dbg.declare(metadata i8** %buffer, metadata !3148, metadata !2009), !dbg !3149
  call void @llvm.dbg.declare(metadata i64* %buffersize, metadata !3150, metadata !2009), !dbg !3151
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !3152, metadata !2009), !dbg !3153
  store i64 0, i64* %registrationFlag, align 8, !dbg !3154
  %23 = load %struct._DRIVER_OBJECT*, %struct._DRIVER_OBJECT** %20, align 8, !dbg !3157
  %24 = bitcast i64* %11 to i8*, !dbg !3158
  call void @llvm.lifetime.start(i64 8, i8* %24), !dbg !3158
  %25 = bitcast %struct._DRIVER_OBJECT** %12 to i8*, !dbg !3158
  call void @llvm.lifetime.start(i64 8, i8* %25), !dbg !3158
  %26 = bitcast i64* %13 to i8*, !dbg !3158
  call void @llvm.lifetime.start(i64 8, i8* %26), !dbg !3158
  %27 = bitcast %struct._UNICODE_STRING** %14 to i8*, !dbg !3158
  call void @llvm.lifetime.start(i64 8, i8* %27), !dbg !3158
  %28 = bitcast i64* %15 to i8*, !dbg !3158
  call void @llvm.lifetime.start(i64 8, i8* %28), !dbg !3158
  %29 = bitcast i64* %16 to i8*, !dbg !3158
  call void @llvm.lifetime.start(i64 8, i8* %29), !dbg !3158
  call void @llvm.lifetime.start(i64 1, i8* %17), !dbg !3158
  %30 = bitcast %struct._DEVICE_OBJECT*** %18 to i8*, !dbg !3158
  call void @llvm.lifetime.start(i64 8, i8* %30), !dbg !3158
  %31 = bitcast i32* %__BLAST_NONDET___0.i to i8*, !dbg !3158
  call void @llvm.lifetime.start(i64 4, i8* %31), !dbg !3158
  %32 = bitcast i8** %tmp.i to i8*, !dbg !3158
  call void @llvm.lifetime.start(i64 8, i8* %32), !dbg !3158
  store %struct._DRIVER_OBJECT* %23, %struct._DRIVER_OBJECT** %12, align 8, !dbg !3158
  store i64 344, i64* %13, align 8, !dbg !3158
  store %struct._UNICODE_STRING* null, %struct._UNICODE_STRING** %14, align 8, !dbg !3158
  store i64 7, i64* %15, align 8, !dbg !3158
  store i64 0, i64* %16, align 8, !dbg !3158
  store i8 0, i8* %17, align 1, !dbg !3158
  store %struct._DEVICE_OBJECT** %filterDeviceObject, %struct._DEVICE_OBJECT*** %18, align 8, !dbg !3158
  %33 = call i32 @__VERIFIER_nondet_int() #4, !dbg !3159
  store i32 %33, i32* %__BLAST_NONDET___0.i, align 4, !dbg !3161
  %34 = load i32, i32* %__BLAST_NONDET___0.i, align 4, !dbg !3162
  %35 = icmp eq i32 %34, 0, !dbg !3165
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2058, metadata !2009), !dbg !3166
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0.i.i.1, metadata !2060, metadata !2009), !dbg !3170
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2061, metadata !2009), !dbg !3171
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2063, metadata !2009), !dbg !3172
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2065, metadata !2009), !dbg !3173
  call void @llvm.dbg.declare(metadata i8** %x.i, metadata !2067, metadata !2009), !dbg !3174
  call void @llvm.dbg.declare(metadata i8** %tmp.i.2, metadata !2069, metadata !2009), !dbg !3175
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %2, metadata !3176, metadata !2009), !dbg !3177
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %3, metadata !3180, metadata !2009), !dbg !3181
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0.i.4, metadata !3182, metadata !2009), !dbg !3183
  br i1 %35, label %36, label %43, !dbg !3184

; <label>:36                                      ; preds = %0
  %37 = bitcast i8** %9 to i8*, !dbg !3185
  call void @llvm.lifetime.start(i64 8, i8* %37) #4, !dbg !3185
  %38 = bitcast i32* %10 to i8*, !dbg !3185
  call void @llvm.lifetime.start(i64 4, i8* %38) #4, !dbg !3185
  %39 = bitcast i32* %__BLAST_NONDET___0.i.i to i8*, !dbg !3185
  call void @llvm.lifetime.start(i64 4, i8* %39) #4, !dbg !3185
  store i32 368, i32* %10, align 4, !dbg !3185
  %40 = call i32 @__VERIFIER_nondet_int() #4, !dbg !3191
  store i32 %40, i32* %__BLAST_NONDET___0.i.i, align 4, !dbg !3193
  %41 = load i32, i32* %__BLAST_NONDET___0.i.i, align 4, !dbg !3194
  %42 = icmp ne i32 %41, 0, !dbg !3194
  br i1 %42, label %44, label %45, !dbg !3195

; <label>:43                                      ; preds = %0
  store i64 -1073741823, i64* %11, !dbg !3196
  br label %IoCreateDevice.exit, !dbg !3196

; <label>:44                                      ; preds = %36
  store i8* null, i8** %9, !dbg !3197
  br label %malloc.exit.i, !dbg !3197

; <label>:45                                      ; preds = %36
  store i8* inttoptr (i64 1 to i8*), i8** %9, !dbg !3198
  br label %malloc.exit.i, !dbg !3198

malloc.exit.i:                                    ; preds = %45, %44
  %46 = load i8*, i8** %9, !dbg !3199
  %47 = bitcast i8** %9 to i8*, !dbg !3199
  call void @llvm.lifetime.end(i64 8, i8* %47) #4, !dbg !3199
  %48 = bitcast i32* %10 to i8*, !dbg !3199
  call void @llvm.lifetime.end(i64 4, i8* %48) #4, !dbg !3199
  %49 = bitcast i32* %__BLAST_NONDET___0.i.i to i8*, !dbg !3199
  call void @llvm.lifetime.end(i64 4, i8* %49) #4, !dbg !3199
  store i8* %46, i8** %tmp.i, align 8, !dbg !3200
  %50 = load i8*, i8** %tmp.i, align 8, !dbg !3201
  %51 = bitcast i8* %50 to %struct._DEVICE_OBJECT*, !dbg !3202
  %52 = load %struct._DEVICE_OBJECT**, %struct._DEVICE_OBJECT*** %18, align 8, !dbg !3203
  store %struct._DEVICE_OBJECT* %51, %struct._DEVICE_OBJECT** %52, align 8, !dbg !3204
  store i64 0, i64* %11, !dbg !3205
  br label %IoCreateDevice.exit, !dbg !3205

IoCreateDevice.exit:                              ; preds = %malloc.exit.i, %43
  %53 = load i64, i64* %11, !dbg !3206
  %54 = bitcast i64* %11 to i8*, !dbg !3206
  call void @llvm.lifetime.end(i64 8, i8* %54), !dbg !3206
  %55 = bitcast %struct._DRIVER_OBJECT** %12 to i8*, !dbg !3206
  call void @llvm.lifetime.end(i64 8, i8* %55), !dbg !3206
  %56 = bitcast i64* %13 to i8*, !dbg !3206
  call void @llvm.lifetime.end(i64 8, i8* %56), !dbg !3206
  %57 = bitcast %struct._UNICODE_STRING** %14 to i8*, !dbg !3206
  call void @llvm.lifetime.end(i64 8, i8* %57), !dbg !3206
  %58 = bitcast i64* %15 to i8*, !dbg !3206
  call void @llvm.lifetime.end(i64 8, i8* %58), !dbg !3206
  %59 = bitcast i64* %16 to i8*, !dbg !3206
  call void @llvm.lifetime.end(i64 8, i8* %59), !dbg !3206
  call void @llvm.lifetime.end(i64 1, i8* %17), !dbg !3206
  %60 = bitcast %struct._DEVICE_OBJECT*** %18 to i8*, !dbg !3206
  call void @llvm.lifetime.end(i64 8, i8* %60), !dbg !3206
  %61 = bitcast i32* %__BLAST_NONDET___0.i to i8*, !dbg !3206
  call void @llvm.lifetime.end(i64 4, i8* %61), !dbg !3206
  %62 = bitcast i8** %tmp.i to i8*, !dbg !3206
  call void @llvm.lifetime.end(i64 8, i8* %62), !dbg !3206
  store i64 %53, i64* %status, align 8, !dbg !3207
  %63 = load i64, i64* %status, align 8, !dbg !3208
  %64 = icmp sge i64 %63, 0, !dbg !3210
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2058, metadata !2009), !dbg !3211
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0.i.i, metadata !2060, metadata !2009), !dbg !3193
  call void @llvm.dbg.declare(metadata %struct._DRIVER_OBJECT** %12, metadata !3212, metadata !2009), !dbg !3213
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3214, metadata !2009), !dbg !3215
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %14, metadata !3216, metadata !2009), !dbg !3217
  call void @llvm.dbg.declare(metadata i64* %15, metadata !3218, metadata !2009), !dbg !3219
  call void @llvm.dbg.declare(metadata i64* %16, metadata !3220, metadata !2009), !dbg !3221
  call void @llvm.dbg.declare(metadata i8* %17, metadata !3222, metadata !2009), !dbg !3223
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT*** %18, metadata !3224, metadata !2009), !dbg !3225
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0.i, metadata !3226, metadata !2009), !dbg !3161
  call void @llvm.dbg.declare(metadata i8** %tmp.i, metadata !3227, metadata !2009), !dbg !3228
  br i1 %64, label %67, label %65, !dbg !3229

; <label>:65                                      ; preds = %IoCreateDevice.exit
  %66 = load i64, i64* %status, align 8, !dbg !3230
  store i64 %66, i64* %19, !dbg !3232
  br label %205, !dbg !3232

; <label>:67                                      ; preds = %IoCreateDevice.exit
  br label %68

; <label>:68                                      ; preds = %67
  %69 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %filterDeviceObject, align 8, !dbg !3233
  %70 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %69, i32 0, i32 8, !dbg !3234
  %71 = load i64, i64* %70, align 8, !dbg !3235
  %72 = or i64 %71, 16, !dbg !3235
  store i64 %72, i64* %70, align 8, !dbg !3235
  %73 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %filterDeviceObject, align 8, !dbg !3236
  %74 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %73, i32 0, i32 11, !dbg !3237
  %75 = load i8*, i8** %74, align 8, !dbg !3237
  %76 = bitcast i8* %75 to %struct._DEVICE_EXTENSION*, !dbg !3238
  store %struct._DEVICE_EXTENSION* %76, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3239
  %77 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3240
  %78 = bitcast %struct._DEVICE_EXTENSION* %77 to i8*, !dbg !3240
  %79 = call i8* @memset(i8* %78, i32 0, i32 344), !dbg !3241
  %80 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3242
  %81 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %80, i32 0, i32 7, !dbg !3243
  %82 = call { i64, i64 } @KeQueryPerformanceCounter(%union._LARGE_INTEGER* null), !dbg !3244
  %83 = getelementptr %union._LARGE_INTEGER, %union._LARGE_INTEGER* %22, i32 0, i32 0, !dbg !3244
  %84 = bitcast %struct.__anonstruct____missing_field_name_1* %83 to { i64, i64 }*, !dbg !3244
  %85 = getelementptr { i64, i64 }, { i64, i64 }* %84, i32 0, i32 0, !dbg !3244
  %86 = extractvalue { i64, i64 } %82, 0, !dbg !3244
  store i64 %86, i64* %85, align 8, !dbg !3244
  %87 = getelementptr { i64, i64 }, { i64, i64 }* %84, i32 0, i32 1, !dbg !3244
  %88 = extractvalue { i64, i64 } %82, 1, !dbg !3244
  store i64 %88, i64* %87, align 8, !dbg !3244
  %89 = bitcast %union._LARGE_INTEGER* %81 to i8*, !dbg !3244
  %90 = bitcast %union._LARGE_INTEGER* %22 to i8*, !dbg !3244
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %90, i64 16, i32 8, i1 false), !dbg !3244
  %91 = load i8*, i8** @KeNumberProcessors, align 8, !dbg !3245
  %92 = load i8, i8* %91, align 1, !dbg !3246
  %93 = sext i8 %92 to i64, !dbg !3247
  %94 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3248
  %95 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %94, i32 0, i32 5, !dbg !3249
  store i64 %93, i64* %95, align 8, !dbg !3250
  %96 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3251
  %97 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %96, i32 0, i32 5, !dbg !3252
  %98 = load i64, i64* %97, align 8, !dbg !3252
  %99 = mul i64 ptrtoint (%union._LARGE_INTEGER* getelementptr inbounds (%struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* null, i32 0, i32 9) to i64), %98, !dbg !3253
  store i64 %99, i64* %buffersize, align 8, !dbg !3254
  %100 = load i64, i64* %buffersize, align 8, !dbg !3255
  %101 = bitcast i32* %6 to i8*, !dbg !3256
  call void @llvm.lifetime.start(i64 4, i8* %101), !dbg !3256
  %102 = bitcast i64* %7 to i8*, !dbg !3256
  call void @llvm.lifetime.start(i64 8, i8* %102), !dbg !3256
  %103 = bitcast i64* %8 to i8*, !dbg !3256
  call void @llvm.lifetime.start(i64 8, i8* %103), !dbg !3256
  %104 = bitcast i8** %x.i to i8*, !dbg !3256
  call void @llvm.lifetime.start(i64 8, i8* %104), !dbg !3256
  %105 = bitcast i8** %tmp.i.2 to i8*, !dbg !3256
  call void @llvm.lifetime.start(i64 8, i8* %105), !dbg !3256
  store i32 0, i32* %6, align 4, !dbg !3256
  store i64 %100, i64* %7, align 8, !dbg !3256
  store i64 1718767684, i64* %8, align 8, !dbg !3256
  %106 = load i64, i64* %7, align 8, !dbg !3257
  %107 = trunc i64 %106 to i32, !dbg !3257
  %108 = bitcast i8** %4 to i8*, !dbg !3258
  call void @llvm.lifetime.start(i64 8, i8* %108) #4, !dbg !3258
  %109 = bitcast i32* %5 to i8*, !dbg !3258
  call void @llvm.lifetime.start(i64 4, i8* %109) #4, !dbg !3258
  %110 = bitcast i32* %__BLAST_NONDET___0.i.i.1 to i8*, !dbg !3258
  call void @llvm.lifetime.start(i64 4, i8* %110) #4, !dbg !3258
  store i32 %107, i32* %5, align 4, !dbg !3258
  %111 = call i32 @__VERIFIER_nondet_int() #4, !dbg !3259
  store i32 %111, i32* %__BLAST_NONDET___0.i.i.1, align 4, !dbg !3170
  %112 = load i32, i32* %__BLAST_NONDET___0.i.i.1, align 4, !dbg !3260
  %113 = icmp ne i32 %112, 0, !dbg !3260
  br i1 %113, label %114, label %115, !dbg !3261

; <label>:114                                     ; preds = %68
  store i8* null, i8** %4, !dbg !3262
  br label %ExAllocatePoolWithTag.exit, !dbg !3262

; <label>:115                                     ; preds = %68
  store i8* inttoptr (i64 1 to i8*), i8** %4, !dbg !3263
  br label %ExAllocatePoolWithTag.exit, !dbg !3263

ExAllocatePoolWithTag.exit:                       ; preds = %114, %115
  %116 = load i8*, i8** %4, !dbg !3264
  %117 = bitcast i8** %4 to i8*, !dbg !3264
  call void @llvm.lifetime.end(i64 8, i8* %117) #4, !dbg !3264
  %118 = bitcast i32* %5 to i8*, !dbg !3264
  call void @llvm.lifetime.end(i64 4, i8* %118) #4, !dbg !3264
  %119 = bitcast i32* %__BLAST_NONDET___0.i.i.1 to i8*, !dbg !3264
  call void @llvm.lifetime.end(i64 4, i8* %119) #4, !dbg !3264
  store i8* %116, i8** %tmp.i.2, align 8, !dbg !3265
  %120 = load i8*, i8** %tmp.i.2, align 8, !dbg !3266
  store i8* %120, i8** %x.i, align 8, !dbg !3267
  %121 = load i8*, i8** %x.i, align 8, !dbg !3268
  %122 = bitcast i32* %6 to i8*, !dbg !3269
  call void @llvm.lifetime.end(i64 4, i8* %122), !dbg !3269
  %123 = bitcast i64* %7 to i8*, !dbg !3269
  call void @llvm.lifetime.end(i64 8, i8* %123), !dbg !3269
  %124 = bitcast i64* %8 to i8*, !dbg !3269
  call void @llvm.lifetime.end(i64 8, i8* %124), !dbg !3269
  %125 = bitcast i8** %x.i to i8*, !dbg !3269
  call void @llvm.lifetime.end(i64 8, i8* %125), !dbg !3269
  %126 = bitcast i8** %tmp.i.2 to i8*, !dbg !3269
  call void @llvm.lifetime.end(i64 8, i8* %126), !dbg !3269
  store i8* %121, i8** %tmp, align 8, !dbg !3270
  %127 = load i8*, i8** %tmp, align 8, !dbg !3271
  store i8* %127, i8** %buffer, align 8, !dbg !3272
  %128 = load i8*, i8** %buffer, align 8, !dbg !3273
  %129 = ptrtoint i8* %128 to i32, !dbg !3275
  %130 = icmp ne i32 %129, 0, !dbg !3276
  br i1 %130, label %131, label %140, !dbg !3277

; <label>:131                                     ; preds = %ExAllocatePoolWithTag.exit
  %132 = load i8*, i8** %buffer, align 8, !dbg !3278
  %133 = load i64, i64* %buffersize, align 8, !dbg !3281
  %134 = trunc i64 %133 to i32, !dbg !3281
  %135 = call i8* @memset(i8* %132, i32 0, i32 %134), !dbg !3282
  %136 = load i8*, i8** %buffer, align 8, !dbg !3283
  %137 = bitcast i8* %136 to %struct._DISK_PERFORMANCE*, !dbg !3284
  %138 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3285
  %139 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %138, i32 0, i32 6, !dbg !3286
  store %struct._DISK_PERFORMANCE* %137, %struct._DISK_PERFORMANCE** %139, align 8, !dbg !3287
  br label %142, !dbg !3288

; <label>:140                                     ; preds = %ExAllocatePoolWithTag.exit
  %141 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %filterDeviceObject, align 8, !dbg !3289
  call void @DiskPerfLogError(%struct._DEVICE_OBJECT* %141, i64 513, i64 0, i64 -1073479678), !dbg !3292
  br label %142

; <label>:142                                     ; preds = %140, %131
  %143 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %21, align 8, !dbg !3293
  %144 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3294
  %145 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %144, i32 0, i32 2, !dbg !3295
  store %struct._DEVICE_OBJECT* %143, %struct._DEVICE_OBJECT** %145, align 8, !dbg !3296
  %146 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %filterDeviceObject, align 8, !dbg !3297
  %147 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %21, align 8, !dbg !3298
  %148 = bitcast %struct._DEVICE_OBJECT** %1 to i8*, !dbg !3299
  call void @llvm.lifetime.start(i64 8, i8* %148), !dbg !3299
  %149 = bitcast %struct._DEVICE_OBJECT** %2 to i8*, !dbg !3299
  call void @llvm.lifetime.start(i64 8, i8* %149), !dbg !3299
  %150 = bitcast %struct._DEVICE_OBJECT** %3 to i8*, !dbg !3299
  call void @llvm.lifetime.start(i64 8, i8* %150), !dbg !3299
  %151 = bitcast i32* %__BLAST_NONDET___0.i.4 to i8*, !dbg !3299
  call void @llvm.lifetime.start(i64 4, i8* %151), !dbg !3299
  store %struct._DEVICE_OBJECT* %146, %struct._DEVICE_OBJECT** %2, align 8, !dbg !3299
  store %struct._DEVICE_OBJECT* %147, %struct._DEVICE_OBJECT** %3, align 8, !dbg !3299
  %152 = call i32 @__VERIFIER_nondet_int() #4, !dbg !3300
  store i32 %152, i32* %__BLAST_NONDET___0.i.4, align 4, !dbg !3183
  %153 = load i32, i32* %__BLAST_NONDET___0.i.4, align 4, !dbg !3301
  %154 = icmp eq i32 %153, 0, !dbg !3304
  br i1 %154, label %155, label %157, !dbg !3305

; <label>:155                                     ; preds = %142
  %156 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %3, align 8, !dbg !3306
  store %struct._DEVICE_OBJECT* %156, %struct._DEVICE_OBJECT** %1, !dbg !3311
  br label %IoAttachDeviceToDeviceStack.exit, !dbg !3311

; <label>:157                                     ; preds = %142
  store %struct._DEVICE_OBJECT* null, %struct._DEVICE_OBJECT** %1, !dbg !3312
  br label %IoAttachDeviceToDeviceStack.exit, !dbg !3312

IoAttachDeviceToDeviceStack.exit:                 ; preds = %155, %157
  %158 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, !dbg !3313
  %159 = bitcast %struct._DEVICE_OBJECT** %1 to i8*, !dbg !3313
  call void @llvm.lifetime.end(i64 8, i8* %159), !dbg !3313
  %160 = bitcast %struct._DEVICE_OBJECT** %2 to i8*, !dbg !3313
  call void @llvm.lifetime.end(i64 8, i8* %160), !dbg !3313
  %161 = bitcast %struct._DEVICE_OBJECT** %3 to i8*, !dbg !3313
  call void @llvm.lifetime.end(i64 8, i8* %161), !dbg !3313
  %162 = bitcast i32* %__BLAST_NONDET___0.i.4 to i8*, !dbg !3313
  call void @llvm.lifetime.end(i64 4, i8* %162), !dbg !3313
  %163 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3314
  %164 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %163, i32 0, i32 1, !dbg !3315
  store %struct._DEVICE_OBJECT* %158, %struct._DEVICE_OBJECT** %164, align 8, !dbg !3316
  %165 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3317
  %166 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %165, i32 0, i32 1, !dbg !3319
  %167 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %166, align 8, !dbg !3319
  %168 = ptrtoint %struct._DEVICE_OBJECT* %167 to i32, !dbg !3320
  %169 = icmp eq i32 %168, 0, !dbg !3321
  br i1 %169, label %170, label %171, !dbg !3322

; <label>:170                                     ; preds = %IoAttachDeviceToDeviceStack.exit
  store i64 -1073741810, i64* %19, !dbg !3323
  br label %205, !dbg !3323

; <label>:171                                     ; preds = %IoAttachDeviceToDeviceStack.exit
  br label %172

; <label>:172                                     ; preds = %171
  %173 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %filterDeviceObject, align 8, !dbg !3325
  %174 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3327
  %175 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %174, i32 0, i32 0, !dbg !3328
  store %struct._DEVICE_OBJECT* %173, %struct._DEVICE_OBJECT** %175, align 8, !dbg !3329
  %176 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3330
  %177 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %176, i32 0, i32 13, !dbg !3331
  %178 = getelementptr inbounds [64 x i16], [64 x i16]* %177, i32 0, i32 0, !dbg !3330
  %179 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3332
  %180 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %179, i32 0, i32 12, !dbg !3333
  %181 = getelementptr inbounds %struct._UNICODE_STRING, %struct._UNICODE_STRING* %180, i32 0, i32 2, !dbg !3334
  store i16* %178, i16** %181, align 8, !dbg !3335
  %182 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3336
  %183 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %182, i32 0, i32 14, !dbg !3337
  store %struct._WMILIB_CONTEXT* %183, %struct._WMILIB_CONTEXT** %wmilibContext, align 8, !dbg !3338
  %184 = load %struct._WMILIB_CONTEXT*, %struct._WMILIB_CONTEXT** %wmilibContext, align 8, !dbg !3339
  %185 = bitcast %struct._WMILIB_CONTEXT* %184 to i8*, !dbg !3339
  %186 = call i8* @memset(i8* %185, i32 0, i32 64), !dbg !3340
  %187 = load %struct._WMILIB_CONTEXT*, %struct._WMILIB_CONTEXT** %wmilibContext, align 8, !dbg !3341
  %188 = getelementptr inbounds %struct._WMILIB_CONTEXT, %struct._WMILIB_CONTEXT* %187, i32 0, i32 0, !dbg !3342
  store i64 1, i64* %188, align 8, !dbg !3343
  %189 = load %struct._WMILIB_CONTEXT*, %struct._WMILIB_CONTEXT** %wmilibContext, align 8, !dbg !3344
  %190 = getelementptr inbounds %struct._WMILIB_CONTEXT, %struct._WMILIB_CONTEXT* %189, i32 0, i32 1, !dbg !3345
  store %struct.__anonstruct_WMIGUIDREGINFO_130* getelementptr inbounds ([1 x %struct.__anonstruct_WMIGUIDREGINFO_130], [1 x %struct.__anonstruct_WMIGUIDREGINFO_130]* @DiskperfGuidList, i32 0, i32 0), %struct.__anonstruct_WMIGUIDREGINFO_130** %190, align 8, !dbg !3346
  %191 = load %struct._WMILIB_CONTEXT*, %struct._WMILIB_CONTEXT** %wmilibContext, align 8, !dbg !3347
  %192 = getelementptr inbounds %struct._WMILIB_CONTEXT, %struct._WMILIB_CONTEXT* %191, i32 0, i32 2, !dbg !3348
  store i64 (%struct._DEVICE_OBJECT*, i64*, %struct._UNICODE_STRING*, %struct._UNICODE_STRING**, %struct._UNICODE_STRING*, %struct._DEVICE_OBJECT**)* @DiskperfQueryWmiRegInfo, i64 (%struct._DEVICE_OBJECT*, i64*, %struct._UNICODE_STRING*, %struct._UNICODE_STRING**, %struct._UNICODE_STRING*, %struct._DEVICE_OBJECT**)** %192, align 8, !dbg !3349
  %193 = load %struct._WMILIB_CONTEXT*, %struct._WMILIB_CONTEXT** %wmilibContext, align 8, !dbg !3350
  %194 = getelementptr inbounds %struct._WMILIB_CONTEXT, %struct._WMILIB_CONTEXT* %193, i32 0, i32 3, !dbg !3351
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i64, i64, i64, i64*, i64, i8*)* @DiskperfQueryWmiDataBlock, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i64, i64, i64, i64*, i64, i8*)** %194, align 8, !dbg !3352
  %195 = load %struct._WMILIB_CONTEXT*, %struct._WMILIB_CONTEXT** %wmilibContext, align 8, !dbg !3353
  %196 = getelementptr inbounds %struct._WMILIB_CONTEXT, %struct._WMILIB_CONTEXT* %195, i32 0, i32 7, !dbg !3354
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i64, i32, i8)* @DiskperfWmiFunctionControl, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i64, i32, i8)** %196, align 8, !dbg !3355
  %197 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %filterDeviceObject, align 8, !dbg !3356
  %198 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %197, i32 0, i32 8, !dbg !3357
  %199 = load i64, i64* %198, align 8, !dbg !3358
  %200 = or i64 %199, 8192, !dbg !3358
  store i64 %200, i64* %198, align 8, !dbg !3358
  %201 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %filterDeviceObject, align 8, !dbg !3359
  %202 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %201, i32 0, i32 8, !dbg !3360
  %203 = load i64, i64* %202, align 8, !dbg !3361
  %204 = and i64 %203, 4294967167, !dbg !3361
  store i64 %204, i64* %202, align 8, !dbg !3361
  store i64 0, i64* %19, !dbg !3362
  br label %205, !dbg !3362

; <label>:205                                     ; preds = %172, %170, %65
  %206 = load i64, i64* %19, !dbg !3363
  ret i64 %206, !dbg !3363
}

; Function Attrs: nounwind ssp uwtable
define void @DiskPerfUnload(%struct._DRIVER_OBJECT* %DriverObject) #0 {
  %1 = alloca %struct._DRIVER_OBJECT*, align 8
  store %struct._DRIVER_OBJECT* %DriverObject, %struct._DRIVER_OBJECT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._DRIVER_OBJECT** %1, metadata !3364, metadata !2009), !dbg !3365
  ret void, !dbg !3366
}

; Function Attrs: nounwind ssp uwtable
define void @DiskPerfSyncFilterWithTarget(%struct._DEVICE_OBJECT* %FilterDevice, %struct._DEVICE_OBJECT* %TargetDevice) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca %struct._DEVICE_OBJECT*, align 8
  %propFlags = alloca i64, align 8
  store %struct._DEVICE_OBJECT* %FilterDevice, %struct._DEVICE_OBJECT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !3368, metadata !2009), !dbg !3369
  store %struct._DEVICE_OBJECT* %TargetDevice, %struct._DEVICE_OBJECT** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %2, metadata !3370, metadata !2009), !dbg !3371
  call void @llvm.dbg.declare(metadata i64* %propFlags, metadata !3372, metadata !2009), !dbg !3373
  store i64 0, i64* %propFlags, align 8, !dbg !3374
  %3 = load i64, i64* %propFlags, align 8, !dbg !3376
  %4 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, align 8, !dbg !3377
  %5 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %4, i32 0, i32 8, !dbg !3378
  %6 = load i64, i64* %5, align 8, !dbg !3379
  %7 = or i64 %6, %3, !dbg !3379
  store i64 %7, i64* %5, align 8, !dbg !3379
  %8 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %2, align 8, !dbg !3380
  %9 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %8, i32 0, i32 9, !dbg !3381
  %10 = load i64, i64* %9, align 8, !dbg !3381
  %11 = and i64 %10, 7, !dbg !3382
  store i64 %11, i64* %propFlags, align 8, !dbg !3383
  %12 = load i64, i64* %propFlags, align 8, !dbg !3384
  %13 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, align 8, !dbg !3385
  %14 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %13, i32 0, i32 9, !dbg !3386
  %15 = load i64, i64* %14, align 8, !dbg !3387
  %16 = or i64 %15, %12, !dbg !3387
  store i64 %16, i64* %14, align 8, !dbg !3387
  ret void, !dbg !3388
}

; Function Attrs: nounwind ssp uwtable
define i64 @IoCreateDevice(%struct._DRIVER_OBJECT* %DriverObject, i64 %DeviceExtensionSize, %struct._UNICODE_STRING* %DeviceName, i64 %DeviceType, i64 %DeviceCharacteristics, i8 zeroext %Exclusive, %struct._DEVICE_OBJECT** %DeviceObject) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %__BLAST_NONDET___0.i = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct._DRIVER_OBJECT*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._UNICODE_STRING*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct._DEVICE_OBJECT**, align 8
  %__BLAST_NONDET___0 = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct._DRIVER_OBJECT* %DriverObject, %struct._DRIVER_OBJECT** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._DRIVER_OBJECT** %4, metadata !3212, metadata !2009), !dbg !3389
  store i64 %DeviceExtensionSize, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3214, metadata !2009), !dbg !3390
  store %struct._UNICODE_STRING* %DeviceName, %struct._UNICODE_STRING** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %6, metadata !3216, metadata !2009), !dbg !3391
  store i64 %DeviceType, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3218, metadata !2009), !dbg !3392
  store i64 %DeviceCharacteristics, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3220, metadata !2009), !dbg !3393
  store i8 %Exclusive, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !3222, metadata !2009), !dbg !3394
  store %struct._DEVICE_OBJECT** %DeviceObject, %struct._DEVICE_OBJECT*** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT*** %10, metadata !3224, metadata !2009), !dbg !3395
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !3226, metadata !2009), !dbg !3396
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !3397
  store i32 %11, i32* %__BLAST_NONDET___0, align 4, !dbg !3396
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !3227, metadata !2009), !dbg !3398
  %12 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !3399
  %13 = icmp eq i32 %12, 0, !dbg !3400
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2058, metadata !2009), !dbg !3401
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0.i, metadata !2060, metadata !2009), !dbg !3403
  br i1 %13, label %14, label %15, !dbg !3404

; <label>:14                                      ; preds = %0
  br label %18, !dbg !3405

; <label>:15                                      ; preds = %0
  br label %34, !dbg !3407
                                                  ; No predecessors!
  br i1 false, label %17, label %35, !dbg !3408

; <label>:17                                      ; preds = %16
  br label %18, !dbg !3409

; <label>:18                                      ; preds = %17, %14
  %19 = bitcast i8** %1 to i8*, !dbg !3410
  call void @llvm.lifetime.start(i64 8, i8* %19), !dbg !3410
  %20 = bitcast i32* %2 to i8*, !dbg !3410
  call void @llvm.lifetime.start(i64 4, i8* %20), !dbg !3410
  %21 = bitcast i32* %__BLAST_NONDET___0.i to i8*, !dbg !3410
  call void @llvm.lifetime.start(i64 4, i8* %21), !dbg !3410
  store i32 368, i32* %2, align 4, !dbg !3410
  %22 = call i32 @__VERIFIER_nondet_int() #4, !dbg !3411
  store i32 %22, i32* %__BLAST_NONDET___0.i, align 4, !dbg !3403
  %23 = load i32, i32* %__BLAST_NONDET___0.i, align 4, !dbg !3412
  %24 = icmp ne i32 %23, 0, !dbg !3412
  br i1 %24, label %25, label %26, !dbg !3413

; <label>:25                                      ; preds = %18
  store i8* null, i8** %1, !dbg !3414
  br label %malloc.exit, !dbg !3414

; <label>:26                                      ; preds = %18
  store i8* inttoptr (i64 1 to i8*), i8** %1, !dbg !3415
  br label %malloc.exit, !dbg !3415

malloc.exit:                                      ; preds = %25, %26
  %27 = load i8*, i8** %1, !dbg !3416
  %28 = bitcast i8** %1 to i8*, !dbg !3416
  call void @llvm.lifetime.end(i64 8, i8* %28), !dbg !3416
  %29 = bitcast i32* %2 to i8*, !dbg !3416
  call void @llvm.lifetime.end(i64 4, i8* %29), !dbg !3416
  %30 = bitcast i32* %__BLAST_NONDET___0.i to i8*, !dbg !3416
  call void @llvm.lifetime.end(i64 4, i8* %30), !dbg !3416
  store i8* %27, i8** %tmp, align 8, !dbg !3417
  %31 = load i8*, i8** %tmp, align 8, !dbg !3418
  %32 = bitcast i8* %31 to %struct._DEVICE_OBJECT*, !dbg !3419
  %33 = load %struct._DEVICE_OBJECT**, %struct._DEVICE_OBJECT*** %10, align 8, !dbg !3420
  store %struct._DEVICE_OBJECT* %32, %struct._DEVICE_OBJECT** %33, align 8, !dbg !3421
  store i64 0, i64* %3, !dbg !3422
  br label %38, !dbg !3422

; <label>:34                                      ; preds = %15
  store i64 -1073741823, i64* %3, !dbg !3423
  br label %38, !dbg !3423

; <label>:35                                      ; preds = %16
  br label %36, !dbg !3424

; <label>:36                                      ; preds = %35
  br label %37

; <label>:37                                      ; preds = %36
  br label %38

; <label>:38                                      ; preds = %37, %34, %malloc.exit
  %39 = load i64, i64* %3, !dbg !3425
  ret i64 %39, !dbg !3425
}

declare i8* @memset(i8*, i32, i32) #3

declare { i64, i64 } @KeQueryPerformanceCounter(%union._LARGE_INTEGER*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind ssp uwtable
define void @DiskPerfLogError(%struct._DEVICE_OBJECT* %DeviceObject, i64 %UniqueId, i64 %ErrorCode, i64 %Status) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %errorLogEntry = alloca %struct._IO_ERROR_LOG_PACKET*, align 8
  %tmp = alloca i8*, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !3426, metadata !2009), !dbg !3427
  store i64 %UniqueId, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3428, metadata !2009), !dbg !3429
  store i64 %ErrorCode, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3430, metadata !2009), !dbg !3431
  store i64 %Status, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3432, metadata !2009), !dbg !3433
  call void @llvm.dbg.declare(metadata %struct._IO_ERROR_LOG_PACKET** %errorLogEntry, metadata !3434, metadata !2009), !dbg !3436
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !3437, metadata !2009), !dbg !3438
  %5 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, align 8, !dbg !3439
  %6 = bitcast %struct._DEVICE_OBJECT* %5 to i8*, !dbg !3439
  %7 = call i8* @IoAllocateErrorLogEntry(i8* %6, i8 zeroext -64), !dbg !3442
  store i8* %7, i8** %tmp, align 8, !dbg !3443
  %8 = load i8*, i8** %tmp, align 8, !dbg !3444
  %9 = bitcast i8* %8 to %struct._IO_ERROR_LOG_PACKET*, !dbg !3445
  store %struct._IO_ERROR_LOG_PACKET* %9, %struct._IO_ERROR_LOG_PACKET** %errorLogEntry, align 8, !dbg !3446
  %10 = load %struct._IO_ERROR_LOG_PACKET*, %struct._IO_ERROR_LOG_PACKET** %errorLogEntry, align 8, !dbg !3447
  %11 = ptrtoint %struct._IO_ERROR_LOG_PACKET* %10 to i32, !dbg !3449
  %12 = icmp ne i32 %11, 0, !dbg !3450
  br i1 %12, label %13, label %33, !dbg !3451

; <label>:13                                      ; preds = %0
  %14 = load i64, i64* %3, align 8, !dbg !3452
  %15 = load %struct._IO_ERROR_LOG_PACKET*, %struct._IO_ERROR_LOG_PACKET** %errorLogEntry, align 8, !dbg !3455
  %16 = getelementptr inbounds %struct._IO_ERROR_LOG_PACKET, %struct._IO_ERROR_LOG_PACKET* %15, i32 0, i32 6, !dbg !3456
  store i64 %14, i64* %16, align 8, !dbg !3457
  %17 = load i64, i64* %2, align 8, !dbg !3458
  %18 = load %struct._IO_ERROR_LOG_PACKET*, %struct._IO_ERROR_LOG_PACKET** %errorLogEntry, align 8, !dbg !3459
  %19 = getelementptr inbounds %struct._IO_ERROR_LOG_PACKET, %struct._IO_ERROR_LOG_PACKET* %18, i32 0, i32 7, !dbg !3460
  store i64 %17, i64* %19, align 8, !dbg !3461
  %20 = load i64, i64* %4, align 8, !dbg !3462
  %21 = load %struct._IO_ERROR_LOG_PACKET*, %struct._IO_ERROR_LOG_PACKET** %errorLogEntry, align 8, !dbg !3463
  %22 = getelementptr inbounds %struct._IO_ERROR_LOG_PACKET, %struct._IO_ERROR_LOG_PACKET* %21, i32 0, i32 8, !dbg !3464
  store i64 %20, i64* %22, align 8, !dbg !3465
  %23 = load %struct._IO_ERROR_LOG_PACKET*, %struct._IO_ERROR_LOG_PACKET** %errorLogEntry, align 8, !dbg !3466
  %24 = getelementptr inbounds %struct._IO_ERROR_LOG_PACKET, %struct._IO_ERROR_LOG_PACKET* %23, i32 0, i32 12, !dbg !3467
  %25 = getelementptr inbounds [1 x i64], [1 x i64]* %24, i32 0, i64 0, !dbg !3466
  %26 = bitcast i64* %25 to i8*, !dbg !3468
  %27 = bitcast %struct._DEVICE_OBJECT** %1 to i8*, !dbg !3469
  %28 = call i8* @memcpy(i8* %26, i8* %27, i32 368), !dbg !3470
  %29 = load %struct._IO_ERROR_LOG_PACKET*, %struct._IO_ERROR_LOG_PACKET** %errorLogEntry, align 8, !dbg !3471
  %30 = getelementptr inbounds %struct._IO_ERROR_LOG_PACKET, %struct._IO_ERROR_LOG_PACKET* %29, i32 0, i32 2, !dbg !3472
  store i16 368, i16* %30, align 2, !dbg !3473
  %31 = load %struct._IO_ERROR_LOG_PACKET*, %struct._IO_ERROR_LOG_PACKET** %errorLogEntry, align 8, !dbg !3474
  %32 = bitcast %struct._IO_ERROR_LOG_PACKET* %31 to i8*, !dbg !3474
  call void @IoWriteErrorLogEntry(i8* %32), !dbg !3475
  br label %34, !dbg !3476

; <label>:33                                      ; preds = %0
  br label %34

; <label>:34                                      ; preds = %33, %13
  ret void, !dbg !3477
}

; Function Attrs: nounwind ssp uwtable
define %struct._DEVICE_OBJECT* @IoAttachDeviceToDeviceStack(%struct._DEVICE_OBJECT* %SourceDevice, %struct._DEVICE_OBJECT* %TargetDevice) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca %struct._DEVICE_OBJECT*, align 8
  %3 = alloca %struct._DEVICE_OBJECT*, align 8
  %__BLAST_NONDET___0 = alloca i32, align 4
  store %struct._DEVICE_OBJECT* %SourceDevice, %struct._DEVICE_OBJECT** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %2, metadata !3176, metadata !2009), !dbg !3478
  store %struct._DEVICE_OBJECT* %TargetDevice, %struct._DEVICE_OBJECT** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %3, metadata !3180, metadata !2009), !dbg !3479
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !3182, metadata !2009), !dbg !3480
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !3481
  store i32 %4, i32* %__BLAST_NONDET___0, align 4, !dbg !3480
  %5 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !3482
  %6 = icmp eq i32 %5, 0, !dbg !3483
  br i1 %6, label %7, label %8, !dbg !3484

; <label>:7                                       ; preds = %0
  br label %11, !dbg !3485

; <label>:8                                       ; preds = %0
  br label %13, !dbg !3487
                                                  ; No predecessors!
  br i1 false, label %10, label %14, !dbg !3488

; <label>:10                                      ; preds = %9
  br label %11, !dbg !3489

; <label>:11                                      ; preds = %10, %7
  %12 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %3, align 8, !dbg !3490
  store %struct._DEVICE_OBJECT* %12, %struct._DEVICE_OBJECT** %1, !dbg !3491
  br label %17, !dbg !3491

; <label>:13                                      ; preds = %8
  store %struct._DEVICE_OBJECT* null, %struct._DEVICE_OBJECT** %1, !dbg !3492
  br label %17, !dbg !3492

; <label>:14                                      ; preds = %9
  br label %15, !dbg !3493

; <label>:15                                      ; preds = %14
  br label %16

; <label>:16                                      ; preds = %15
  br label %17

; <label>:17                                      ; preds = %16, %13, %11
  %18 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, !dbg !3494
  ret %struct._DEVICE_OBJECT* %18, !dbg !3494
}

; Function Attrs: nounwind ssp uwtable
define i64 @DiskperfQueryWmiRegInfo(%struct._DEVICE_OBJECT* %DeviceObject, i64* %RegFlags, %struct._UNICODE_STRING* %InstanceName, %struct._UNICODE_STRING** %RegistryPath, %struct._UNICODE_STRING* %MofResourceName, %struct._DEVICE_OBJECT** %Pdo) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %__BLAST_NONDET___0.i.i = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %x.i = alloca i8*, align 8
  %tmp.i = alloca i8*, align 8
  %6 = alloca %struct._DEVICE_OBJECT*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct._UNICODE_STRING*, align 8
  %9 = alloca %struct._UNICODE_STRING**, align 8
  %10 = alloca %struct._UNICODE_STRING*, align 8
  %11 = alloca %struct._DEVICE_OBJECT**, align 8
  %size = alloca i16, align 2
  %status = alloca i64, align 8
  %deviceExtension = alloca %struct._DEVICE_EXTENSION*, align 8
  %tmp = alloca i8*, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %6, metadata !3495, metadata !2009), !dbg !3496
  store i64* %RegFlags, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3497, metadata !2009), !dbg !3498
  store %struct._UNICODE_STRING* %InstanceName, %struct._UNICODE_STRING** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %8, metadata !3499, metadata !2009), !dbg !3500
  store %struct._UNICODE_STRING** %RegistryPath, %struct._UNICODE_STRING*** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING*** %9, metadata !3501, metadata !2009), !dbg !3502
  store %struct._UNICODE_STRING* %MofResourceName, %struct._UNICODE_STRING** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %10, metadata !3503, metadata !2009), !dbg !3504
  store %struct._DEVICE_OBJECT** %Pdo, %struct._DEVICE_OBJECT*** %11, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT*** %11, metadata !3505, metadata !2009), !dbg !3506
  call void @llvm.dbg.declare(metadata i16* %size, metadata !3507, metadata !2009), !dbg !3508
  call void @llvm.dbg.declare(metadata i64* %status, metadata !3509, metadata !2009), !dbg !3510
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension, metadata !3511, metadata !2009), !dbg !3512
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !3513, metadata !2009), !dbg !3514
  %12 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %6, align 8, !dbg !3515
  %13 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %12, i32 0, i32 11, !dbg !3518
  %14 = load i8*, i8** %13, align 8, !dbg !3518
  %15 = bitcast i8* %14 to %struct._DEVICE_EXTENSION*, !dbg !3515
  store %struct._DEVICE_EXTENSION* %15, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3519
  %16 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3520
  %17 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %16, i32 0, i32 12, !dbg !3521
  %18 = getelementptr inbounds %struct._UNICODE_STRING, %struct._UNICODE_STRING* %17, i32 0, i32 0, !dbg !3522
  %19 = load i16, i16* %18, align 2, !dbg !3522
  %20 = zext i16 %19 to i32, !dbg !3523
  %21 = zext i32 %20 to i64, !dbg !3523
  %22 = add i64 %21, 2, !dbg !3524
  %23 = trunc i64 %22 to i16, !dbg !3523
  store i16 %23, i16* %size, align 2, !dbg !3525
  %24 = load i16, i16* %size, align 2, !dbg !3526
  %25 = zext i16 %24 to i64, !dbg !3526
  %26 = bitcast i32* %3 to i8*, !dbg !3527
  call void @llvm.lifetime.start(i64 4, i8* %26), !dbg !3527
  %27 = bitcast i64* %4 to i8*, !dbg !3527
  call void @llvm.lifetime.start(i64 8, i8* %27), !dbg !3527
  %28 = bitcast i64* %5 to i8*, !dbg !3527
  call void @llvm.lifetime.start(i64 8, i8* %28), !dbg !3527
  %29 = bitcast i8** %x.i to i8*, !dbg !3527
  call void @llvm.lifetime.start(i64 8, i8* %29), !dbg !3527
  %30 = bitcast i8** %tmp.i to i8*, !dbg !3527
  call void @llvm.lifetime.start(i64 8, i8* %30), !dbg !3527
  store i32 1, i32* %3, align 4, !dbg !3527
  store i64 %25, i64* %4, align 8, !dbg !3527
  store i64 1718767684, i64* %5, align 8, !dbg !3527
  %31 = load i64, i64* %4, align 8, !dbg !3528
  %32 = trunc i64 %31 to i32, !dbg !3528
  %33 = bitcast i8** %1 to i8*, !dbg !3530
  call void @llvm.lifetime.start(i64 8, i8* %33) #4, !dbg !3530
  %34 = bitcast i32* %2 to i8*, !dbg !3530
  call void @llvm.lifetime.start(i64 4, i8* %34) #4, !dbg !3530
  %35 = bitcast i32* %__BLAST_NONDET___0.i.i to i8*, !dbg !3530
  call void @llvm.lifetime.start(i64 4, i8* %35) #4, !dbg !3530
  store i32 %32, i32* %2, align 4, !dbg !3530
  %36 = call i32 @__VERIFIER_nondet_int() #4, !dbg !3531
  store i32 %36, i32* %__BLAST_NONDET___0.i.i, align 4, !dbg !3533
  %37 = load i32, i32* %__BLAST_NONDET___0.i.i, align 4, !dbg !3534
  %38 = icmp ne i32 %37, 0, !dbg !3534
  br i1 %38, label %39, label %40, !dbg !3535

; <label>:39                                      ; preds = %0
  store i8* null, i8** %1, !dbg !3536
  br label %ExAllocatePoolWithTag.exit, !dbg !3536

; <label>:40                                      ; preds = %0
  store i8* inttoptr (i64 1 to i8*), i8** %1, !dbg !3537
  br label %ExAllocatePoolWithTag.exit, !dbg !3537

ExAllocatePoolWithTag.exit:                       ; preds = %39, %40
  %41 = load i8*, i8** %1, !dbg !3538
  %42 = bitcast i8** %1 to i8*, !dbg !3538
  call void @llvm.lifetime.end(i64 8, i8* %42) #4, !dbg !3538
  %43 = bitcast i32* %2 to i8*, !dbg !3538
  call void @llvm.lifetime.end(i64 4, i8* %43) #4, !dbg !3538
  %44 = bitcast i32* %__BLAST_NONDET___0.i.i to i8*, !dbg !3538
  call void @llvm.lifetime.end(i64 4, i8* %44) #4, !dbg !3538
  store i8* %41, i8** %tmp.i, align 8, !dbg !3539
  %45 = load i8*, i8** %tmp.i, align 8, !dbg !3540
  store i8* %45, i8** %x.i, align 8, !dbg !3541
  %46 = load i8*, i8** %x.i, align 8, !dbg !3542
  %47 = bitcast i32* %3 to i8*, !dbg !3543
  call void @llvm.lifetime.end(i64 4, i8* %47), !dbg !3543
  %48 = bitcast i64* %4 to i8*, !dbg !3543
  call void @llvm.lifetime.end(i64 8, i8* %48), !dbg !3543
  %49 = bitcast i64* %5 to i8*, !dbg !3543
  call void @llvm.lifetime.end(i64 8, i8* %49), !dbg !3543
  %50 = bitcast i8** %x.i to i8*, !dbg !3543
  call void @llvm.lifetime.end(i64 8, i8* %50), !dbg !3543
  %51 = bitcast i8** %tmp.i to i8*, !dbg !3543
  call void @llvm.lifetime.end(i64 8, i8* %51), !dbg !3543
  store i8* %46, i8** %tmp, align 8, !dbg !3544
  %52 = load i8*, i8** %tmp, align 8, !dbg !3545
  %53 = bitcast i8* %52 to i16*, !dbg !3545
  %54 = load %struct._UNICODE_STRING*, %struct._UNICODE_STRING** %8, align 8, !dbg !3546
  %55 = getelementptr inbounds %struct._UNICODE_STRING, %struct._UNICODE_STRING* %54, i32 0, i32 2, !dbg !3547
  store i16* %53, i16** %55, align 8, !dbg !3548
  %56 = load %struct._UNICODE_STRING*, %struct._UNICODE_STRING** %8, align 8, !dbg !3549
  %57 = getelementptr inbounds %struct._UNICODE_STRING, %struct._UNICODE_STRING* %56, i32 0, i32 2, !dbg !3551
  %58 = load i16*, i16** %57, align 8, !dbg !3551
  %59 = ptrtoint i16* %58 to i32, !dbg !3552
  %60 = icmp ne i32 %59, 0, !dbg !3553
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2058, metadata !2009), !dbg !3554
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0.i.i, metadata !2060, metadata !2009), !dbg !3533
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2061, metadata !2009), !dbg !3555
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2063, metadata !2009), !dbg !3556
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2065, metadata !2009), !dbg !3557
  call void @llvm.dbg.declare(metadata i8** %x.i, metadata !2067, metadata !2009), !dbg !3558
  call void @llvm.dbg.declare(metadata i8** %tmp.i, metadata !2069, metadata !2009), !dbg !3559
  br i1 %60, label %61, label %68, !dbg !3560

; <label>:61                                      ; preds = %ExAllocatePoolWithTag.exit
  %62 = load %struct._UNICODE_STRING**, %struct._UNICODE_STRING*** %9, align 8, !dbg !3561
  store %struct._UNICODE_STRING* @DiskPerfRegistryPath, %struct._UNICODE_STRING** %62, align 8, !dbg !3563
  %63 = load i64*, i64** %7, align 8, !dbg !3564
  store i64 33, i64* %63, align 8, !dbg !3565
  %64 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3566
  %65 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %64, i32 0, i32 2, !dbg !3567
  %66 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %65, align 8, !dbg !3567
  %67 = load %struct._DEVICE_OBJECT**, %struct._DEVICE_OBJECT*** %11, align 8, !dbg !3568
  store %struct._DEVICE_OBJECT* %66, %struct._DEVICE_OBJECT** %67, align 8, !dbg !3569
  store i64 0, i64* %status, align 8, !dbg !3570
  br label %69, !dbg !3571

; <label>:68                                      ; preds = %ExAllocatePoolWithTag.exit
  store i64 -1073741670, i64* %status, align 8, !dbg !3572
  br label %69

; <label>:69                                      ; preds = %68, %61
  %70 = load i64, i64* %status, align 8, !dbg !3574
  ret i64 %70, !dbg !3575
}

; Function Attrs: nounwind ssp uwtable
define i64 @DiskperfQueryWmiDataBlock(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp, i64 %GuidIndex, i64 %InstanceIndex, i64 %InstanceCount, i64* %InstanceLengthArray, i64 %BufferAvail, i8* %Buffer) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca %struct._IRP*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %status = alloca i64, align 8
  %deviceExtension = alloca %struct._DEVICE_EXTENSION*, align 8
  %sizeNeeded = alloca i64, align 8
  %totalCounters = alloca %struct._DISK_PERFORMANCE*, align 8
  %diskCounters = alloca %struct._DISK_PERFORMANCE*, align 8
  %diskPerformance = alloca %struct._WMI_DISK_PERFORMANCE*, align 8
  %deviceNameSize = alloca i64, align 8
  %diskNamePtr = alloca i16*, align 8
  %i = alloca i64, align 8
  %perfctr = alloca %union._LARGE_INTEGER, align 8
  %frequency = alloca %union._LARGE_INTEGER, align 8
  %difference = alloca %union._LARGE_INTEGER, align 8
  %tmp = alloca i16*, align 8
  %9 = alloca %union._LARGE_INTEGER, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !3576, metadata !2009), !dbg !3577
  store %struct._IRP* %Irp, %struct._IRP** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %2, metadata !3578, metadata !2009), !dbg !3579
  store i64 %GuidIndex, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3580, metadata !2009), !dbg !3581
  store i64 %InstanceIndex, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3582, metadata !2009), !dbg !3583
  store i64 %InstanceCount, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3584, metadata !2009), !dbg !3585
  store i64* %InstanceLengthArray, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !3586, metadata !2009), !dbg !3587
  store i64 %BufferAvail, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3588, metadata !2009), !dbg !3589
  store i8* %Buffer, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3590, metadata !2009), !dbg !3591
  call void @llvm.dbg.declare(metadata i64* %status, metadata !3592, metadata !2009), !dbg !3593
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension, metadata !3594, metadata !2009), !dbg !3595
  call void @llvm.dbg.declare(metadata i64* %sizeNeeded, metadata !3596, metadata !2009), !dbg !3597
  call void @llvm.dbg.declare(metadata %struct._DISK_PERFORMANCE** %totalCounters, metadata !3598, metadata !2009), !dbg !3599
  call void @llvm.dbg.declare(metadata %struct._DISK_PERFORMANCE** %diskCounters, metadata !3600, metadata !2009), !dbg !3601
  call void @llvm.dbg.declare(metadata %struct._WMI_DISK_PERFORMANCE** %diskPerformance, metadata !3602, metadata !2009), !dbg !3604
  call void @llvm.dbg.declare(metadata i64* %deviceNameSize, metadata !3605, metadata !2009), !dbg !3606
  call void @llvm.dbg.declare(metadata i16** %diskNamePtr, metadata !3607, metadata !2009), !dbg !3609
  call void @llvm.dbg.declare(metadata i64* %i, metadata !3610, metadata !2009), !dbg !3611
  call void @llvm.dbg.declare(metadata %union._LARGE_INTEGER* %perfctr, metadata !3612, metadata !2009), !dbg !3613
  call void @llvm.dbg.declare(metadata %union._LARGE_INTEGER* %frequency, metadata !3614, metadata !2009), !dbg !3615
  call void @llvm.dbg.declare(metadata %union._LARGE_INTEGER* %difference, metadata !3616, metadata !2009), !dbg !3617
  call void @llvm.dbg.declare(metadata i16** %tmp, metadata !3618, metadata !2009), !dbg !3619
  %10 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, align 8, !dbg !3620
  %11 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %10, i32 0, i32 11, !dbg !3622
  %12 = load i8*, i8** %11, align 8, !dbg !3622
  %13 = bitcast i8* %12 to %struct._DEVICE_EXTENSION*, !dbg !3620
  store %struct._DEVICE_EXTENSION* %13, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3623
  %14 = load i64, i64* %3, align 8, !dbg !3624
  %15 = icmp eq i64 %14, 0, !dbg !3626
  br i1 %15, label %16, label %159, !dbg !3627

; <label>:16                                      ; preds = %0
  %17 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3628
  %18 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %17, i32 0, i32 12, !dbg !3630
  %19 = getelementptr inbounds %struct._UNICODE_STRING, %struct._UNICODE_STRING* %18, i32 0, i32 0, !dbg !3631
  %20 = load i16, i16* %19, align 2, !dbg !3631
  %21 = zext i16 %20 to i32, !dbg !3632
  %22 = zext i32 %21 to i64, !dbg !3632
  %23 = add i64 %22, 2, !dbg !3633
  store i64 %23, i64* %deviceNameSize, align 8, !dbg !3634
  %24 = load i64, i64* %deviceNameSize, align 8, !dbg !3635
  %25 = add i64 104, %24, !dbg !3636
  store i64 %25, i64* %sizeNeeded, align 8, !dbg !3637
  %26 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3638
  %27 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %26, i32 0, i32 6, !dbg !3639
  %28 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %27, align 8, !dbg !3639
  store %struct._DISK_PERFORMANCE* %28, %struct._DISK_PERFORMANCE** %diskCounters, align 8, !dbg !3640
  %29 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %diskCounters, align 8, !dbg !3641
  %30 = ptrtoint %struct._DISK_PERFORMANCE* %29 to i32, !dbg !3643
  %31 = icmp eq i32 %30, 0, !dbg !3644
  br i1 %31, label %32, label %33, !dbg !3645

; <label>:32                                      ; preds = %16
  store i64 -1073741823, i64* %status, align 8, !dbg !3646
  br label %158, !dbg !3648

; <label>:33                                      ; preds = %16
  %34 = load i64, i64* %7, align 8, !dbg !3649
  %35 = load i64, i64* %sizeNeeded, align 8, !dbg !3652
  %36 = icmp uge i64 %34, %35, !dbg !3653
  br i1 %36, label %37, label %156, !dbg !3654

; <label>:37                                      ; preds = %33
  %38 = load i8*, i8** %8, align 8, !dbg !3655
  %39 = call i8* @memset(i8* %38, i32 0, i32 104), !dbg !3658
  %40 = load i8*, i8** %8, align 8, !dbg !3659
  %41 = bitcast i8* %40 to %struct._WMI_DISK_PERFORMANCE*, !dbg !3660
  store %struct._WMI_DISK_PERFORMANCE* %41, %struct._WMI_DISK_PERFORMANCE** %diskPerformance, align 8, !dbg !3661
  %42 = load %struct._WMI_DISK_PERFORMANCE*, %struct._WMI_DISK_PERFORMANCE** %diskPerformance, align 8, !dbg !3662
  %43 = bitcast %struct._WMI_DISK_PERFORMANCE* %42 to %struct._DISK_PERFORMANCE*, !dbg !3663
  store %struct._DISK_PERFORMANCE* %43, %struct._DISK_PERFORMANCE** %totalCounters, align 8, !dbg !3664
  %44 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %totalCounters, align 8, !dbg !3665
  %45 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %44, i32 0, i32 9, !dbg !3666
  call void @KeQuerySystemTime(%union._LARGE_INTEGER* %45), !dbg !3667
  %46 = call { i64, i64 } @KeQueryPerformanceCounter(%union._LARGE_INTEGER* %frequency), !dbg !3668
  %47 = getelementptr %union._LARGE_INTEGER, %union._LARGE_INTEGER* %9, i32 0, i32 0, !dbg !3668
  %48 = bitcast %struct.__anonstruct____missing_field_name_1* %47 to { i64, i64 }*, !dbg !3668
  %49 = getelementptr { i64, i64 }, { i64, i64 }* %48, i32 0, i32 0, !dbg !3668
  %50 = extractvalue { i64, i64 } %46, 0, !dbg !3668
  store i64 %50, i64* %49, align 8, !dbg !3668
  %51 = getelementptr { i64, i64 }, { i64, i64 }* %48, i32 0, i32 1, !dbg !3668
  %52 = extractvalue { i64, i64 } %46, 1, !dbg !3668
  store i64 %52, i64* %51, align 8, !dbg !3668
  %53 = bitcast %union._LARGE_INTEGER* %perfctr to i8*, !dbg !3668
  %54 = bitcast %union._LARGE_INTEGER* %9 to i8*, !dbg !3668
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 16, i32 8, i1 false), !dbg !3668
  store i64 0, i64* %i, align 8, !dbg !3669
  br label %55, !dbg !3670

; <label>:55                                      ; preds = %64, %37
  br label %56, !dbg !3672

; <label>:56                                      ; preds = %55
  %57 = load i64, i64* %i, align 8, !dbg !3673
  %58 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3676
  %59 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %58, i32 0, i32 5, !dbg !3677
  %60 = load i64, i64* %59, align 8, !dbg !3677
  %61 = icmp ult i64 %57, %60, !dbg !3678
  br i1 %61, label %62, label %63, !dbg !3679

; <label>:62                                      ; preds = %56
  br label %64, !dbg !3680

; <label>:63                                      ; preds = %56
  br label %78, !dbg !3682

; <label>:64                                      ; preds = %62
  %65 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %totalCounters, align 8, !dbg !3684
  %66 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %diskCounters, align 8, !dbg !3686
  %67 = bitcast %union._LARGE_INTEGER* %frequency to { i64, i64 }*, !dbg !3687
  %68 = getelementptr { i64, i64 }, { i64, i64 }* %67, i32 0, i32 0, !dbg !3687
  %69 = load i64, i64* %68, align 1, !dbg !3687
  %70 = getelementptr { i64, i64 }, { i64, i64 }* %67, i32 0, i32 1, !dbg !3687
  %71 = load i64, i64* %70, align 1, !dbg !3687
  call void @DiskPerfAddCounters(%struct._DISK_PERFORMANCE* %65, %struct._DISK_PERFORMANCE* %66, i64 %69, i64 %71), !dbg !3687
  %72 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %diskCounters, align 8, !dbg !3688
  %73 = bitcast %struct._DISK_PERFORMANCE* %72 to i8*, !dbg !3689
  %74 = getelementptr inbounds i8, i8* %73, i64 ptrtoint (%union._LARGE_INTEGER* getelementptr inbounds (%struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* null, i32 0, i32 9) to i64), !dbg !3690
  %75 = bitcast i8* %74 to %struct._DISK_PERFORMANCE*, !dbg !3691
  store %struct._DISK_PERFORMANCE* %75, %struct._DISK_PERFORMANCE** %diskCounters, align 8, !dbg !3692
  %76 = load i64, i64* %i, align 8, !dbg !3693
  %77 = add i64 %76, 1, !dbg !3693
  store i64 %77, i64* %i, align 8, !dbg !3693
  br label %55, !dbg !3670

; <label>:78                                      ; preds = %63
  %79 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3694
  %80 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %79, i32 0, i32 8, !dbg !3695
  %81 = load i64, i64* %80, align 8, !dbg !3695
  %82 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %totalCounters, align 8, !dbg !3696
  %83 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %82, i32 0, i32 7, !dbg !3697
  store i64 %81, i64* %83, align 8, !dbg !3698
  %84 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %totalCounters, align 8, !dbg !3699
  %85 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %84, i32 0, i32 7, !dbg !3701
  %86 = load i64, i64* %85, align 8, !dbg !3701
  %87 = icmp eq i64 %86, 0, !dbg !3702
  br i1 %87, label %88, label %114, !dbg !3703

; <label>:88                                      ; preds = %78
  %89 = bitcast %union._LARGE_INTEGER* %perfctr to i64*, !dbg !3704
  %90 = load i64, i64* %89, align 8, !dbg !3704
  %91 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3706
  %92 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %91, i32 0, i32 7, !dbg !3707
  %93 = bitcast %union._LARGE_INTEGER* %92 to i64*, !dbg !3708
  %94 = load i64, i64* %93, align 8, !dbg !3708
  %95 = sub nsw i64 %90, %94, !dbg !3709
  %96 = bitcast %union._LARGE_INTEGER* %difference to i64*, !dbg !3710
  store i64 %95, i64* %96, align 8, !dbg !3711
  %97 = bitcast %union._LARGE_INTEGER* %frequency to i64*, !dbg !3712
  %98 = load i64, i64* %97, align 8, !dbg !3712
  %99 = icmp sgt i64 %98, 0, !dbg !3714
  br i1 %99, label %100, label %112, !dbg !3715

; <label>:100                                     ; preds = %88
  %101 = bitcast %union._LARGE_INTEGER* %difference to i64*, !dbg !3716
  %102 = load i64, i64* %101, align 8, !dbg !3716
  %103 = mul nsw i64 10000000, %102, !dbg !3718
  %104 = bitcast %union._LARGE_INTEGER* %frequency to i64*, !dbg !3719
  %105 = load i64, i64* %104, align 8, !dbg !3719
  %106 = sdiv i64 %103, %105, !dbg !3720
  %107 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %totalCounters, align 8, !dbg !3721
  %108 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %107, i32 0, i32 4, !dbg !3722
  %109 = bitcast %union._LARGE_INTEGER* %108 to i64*, !dbg !3723
  %110 = load i64, i64* %109, align 8, !dbg !3724
  %111 = add nsw i64 %110, %106, !dbg !3724
  store i64 %111, i64* %109, align 8, !dbg !3724
  br label %113, !dbg !3725

; <label>:112                                     ; preds = %88
  br label %113

; <label>:113                                     ; preds = %112, %100
  br label %115, !dbg !3726

; <label>:114                                     ; preds = %78
  br label %115

; <label>:115                                     ; preds = %114, %113
  %116 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3727
  %117 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %116, i32 0, i32 3, !dbg !3729
  %118 = load i64, i64* %117, align 8, !dbg !3729
  %119 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %totalCounters, align 8, !dbg !3730
  %120 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %119, i32 0, i32 10, !dbg !3731
  store i64 %118, i64* %120, align 8, !dbg !3732
  %121 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %totalCounters, align 8, !dbg !3733
  %122 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %121, i32 0, i32 11, !dbg !3734
  %123 = getelementptr inbounds [8 x i16], [8 x i16]* %122, i32 0, i64 0, !dbg !3733
  %124 = bitcast i16* %123 to i8*, !dbg !3735
  %125 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3736
  %126 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %125, i32 0, i32 4, !dbg !3737
  %127 = getelementptr inbounds [8 x i16], [8 x i16]* %126, i32 0, i64 0, !dbg !3736
  %128 = bitcast i16* %127 to i8*, !dbg !3738
  %129 = call i8* @memcpy(i8* %124, i8* %128, i32 16), !dbg !3739
  %130 = load i8*, i8** %8, align 8, !dbg !3740
  %131 = getelementptr inbounds i8, i8* %130, i64 152, !dbg !3741
  %132 = bitcast i8* %131 to i16*, !dbg !3742
  store i16* %132, i16** %diskNamePtr, align 8, !dbg !3743
  %133 = load i16*, i16** %diskNamePtr, align 8, !dbg !3744
  store i16* %133, i16** %tmp, align 8, !dbg !3745
  %134 = load i16*, i16** %diskNamePtr, align 8, !dbg !3746
  %135 = getelementptr inbounds i16, i16* %134, i64 1, !dbg !3746
  store i16* %135, i16** %diskNamePtr, align 8, !dbg !3746
  %136 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3747
  %137 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %136, i32 0, i32 12, !dbg !3748
  %138 = getelementptr inbounds %struct._UNICODE_STRING, %struct._UNICODE_STRING* %137, i32 0, i32 0, !dbg !3749
  %139 = load i16, i16* %138, align 2, !dbg !3749
  %140 = load i16*, i16** %tmp, align 8, !dbg !3750
  store i16 %139, i16* %140, align 2, !dbg !3751
  %141 = load i16*, i16** %diskNamePtr, align 8, !dbg !3752
  %142 = bitcast i16* %141 to i8*, !dbg !3752
  %143 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3753
  %144 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %143, i32 0, i32 12, !dbg !3754
  %145 = getelementptr inbounds %struct._UNICODE_STRING, %struct._UNICODE_STRING* %144, i32 0, i32 2, !dbg !3755
  %146 = load i16*, i16** %145, align 8, !dbg !3755
  %147 = bitcast i16* %146 to i8*, !dbg !3753
  %148 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3756
  %149 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %148, i32 0, i32 12, !dbg !3757
  %150 = getelementptr inbounds %struct._UNICODE_STRING, %struct._UNICODE_STRING* %149, i32 0, i32 0, !dbg !3758
  %151 = load i16, i16* %150, align 2, !dbg !3758
  %152 = zext i16 %151 to i32, !dbg !3756
  %153 = call i8* @memcpy(i8* %142, i8* %147, i32 %152), !dbg !3759
  %154 = load i64, i64* %sizeNeeded, align 8, !dbg !3760
  %155 = load i64*, i64** %6, align 8, !dbg !3761
  store i64 %154, i64* %155, align 8, !dbg !3762
  store i64 0, i64* %status, align 8, !dbg !3763
  br label %157, !dbg !3764

; <label>:156                                     ; preds = %33
  store i64 -1073741789, i64* %status, align 8, !dbg !3765
  br label %157

; <label>:157                                     ; preds = %156, %115
  br label %158

; <label>:158                                     ; preds = %157, %32
  br label %160, !dbg !3767

; <label>:159                                     ; preds = %0
  store i64 -1073741163, i64* %status, align 8, !dbg !3768
  br label %160

; <label>:160                                     ; preds = %159, %158
  %161 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, align 8, !dbg !3770
  %162 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !3772
  %163 = load i64, i64* %status, align 8, !dbg !3773
  %164 = load i64, i64* %sizeNeeded, align 8, !dbg !3774
  %165 = call i64 @WmiCompleteRequest(%struct._DEVICE_OBJECT* %161, %struct._IRP* %162, i64 %163, i64 %164, i8 signext 0), !dbg !3775
  store i64 %165, i64* %status, align 8, !dbg !3776
  %166 = load i64, i64* %status, align 8, !dbg !3777
  ret i64 %166, !dbg !3778
}

; Function Attrs: nounwind ssp uwtable
define i64 @DiskperfWmiFunctionControl(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp, i64 %GuidIndex, i32 %Function, i8 zeroext %Enable) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca %struct._IRP*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %status = alloca i64, align 8
  %deviceExtension = alloca %struct._DEVICE_EXTENSION*, align 8
  %tmp = alloca i64, align 8
  %tmp___0 = alloca i64, align 8
  %6 = alloca %union._LARGE_INTEGER, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !3779, metadata !2009), !dbg !3780
  store %struct._IRP* %Irp, %struct._IRP** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %2, metadata !3781, metadata !2009), !dbg !3782
  store i64 %GuidIndex, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3783, metadata !2009), !dbg !3784
  store i32 %Function, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3785, metadata !2009), !dbg !3786
  store i8 %Enable, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3787, metadata !2009), !dbg !3788
  call void @llvm.dbg.declare(metadata i64* %status, metadata !3789, metadata !2009), !dbg !3790
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension, metadata !3791, metadata !2009), !dbg !3792
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !3793, metadata !2009), !dbg !3794
  call void @llvm.dbg.declare(metadata i64* %tmp___0, metadata !3795, metadata !2009), !dbg !3796
  %7 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, align 8, !dbg !3797
  %8 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %7, i32 0, i32 11, !dbg !3799
  %9 = load i8*, i8** %8, align 8, !dbg !3799
  %10 = bitcast i8* %9 to %struct._DEVICE_EXTENSION*, !dbg !3797
  store %struct._DEVICE_EXTENSION* %10, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3800
  %11 = load i64, i64* %3, align 8, !dbg !3801
  %12 = icmp eq i64 %11, 0, !dbg !3803
  br i1 %12, label %13, label %75, !dbg !3804

; <label>:13                                      ; preds = %0
  %14 = load i32, i32* %4, align 4, !dbg !3805
  %15 = icmp eq i32 %14, 1, !dbg !3808
  br i1 %15, label %16, label %73, !dbg !3809

; <label>:16                                      ; preds = %13
  %17 = load i8, i8* %5, align 1, !dbg !3810
  %18 = icmp ne i8 %17, 0, !dbg !3810
  br i1 %18, label %19, label %59, !dbg !3813

; <label>:19                                      ; preds = %16
  %20 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3814
  %21 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %20, i32 0, i32 9, !dbg !3817
  %22 = call i64 @InterlockedIncrement(i64* %21), !dbg !3818
  store i64 %22, i64* %tmp, align 8, !dbg !3819
  %23 = load i64, i64* %tmp, align 8, !dbg !3820
  %24 = icmp eq i64 %23, 1, !dbg !3822
  br i1 %24, label %25, label %57, !dbg !3823

; <label>:25                                      ; preds = %19
  %26 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3824
  %27 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %26, i32 0, i32 6, !dbg !3827
  %28 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %27, align 8, !dbg !3827
  %29 = ptrtoint %struct._DISK_PERFORMANCE* %28 to i32, !dbg !3828
  %30 = icmp ne i32 %29, 0, !dbg !3829
  br i1 %30, label %31, label %42, !dbg !3830

; <label>:31                                      ; preds = %25
  %32 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3831
  %33 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %32, i32 0, i32 6, !dbg !3834
  %34 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %33, align 8, !dbg !3834
  %35 = bitcast %struct._DISK_PERFORMANCE* %34 to i8*, !dbg !3831
  %36 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3835
  %37 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %36, i32 0, i32 5, !dbg !3836
  %38 = load i64, i64* %37, align 8, !dbg !3836
  %39 = mul i64 ptrtoint (%union._LARGE_INTEGER* getelementptr inbounds (%struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* null, i32 0, i32 9) to i64), %38, !dbg !3837
  %40 = trunc i64 %39 to i32, !dbg !3838
  %41 = call i8* @memset(i8* %35, i32 0, i32 %40), !dbg !3839
  br label %43, !dbg !3840

; <label>:42                                      ; preds = %25
  br label %43

; <label>:43                                      ; preds = %42, %31
  %44 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3841
  %45 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %44, i32 0, i32 7, !dbg !3843
  %46 = call { i64, i64 } @KeQueryPerformanceCounter(%union._LARGE_INTEGER* null), !dbg !3844
  %47 = getelementptr %union._LARGE_INTEGER, %union._LARGE_INTEGER* %6, i32 0, i32 0, !dbg !3844
  %48 = bitcast %struct.__anonstruct____missing_field_name_1* %47 to { i64, i64 }*, !dbg !3844
  %49 = getelementptr { i64, i64 }, { i64, i64 }* %48, i32 0, i32 0, !dbg !3844
  %50 = extractvalue { i64, i64 } %46, 0, !dbg !3844
  store i64 %50, i64* %49, align 8, !dbg !3844
  %51 = getelementptr { i64, i64 }, { i64, i64 }* %48, i32 0, i32 1, !dbg !3844
  %52 = extractvalue { i64, i64 } %46, 1, !dbg !3844
  store i64 %52, i64* %51, align 8, !dbg !3844
  %53 = bitcast %union._LARGE_INTEGER* %45 to i8*, !dbg !3844
  %54 = bitcast %union._LARGE_INTEGER* %6 to i8*, !dbg !3844
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 16, i32 8, i1 false), !dbg !3844
  %55 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3845
  %56 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %55, i32 0, i32 8, !dbg !3846
  store i64 0, i64* %56, align 8, !dbg !3847
  br label %58, !dbg !3848

; <label>:57                                      ; preds = %19
  br label %58

; <label>:58                                      ; preds = %57, %43
  br label %72, !dbg !3849

; <label>:59                                      ; preds = %16
  %60 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3850
  %61 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %60, i32 0, i32 9, !dbg !3853
  %62 = call i64 @InterlockedDecrement(i64* %61), !dbg !3854
  store i64 %62, i64* %tmp___0, align 8, !dbg !3855
  %63 = load i64, i64* %tmp___0, align 8, !dbg !3856
  %64 = icmp sle i64 %63, 0, !dbg !3858
  br i1 %64, label %65, label %70, !dbg !3859

; <label>:65                                      ; preds = %59
  %66 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3860
  %67 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %66, i32 0, i32 9, !dbg !3862
  store i64 0, i64* %67, align 8, !dbg !3863
  %68 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3864
  %69 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %68, i32 0, i32 8, !dbg !3865
  store i64 0, i64* %69, align 8, !dbg !3866
  br label %71, !dbg !3867

; <label>:70                                      ; preds = %59
  br label %71

; <label>:71                                      ; preds = %70, %65
  br label %72

; <label>:72                                      ; preds = %71, %58
  br label %74, !dbg !3868

; <label>:73                                      ; preds = %13
  br label %74

; <label>:74                                      ; preds = %73, %72
  store i64 0, i64* %status, align 8, !dbg !3869
  br label %76, !dbg !3870

; <label>:75                                      ; preds = %0
  store i64 -1073741163, i64* %status, align 8, !dbg !3871
  br label %76

; <label>:76                                      ; preds = %75, %74
  %77 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, align 8, !dbg !3873
  %78 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !3875
  %79 = load i64, i64* %status, align 8, !dbg !3876
  %80 = call i64 @WmiCompleteRequest(%struct._DEVICE_OBJECT* %77, %struct._IRP* %78, i64 %79, i64 0, i8 signext 0), !dbg !3877
  store i64 %80, i64* %status, align 8, !dbg !3878
  %81 = load i64, i64* %status, align 8, !dbg !3879
  ret i64 %81, !dbg !3880
}

; Function Attrs: nounwind ssp uwtable
define i64 @DiskPerfStartDevice(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp) #0 {
  %1 = alloca %struct._IRP*, align 8
  %2 = alloca i8, align 1
  %3 = alloca %struct._DEVICE_OBJECT*, align 8
  %4 = alloca %struct._DEVICE_OBJECT*, align 8
  %propFlags.i = alloca i64, align 8
  %5 = alloca %struct._DEVICE_OBJECT*, align 8
  %6 = alloca %struct._IRP*, align 8
  %deviceExtension = alloca %struct._DEVICE_EXTENSION*, align 8
  %status = alloca i64, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %5, metadata !3881, metadata !2009), !dbg !3882
  store %struct._IRP* %Irp, %struct._IRP** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %6, metadata !3883, metadata !2009), !dbg !3884
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension, metadata !3885, metadata !2009), !dbg !3886
  call void @llvm.dbg.declare(metadata i64* %status, metadata !3887, metadata !2009), !dbg !3888
  %7 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %5, align 8, !dbg !3889
  %8 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %7, i32 0, i32 11, !dbg !3892
  %9 = load i8*, i8** %8, align 8, !dbg !3892
  %10 = bitcast i8* %9 to %struct._DEVICE_EXTENSION*, !dbg !3893
  store %struct._DEVICE_EXTENSION* %10, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3894
  %11 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %5, align 8, !dbg !3895
  %12 = load %struct._IRP*, %struct._IRP** %6, align 8, !dbg !3896
  %13 = call i64 @DiskPerfForwardIrpSynchronous(%struct._DEVICE_OBJECT* %11, %struct._IRP* %12), !dbg !3897
  store i64 %13, i64* %status, align 8, !dbg !3898
  %14 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %5, align 8, !dbg !3899
  %15 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3900
  %16 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %15, i32 0, i32 1, !dbg !3901
  %17 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %16, align 8, !dbg !3901
  %18 = bitcast %struct._DEVICE_OBJECT** %3 to i8*, !dbg !3902
  call void @llvm.lifetime.start(i64 8, i8* %18), !dbg !3902
  %19 = bitcast %struct._DEVICE_OBJECT** %4 to i8*, !dbg !3902
  call void @llvm.lifetime.start(i64 8, i8* %19), !dbg !3902
  %20 = bitcast i64* %propFlags.i to i8*, !dbg !3902
  call void @llvm.lifetime.start(i64 8, i8* %20), !dbg !3902
  store %struct._DEVICE_OBJECT* %14, %struct._DEVICE_OBJECT** %3, align 8, !dbg !3902
  store %struct._DEVICE_OBJECT* %17, %struct._DEVICE_OBJECT** %4, align 8, !dbg !3902
  store i64 0, i64* %propFlags.i, align 8, !dbg !3903
  %21 = load i64, i64* %propFlags.i, align 8, !dbg !3905
  %22 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %3, align 8, !dbg !3906
  %23 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %22, i32 0, i32 8, !dbg !3907
  %24 = load i64, i64* %23, align 8, !dbg !3908
  %25 = or i64 %24, %21, !dbg !3908
  store i64 %25, i64* %23, align 8, !dbg !3908
  %26 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %4, align 8, !dbg !3909
  %27 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %26, i32 0, i32 9, !dbg !3910
  %28 = load i64, i64* %27, align 8, !dbg !3910
  %29 = and i64 %28, 7, !dbg !3911
  store i64 %29, i64* %propFlags.i, align 8, !dbg !3912
  %30 = load i64, i64* %propFlags.i, align 8, !dbg !3913
  %31 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %3, align 8, !dbg !3914
  %32 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %31, i32 0, i32 9, !dbg !3915
  %33 = load i64, i64* %32, align 8, !dbg !3916
  %34 = or i64 %33, %30, !dbg !3916
  store i64 %34, i64* %32, align 8, !dbg !3916
  %35 = bitcast %struct._DEVICE_OBJECT** %3 to i8*, !dbg !3917
  call void @llvm.lifetime.end(i64 8, i8* %35), !dbg !3917
  %36 = bitcast %struct._DEVICE_OBJECT** %4 to i8*, !dbg !3917
  call void @llvm.lifetime.end(i64 8, i8* %36), !dbg !3917
  %37 = bitcast i64* %propFlags.i to i8*, !dbg !3917
  call void @llvm.lifetime.end(i64 8, i8* %37), !dbg !3917
  %38 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %5, align 8, !dbg !3918
  %39 = call i64 @DiskPerfRegisterDevice(%struct._DEVICE_OBJECT* %38), !dbg !3919
  %40 = load i64, i64* %status, align 8, !dbg !3920
  %41 = load %struct._IRP*, %struct._IRP** %6, align 8, !dbg !3921
  %42 = getelementptr inbounds %struct._IRP, %struct._IRP* %41, i32 0, i32 6, !dbg !3922
  %43 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %42, i32 0, i32 0, !dbg !3923
  %44 = bitcast %union.__anonunion____missing_field_name_6* %43 to i64*, !dbg !3924
  store i64 %40, i64* %44, align 8, !dbg !3925
  %45 = load i64, i64* %status, align 8, !dbg !3926
  %46 = trunc i64 %45 to i32, !dbg !3926
  store i32 %46, i32* @myStatus, align 4, !dbg !3927
  %47 = load %struct._IRP*, %struct._IRP** %6, align 8, !dbg !3928
  %48 = bitcast %struct._IRP** %1 to i8*, !dbg !3929
  call void @llvm.lifetime.start(i64 8, i8* %48), !dbg !3929
  call void @llvm.lifetime.start(i64 1, i8* %2), !dbg !3929
  store %struct._IRP* %47, %struct._IRP** %1, align 8, !dbg !3929
  store i8 0, i8* %2, align 1, !dbg !3929
  %49 = load i32, i32* @s, align 4, !dbg !3930
  %50 = load i32, i32* @NP, align 4, !dbg !3932
  %51 = icmp eq i32 %49, %50, !dbg !3933
  br i1 %51, label %IofCompleteRequest.exit, label %52, !dbg !3934

; <label>:52                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !3935
  unreachable, !dbg !3935

IofCompleteRequest.exit:                          ; preds = %0
  %53 = load i32, i32* @DC, align 4, !dbg !3937
  store i32 %53, i32* @s, align 4, !dbg !3938
  %54 = bitcast %struct._IRP** %1 to i8*, !dbg !3939
  call void @llvm.lifetime.end(i64 8, i8* %54), !dbg !3939
  call void @llvm.lifetime.end(i64 1, i8* %2), !dbg !3939
  %55 = load i64, i64* %status, align 8, !dbg !3940
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %3, metadata !3368, metadata !2009), !dbg !3941
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %4, metadata !3370, metadata !2009), !dbg !3942
  call void @llvm.dbg.declare(metadata i64* %propFlags.i, metadata !3372, metadata !2009), !dbg !3943
  call void @llvm.dbg.declare(metadata %struct._IRP** %1, metadata !2214, metadata !2009), !dbg !3944
  call void @llvm.dbg.declare(metadata i8* %2, metadata !2216, metadata !2009), !dbg !3945
  ret i64 %55, !dbg !3946
}

; Function Attrs: nounwind ssp uwtable
define i64 @DiskPerfRemoveDevice(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp) #0 {
  %1 = alloca %struct._IRP*, align 8
  %2 = alloca i8, align 1
  %3 = alloca %struct._DEVICE_OBJECT*, align 8
  %4 = alloca %struct._IRP*, align 8
  %status = alloca i64, align 8
  %deviceExtension = alloca %struct._DEVICE_EXTENSION*, align 8
  %wmilibContext = alloca %struct._WMILIB_CONTEXT*, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %3, metadata !3947, metadata !2009), !dbg !3948
  store %struct._IRP* %Irp, %struct._IRP** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %4, metadata !3949, metadata !2009), !dbg !3950
  call void @llvm.dbg.declare(metadata i64* %status, metadata !3951, metadata !2009), !dbg !3952
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension, metadata !3953, metadata !2009), !dbg !3954
  call void @llvm.dbg.declare(metadata %struct._WMILIB_CONTEXT** %wmilibContext, metadata !3955, metadata !2009), !dbg !3956
  %5 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %3, align 8, !dbg !3957
  %6 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %5, i32 0, i32 11, !dbg !3960
  %7 = load i8*, i8** %6, align 8, !dbg !3960
  %8 = bitcast i8* %7 to %struct._DEVICE_EXTENSION*, !dbg !3961
  store %struct._DEVICE_EXTENSION* %8, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3962
  %9 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %3, align 8, !dbg !3963
  %10 = call i64 @IoWMIRegistrationControl(%struct._DEVICE_OBJECT* %9, i64 2), !dbg !3964
  %11 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !3965
  %12 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %11, i32 0, i32 14, !dbg !3966
  store %struct._WMILIB_CONTEXT* %12, %struct._WMILIB_CONTEXT** %wmilibContext, align 8, !dbg !3967
  %13 = load %struct._WMILIB_CONTEXT*, %struct._WMILIB_CONTEXT** %wmilibContext, align 8, !dbg !3968
  %14 = getelementptr inbounds %struct._WMILIB_CONTEXT, %struct._WMILIB_CONTEXT* %13, i32 0, i32 0, !dbg !3969
  %15 = call i64 @InterlockedExchange(i64* %14, i64 0), !dbg !3970
  %16 = load %struct._WMILIB_CONTEXT*, %struct._WMILIB_CONTEXT** %wmilibContext, align 8, !dbg !3971
  %17 = bitcast %struct._WMILIB_CONTEXT* %16 to i8*, !dbg !3971
  %18 = call i8* @memset(i8* %17, i32 0, i32 64), !dbg !3972
  %19 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %3, align 8, !dbg !3973
  %20 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !3974
  %21 = call i64 @DiskPerfForwardIrpSynchronous(%struct._DEVICE_OBJECT* %19, %struct._IRP* %20), !dbg !3975
  store i64 %21, i64* %status, align 8, !dbg !3976
  %22 = load i64, i64* %status, align 8, !dbg !3977
  %23 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !3978
  %24 = getelementptr inbounds %struct._IRP, %struct._IRP* %23, i32 0, i32 6, !dbg !3979
  %25 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %24, i32 0, i32 0, !dbg !3980
  %26 = bitcast %union.__anonunion____missing_field_name_6* %25 to i64*, !dbg !3981
  store i64 %22, i64* %26, align 8, !dbg !3982
  %27 = load i64, i64* %status, align 8, !dbg !3983
  %28 = trunc i64 %27 to i32, !dbg !3983
  store i32 %28, i32* @myStatus, align 4, !dbg !3984
  %29 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !3985
  %30 = bitcast %struct._IRP** %1 to i8*, !dbg !3986
  call void @llvm.lifetime.start(i64 8, i8* %30), !dbg !3986
  call void @llvm.lifetime.start(i64 1, i8* %2), !dbg !3986
  store %struct._IRP* %29, %struct._IRP** %1, align 8, !dbg !3986
  store i8 0, i8* %2, align 1, !dbg !3986
  %31 = load i32, i32* @s, align 4, !dbg !3987
  %32 = load i32, i32* @NP, align 4, !dbg !3989
  %33 = icmp eq i32 %31, %32, !dbg !3990
  br i1 %33, label %IofCompleteRequest.exit, label %34, !dbg !3991

; <label>:34                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !3992
  unreachable, !dbg !3992

IofCompleteRequest.exit:                          ; preds = %0
  %35 = load i32, i32* @DC, align 4, !dbg !3994
  store i32 %35, i32* @s, align 4, !dbg !3995
  %36 = bitcast %struct._IRP** %1 to i8*, !dbg !3996
  call void @llvm.lifetime.end(i64 8, i8* %36), !dbg !3996
  call void @llvm.lifetime.end(i64 1, i8* %2), !dbg !3996
  %37 = load i64, i64* %status, align 8, !dbg !3997
  call void @llvm.dbg.declare(metadata %struct._IRP** %1, metadata !2214, metadata !2009), !dbg !3998
  call void @llvm.dbg.declare(metadata i8* %2, metadata !2216, metadata !2009), !dbg !3999
  ret i64 %37, !dbg !4000
}

; Function Attrs: nounwind ssp uwtable
define i64 @DiskPerfIrpCompletion(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp, i8* %Context) #0 {
  %1 = alloca %struct._KEVENT*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %l.i = alloca i64, align 8
  %4 = alloca %struct._DEVICE_OBJECT*, align 8
  %5 = alloca %struct._IRP*, align 8
  %6 = alloca i8*, align 8
  %Event = alloca %struct._KEVENT*, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %4, metadata !4001, metadata !2009), !dbg !4002
  store %struct._IRP* %Irp, %struct._IRP** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %5, metadata !4003, metadata !2009), !dbg !4004
  store i8* %Context, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4005, metadata !2009), !dbg !4006
  call void @llvm.dbg.declare(metadata %struct._KEVENT** %Event, metadata !4007, metadata !2009), !dbg !4008
  %7 = load i8*, i8** %6, align 8, !dbg !4009
  %8 = bitcast i8* %7 to %struct._KEVENT*, !dbg !4012
  store %struct._KEVENT* %8, %struct._KEVENT** %Event, align 8, !dbg !4013
  %9 = load %struct._KEVENT*, %struct._KEVENT** %Event, align 8, !dbg !4014
  %10 = bitcast %struct._KEVENT** %1 to i8*, !dbg !4015
  call void @llvm.lifetime.start(i64 8, i8* %10), !dbg !4015
  %11 = bitcast i64* %2 to i8*, !dbg !4015
  call void @llvm.lifetime.start(i64 8, i8* %11), !dbg !4015
  call void @llvm.lifetime.start(i64 1, i8* %3), !dbg !4015
  %12 = bitcast i64* %l.i to i8*, !dbg !4015
  call void @llvm.lifetime.start(i64 8, i8* %12), !dbg !4015
  store %struct._KEVENT* %9, %struct._KEVENT** %1, align 8, !dbg !4015
  store i64 0, i64* %2, align 8, !dbg !4015
  store i8 0, i8* %3, align 1, !dbg !4015
  %13 = call i64 @__VERIFIER_nondet_long() #4, !dbg !4016
  store i64 %13, i64* %l.i, align 8, !dbg !4018
  store i32 1, i32* @setEventCalled, align 4, !dbg !4019
  %14 = load i64, i64* %l.i, align 8, !dbg !4021
  %15 = bitcast %struct._KEVENT** %1 to i8*, !dbg !4022
  call void @llvm.lifetime.end(i64 8, i8* %15), !dbg !4022
  %16 = bitcast i64* %2 to i8*, !dbg !4022
  call void @llvm.lifetime.end(i64 8, i8* %16), !dbg !4022
  call void @llvm.lifetime.end(i64 1, i8* %3), !dbg !4022
  %17 = bitcast i64* %l.i to i8*, !dbg !4022
  call void @llvm.lifetime.end(i64 8, i8* %17), !dbg !4022
  call void @llvm.dbg.declare(metadata %struct._KEVENT** %1, metadata !4023, metadata !2009), !dbg !4024
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4025, metadata !2009), !dbg !4026
  call void @llvm.dbg.declare(metadata i8* %3, metadata !4027, metadata !2009), !dbg !4028
  call void @llvm.dbg.declare(metadata i64* %l.i, metadata !4029, metadata !2009), !dbg !4018
  ret i64 -1073741802, !dbg !4030
}

; Function Attrs: nounwind ssp uwtable
define i64 @KeSetEvent(%struct._KEVENT* %Event, i64 %Increment, i8 zeroext %Wait) #0 {
  %1 = alloca %struct._KEVENT*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %l = alloca i64, align 8
  store %struct._KEVENT* %Event, %struct._KEVENT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._KEVENT** %1, metadata !4023, metadata !2009), !dbg !4031
  store i64 %Increment, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4025, metadata !2009), !dbg !4032
  store i8 %Wait, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !4027, metadata !2009), !dbg !4033
  call void @llvm.dbg.declare(metadata i64* %l, metadata !4029, metadata !2009), !dbg !4034
  %4 = call i64 @__VERIFIER_nondet_long(), !dbg !4035
  store i64 %4, i64* %l, align 8, !dbg !4034
  store i32 1, i32* @setEventCalled, align 4, !dbg !4036
  %5 = load i64, i64* %l, align 8, !dbg !4037
  ret i64 %5, !dbg !4038
}

; Function Attrs: nounwind ssp uwtable
define i64 @DiskPerfForwardIrpSynchronous(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca %struct._IRP*, align 8
  %deviceExtension = alloca %struct._DEVICE_EXTENSION*, align 8
  %event = alloca %struct._KEVENT, align 8
  %status = alloca i64, align 8
  %irpSp = alloca %struct._IO_STACK_LOCATION*, align 8
  %nextIrpSp = alloca %struct._IO_STACK_LOCATION*, align 8
  %irpSp___0 = alloca %struct._IO_STACK_LOCATION*, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !4039, metadata !2009), !dbg !4040
  store %struct._IRP* %Irp, %struct._IRP** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %2, metadata !4041, metadata !2009), !dbg !4042
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension, metadata !4043, metadata !2009), !dbg !4044
  call void @llvm.dbg.declare(metadata %struct._KEVENT* %event, metadata !4045, metadata !2009), !dbg !4046
  call void @llvm.dbg.declare(metadata i64* %status, metadata !4047, metadata !2009), !dbg !4048
  call void @llvm.dbg.declare(metadata %struct._IO_STACK_LOCATION** %irpSp, metadata !4049, metadata !2009), !dbg !4050
  call void @llvm.dbg.declare(metadata %struct._IO_STACK_LOCATION** %nextIrpSp, metadata !4051, metadata !2009), !dbg !4052
  call void @llvm.dbg.declare(metadata %struct._IO_STACK_LOCATION** %irpSp___0, metadata !4053, metadata !2009), !dbg !4054
  %3 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, align 8, !dbg !4055
  %4 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %3, i32 0, i32 11, !dbg !4058
  %5 = load i8*, i8** %4, align 8, !dbg !4058
  %6 = bitcast i8* %5 to %struct._DEVICE_EXTENSION*, !dbg !4059
  store %struct._DEVICE_EXTENSION* %6, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4060
  %7 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !4061
  %8 = getelementptr inbounds %struct._IRP, %struct._IRP* %7, i32 0, i32 20, !dbg !4062
  %9 = bitcast %union.__anonunion_Tail_47* %8 to %struct.__anonstruct_Overlay_48*, !dbg !4063
  %10 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %9, i32 0, i32 3, !dbg !4064
  %11 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %10, i32 0, i32 1, !dbg !4065
  %12 = bitcast %union.__anonunion____missing_field_name_52* %11 to %struct._IO_STACK_LOCATION**, !dbg !4066
  %13 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %12, align 8, !dbg !4066
  store %struct._IO_STACK_LOCATION* %13, %struct._IO_STACK_LOCATION** %irpSp, align 8, !dbg !4067
  %14 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !4068
  %15 = getelementptr inbounds %struct._IRP, %struct._IRP* %14, i32 0, i32 20, !dbg !4069
  %16 = bitcast %union.__anonunion_Tail_47* %15 to %struct.__anonstruct_Overlay_48*, !dbg !4070
  %17 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %16, i32 0, i32 3, !dbg !4071
  %18 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %17, i32 0, i32 1, !dbg !4072
  %19 = bitcast %union.__anonunion____missing_field_name_52* %18 to %struct._IO_STACK_LOCATION**, !dbg !4073
  %20 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %19, align 8, !dbg !4073
  %21 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %20, i64 -1, !dbg !4074
  store %struct._IO_STACK_LOCATION* %21, %struct._IO_STACK_LOCATION** %nextIrpSp, align 8, !dbg !4075
  %22 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %nextIrpSp, align 8, !dbg !4076
  %23 = bitcast %struct._IO_STACK_LOCATION* %22 to i8*, !dbg !4076
  %24 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp, align 8, !dbg !4077
  %25 = bitcast %struct._IO_STACK_LOCATION* %24 to i8*, !dbg !4077
  %26 = call i8* @memcpy(i8* %23, i8* %25, i32 ptrtoint ({}** getelementptr inbounds (%struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* null, i32 0, i32 7) to i32)), !dbg !4078
  %27 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %nextIrpSp, align 8, !dbg !4079
  %28 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %27, i32 0, i32 3, !dbg !4080
  store i8 0, i8* %28, align 1, !dbg !4081
  %29 = load i32, i32* @s, align 4, !dbg !4082
  %30 = load i32, i32* @NP, align 4, !dbg !4084
  %31 = icmp ne i32 %29, %30, !dbg !4085
  br i1 %31, label %32, label %33, !dbg !4086

; <label>:32                                      ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !4087
  unreachable, !dbg !4087

errorFn.exit:                                     ; No predecessors!
  br label %39, !dbg !4091

; <label>:33                                      ; preds = %0
  %34 = load i32, i32* @compRegistered, align 4, !dbg !4092
  %35 = icmp ne i32 %34, 0, !dbg !4095
  br i1 %35, label %36, label %37, !dbg !4096

; <label>:36                                      ; preds = %33
  call void (...) @__VERIFIER_error() #6, !dbg !4097
  unreachable, !dbg !4097

errorFn.exit1:                                    ; No predecessors!
  br label %38, !dbg !4101

; <label>:37                                      ; preds = %33
  store i32 1, i32* @compRegistered, align 4, !dbg !4102
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* @DiskPerfIrpCompletion, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** @compFptr, align 8, !dbg !4104
  store i32 0, i32* @routine, align 4, !dbg !4105
  br label %38

; <label>:38                                      ; preds = %37, %errorFn.exit1
  br label %39

; <label>:39                                      ; preds = %38, %errorFn.exit
  %40 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !4106
  %41 = getelementptr inbounds %struct._IRP, %struct._IRP* %40, i32 0, i32 20, !dbg !4108
  %42 = bitcast %union.__anonunion_Tail_47* %41 to %struct.__anonstruct_Overlay_48*, !dbg !4109
  %43 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %42, i32 0, i32 3, !dbg !4110
  %44 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %43, i32 0, i32 1, !dbg !4111
  %45 = bitcast %union.__anonunion____missing_field_name_52* %44 to %struct._IO_STACK_LOCATION**, !dbg !4112
  %46 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %45, align 8, !dbg !4112
  %47 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %46, i64 -1, !dbg !4113
  store %struct._IO_STACK_LOCATION* %47, %struct._IO_STACK_LOCATION** %irpSp___0, align 8, !dbg !4114
  %48 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp___0, align 8, !dbg !4115
  %49 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %48, i32 0, i32 7, !dbg !4116
  %50 = bitcast {}** %49 to i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)**, !dbg !4116
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* @DiskPerfIrpCompletion, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** %50, align 4, !dbg !4117
  %51 = bitcast %struct._KEVENT* %event to i8*, !dbg !4118
  %52 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp___0, align 8, !dbg !4119
  %53 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %52, i32 0, i32 8, !dbg !4120
  store i8* %51, i8** %53, align 4, !dbg !4121
  %54 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp___0, align 8, !dbg !4122
  %55 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %54, i32 0, i32 3, !dbg !4123
  store i8 0, i8* %55, align 1, !dbg !4124
  %56 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp___0, align 8, !dbg !4125
  %57 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %56, i32 0, i32 3, !dbg !4126
  store i8 64, i8* %57, align 1, !dbg !4127
  %58 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp___0, align 8, !dbg !4128
  %59 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %58, i32 0, i32 3, !dbg !4129
  %60 = load i8, i8* %59, align 1, !dbg !4129
  %61 = zext i8 %60 to i32, !dbg !4130
  %62 = or i32 %61, 128, !dbg !4131
  %63 = trunc i32 %62 to i8, !dbg !4130
  %64 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp___0, align 8, !dbg !4132
  %65 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %64, i32 0, i32 3, !dbg !4133
  store i8 %63, i8* %65, align 1, !dbg !4134
  %66 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp___0, align 8, !dbg !4135
  %67 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %66, i32 0, i32 3, !dbg !4136
  %68 = load i8, i8* %67, align 1, !dbg !4136
  %69 = zext i8 %68 to i32, !dbg !4137
  %70 = or i32 %69, 32, !dbg !4138
  %71 = trunc i32 %70 to i8, !dbg !4137
  %72 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpSp___0, align 8, !dbg !4139
  %73 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %72, i32 0, i32 3, !dbg !4140
  store i8 %71, i8* %73, align 1, !dbg !4141
  %74 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4142
  %75 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %74, i32 0, i32 1, !dbg !4143
  %76 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %75, align 8, !dbg !4143
  %77 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !4144
  %78 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %76, %struct._IRP* %77), !dbg !4145
  store i64 %78, i64* %status, align 8, !dbg !4146
  %79 = load i64, i64* %status, align 8, !dbg !4147
  %80 = icmp eq i64 %79, 259, !dbg !4149
  br i1 %80, label %81, label %86, !dbg !4150

; <label>:81                                      ; preds = %39
  %82 = bitcast %struct._KEVENT* %event to i8*, !dbg !4151
  %83 = call i64 @KeWaitForSingleObject(i8* %82, i32 0, i8 signext 0, i8 zeroext 0, %union._LARGE_INTEGER* null), !dbg !4154
  %84 = load i32, i32* @myStatus, align 4, !dbg !4155
  %85 = sext i32 %84 to i64, !dbg !4155
  store i64 %85, i64* %status, align 8, !dbg !4156
  br label %87, !dbg !4157

; <label>:86                                      ; preds = %39
  br label %87

; <label>:87                                      ; preds = %86, %81
  %88 = load i64, i64* %status, align 8, !dbg !4158
  ret i64 %88, !dbg !4159
}

; Function Attrs: nounwind ssp uwtable
define i64 @DiskPerfRegisterDevice(%struct._DEVICE_OBJECT* %DeviceObject) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %__BLAST_NONDET___0.i.i.1 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %x.i.2 = alloca i8*, align 8
  %tmp.i.3 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %__BLAST_NONDET___0.i.i = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %x.i = alloca i8*, align 8
  %tmp.i = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct._DEVICE_OBJECT*, align 8
  %status = alloca i64, align 8
  %ioStatus = alloca %struct._IO_STATUS_BLOCK, align 8
  %event = alloca %struct._KEVENT, align 8
  %deviceExtension = alloca %struct._DEVICE_EXTENSION*, align 8
  %irp = alloca %struct._IRP*, align 8
  %number = alloca %struct._STORAGE_DEVICE_NUMBER, align 8
  %registrationFlag = alloca i64, align 8
  %outputSize = alloca i64, align 8
  %output = alloca %struct._MOUNTDEV_NAME*, align 8
  %volumeNumber = alloca %struct._VOLUME_NUMBER, align 8
  %tmp = alloca i8*, align 8
  %tmp___0 = alloca i8*, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %12, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %12, metadata !4160, metadata !2009), !dbg !4161
  call void @llvm.dbg.declare(metadata i64* %status, metadata !4162, metadata !2009), !dbg !4163
  call void @llvm.dbg.declare(metadata %struct._IO_STATUS_BLOCK* %ioStatus, metadata !4164, metadata !2009), !dbg !4165
  call void @llvm.dbg.declare(metadata %struct._KEVENT* %event, metadata !4166, metadata !2009), !dbg !4167
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension, metadata !4168, metadata !2009), !dbg !4169
  call void @llvm.dbg.declare(metadata %struct._IRP** %irp, metadata !4170, metadata !2009), !dbg !4171
  call void @llvm.dbg.declare(metadata %struct._STORAGE_DEVICE_NUMBER* %number, metadata !4172, metadata !2009), !dbg !4179
  call void @llvm.dbg.declare(metadata i64* %registrationFlag, metadata !4180, metadata !2009), !dbg !4181
  call void @llvm.dbg.declare(metadata i64* %outputSize, metadata !4182, metadata !2009), !dbg !4183
  call void @llvm.dbg.declare(metadata %struct._MOUNTDEV_NAME** %output, metadata !4184, metadata !2009), !dbg !4191
  call void @llvm.dbg.declare(metadata %struct._VOLUME_NUMBER* %volumeNumber, metadata !4192, metadata !2009), !dbg !4198
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !4199, metadata !2009), !dbg !4200
  call void @llvm.dbg.declare(metadata i8** %tmp___0, metadata !4201, metadata !2009), !dbg !4202
  store i64 0, i64* %registrationFlag, align 8, !dbg !4203
  %13 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %12, align 8, !dbg !4206
  %14 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %13, i32 0, i32 11, !dbg !4207
  %15 = load i8*, i8** %14, align 8, !dbg !4207
  %16 = bitcast i8* %15 to %struct._DEVICE_EXTENSION*, !dbg !4206
  store %struct._DEVICE_EXTENSION* %16, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4208
  %17 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4209
  %18 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %17, i32 0, i32 1, !dbg !4210
  %19 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %18, align 8, !dbg !4210
  %20 = bitcast %struct._STORAGE_DEVICE_NUMBER* %number to i8*, !dbg !4211
  %21 = call %struct._IRP* @IoBuildDeviceIoControlRequest(i64 2953344, %struct._DEVICE_OBJECT* %19, i8* null, i64 0, i8* %20, i64 24, i8 zeroext 0, %struct._KEVENT* %event, %struct._IO_STATUS_BLOCK* %ioStatus), !dbg !4212
  store %struct._IRP* %21, %struct._IRP** %irp, align 8, !dbg !4213
  %22 = load %struct._IRP*, %struct._IRP** %irp, align 8, !dbg !4214
  %23 = icmp ne %struct._IRP* %22, null, !dbg !4214
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2058, metadata !2009), !dbg !4216
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0.i.i, metadata !2060, metadata !2009), !dbg !4222
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2061, metadata !2009), !dbg !4223
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2063, metadata !2009), !dbg !4224
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2065, metadata !2009), !dbg !4225
  call void @llvm.dbg.declare(metadata i8** %x.i, metadata !2067, metadata !2009), !dbg !4226
  call void @llvm.dbg.declare(metadata i8** %tmp.i, metadata !2069, metadata !2009), !dbg !4227
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2058, metadata !2009), !dbg !4228
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0.i.i.1, metadata !2060, metadata !2009), !dbg !4234
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2061, metadata !2009), !dbg !4235
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2063, metadata !2009), !dbg !4236
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2065, metadata !2009), !dbg !4237
  call void @llvm.dbg.declare(metadata i8** %x.i.2, metadata !2067, metadata !2009), !dbg !4238
  call void @llvm.dbg.declare(metadata i8** %tmp.i.3, metadata !2069, metadata !2009), !dbg !4239
  br i1 %23, label %26, label %24, !dbg !4240

; <label>:24                                      ; preds = %0
  %25 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %12, align 8, !dbg !4241
  call void @DiskPerfLogError(%struct._DEVICE_OBJECT* %25, i64 256, i64 0, i64 -1073479678), !dbg !4244
  store i64 -1073741670, i64* %11, !dbg !4245
  br label %332, !dbg !4245

; <label>:26                                      ; preds = %0
  br label %27

; <label>:27                                      ; preds = %26
  %28 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4246
  %29 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %28, i32 0, i32 1, !dbg !4248
  %30 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %29, align 8, !dbg !4248
  %31 = load %struct._IRP*, %struct._IRP** %irp, align 8, !dbg !4249
  %32 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %30, %struct._IRP* %31), !dbg !4250
  store i64 %32, i64* %status, align 8, !dbg !4251
  %33 = load i64, i64* %status, align 8, !dbg !4252
  %34 = icmp eq i64 %33, 259, !dbg !4254
  br i1 %34, label %35, label %41, !dbg !4255

; <label>:35                                      ; preds = %27
  %36 = bitcast %struct._KEVENT* %event to i8*, !dbg !4256
  %37 = call i64 @KeWaitForSingleObject(i8* %36, i32 0, i8 signext 0, i8 zeroext 0, %union._LARGE_INTEGER* null), !dbg !4259
  %38 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %ioStatus, i32 0, i32 0, !dbg !4260
  %39 = bitcast %union.__anonunion____missing_field_name_6* %38 to i64*, !dbg !4261
  %40 = load i64, i64* %39, align 8, !dbg !4261
  store i64 %40, i64* %status, align 8, !dbg !4262
  br label %42, !dbg !4263

; <label>:41                                      ; preds = %27
  br label %42

; <label>:42                                      ; preds = %41, %35
  %43 = load i64, i64* %status, align 8, !dbg !4264
  %44 = icmp sge i64 %43, 0, !dbg !4265
  br i1 %44, label %45, label %63, !dbg !4266

; <label>:45                                      ; preds = %42
  %46 = getelementptr inbounds %struct._STORAGE_DEVICE_NUMBER, %struct._STORAGE_DEVICE_NUMBER* %number, i32 0, i32 1, !dbg !4267
  %47 = load i64, i64* %46, align 8, !dbg !4267
  %48 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4270
  %49 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %48, i32 0, i32 3, !dbg !4271
  store i64 %47, i64* %49, align 8, !dbg !4272
  %50 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4273
  %51 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %50, i32 0, i32 13, !dbg !4274
  %52 = getelementptr inbounds [64 x i16], [64 x i16]* %51, i32 0, i32 0, !dbg !4273
  %53 = getelementptr inbounds %struct._STORAGE_DEVICE_NUMBER, %struct._STORAGE_DEVICE_NUMBER* %number, i32 0, i32 1, !dbg !4275
  %54 = load i64, i64* %53, align 8, !dbg !4275
  %55 = getelementptr inbounds %struct._STORAGE_DEVICE_NUMBER, %struct._STORAGE_DEVICE_NUMBER* %number, i32 0, i32 2, !dbg !4276
  %56 = load i64, i64* %55, align 8, !dbg !4276
  %57 = call i32 (i16*, i16*, ...) @swprintf(i16* %52, i16* bitcast ([61 x i8]* @.str to i16*), i64 %54, i64 %56), !dbg !4277
  %58 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4278
  %59 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %58, i32 0, i32 4, !dbg !4279
  %60 = getelementptr inbounds [8 x i16], [8 x i16]* %59, i32 0, i64 0, !dbg !4278
  %61 = bitcast i16* %60 to i8*, !dbg !4280
  %62 = call i8* @memcpy(i8* %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 16), !dbg !4281
  br label %320, !dbg !4282

; <label>:63                                      ; preds = %42
  store i64 4, i64* %outputSize, align 8, !dbg !4283
  %64 = load i64, i64* %outputSize, align 8, !dbg !4284
  %65 = bitcast i32* %8 to i8*, !dbg !4285
  call void @llvm.lifetime.start(i64 4, i8* %65), !dbg !4285
  %66 = bitcast i64* %9 to i8*, !dbg !4285
  call void @llvm.lifetime.start(i64 8, i8* %66), !dbg !4285
  %67 = bitcast i64* %10 to i8*, !dbg !4285
  call void @llvm.lifetime.start(i64 8, i8* %67), !dbg !4285
  %68 = bitcast i8** %x.i to i8*, !dbg !4285
  call void @llvm.lifetime.start(i64 8, i8* %68), !dbg !4285
  %69 = bitcast i8** %tmp.i to i8*, !dbg !4285
  call void @llvm.lifetime.start(i64 8, i8* %69), !dbg !4285
  store i32 1, i32* %8, align 4, !dbg !4285
  store i64 %64, i64* %9, align 8, !dbg !4285
  store i64 1718767684, i64* %10, align 8, !dbg !4285
  %70 = load i64, i64* %9, align 8, !dbg !4286
  %71 = trunc i64 %70 to i32, !dbg !4286
  %72 = bitcast i8** %6 to i8*, !dbg !4287
  call void @llvm.lifetime.start(i64 8, i8* %72) #4, !dbg !4287
  %73 = bitcast i32* %7 to i8*, !dbg !4287
  call void @llvm.lifetime.start(i64 4, i8* %73) #4, !dbg !4287
  %74 = bitcast i32* %__BLAST_NONDET___0.i.i to i8*, !dbg !4287
  call void @llvm.lifetime.start(i64 4, i8* %74) #4, !dbg !4287
  store i32 %71, i32* %7, align 4, !dbg !4287
  %75 = call i32 @__VERIFIER_nondet_int() #4, !dbg !4288
  store i32 %75, i32* %__BLAST_NONDET___0.i.i, align 4, !dbg !4222
  %76 = load i32, i32* %__BLAST_NONDET___0.i.i, align 4, !dbg !4289
  %77 = icmp ne i32 %76, 0, !dbg !4289
  br i1 %77, label %78, label %79, !dbg !4290

; <label>:78                                      ; preds = %63
  store i8* null, i8** %6, !dbg !4291
  br label %ExAllocatePoolWithTag.exit, !dbg !4291

; <label>:79                                      ; preds = %63
  store i8* inttoptr (i64 1 to i8*), i8** %6, !dbg !4292
  br label %ExAllocatePoolWithTag.exit, !dbg !4292

ExAllocatePoolWithTag.exit:                       ; preds = %78, %79
  %80 = load i8*, i8** %6, !dbg !4293
  %81 = bitcast i8** %6 to i8*, !dbg !4293
  call void @llvm.lifetime.end(i64 8, i8* %81) #4, !dbg !4293
  %82 = bitcast i32* %7 to i8*, !dbg !4293
  call void @llvm.lifetime.end(i64 4, i8* %82) #4, !dbg !4293
  %83 = bitcast i32* %__BLAST_NONDET___0.i.i to i8*, !dbg !4293
  call void @llvm.lifetime.end(i64 4, i8* %83) #4, !dbg !4293
  store i8* %80, i8** %tmp.i, align 8, !dbg !4294
  %84 = load i8*, i8** %tmp.i, align 8, !dbg !4295
  store i8* %84, i8** %x.i, align 8, !dbg !4296
  %85 = load i8*, i8** %x.i, align 8, !dbg !4297
  %86 = bitcast i32* %8 to i8*, !dbg !4298
  call void @llvm.lifetime.end(i64 4, i8* %86), !dbg !4298
  %87 = bitcast i64* %9 to i8*, !dbg !4298
  call void @llvm.lifetime.end(i64 8, i8* %87), !dbg !4298
  %88 = bitcast i64* %10 to i8*, !dbg !4298
  call void @llvm.lifetime.end(i64 8, i8* %88), !dbg !4298
  %89 = bitcast i8** %x.i to i8*, !dbg !4298
  call void @llvm.lifetime.end(i64 8, i8* %89), !dbg !4298
  %90 = bitcast i8** %tmp.i to i8*, !dbg !4298
  call void @llvm.lifetime.end(i64 8, i8* %90), !dbg !4298
  store i8* %85, i8** %tmp, align 8, !dbg !4299
  %91 = load i8*, i8** %tmp, align 8, !dbg !4300
  %92 = bitcast i8* %91 to %struct._MOUNTDEV_NAME*, !dbg !4300
  store %struct._MOUNTDEV_NAME* %92, %struct._MOUNTDEV_NAME** %output, align 8, !dbg !4301
  %93 = load %struct._MOUNTDEV_NAME*, %struct._MOUNTDEV_NAME** %output, align 8, !dbg !4302
  %94 = icmp ne %struct._MOUNTDEV_NAME* %93, null, !dbg !4302
  br i1 %94, label %97, label %95, !dbg !4304

; <label>:95                                      ; preds = %ExAllocatePoolWithTag.exit
  %96 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %12, align 8, !dbg !4305
  call void @DiskPerfLogError(%struct._DEVICE_OBJECT* %96, i64 257, i64 0, i64 -1073479678), !dbg !4308
  store i64 -1073741670, i64* %11, !dbg !4309
  br label %332, !dbg !4309

; <label>:97                                      ; preds = %ExAllocatePoolWithTag.exit
  br label %98

; <label>:98                                      ; preds = %97
  %99 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4310
  %100 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %99, i32 0, i32 1, !dbg !4312
  %101 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %100, align 8, !dbg !4312
  %102 = load %struct._MOUNTDEV_NAME*, %struct._MOUNTDEV_NAME** %output, align 8, !dbg !4313
  %103 = bitcast %struct._MOUNTDEV_NAME* %102 to i8*, !dbg !4313
  %104 = load i64, i64* %outputSize, align 8, !dbg !4314
  %105 = call %struct._IRP* @IoBuildDeviceIoControlRequest(i64 5046280, %struct._DEVICE_OBJECT* %101, i8* null, i64 0, i8* %103, i64 %104, i8 zeroext 0, %struct._KEVENT* %event, %struct._IO_STATUS_BLOCK* %ioStatus), !dbg !4315
  store %struct._IRP* %105, %struct._IRP** %irp, align 8, !dbg !4316
  %106 = load %struct._IRP*, %struct._IRP** %irp, align 8, !dbg !4317
  %107 = icmp ne %struct._IRP* %106, null, !dbg !4317
  br i1 %107, label %110, label %108, !dbg !4319

; <label>:108                                     ; preds = %98
  %109 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %12, align 8, !dbg !4320
  call void @DiskPerfLogError(%struct._DEVICE_OBJECT* %109, i64 258, i64 0, i64 -1073479678), !dbg !4323
  store i64 -1073741670, i64* %11, !dbg !4324
  br label %332, !dbg !4324

; <label>:110                                     ; preds = %98
  br label %111

; <label>:111                                     ; preds = %110
  %112 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4325
  %113 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %112, i32 0, i32 1, !dbg !4327
  %114 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %113, align 8, !dbg !4327
  %115 = load %struct._IRP*, %struct._IRP** %irp, align 8, !dbg !4328
  %116 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %114, %struct._IRP* %115), !dbg !4329
  store i64 %116, i64* %status, align 8, !dbg !4330
  %117 = load i64, i64* %status, align 8, !dbg !4331
  %118 = icmp eq i64 %117, 259, !dbg !4333
  br i1 %118, label %119, label %125, !dbg !4334

; <label>:119                                     ; preds = %111
  %120 = bitcast %struct._KEVENT* %event to i8*, !dbg !4335
  %121 = call i64 @KeWaitForSingleObject(i8* %120, i32 0, i8 signext 0, i8 zeroext 0, %union._LARGE_INTEGER* null), !dbg !4338
  %122 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %ioStatus, i32 0, i32 0, !dbg !4339
  %123 = bitcast %union.__anonunion____missing_field_name_6* %122 to i64*, !dbg !4340
  %124 = load i64, i64* %123, align 8, !dbg !4340
  store i64 %124, i64* %status, align 8, !dbg !4341
  br label %126, !dbg !4342

; <label>:125                                     ; preds = %111
  br label %126

; <label>:126                                     ; preds = %125, %119
  %127 = load i64, i64* %status, align 8, !dbg !4343
  %128 = icmp eq i64 %127, -2147483643, !dbg !4344
  br i1 %128, label %129, label %199, !dbg !4345

; <label>:129                                     ; preds = %126
  %130 = load %struct._MOUNTDEV_NAME*, %struct._MOUNTDEV_NAME** %output, align 8, !dbg !4346
  %131 = getelementptr inbounds %struct._MOUNTDEV_NAME, %struct._MOUNTDEV_NAME* %130, i32 0, i32 0, !dbg !4347
  %132 = load i16, i16* %131, align 2, !dbg !4347
  %133 = zext i16 %132 to i32, !dbg !4348
  %134 = zext i32 %133 to i64, !dbg !4348
  %135 = add i64 4, %134, !dbg !4349
  store i64 %135, i64* %outputSize, align 8, !dbg !4350
  %136 = load i64, i64* %outputSize, align 8, !dbg !4351
  %137 = bitcast i32* %3 to i8*, !dbg !4352
  call void @llvm.lifetime.start(i64 4, i8* %137), !dbg !4352
  %138 = bitcast i64* %4 to i8*, !dbg !4352
  call void @llvm.lifetime.start(i64 8, i8* %138), !dbg !4352
  %139 = bitcast i64* %5 to i8*, !dbg !4352
  call void @llvm.lifetime.start(i64 8, i8* %139), !dbg !4352
  %140 = bitcast i8** %x.i.2 to i8*, !dbg !4352
  call void @llvm.lifetime.start(i64 8, i8* %140), !dbg !4352
  %141 = bitcast i8** %tmp.i.3 to i8*, !dbg !4352
  call void @llvm.lifetime.start(i64 8, i8* %141), !dbg !4352
  store i32 1, i32* %3, align 4, !dbg !4352
  store i64 %136, i64* %4, align 8, !dbg !4352
  store i64 1718767684, i64* %5, align 8, !dbg !4352
  %142 = load i64, i64* %4, align 8, !dbg !4353
  %143 = trunc i64 %142 to i32, !dbg !4353
  %144 = bitcast i8** %1 to i8*, !dbg !4354
  call void @llvm.lifetime.start(i64 8, i8* %144) #4, !dbg !4354
  %145 = bitcast i32* %2 to i8*, !dbg !4354
  call void @llvm.lifetime.start(i64 4, i8* %145) #4, !dbg !4354
  %146 = bitcast i32* %__BLAST_NONDET___0.i.i.1 to i8*, !dbg !4354
  call void @llvm.lifetime.start(i64 4, i8* %146) #4, !dbg !4354
  store i32 %143, i32* %2, align 4, !dbg !4354
  %147 = call i32 @__VERIFIER_nondet_int() #4, !dbg !4355
  store i32 %147, i32* %__BLAST_NONDET___0.i.i.1, align 4, !dbg !4234
  %148 = load i32, i32* %__BLAST_NONDET___0.i.i.1, align 4, !dbg !4356
  %149 = icmp ne i32 %148, 0, !dbg !4356
  br i1 %149, label %150, label %151, !dbg !4357

; <label>:150                                     ; preds = %129
  store i8* null, i8** %1, !dbg !4358
  br label %ExAllocatePoolWithTag.exit4, !dbg !4358

; <label>:151                                     ; preds = %129
  store i8* inttoptr (i64 1 to i8*), i8** %1, !dbg !4359
  br label %ExAllocatePoolWithTag.exit4, !dbg !4359

ExAllocatePoolWithTag.exit4:                      ; preds = %150, %151
  %152 = load i8*, i8** %1, !dbg !4360
  %153 = bitcast i8** %1 to i8*, !dbg !4360
  call void @llvm.lifetime.end(i64 8, i8* %153) #4, !dbg !4360
  %154 = bitcast i32* %2 to i8*, !dbg !4360
  call void @llvm.lifetime.end(i64 4, i8* %154) #4, !dbg !4360
  %155 = bitcast i32* %__BLAST_NONDET___0.i.i.1 to i8*, !dbg !4360
  call void @llvm.lifetime.end(i64 4, i8* %155) #4, !dbg !4360
  store i8* %152, i8** %tmp.i.3, align 8, !dbg !4361
  %156 = load i8*, i8** %tmp.i.3, align 8, !dbg !4362
  store i8* %156, i8** %x.i.2, align 8, !dbg !4363
  %157 = load i8*, i8** %x.i.2, align 8, !dbg !4364
  %158 = bitcast i32* %3 to i8*, !dbg !4365
  call void @llvm.lifetime.end(i64 4, i8* %158), !dbg !4365
  %159 = bitcast i64* %4 to i8*, !dbg !4365
  call void @llvm.lifetime.end(i64 8, i8* %159), !dbg !4365
  %160 = bitcast i64* %5 to i8*, !dbg !4365
  call void @llvm.lifetime.end(i64 8, i8* %160), !dbg !4365
  %161 = bitcast i8** %x.i.2 to i8*, !dbg !4365
  call void @llvm.lifetime.end(i64 8, i8* %161), !dbg !4365
  %162 = bitcast i8** %tmp.i.3 to i8*, !dbg !4365
  call void @llvm.lifetime.end(i64 8, i8* %162), !dbg !4365
  store i8* %157, i8** %tmp___0, align 8, !dbg !4366
  %163 = load i8*, i8** %tmp___0, align 8, !dbg !4367
  %164 = bitcast i8* %163 to %struct._MOUNTDEV_NAME*, !dbg !4367
  store %struct._MOUNTDEV_NAME* %164, %struct._MOUNTDEV_NAME** %output, align 8, !dbg !4368
  %165 = load %struct._MOUNTDEV_NAME*, %struct._MOUNTDEV_NAME** %output, align 8, !dbg !4369
  %166 = icmp ne %struct._MOUNTDEV_NAME* %165, null, !dbg !4369
  br i1 %166, label %169, label %167, !dbg !4371

; <label>:167                                     ; preds = %ExAllocatePoolWithTag.exit4
  %168 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %12, align 8, !dbg !4372
  call void @DiskPerfLogError(%struct._DEVICE_OBJECT* %168, i64 258, i64 0, i64 -1073479678), !dbg !4375
  store i64 -1073741670, i64* %11, !dbg !4376
  br label %332, !dbg !4376

; <label>:169                                     ; preds = %ExAllocatePoolWithTag.exit4
  br label %170

; <label>:170                                     ; preds = %169
  %171 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4377
  %172 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %171, i32 0, i32 1, !dbg !4379
  %173 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %172, align 8, !dbg !4379
  %174 = load %struct._MOUNTDEV_NAME*, %struct._MOUNTDEV_NAME** %output, align 8, !dbg !4380
  %175 = bitcast %struct._MOUNTDEV_NAME* %174 to i8*, !dbg !4380
  %176 = load i64, i64* %outputSize, align 8, !dbg !4381
  %177 = call %struct._IRP* @IoBuildDeviceIoControlRequest(i64 5046280, %struct._DEVICE_OBJECT* %173, i8* null, i64 0, i8* %175, i64 %176, i8 zeroext 0, %struct._KEVENT* %event, %struct._IO_STATUS_BLOCK* %ioStatus), !dbg !4382
  store %struct._IRP* %177, %struct._IRP** %irp, align 8, !dbg !4383
  %178 = load %struct._IRP*, %struct._IRP** %irp, align 8, !dbg !4384
  %179 = icmp ne %struct._IRP* %178, null, !dbg !4384
  br i1 %179, label %182, label %180, !dbg !4386

; <label>:180                                     ; preds = %170
  %181 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %12, align 8, !dbg !4387
  call void @DiskPerfLogError(%struct._DEVICE_OBJECT* %181, i64 259, i64 0, i64 -1073479678), !dbg !4390
  store i64 -1073741670, i64* %11, !dbg !4391
  br label %332, !dbg !4391

; <label>:182                                     ; preds = %170
  br label %183

; <label>:183                                     ; preds = %182
  %184 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4392
  %185 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %184, i32 0, i32 1, !dbg !4394
  %186 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %185, align 8, !dbg !4394
  %187 = load %struct._IRP*, %struct._IRP** %irp, align 8, !dbg !4395
  %188 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %186, %struct._IRP* %187), !dbg !4396
  store i64 %188, i64* %status, align 8, !dbg !4397
  %189 = load i64, i64* %status, align 8, !dbg !4398
  %190 = icmp eq i64 %189, 259, !dbg !4400
  br i1 %190, label %191, label %197, !dbg !4401

; <label>:191                                     ; preds = %183
  %192 = bitcast %struct._KEVENT* %event to i8*, !dbg !4402
  %193 = call i64 @KeWaitForSingleObject(i8* %192, i32 0, i8 signext 0, i8 zeroext 0, %union._LARGE_INTEGER* null), !dbg !4405
  %194 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %ioStatus, i32 0, i32 0, !dbg !4406
  %195 = bitcast %union.__anonunion____missing_field_name_6* %194 to i64*, !dbg !4407
  %196 = load i64, i64* %195, align 8, !dbg !4407
  store i64 %196, i64* %status, align 8, !dbg !4408
  br label %198, !dbg !4409

; <label>:197                                     ; preds = %183
  br label %198

; <label>:198                                     ; preds = %197, %191
  br label %200, !dbg !4410

; <label>:199                                     ; preds = %126
  br label %200

; <label>:200                                     ; preds = %199, %198
  %201 = load i64, i64* %status, align 8, !dbg !4411
  %202 = icmp sge i64 %201, 0, !dbg !4413
  br i1 %202, label %206, label %203, !dbg !4414

; <label>:203                                     ; preds = %200
  %204 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %12, align 8, !dbg !4415
  call void @DiskPerfLogError(%struct._DEVICE_OBJECT* %204, i64 260, i64 0, i64 -1073479677), !dbg !4418
  %205 = load i64, i64* %status, align 8, !dbg !4419
  store i64 %205, i64* %11, !dbg !4420
  br label %332, !dbg !4420

; <label>:206                                     ; preds = %200
  br label %207

; <label>:207                                     ; preds = %206
  %208 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4421
  %209 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %208, i32 0, i32 3, !dbg !4423
  store i64 -1, i64* %209, align 8, !dbg !4424
  %210 = load %struct._MOUNTDEV_NAME*, %struct._MOUNTDEV_NAME** %output, align 8, !dbg !4425
  %211 = getelementptr inbounds %struct._MOUNTDEV_NAME, %struct._MOUNTDEV_NAME* %210, i32 0, i32 0, !dbg !4426
  %212 = load i16, i16* %211, align 2, !dbg !4426
  %213 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4427
  %214 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %213, i32 0, i32 12, !dbg !4428
  %215 = getelementptr inbounds %struct._UNICODE_STRING, %struct._UNICODE_STRING* %214, i32 0, i32 0, !dbg !4429
  store i16 %212, i16* %215, align 2, !dbg !4430
  %216 = load %struct._MOUNTDEV_NAME*, %struct._MOUNTDEV_NAME** %output, align 8, !dbg !4431
  %217 = getelementptr inbounds %struct._MOUNTDEV_NAME, %struct._MOUNTDEV_NAME* %216, i32 0, i32 0, !dbg !4432
  %218 = load i16, i16* %217, align 2, !dbg !4432
  %219 = zext i16 %218 to i32, !dbg !4433
  %220 = zext i32 %219 to i64, !dbg !4433
  %221 = add i64 %220, 2, !dbg !4434
  %222 = trunc i64 %221 to i16, !dbg !4433
  %223 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4435
  %224 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %223, i32 0, i32 12, !dbg !4436
  %225 = getelementptr inbounds %struct._UNICODE_STRING, %struct._UNICODE_STRING* %224, i32 0, i32 1, !dbg !4437
  store i16 %222, i16* %225, align 2, !dbg !4438
  %226 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4439
  %227 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %226, i32 0, i32 12, !dbg !4440
  %228 = getelementptr inbounds %struct._UNICODE_STRING, %struct._UNICODE_STRING* %227, i32 0, i32 2, !dbg !4441
  %229 = load i16*, i16** %228, align 8, !dbg !4441
  %230 = bitcast i16* %229 to i8*, !dbg !4439
  %231 = load %struct._MOUNTDEV_NAME*, %struct._MOUNTDEV_NAME** %output, align 8, !dbg !4442
  %232 = getelementptr inbounds %struct._MOUNTDEV_NAME, %struct._MOUNTDEV_NAME* %231, i32 0, i32 1, !dbg !4443
  %233 = getelementptr inbounds [1 x i16], [1 x i16]* %232, i32 0, i32 0, !dbg !4442
  %234 = bitcast i16* %233 to i8*, !dbg !4442
  %235 = load %struct._MOUNTDEV_NAME*, %struct._MOUNTDEV_NAME** %output, align 8, !dbg !4444
  %236 = getelementptr inbounds %struct._MOUNTDEV_NAME, %struct._MOUNTDEV_NAME* %235, i32 0, i32 0, !dbg !4445
  %237 = load i16, i16* %236, align 2, !dbg !4445
  %238 = zext i16 %237 to i32, !dbg !4444
  %239 = call i8* @memcpy(i8* %230, i8* %234, i32 %238), !dbg !4446
  %240 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4447
  %241 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %240, i32 0, i32 12, !dbg !4448
  %242 = getelementptr inbounds %struct._UNICODE_STRING, %struct._UNICODE_STRING* %241, i32 0, i32 2, !dbg !4449
  %243 = load i16*, i16** %242, align 8, !dbg !4449
  %244 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4450
  %245 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %244, i32 0, i32 12, !dbg !4451
  %246 = getelementptr inbounds %struct._UNICODE_STRING, %struct._UNICODE_STRING* %245, i32 0, i32 0, !dbg !4452
  %247 = load i16, i16* %246, align 2, !dbg !4452
  %248 = zext i16 %247 to i32, !dbg !4453
  %249 = zext i32 %248 to i64, !dbg !4453
  %250 = udiv i64 %249, 2, !dbg !4454
  %251 = getelementptr inbounds i16, i16* %243, i64 %250, !dbg !4455
  store i16 0, i16* %251, align 2, !dbg !4456
  store i64 24, i64* %outputSize, align 8, !dbg !4457
  %252 = bitcast %struct._VOLUME_NUMBER* %volumeNumber to i8*, !dbg !4458
  %253 = call i8* @memset(i8* %252, i32 0, i32 24), !dbg !4459
  %254 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4460
  %255 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %254, i32 0, i32 1, !dbg !4461
  %256 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %255, align 8, !dbg !4461
  %257 = bitcast %struct._VOLUME_NUMBER* %volumeNumber to i8*, !dbg !4462
  %258 = call %struct._IRP* @IoBuildDeviceIoControlRequest(i64 5636124, %struct._DEVICE_OBJECT* %256, i8* null, i64 0, i8* %257, i64 24, i8 zeroext 0, %struct._KEVENT* %event, %struct._IO_STATUS_BLOCK* %ioStatus), !dbg !4463
  store %struct._IRP* %258, %struct._IRP** %irp, align 8, !dbg !4464
  %259 = load %struct._IRP*, %struct._IRP** %irp, align 8, !dbg !4465
  %260 = icmp ne %struct._IRP* %259, null, !dbg !4465
  br i1 %260, label %263, label %261, !dbg !4467

; <label>:261                                     ; preds = %207
  %262 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %12, align 8, !dbg !4468
  call void @DiskPerfLogError(%struct._DEVICE_OBJECT* %262, i64 265, i64 0, i64 -1073479678), !dbg !4471
  store i64 -1073741670, i64* %11, !dbg !4472
  br label %332, !dbg !4472

; <label>:263                                     ; preds = %207
  br label %264

; <label>:264                                     ; preds = %263
  %265 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4473
  %266 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %265, i32 0, i32 1, !dbg !4475
  %267 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %266, align 8, !dbg !4475
  %268 = load %struct._IRP*, %struct._IRP** %irp, align 8, !dbg !4476
  %269 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %267, %struct._IRP* %268), !dbg !4477
  store i64 %269, i64* %status, align 8, !dbg !4478
  %270 = load i64, i64* %status, align 8, !dbg !4479
  %271 = icmp eq i64 %270, 259, !dbg !4481
  br i1 %271, label %272, label %278, !dbg !4482

; <label>:272                                     ; preds = %264
  %273 = bitcast %struct._KEVENT* %event to i8*, !dbg !4483
  %274 = call i64 @KeWaitForSingleObject(i8* %273, i32 0, i8 signext 0, i8 zeroext 0, %union._LARGE_INTEGER* null), !dbg !4486
  %275 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %ioStatus, i32 0, i32 0, !dbg !4487
  %276 = bitcast %union.__anonunion____missing_field_name_6* %275 to i64*, !dbg !4488
  %277 = load i64, i64* %276, align 8, !dbg !4488
  store i64 %277, i64* %status, align 8, !dbg !4489
  br label %279, !dbg !4490

; <label>:278                                     ; preds = %264
  br label %279

; <label>:279                                     ; preds = %278, %272
  %280 = load i64, i64* %status, align 8, !dbg !4491
  %281 = icmp sge i64 %280, 0, !dbg !4493
  br i1 %281, label %283, label %282, !dbg !4494

; <label>:282                                     ; preds = %279
  br label %290, !dbg !4495

; <label>:283                                     ; preds = %279
  %284 = getelementptr inbounds %struct._VOLUME_NUMBER, %struct._VOLUME_NUMBER* %volumeNumber, i32 0, i32 1, !dbg !4497
  %285 = getelementptr inbounds [8 x i16], [8 x i16]* %284, i32 0, i64 0, !dbg !4500
  %286 = load i16, i16* %285, align 2, !dbg !4500
  %287 = zext i16 %286 to i32, !dbg !4501
  %288 = icmp eq i32 %287, 0, !dbg !4502
  br i1 %288, label %289, label %305, !dbg !4503

; <label>:289                                     ; preds = %283
  br label %290, !dbg !4504

; <label>:290                                     ; preds = %289, %282
  %291 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4505
  %292 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %291, i32 0, i32 4, !dbg !4508
  %293 = getelementptr inbounds [8 x i16], [8 x i16]* %292, i32 0, i64 0, !dbg !4505
  %294 = bitcast i16* %293 to i8*, !dbg !4509
  %295 = call i8* @memcpy(i8* %294, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i32 16), !dbg !4510
  %296 = load i64, i64* %status, align 8, !dbg !4511
  %297 = icmp sge i64 %296, 0, !dbg !4513
  br i1 %297, label %298, label %303, !dbg !4514

; <label>:298                                     ; preds = %290
  %299 = getelementptr inbounds %struct._VOLUME_NUMBER, %struct._VOLUME_NUMBER* %volumeNumber, i32 0, i32 0, !dbg !4515
  %300 = load i64, i64* %299, align 8, !dbg !4515
  %301 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4517
  %302 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %301, i32 0, i32 3, !dbg !4518
  store i64 %300, i64* %302, align 8, !dbg !4519
  br label %304, !dbg !4520

; <label>:303                                     ; preds = %290
  br label %304

; <label>:304                                     ; preds = %303, %298
  br label %318, !dbg !4521

; <label>:305                                     ; preds = %283
  %306 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4522
  %307 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %306, i32 0, i32 4, !dbg !4525
  %308 = getelementptr inbounds [8 x i16], [8 x i16]* %307, i32 0, i64 0, !dbg !4522
  %309 = bitcast i16* %308 to i8*, !dbg !4526
  %310 = getelementptr inbounds %struct._VOLUME_NUMBER, %struct._VOLUME_NUMBER* %volumeNumber, i32 0, i32 1, !dbg !4527
  %311 = getelementptr inbounds [8 x i16], [8 x i16]* %310, i32 0, i64 0, !dbg !4528
  %312 = bitcast i16* %311 to i8*, !dbg !4529
  %313 = call i8* @memcpy(i8* %309, i8* %312, i32 16), !dbg !4530
  %314 = getelementptr inbounds %struct._VOLUME_NUMBER, %struct._VOLUME_NUMBER* %volumeNumber, i32 0, i32 0, !dbg !4531
  %315 = load i64, i64* %314, align 8, !dbg !4531
  %316 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4532
  %317 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %316, i32 0, i32 3, !dbg !4533
  store i64 %315, i64* %317, align 8, !dbg !4534
  br label %318

; <label>:318                                     ; preds = %305, %304
  br label %319

; <label>:319                                     ; preds = %318
  br label %320

; <label>:320                                     ; preds = %319, %45
  %321 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %12, align 8, !dbg !4535
  %322 = load i64, i64* %registrationFlag, align 8, !dbg !4537
  %323 = or i64 1, %322, !dbg !4538
  %324 = call i64 @IoWMIRegistrationControl(%struct._DEVICE_OBJECT* %321, i64 %323), !dbg !4539
  store i64 %324, i64* %status, align 8, !dbg !4540
  %325 = load i64, i64* %status, align 8, !dbg !4541
  %326 = icmp sge i64 %325, 0, !dbg !4543
  br i1 %326, label %329, label %327, !dbg !4544

; <label>:327                                     ; preds = %320
  %328 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %12, align 8, !dbg !4545
  call void @DiskPerfLogError(%struct._DEVICE_OBJECT* %328, i64 261, i64 0, i64 -1073479668), !dbg !4548
  br label %330, !dbg !4549

; <label>:329                                     ; preds = %320
  br label %330

; <label>:330                                     ; preds = %329, %327
  %331 = load i64, i64* %status, align 8, !dbg !4550
  store i64 %331, i64* %11, !dbg !4551
  br label %332, !dbg !4551

; <label>:332                                     ; preds = %330, %261, %203, %180, %167, %108, %95, %24
  %333 = load i64, i64* %11, !dbg !4552
  ret i64 %333, !dbg !4552
}

; Function Attrs: nounwind ssp uwtable
define void @IofCompleteRequest(%struct._IRP* %Irp, i8 signext %PriorityBoost) #0 {
  %1 = alloca %struct._IRP*, align 8
  %2 = alloca i8, align 1
  store %struct._IRP* %Irp, %struct._IRP** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %1, metadata !2214, metadata !2009), !dbg !4553
  store i8 %PriorityBoost, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !2216, metadata !2009), !dbg !4554
  %3 = load i32, i32* @s, align 4, !dbg !4555
  %4 = load i32, i32* @NP, align 4, !dbg !4556
  %5 = icmp eq i32 %3, %4, !dbg !4557
  br i1 %5, label %6, label %8, !dbg !4558

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* @DC, align 4, !dbg !4559
  store i32 %7, i32* @s, align 4, !dbg !4560
  br label %9, !dbg !4561

; <label>:8                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !4562
  unreachable, !dbg !4562

errorFn.exit:                                     ; No predecessors!
  br label %9

; <label>:9                                       ; preds = %errorFn.exit, %6
  ret void, !dbg !4564
}

declare i64 @IoWMIRegistrationControl(%struct._DEVICE_OBJECT*, i64) #3

declare i64 @InterlockedExchange(i64*, i64) #3

; Function Attrs: nounwind ssp uwtable
define i64 @IofCallDriver(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp) #0 {
  %1 = alloca %struct._KEVENT*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %l.i.i = alloca i64, align 8
  %4 = alloca %struct._DEVICE_OBJECT*, align 8
  %5 = alloca %struct._IRP*, align 8
  %6 = alloca i8*, align 8
  %Event.i = alloca %struct._KEVENT*, align 8
  %7 = alloca %struct._DEVICE_OBJECT*, align 8
  %8 = alloca %struct._IRP*, align 8
  %__BLAST_NONDET___0 = alloca i32, align 4
  %returnVal2 = alloca i64, align 8
  %compRetStatus = alloca i32, align 4
  %lcontext = alloca i8*, align 8
  %tmp = alloca i64, align 8
  %tmp___0 = alloca i64, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %7, metadata !4565, metadata !2009), !dbg !4566
  store %struct._IRP* %Irp, %struct._IRP** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %8, metadata !4567, metadata !2009), !dbg !4568
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !4569, metadata !2009), !dbg !4570
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !4571
  store i32 %9, i32* %__BLAST_NONDET___0, align 4, !dbg !4570
  call void @llvm.dbg.declare(metadata i64* %returnVal2, metadata !4572, metadata !2009), !dbg !4573
  call void @llvm.dbg.declare(metadata i32* %compRetStatus, metadata !4574, metadata !2009), !dbg !4575
  call void @llvm.dbg.declare(metadata i8** %lcontext, metadata !4576, metadata !2009), !dbg !4577
  %10 = call i8* @__VERIFIER_nondet_pointer(), !dbg !4578
  store i8* %10, i8** %lcontext, align 8, !dbg !4577
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !4579, metadata !2009), !dbg !4580
  call void @llvm.dbg.declare(metadata i64* %tmp___0, metadata !4581, metadata !2009), !dbg !4582
  %11 = load i32, i32* @compRegistered, align 4, !dbg !4583
  %12 = icmp ne i32 %11, 0, !dbg !4583
  call void @llvm.dbg.declare(metadata %struct._KEVENT** %1, metadata !4023, metadata !2009), !dbg !4586
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4025, metadata !2009), !dbg !4593
  call void @llvm.dbg.declare(metadata i8* %3, metadata !4027, metadata !2009), !dbg !4594
  call void @llvm.dbg.declare(metadata i64* %l.i.i, metadata !4029, metadata !2009), !dbg !4595
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %4, metadata !4001, metadata !2009), !dbg !4596
  call void @llvm.dbg.declare(metadata %struct._IRP** %5, metadata !4003, metadata !2009), !dbg !4597
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4005, metadata !2009), !dbg !4598
  call void @llvm.dbg.declare(metadata %struct._KEVENT** %Event.i, metadata !4007, metadata !2009), !dbg !4599
  br i1 %12, label %13, label %60, !dbg !4600

; <label>:13                                      ; preds = %0
  %14 = load i32, i32* @routine, align 4, !dbg !4601
  %15 = icmp eq i32 %14, 0, !dbg !4602
  br i1 %15, label %16, label %41, !dbg !4603

; <label>:16                                      ; preds = %13
  %17 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %7, align 8, !dbg !4604
  %18 = load %struct._IRP*, %struct._IRP** %8, align 8, !dbg !4605
  %19 = load i8*, i8** %lcontext, align 8, !dbg !4606
  %20 = bitcast %struct._DEVICE_OBJECT** %4 to i8*, !dbg !4607
  call void @llvm.lifetime.start(i64 8, i8* %20), !dbg !4607
  %21 = bitcast %struct._IRP** %5 to i8*, !dbg !4607
  call void @llvm.lifetime.start(i64 8, i8* %21), !dbg !4607
  %22 = bitcast i8** %6 to i8*, !dbg !4607
  call void @llvm.lifetime.start(i64 8, i8* %22), !dbg !4607
  %23 = bitcast %struct._KEVENT** %Event.i to i8*, !dbg !4607
  call void @llvm.lifetime.start(i64 8, i8* %23), !dbg !4607
  store %struct._DEVICE_OBJECT* %17, %struct._DEVICE_OBJECT** %4, align 8, !dbg !4607
  store %struct._IRP* %18, %struct._IRP** %5, align 8, !dbg !4607
  store i8* %19, i8** %6, align 8, !dbg !4607
  %24 = load i8*, i8** %6, align 8, !dbg !4608
  %25 = bitcast i8* %24 to %struct._KEVENT*, !dbg !4609
  store %struct._KEVENT* %25, %struct._KEVENT** %Event.i, align 8, !dbg !4610
  %26 = load %struct._KEVENT*, %struct._KEVENT** %Event.i, align 8, !dbg !4611
  %27 = bitcast %struct._KEVENT** %1 to i8*, !dbg !4612
  call void @llvm.lifetime.start(i64 8, i8* %27) #4, !dbg !4612
  %28 = bitcast i64* %2 to i8*, !dbg !4612
  call void @llvm.lifetime.start(i64 8, i8* %28) #4, !dbg !4612
  call void @llvm.lifetime.start(i64 1, i8* %3) #4, !dbg !4612
  %29 = bitcast i64* %l.i.i to i8*, !dbg !4612
  call void @llvm.lifetime.start(i64 8, i8* %29) #4, !dbg !4612
  store %struct._KEVENT* %26, %struct._KEVENT** %1, align 8, !dbg !4612
  store i64 0, i64* %2, align 8, !dbg !4612
  store i8 0, i8* %3, align 1, !dbg !4612
  %30 = call i64 @__VERIFIER_nondet_long() #4, !dbg !4613
  store i64 %30, i64* %l.i.i, align 8, !dbg !4595
  store i32 1, i32* @setEventCalled, align 4, !dbg !4614
  %31 = load i64, i64* %l.i.i, align 8, !dbg !4615
  %32 = bitcast %struct._KEVENT** %1 to i8*, !dbg !4616
  call void @llvm.lifetime.end(i64 8, i8* %32) #4, !dbg !4616
  %33 = bitcast i64* %2 to i8*, !dbg !4616
  call void @llvm.lifetime.end(i64 8, i8* %33) #4, !dbg !4616
  call void @llvm.lifetime.end(i64 1, i8* %3) #4, !dbg !4616
  %34 = bitcast i64* %l.i.i to i8*, !dbg !4616
  call void @llvm.lifetime.end(i64 8, i8* %34) #4, !dbg !4616
  %35 = bitcast %struct._DEVICE_OBJECT** %4 to i8*, !dbg !4617
  call void @llvm.lifetime.end(i64 8, i8* %35), !dbg !4617
  %36 = bitcast %struct._IRP** %5 to i8*, !dbg !4617
  call void @llvm.lifetime.end(i64 8, i8* %36), !dbg !4617
  %37 = bitcast i8** %6 to i8*, !dbg !4617
  call void @llvm.lifetime.end(i64 8, i8* %37), !dbg !4617
  %38 = bitcast %struct._KEVENT** %Event.i to i8*, !dbg !4617
  call void @llvm.lifetime.end(i64 8, i8* %38), !dbg !4617
  store i64 -1073741802, i64* %tmp, align 8, !dbg !4618
  %39 = load i64, i64* %tmp, align 8, !dbg !4619
  %40 = trunc i64 %39 to i32, !dbg !4619
  store i32 %40, i32* %compRetStatus, align 4, !dbg !4620
  br label %48, !dbg !4621

; <label>:41                                      ; preds = %13
  %42 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %7, align 8, !dbg !4622
  %43 = load %struct._IRP*, %struct._IRP** %8, align 8, !dbg !4625
  %44 = load i8*, i8** %lcontext, align 8, !dbg !4626
  %45 = call i64 @DiskPerfIoCompletion(%struct._DEVICE_OBJECT* %42, %struct._IRP* %43, i8* %44), !dbg !4627
  store i64 %45, i64* %tmp___0, align 8, !dbg !4628
  %46 = load i64, i64* %tmp___0, align 8, !dbg !4629
  %47 = trunc i64 %46 to i32, !dbg !4629
  store i32 %47, i32* %compRetStatus, align 4, !dbg !4630
  br label %48

; <label>:48                                      ; preds = %41, %16
  %49 = load i32, i32* %compRetStatus, align 4, !dbg !4631
  %50 = sext i32 %49 to i64, !dbg !4633
  %51 = icmp eq i64 %50, -1073741802, !dbg !4634
  br i1 %51, label %52, label %58, !dbg !4635

; <label>:52                                      ; preds = %48
  %53 = load i32, i32* @s, align 4, !dbg !4636
  %54 = load i32, i32* @NP, align 4, !dbg !4642
  %55 = icmp eq i32 %53, %54, !dbg !4643
  br i1 %55, label %stubMoreProcessingRequired.exit, label %56, !dbg !4644

; <label>:56                                      ; preds = %52
  call void (...) @__VERIFIER_error() #6, !dbg !4645
  unreachable, !dbg !4645

stubMoreProcessingRequired.exit:                  ; preds = %52
  %57 = load i32, i32* @MPR1, align 4, !dbg !4649
  store i32 %57, i32* @s, align 4, !dbg !4651
  br label %59, !dbg !4652

; <label>:58                                      ; preds = %48
  br label %59

; <label>:59                                      ; preds = %58, %stubMoreProcessingRequired.exit
  br label %61, !dbg !4653

; <label>:60                                      ; preds = %0
  br label %61

; <label>:61                                      ; preds = %60, %59
  %62 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !4654
  %63 = icmp eq i32 %62, 0, !dbg !4656
  br i1 %63, label %64, label %65, !dbg !4657

; <label>:64                                      ; preds = %61
  br label %72, !dbg !4658

; <label>:65                                      ; preds = %61
  %66 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !4660
  %67 = icmp eq i32 %66, 1, !dbg !4663
  br i1 %67, label %68, label %69, !dbg !4664

; <label>:68                                      ; preds = %65
  br label %73, !dbg !4665

; <label>:69                                      ; preds = %65
  br label %74, !dbg !4667
                                                  ; No predecessors!
  br i1 false, label %71, label %75, !dbg !4670

; <label>:71                                      ; preds = %70
  br label %72, !dbg !4671

; <label>:72                                      ; preds = %71, %64
  store i64 0, i64* %returnVal2, align 8, !dbg !4673
  br label %76, !dbg !4675

; <label>:73                                      ; preds = %68
  store i64 -1073741823, i64* %returnVal2, align 8, !dbg !4676
  br label %76, !dbg !4677

; <label>:74                                      ; preds = %69
  store i64 259, i64* %returnVal2, align 8, !dbg !4678
  br label %76, !dbg !4679

; <label>:75                                      ; preds = %70
  br label %76, !dbg !4680

; <label>:76                                      ; preds = %75, %74, %73, %72
  br label %77

; <label>:77                                      ; preds = %76
  br label %78

; <label>:78                                      ; preds = %77
  br label %79

; <label>:79                                      ; preds = %78
  %80 = load i32, i32* @s, align 4, !dbg !4681
  %81 = load i32, i32* @NP, align 4, !dbg !4683
  %82 = icmp eq i32 %80, %81, !dbg !4684
  br i1 %82, label %83, label %87, !dbg !4685

; <label>:83                                      ; preds = %79
  %84 = load i32, i32* @IPC, align 4, !dbg !4686
  store i32 %84, i32* @s, align 4, !dbg !4688
  %85 = load i64, i64* %returnVal2, align 8, !dbg !4689
  %86 = trunc i64 %85 to i32, !dbg !4689
  store i32 %86, i32* @lowerDriverReturn, align 4, !dbg !4690
  br label %114, !dbg !4691

; <label>:87                                      ; preds = %79
  %88 = load i32, i32* @s, align 4, !dbg !4692
  %89 = load i32, i32* @MPR1, align 4, !dbg !4695
  %90 = icmp eq i32 %88, %89, !dbg !4696
  br i1 %90, label %91, label %103, !dbg !4697

; <label>:91                                      ; preds = %87
  %92 = load i64, i64* %returnVal2, align 8, !dbg !4698
  %93 = icmp eq i64 %92, 259, !dbg !4701
  br i1 %93, label %94, label %98, !dbg !4702

; <label>:94                                      ; preds = %91
  %95 = load i32, i32* @MPR3, align 4, !dbg !4703
  store i32 %95, i32* @s, align 4, !dbg !4705
  %96 = load i64, i64* %returnVal2, align 8, !dbg !4706
  %97 = trunc i64 %96 to i32, !dbg !4706
  store i32 %97, i32* @lowerDriverReturn, align 4, !dbg !4707
  br label %102, !dbg !4708

; <label>:98                                      ; preds = %91
  %99 = load i32, i32* @NP, align 4, !dbg !4709
  store i32 %99, i32* @s, align 4, !dbg !4711
  %100 = load i64, i64* %returnVal2, align 8, !dbg !4712
  %101 = trunc i64 %100 to i32, !dbg !4712
  store i32 %101, i32* @lowerDriverReturn, align 4, !dbg !4713
  br label %102

; <label>:102                                     ; preds = %98, %94
  br label %113, !dbg !4714

; <label>:103                                     ; preds = %87
  %104 = load i32, i32* @s, align 4, !dbg !4715
  %105 = load i32, i32* @SKIP1, align 4, !dbg !4718
  %106 = icmp eq i32 %104, %105, !dbg !4719
  br i1 %106, label %107, label %111, !dbg !4720

; <label>:107                                     ; preds = %103
  %108 = load i32, i32* @SKIP2, align 4, !dbg !4721
  store i32 %108, i32* @s, align 4, !dbg !4723
  %109 = load i64, i64* %returnVal2, align 8, !dbg !4724
  %110 = trunc i64 %109 to i32, !dbg !4724
  store i32 %110, i32* @lowerDriverReturn, align 4, !dbg !4725
  br label %112, !dbg !4726

; <label>:111                                     ; preds = %103
  call void (...) @__VERIFIER_error() #6, !dbg !4727
  unreachable, !dbg !4727

errorFn.exit:                                     ; No predecessors!
  br label %112

; <label>:112                                     ; preds = %errorFn.exit, %107
  br label %113

; <label>:113                                     ; preds = %112, %102
  br label %114

; <label>:114                                     ; preds = %113, %83
  %115 = load i64, i64* %returnVal2, align 8, !dbg !4731
  ret i64 %115, !dbg !4732
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
  %Event.i = alloca %struct._KEVENT*, align 8
  %7 = alloca %struct._DEVICE_OBJECT*, align 8
  %8 = alloca %struct._IRP*, align 8
  %__BLAST_NONDET___0 = alloca i32, align 4
  %compRetStatus = alloca i32, align 4
  %returnVal = alloca i64, align 8
  %lcontext = alloca i8*, align 8
  %tmp = alloca i64, align 8
  %tmp___0 = alloca i64, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %7, metadata !4733, metadata !2009), !dbg !4734
  store %struct._IRP* %Irp, %struct._IRP** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %8, metadata !4735, metadata !2009), !dbg !4736
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !4737, metadata !2009), !dbg !4738
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !4739
  store i32 %9, i32* %__BLAST_NONDET___0, align 4, !dbg !4738
  call void @llvm.dbg.declare(metadata i32* %compRetStatus, metadata !4740, metadata !2009), !dbg !4741
  call void @llvm.dbg.declare(metadata i64* %returnVal, metadata !4742, metadata !2009), !dbg !4743
  call void @llvm.dbg.declare(metadata i8** %lcontext, metadata !4744, metadata !2009), !dbg !4745
  %10 = call i8* @__VERIFIER_nondet_pointer(), !dbg !4746
  store i8* %10, i8** %lcontext, align 8, !dbg !4745
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !4747, metadata !2009), !dbg !4748
  call void @llvm.dbg.declare(metadata i64* %tmp___0, metadata !4749, metadata !2009), !dbg !4750
  %11 = load i32, i32* @compRegistered, align 4, !dbg !4751
  %12 = icmp ne i32 %11, 0, !dbg !4751
  call void @llvm.dbg.declare(metadata %struct._KEVENT** %1, metadata !4023, metadata !2009), !dbg !4754
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4025, metadata !2009), !dbg !4761
  call void @llvm.dbg.declare(metadata i8* %3, metadata !4027, metadata !2009), !dbg !4762
  call void @llvm.dbg.declare(metadata i64* %l.i.i, metadata !4029, metadata !2009), !dbg !4763
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %4, metadata !4001, metadata !2009), !dbg !4764
  call void @llvm.dbg.declare(metadata %struct._IRP** %5, metadata !4003, metadata !2009), !dbg !4765
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4005, metadata !2009), !dbg !4766
  call void @llvm.dbg.declare(metadata %struct._KEVENT** %Event.i, metadata !4007, metadata !2009), !dbg !4767
  br i1 %12, label %13, label %65, !dbg !4768

; <label>:13                                      ; preds = %0
  %14 = load i32, i32* @routine, align 4, !dbg !4769
  %15 = icmp eq i32 %14, 0, !dbg !4770
  br i1 %15, label %16, label %41, !dbg !4771

; <label>:16                                      ; preds = %13
  %17 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %7, align 8, !dbg !4772
  %18 = load %struct._IRP*, %struct._IRP** %8, align 8, !dbg !4773
  %19 = load i8*, i8** %lcontext, align 8, !dbg !4774
  %20 = bitcast %struct._DEVICE_OBJECT** %4 to i8*, !dbg !4775
  call void @llvm.lifetime.start(i64 8, i8* %20), !dbg !4775
  %21 = bitcast %struct._IRP** %5 to i8*, !dbg !4775
  call void @llvm.lifetime.start(i64 8, i8* %21), !dbg !4775
  %22 = bitcast i8** %6 to i8*, !dbg !4775
  call void @llvm.lifetime.start(i64 8, i8* %22), !dbg !4775
  %23 = bitcast %struct._KEVENT** %Event.i to i8*, !dbg !4775
  call void @llvm.lifetime.start(i64 8, i8* %23), !dbg !4775
  store %struct._DEVICE_OBJECT* %17, %struct._DEVICE_OBJECT** %4, align 8, !dbg !4775
  store %struct._IRP* %18, %struct._IRP** %5, align 8, !dbg !4775
  store i8* %19, i8** %6, align 8, !dbg !4775
  %24 = load i8*, i8** %6, align 8, !dbg !4776
  %25 = bitcast i8* %24 to %struct._KEVENT*, !dbg !4777
  store %struct._KEVENT* %25, %struct._KEVENT** %Event.i, align 8, !dbg !4778
  %26 = load %struct._KEVENT*, %struct._KEVENT** %Event.i, align 8, !dbg !4779
  %27 = bitcast %struct._KEVENT** %1 to i8*, !dbg !4780
  call void @llvm.lifetime.start(i64 8, i8* %27) #4, !dbg !4780
  %28 = bitcast i64* %2 to i8*, !dbg !4780
  call void @llvm.lifetime.start(i64 8, i8* %28) #4, !dbg !4780
  call void @llvm.lifetime.start(i64 1, i8* %3) #4, !dbg !4780
  %29 = bitcast i64* %l.i.i to i8*, !dbg !4780
  call void @llvm.lifetime.start(i64 8, i8* %29) #4, !dbg !4780
  store %struct._KEVENT* %26, %struct._KEVENT** %1, align 8, !dbg !4780
  store i64 0, i64* %2, align 8, !dbg !4780
  store i8 0, i8* %3, align 1, !dbg !4780
  %30 = call i64 @__VERIFIER_nondet_long() #4, !dbg !4781
  store i64 %30, i64* %l.i.i, align 8, !dbg !4763
  store i32 1, i32* @setEventCalled, align 4, !dbg !4782
  %31 = load i64, i64* %l.i.i, align 8, !dbg !4783
  %32 = bitcast %struct._KEVENT** %1 to i8*, !dbg !4784
  call void @llvm.lifetime.end(i64 8, i8* %32) #4, !dbg !4784
  %33 = bitcast i64* %2 to i8*, !dbg !4784
  call void @llvm.lifetime.end(i64 8, i8* %33) #4, !dbg !4784
  call void @llvm.lifetime.end(i64 1, i8* %3) #4, !dbg !4784
  %34 = bitcast i64* %l.i.i to i8*, !dbg !4784
  call void @llvm.lifetime.end(i64 8, i8* %34) #4, !dbg !4784
  %35 = bitcast %struct._DEVICE_OBJECT** %4 to i8*, !dbg !4785
  call void @llvm.lifetime.end(i64 8, i8* %35), !dbg !4785
  %36 = bitcast %struct._IRP** %5 to i8*, !dbg !4785
  call void @llvm.lifetime.end(i64 8, i8* %36), !dbg !4785
  %37 = bitcast i8** %6 to i8*, !dbg !4785
  call void @llvm.lifetime.end(i64 8, i8* %37), !dbg !4785
  %38 = bitcast %struct._KEVENT** %Event.i to i8*, !dbg !4785
  call void @llvm.lifetime.end(i64 8, i8* %38), !dbg !4785
  store i64 -1073741802, i64* %tmp, align 8, !dbg !4786
  %39 = load i64, i64* %tmp, align 8, !dbg !4787
  %40 = trunc i64 %39 to i32, !dbg !4787
  store i32 %40, i32* %compRetStatus, align 4, !dbg !4788
  br label %53, !dbg !4789

; <label>:41                                      ; preds = %13
  %42 = load i32, i32* @routine, align 4, !dbg !4790
  %43 = icmp eq i32 %42, 1, !dbg !4793
  br i1 %43, label %44, label %51, !dbg !4794

; <label>:44                                      ; preds = %41
  %45 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %7, align 8, !dbg !4795
  %46 = load %struct._IRP*, %struct._IRP** %8, align 8, !dbg !4798
  %47 = load i8*, i8** %lcontext, align 8, !dbg !4799
  %48 = call i64 @DiskPerfIoCompletion(%struct._DEVICE_OBJECT* %45, %struct._IRP* %46, i8* %47), !dbg !4800
  store i64 %48, i64* %tmp___0, align 8, !dbg !4801
  %49 = load i64, i64* %tmp___0, align 8, !dbg !4802
  %50 = trunc i64 %49 to i32, !dbg !4802
  store i32 %50, i32* %compRetStatus, align 4, !dbg !4803
  br label %52, !dbg !4804

; <label>:51                                      ; preds = %41
  br label %52

; <label>:52                                      ; preds = %51, %44
  br label %53

; <label>:53                                      ; preds = %52, %16
  %54 = load i32, i32* %compRetStatus, align 4, !dbg !4805
  %55 = sext i32 %54 to i64, !dbg !4807
  %56 = icmp eq i64 %55, -1073741802, !dbg !4808
  br i1 %56, label %57, label %63, !dbg !4809

; <label>:57                                      ; preds = %53
  %58 = load i32, i32* @s, align 4, !dbg !4810
  %59 = load i32, i32* @NP, align 4, !dbg !4814
  %60 = icmp eq i32 %58, %59, !dbg !4815
  br i1 %60, label %stubMoreProcessingRequired.exit, label %61, !dbg !4816

; <label>:61                                      ; preds = %57
  call void (...) @__VERIFIER_error() #6, !dbg !4817
  unreachable, !dbg !4817

stubMoreProcessingRequired.exit:                  ; preds = %57
  %62 = load i32, i32* @MPR1, align 4, !dbg !4819
  store i32 %62, i32* @s, align 4, !dbg !4820
  br label %64, !dbg !4821

; <label>:63                                      ; preds = %53
  br label %64

; <label>:64                                      ; preds = %63, %stubMoreProcessingRequired.exit
  br label %66, !dbg !4822

; <label>:65                                      ; preds = %0
  br label %66

; <label>:66                                      ; preds = %65, %64
  %67 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !4823
  %68 = icmp eq i32 %67, 0, !dbg !4825
  br i1 %68, label %69, label %70, !dbg !4826

; <label>:69                                      ; preds = %66
  br label %77, !dbg !4827

; <label>:70                                      ; preds = %66
  %71 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !4829
  %72 = icmp eq i32 %71, 1, !dbg !4832
  br i1 %72, label %73, label %74, !dbg !4833

; <label>:73                                      ; preds = %70
  br label %78, !dbg !4834

; <label>:74                                      ; preds = %70
  br label %79, !dbg !4836
                                                  ; No predecessors!
  br i1 false, label %76, label %80, !dbg !4839

; <label>:76                                      ; preds = %75
  br label %77, !dbg !4840

; <label>:77                                      ; preds = %76, %69
  store i64 0, i64* %returnVal, align 8, !dbg !4842
  br label %81, !dbg !4844

; <label>:78                                      ; preds = %73
  store i64 -1073741823, i64* %returnVal, align 8, !dbg !4845
  br label %81, !dbg !4846

; <label>:79                                      ; preds = %74
  store i64 259, i64* %returnVal, align 8, !dbg !4847
  br label %81, !dbg !4848

; <label>:80                                      ; preds = %75
  br label %81, !dbg !4849

; <label>:81                                      ; preds = %80, %79, %78, %77
  br label %82

; <label>:82                                      ; preds = %81
  br label %83

; <label>:83                                      ; preds = %82
  br label %84

; <label>:84                                      ; preds = %83
  %85 = load i32, i32* @s, align 4, !dbg !4850
  %86 = load i32, i32* @NP, align 4, !dbg !4852
  %87 = icmp eq i32 %85, %86, !dbg !4853
  br i1 %87, label %88, label %92, !dbg !4854

; <label>:88                                      ; preds = %84
  %89 = load i32, i32* @IPC, align 4, !dbg !4855
  store i32 %89, i32* @s, align 4, !dbg !4857
  %90 = load i64, i64* %returnVal, align 8, !dbg !4858
  %91 = trunc i64 %90 to i32, !dbg !4858
  store i32 %91, i32* @lowerDriverReturn, align 4, !dbg !4859
  br label %119, !dbg !4860

; <label>:92                                      ; preds = %84
  %93 = load i32, i32* @s, align 4, !dbg !4861
  %94 = load i32, i32* @MPR1, align 4, !dbg !4864
  %95 = icmp eq i32 %93, %94, !dbg !4865
  br i1 %95, label %96, label %108, !dbg !4866

; <label>:96                                      ; preds = %92
  %97 = load i64, i64* %returnVal, align 8, !dbg !4867
  %98 = icmp eq i64 %97, 259, !dbg !4870
  br i1 %98, label %99, label %103, !dbg !4871

; <label>:99                                      ; preds = %96
  %100 = load i32, i32* @MPR3, align 4, !dbg !4872
  store i32 %100, i32* @s, align 4, !dbg !4874
  %101 = load i64, i64* %returnVal, align 8, !dbg !4875
  %102 = trunc i64 %101 to i32, !dbg !4875
  store i32 %102, i32* @lowerDriverReturn, align 4, !dbg !4876
  br label %107, !dbg !4877

; <label>:103                                     ; preds = %96
  %104 = load i32, i32* @NP, align 4, !dbg !4878
  store i32 %104, i32* @s, align 4, !dbg !4880
  %105 = load i64, i64* %returnVal, align 8, !dbg !4881
  %106 = trunc i64 %105 to i32, !dbg !4881
  store i32 %106, i32* @lowerDriverReturn, align 4, !dbg !4882
  br label %107

; <label>:107                                     ; preds = %103, %99
  br label %118, !dbg !4883

; <label>:108                                     ; preds = %92
  %109 = load i32, i32* @s, align 4, !dbg !4884
  %110 = load i32, i32* @SKIP1, align 4, !dbg !4887
  %111 = icmp eq i32 %109, %110, !dbg !4888
  br i1 %111, label %112, label %116, !dbg !4889

; <label>:112                                     ; preds = %108
  %113 = load i32, i32* @SKIP2, align 4, !dbg !4890
  store i32 %113, i32* @s, align 4, !dbg !4892
  %114 = load i64, i64* %returnVal, align 8, !dbg !4893
  %115 = trunc i64 %114 to i32, !dbg !4893
  store i32 %115, i32* @lowerDriverReturn, align 4, !dbg !4894
  br label %117, !dbg !4895

; <label>:116                                     ; preds = %108
  call void (...) @__VERIFIER_error() #6, !dbg !4896
  unreachable, !dbg !4896

errorFn.exit:                                     ; No predecessors!
  br label %117

; <label>:117                                     ; preds = %errorFn.exit, %112
  br label %118

; <label>:118                                     ; preds = %117, %107
  br label %119

; <label>:119                                     ; preds = %118, %88
  %120 = load i64, i64* %returnVal, align 8, !dbg !4900
  ret i64 %120, !dbg !4901
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
  %__BLAST_NONDET___0 = alloca i32, align 4
  store i8* %Object, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4902, metadata !2009), !dbg !4903
  store i32 %WaitReason, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4904, metadata !2009), !dbg !4905
  store i8 %WaitMode, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !4906, metadata !2009), !dbg !4907
  store i8 %Alertable, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !4908, metadata !2009), !dbg !4909
  store %union._LARGE_INTEGER* %Timeout, %union._LARGE_INTEGER** %6, align 8
  call void @llvm.dbg.declare(metadata %union._LARGE_INTEGER** %6, metadata !4910, metadata !2009), !dbg !4911
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !4912, metadata !2009), !dbg !4913
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !4914
  store i32 %7, i32* %__BLAST_NONDET___0, align 4, !dbg !4913
  %8 = load i32, i32* @s, align 4, !dbg !4915
  %9 = load i32, i32* @MPR3, align 4, !dbg !4918
  %10 = icmp eq i32 %8, %9, !dbg !4919
  br i1 %10, label %11, label %18, !dbg !4920

; <label>:11                                      ; preds = %0
  %12 = load i32, i32* @setEventCalled, align 4, !dbg !4921
  %13 = icmp eq i32 %12, 1, !dbg !4924
  br i1 %13, label %14, label %16, !dbg !4925

; <label>:14                                      ; preds = %11
  %15 = load i32, i32* @NP, align 4, !dbg !4926
  store i32 %15, i32* @s, align 4, !dbg !4928
  store i32 0, i32* @setEventCalled, align 4, !dbg !4929
  br label %17, !dbg !4930

; <label>:16                                      ; preds = %11
  br label %19, !dbg !4931

; <label>:17                                      ; preds = %14
  br label %32, !dbg !4933

; <label>:18                                      ; preds = %0
  br label %19, !dbg !4934

; <label>:19                                      ; preds = %18, %16
  %20 = load i32, i32* @customIrp, align 4, !dbg !4935
  %21 = icmp eq i32 %20, 1, !dbg !4938
  br i1 %21, label %22, label %24, !dbg !4939

; <label>:22                                      ; preds = %19
  %23 = load i32, i32* @NP, align 4, !dbg !4940
  store i32 %23, i32* @s, align 4, !dbg !4942
  store i32 0, i32* @customIrp, align 4, !dbg !4943
  br label %31, !dbg !4944

; <label>:24                                      ; preds = %19
  %25 = load i32, i32* @s, align 4, !dbg !4945
  %26 = load i32, i32* @MPR3, align 4, !dbg !4948
  %27 = icmp eq i32 %25, %26, !dbg !4949
  br i1 %27, label %28, label %29, !dbg !4950

; <label>:28                                      ; preds = %24
  call void (...) @__VERIFIER_error() #6, !dbg !4951
  unreachable, !dbg !4951

errorFn.exit:                                     ; No predecessors!
  br label %30, !dbg !4955

; <label>:29                                      ; preds = %24
  br label %30

; <label>:30                                      ; preds = %29, %errorFn.exit
  br label %31

; <label>:31                                      ; preds = %30, %22
  br label %32

; <label>:32                                      ; preds = %31, %17
  %33 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !4956
  %34 = icmp eq i32 %33, 0, !dbg !4958
  br i1 %34, label %35, label %36, !dbg !4959

; <label>:35                                      ; preds = %32
  br label %39, !dbg !4960

; <label>:36                                      ; preds = %32
  br label %40, !dbg !4962
                                                  ; No predecessors!
  br i1 false, label %38, label %41, !dbg !4965

; <label>:38                                      ; preds = %37
  br label %39, !dbg !4966

; <label>:39                                      ; preds = %38, %35
  store i64 0, i64* %1, !dbg !4968
  br label %44, !dbg !4968

; <label>:40                                      ; preds = %36
  store i64 -1073741823, i64* %1, !dbg !4970
  br label %44, !dbg !4970

; <label>:41                                      ; preds = %37
  br label %42, !dbg !4971

; <label>:42                                      ; preds = %41
  br label %43

; <label>:43                                      ; preds = %42
  br label %44

; <label>:44                                      ; preds = %43, %40, %39
  %45 = load i64, i64* %1, !dbg !4972
  ret i64 %45, !dbg !4972
}

declare i64 @InterlockedIncrement(i64*) #3

; Function Attrs: nounwind ssp uwtable
define i64 @DiskPerfIoCompletion(%struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp, i8* %Context) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._DEVICE_OBJECT*, align 8
  %3 = alloca %struct._IRP*, align 8
  %4 = alloca i8*, align 8
  %deviceExtension = alloca %struct._DEVICE_EXTENSION*, align 8
  %irpStack = alloca %struct._IO_STACK_LOCATION*, align 8
  %partitionCounters = alloca %struct._DISK_PERFORMANCE*, align 8
  %timeStampComplete = alloca %union._LARGE_INTEGER, align 8
  %difference = alloca %union._LARGE_INTEGER*, align 8
  %queueLen = alloca i64, align 8
  %tmp = alloca i64, align 8
  %5 = alloca %union._LARGE_INTEGER, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %2, metadata !4973, metadata !2009), !dbg !4974
  store %struct._IRP* %Irp, %struct._IRP** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %3, metadata !4975, metadata !2009), !dbg !4976
  store i8* %Context, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4977, metadata !2009), !dbg !4978
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension, metadata !4979, metadata !2009), !dbg !4980
  call void @llvm.dbg.declare(metadata %struct._IO_STACK_LOCATION** %irpStack, metadata !4981, metadata !2009), !dbg !4982
  call void @llvm.dbg.declare(metadata %struct._DISK_PERFORMANCE** %partitionCounters, metadata !4983, metadata !2009), !dbg !4984
  call void @llvm.dbg.declare(metadata %union._LARGE_INTEGER* %timeStampComplete, metadata !4985, metadata !2009), !dbg !4986
  call void @llvm.dbg.declare(metadata %union._LARGE_INTEGER** %difference, metadata !4987, metadata !2009), !dbg !4988
  call void @llvm.dbg.declare(metadata i64* %queueLen, metadata !4989, metadata !2009), !dbg !4990
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !4991, metadata !2009), !dbg !4992
  %6 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %2, align 8, !dbg !4993
  %7 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %6, i32 0, i32 11, !dbg !4996
  %8 = load i8*, i8** %7, align 8, !dbg !4996
  %9 = bitcast i8* %8 to %struct._DEVICE_EXTENSION*, !dbg !4993
  store %struct._DEVICE_EXTENSION* %9, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !4997
  %10 = load %struct._IRP*, %struct._IRP** %3, align 8, !dbg !4998
  %11 = getelementptr inbounds %struct._IRP, %struct._IRP* %10, i32 0, i32 20, !dbg !4999
  %12 = bitcast %union.__anonunion_Tail_47* %11 to %struct.__anonstruct_Overlay_48*, !dbg !5000
  %13 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %12, i32 0, i32 3, !dbg !5001
  %14 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %13, i32 0, i32 1, !dbg !5002
  %15 = bitcast %union.__anonunion____missing_field_name_52* %14 to %struct._IO_STACK_LOCATION**, !dbg !5003
  %16 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %15, align 8, !dbg !5003
  store %struct._IO_STACK_LOCATION* %16, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !5004
  store i64 0, i64* %tmp, align 8, !dbg !5005
  %17 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !5006
  %18 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %17, i32 0, i32 6, !dbg !5007
  %19 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %18, align 8, !dbg !5007
  %20 = bitcast %struct._DISK_PERFORMANCE* %19 to i8*, !dbg !5008
  %21 = load i64, i64* %tmp, align 8, !dbg !5009
  %22 = mul i64 %21, ptrtoint (%union._LARGE_INTEGER* getelementptr inbounds (%struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* null, i32 0, i32 9) to i64), !dbg !5010
  %23 = getelementptr inbounds i8, i8* %20, i64 %22, !dbg !5011
  %24 = bitcast i8* %23 to %struct._DISK_PERFORMANCE*, !dbg !5012
  store %struct._DISK_PERFORMANCE* %24, %struct._DISK_PERFORMANCE** %partitionCounters, align 8, !dbg !5013
  %25 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %partitionCounters, align 8, !dbg !5014
  %26 = ptrtoint %struct._DISK_PERFORMANCE* %25 to i32, !dbg !5016
  %27 = icmp eq i32 %26, 0, !dbg !5017
  br i1 %27, label %28, label %29, !dbg !5018

; <label>:28                                      ; preds = %0
  store i64 0, i64* %1, !dbg !5019
  br label %166, !dbg !5019

; <label>:29                                      ; preds = %0
  br label %30

; <label>:30                                      ; preds = %29
  %31 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !5021
  %32 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %31, i32 0, i32 4, !dbg !5023
  %33 = bitcast %union.__anonunion_Parameters_55* %32 to %struct.__anonstruct_Read_57*, !dbg !5024
  %34 = bitcast %struct.__anonstruct_Read_57* %33 to %union._LARGE_INTEGER*, !dbg !5025
  store %union._LARGE_INTEGER* %34, %union._LARGE_INTEGER** %difference, align 8, !dbg !5026
  %35 = call { i64, i64 } @KeQueryPerformanceCounter(%union._LARGE_INTEGER* null), !dbg !5027
  %36 = getelementptr %union._LARGE_INTEGER, %union._LARGE_INTEGER* %5, i32 0, i32 0, !dbg !5027
  %37 = bitcast %struct.__anonstruct____missing_field_name_1* %36 to { i64, i64 }*, !dbg !5027
  %38 = getelementptr { i64, i64 }, { i64, i64 }* %37, i32 0, i32 0, !dbg !5027
  %39 = extractvalue { i64, i64 } %35, 0, !dbg !5027
  store i64 %39, i64* %38, align 8, !dbg !5027
  %40 = getelementptr { i64, i64 }, { i64, i64 }* %37, i32 0, i32 1, !dbg !5027
  %41 = extractvalue { i64, i64 } %35, 1, !dbg !5027
  store i64 %41, i64* %40, align 8, !dbg !5027
  %42 = bitcast %union._LARGE_INTEGER* %timeStampComplete to i8*, !dbg !5027
  %43 = bitcast %union._LARGE_INTEGER* %5 to i8*, !dbg !5027
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 16, i32 8, i1 false), !dbg !5027
  %44 = bitcast %union._LARGE_INTEGER* %timeStampComplete to i64*, !dbg !5028
  %45 = load i64, i64* %44, align 8, !dbg !5028
  %46 = load %union._LARGE_INTEGER*, %union._LARGE_INTEGER** %difference, align 8, !dbg !5029
  %47 = bitcast %union._LARGE_INTEGER* %46 to i64*, !dbg !5030
  %48 = load i64, i64* %47, align 8, !dbg !5030
  %49 = sub nsw i64 %45, %48, !dbg !5031
  %50 = load %union._LARGE_INTEGER*, %union._LARGE_INTEGER** %difference, align 8, !dbg !5032
  %51 = bitcast %union._LARGE_INTEGER* %50 to i64*, !dbg !5033
  store i64 %49, i64* %51, align 8, !dbg !5034
  %52 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !5035
  %53 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %52, i32 0, i32 8, !dbg !5036
  %54 = call i64 @InterlockedDecrement(i64* %53), !dbg !5037
  store i64 %54, i64* %queueLen, align 8, !dbg !5038
  %55 = load i64, i64* %queueLen, align 8, !dbg !5039
  %56 = icmp slt i64 %55, 0, !dbg !5041
  br i1 %56, label %57, label %61, !dbg !5042

; <label>:57                                      ; preds = %30
  %58 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !5043
  %59 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %58, i32 0, i32 8, !dbg !5046
  %60 = call i64 @InterlockedIncrement(i64* %59), !dbg !5047
  store i64 %60, i64* %queueLen, align 8, !dbg !5048
  br label %62, !dbg !5049

; <label>:61                                      ; preds = %30
  br label %62

; <label>:62                                      ; preds = %61, %57
  %63 = load i64, i64* %queueLen, align 8, !dbg !5050
  %64 = icmp eq i64 %63, 0, !dbg !5052
  br i1 %64, label %65, label %70, !dbg !5053

; <label>:65                                      ; preds = %62
  %66 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension, align 8, !dbg !5054
  %67 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %66, i32 0, i32 7, !dbg !5056
  %68 = bitcast %union._LARGE_INTEGER* %67 to i8*, !dbg !5057
  %69 = bitcast %union._LARGE_INTEGER* %timeStampComplete to i8*, !dbg !5057
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 16, i32 8, i1 false), !dbg !5057
  br label %71, !dbg !5058

; <label>:70                                      ; preds = %62
  br label %71

; <label>:71                                      ; preds = %70, %65
  %72 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %irpStack, align 8, !dbg !5059
  %73 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %72, i32 0, i32 0, !dbg !5061
  %74 = load i8, i8* %73, align 1, !dbg !5061
  %75 = zext i8 %74 to i32, !dbg !5062
  %76 = icmp eq i32 %75, 3, !dbg !5063
  br i1 %76, label %77, label %99, !dbg !5064

; <label>:77                                      ; preds = %71
  %78 = load %struct._IRP*, %struct._IRP** %3, align 8, !dbg !5065
  %79 = getelementptr inbounds %struct._IRP, %struct._IRP* %78, i32 0, i32 6, !dbg !5067
  %80 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %79, i32 0, i32 1, !dbg !5068
  %81 = load i64, i64* %80, align 8, !dbg !5068
  %82 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %partitionCounters, align 8, !dbg !5069
  %83 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %82, i32 0, i32 0, !dbg !5070
  %84 = bitcast %union._LARGE_INTEGER* %83 to i64*, !dbg !5071
  %85 = load i64, i64* %84, align 8, !dbg !5072
  %86 = add nsw i64 %85, %81, !dbg !5072
  store i64 %86, i64* %84, align 8, !dbg !5072
  %87 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %partitionCounters, align 8, !dbg !5073
  %88 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %87, i32 0, i32 5, !dbg !5074
  %89 = load i64, i64* %88, align 8, !dbg !5075
  %90 = add i64 %89, 1, !dbg !5075
  store i64 %90, i64* %88, align 8, !dbg !5075
  %91 = load %union._LARGE_INTEGER*, %union._LARGE_INTEGER** %difference, align 8, !dbg !5076
  %92 = bitcast %union._LARGE_INTEGER* %91 to i64*, !dbg !5077
  %93 = load i64, i64* %92, align 8, !dbg !5077
  %94 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %partitionCounters, align 8, !dbg !5078
  %95 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %94, i32 0, i32 2, !dbg !5079
  %96 = bitcast %union._LARGE_INTEGER* %95 to i64*, !dbg !5080
  %97 = load i64, i64* %96, align 8, !dbg !5081
  %98 = add nsw i64 %97, %93, !dbg !5081
  store i64 %98, i64* %96, align 8, !dbg !5081
  br label %121, !dbg !5082

; <label>:99                                      ; preds = %71
  %100 = load %struct._IRP*, %struct._IRP** %3, align 8, !dbg !5083
  %101 = getelementptr inbounds %struct._IRP, %struct._IRP* %100, i32 0, i32 6, !dbg !5085
  %102 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %101, i32 0, i32 1, !dbg !5086
  %103 = load i64, i64* %102, align 8, !dbg !5086
  %104 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %partitionCounters, align 8, !dbg !5087
  %105 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %104, i32 0, i32 1, !dbg !5088
  %106 = bitcast %union._LARGE_INTEGER* %105 to i64*, !dbg !5089
  %107 = load i64, i64* %106, align 8, !dbg !5090
  %108 = add nsw i64 %107, %103, !dbg !5090
  store i64 %108, i64* %106, align 8, !dbg !5090
  %109 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %partitionCounters, align 8, !dbg !5091
  %110 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %109, i32 0, i32 6, !dbg !5092
  %111 = load i64, i64* %110, align 8, !dbg !5093
  %112 = add i64 %111, 1, !dbg !5093
  store i64 %112, i64* %110, align 8, !dbg !5093
  %113 = load %union._LARGE_INTEGER*, %union._LARGE_INTEGER** %difference, align 8, !dbg !5094
  %114 = bitcast %union._LARGE_INTEGER* %113 to i64*, !dbg !5095
  %115 = load i64, i64* %114, align 8, !dbg !5095
  %116 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %partitionCounters, align 8, !dbg !5096
  %117 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %116, i32 0, i32 3, !dbg !5097
  %118 = bitcast %union._LARGE_INTEGER* %117 to i64*, !dbg !5098
  %119 = load i64, i64* %118, align 8, !dbg !5099
  %120 = add nsw i64 %119, %115, !dbg !5099
  store i64 %120, i64* %118, align 8, !dbg !5099
  br label %121

; <label>:121                                     ; preds = %99, %77
  %122 = load %struct._IRP*, %struct._IRP** %3, align 8, !dbg !5100
  %123 = getelementptr inbounds %struct._IRP, %struct._IRP* %122, i32 0, i32 3, !dbg !5102
  %124 = load i64, i64* %123, align 8, !dbg !5102
  %125 = and i64 %124, 8, !dbg !5103
  %126 = icmp ne i64 %125, 0, !dbg !5103
  br i1 %126, label %127, label %132, !dbg !5104

; <label>:127                                     ; preds = %121
  %128 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %partitionCounters, align 8, !dbg !5105
  %129 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %128, i32 0, i32 8, !dbg !5107
  %130 = load i64, i64* %129, align 8, !dbg !5108
  %131 = add i64 %130, 1, !dbg !5108
  store i64 %131, i64* %129, align 8, !dbg !5108
  br label %133, !dbg !5109

; <label>:132                                     ; preds = %121
  br label %133

; <label>:133                                     ; preds = %132, %127
  %134 = load %struct._IRP*, %struct._IRP** %3, align 8, !dbg !5110
  %135 = getelementptr inbounds %struct._IRP, %struct._IRP* %134, i32 0, i32 8, !dbg !5112
  %136 = load i8, i8* %135, align 1, !dbg !5112
  %137 = icmp ne i8 %136, 0, !dbg !5110
  br i1 %137, label %138, label %164, !dbg !5113

; <label>:138                                     ; preds = %133
  %139 = load i32, i32* @pended, align 4, !dbg !5114
  %140 = icmp eq i32 %139, 0, !dbg !5117
  br i1 %140, label %141, label %142, !dbg !5118

; <label>:141                                     ; preds = %138
  store i32 1, i32* @pended, align 4, !dbg !5119
  br label %143, !dbg !5121

; <label>:142                                     ; preds = %138
  call void (...) @__VERIFIER_error() #6, !dbg !5122
  unreachable, !dbg !5122

errorFn.exit:                                     ; No predecessors!
  br label %143

; <label>:143                                     ; preds = %errorFn.exit, %141
  %144 = load %struct._IRP*, %struct._IRP** %3, align 8, !dbg !5126
  %145 = getelementptr inbounds %struct._IRP, %struct._IRP* %144, i32 0, i32 20, !dbg !5127
  %146 = bitcast %union.__anonunion_Tail_47* %145 to %struct.__anonstruct_Overlay_48*, !dbg !5128
  %147 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %146, i32 0, i32 3, !dbg !5129
  %148 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %147, i32 0, i32 1, !dbg !5130
  %149 = bitcast %union.__anonunion____missing_field_name_52* %148 to %struct._IO_STACK_LOCATION**, !dbg !5131
  %150 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %149, align 8, !dbg !5131
  %151 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %150, i32 0, i32 3, !dbg !5132
  %152 = load i8, i8* %151, align 1, !dbg !5132
  %153 = zext i8 %152 to i32, !dbg !5133
  %154 = or i32 %153, 1, !dbg !5134
  %155 = trunc i32 %154 to i8, !dbg !5133
  %156 = load %struct._IRP*, %struct._IRP** %3, align 8, !dbg !5135
  %157 = getelementptr inbounds %struct._IRP, %struct._IRP* %156, i32 0, i32 20, !dbg !5136
  %158 = bitcast %union.__anonunion_Tail_47* %157 to %struct.__anonstruct_Overlay_48*, !dbg !5137
  %159 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %158, i32 0, i32 3, !dbg !5138
  %160 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %159, i32 0, i32 1, !dbg !5139
  %161 = bitcast %union.__anonunion____missing_field_name_52* %160 to %struct._IO_STACK_LOCATION**, !dbg !5140
  %162 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %161, align 8, !dbg !5140
  %163 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %162, i32 0, i32 3, !dbg !5141
  store i8 %155, i8* %163, align 1, !dbg !5142
  br label %165, !dbg !5143

; <label>:164                                     ; preds = %133
  br label %165

; <label>:165                                     ; preds = %164, %143
  store i64 0, i64* %1, !dbg !5144
  br label %166, !dbg !5144

; <label>:166                                     ; preds = %165, %28
  %167 = load i64, i64* %1, !dbg !5145
  ret i64 %167, !dbg !5145
}

declare i64 @InterlockedDecrement(i64*) #3

declare void @KeQuerySystemTime(%union._LARGE_INTEGER*) #3

; Function Attrs: nounwind ssp uwtable
define void @DiskPerfAddCounters(%struct._DISK_PERFORMANCE* %TotalCounters, %struct._DISK_PERFORMANCE* %NewCounters, i64 %Frequency.coerce0, i64 %Frequency.coerce1) #0 {
  %Frequency = alloca %union._LARGE_INTEGER, align 8
  %1 = alloca %struct._DISK_PERFORMANCE*, align 8
  %2 = alloca %struct._DISK_PERFORMANCE*, align 8
  %3 = bitcast %union._LARGE_INTEGER* %Frequency to { i64, i64 }*
  %4 = getelementptr { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  store i64 %Frequency.coerce0, i64* %4
  %5 = getelementptr { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %Frequency.coerce1, i64* %5
  store %struct._DISK_PERFORMANCE* %TotalCounters, %struct._DISK_PERFORMANCE** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._DISK_PERFORMANCE** %1, metadata !5146, metadata !2009), !dbg !5147
  store %struct._DISK_PERFORMANCE* %NewCounters, %struct._DISK_PERFORMANCE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DISK_PERFORMANCE** %2, metadata !5148, metadata !2009), !dbg !5149
  call void @llvm.dbg.declare(metadata %union._LARGE_INTEGER* %Frequency, metadata !5150, metadata !2009), !dbg !5151
  %6 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %2, align 8, !dbg !5152
  %7 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %6, i32 0, i32 0, !dbg !5154
  %8 = bitcast %union._LARGE_INTEGER* %7 to i64*, !dbg !5155
  %9 = load i64, i64* %8, align 8, !dbg !5155
  %10 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %1, align 8, !dbg !5156
  %11 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %10, i32 0, i32 0, !dbg !5157
  %12 = bitcast %union._LARGE_INTEGER* %11 to i64*, !dbg !5158
  %13 = load i64, i64* %12, align 8, !dbg !5159
  %14 = add nsw i64 %13, %9, !dbg !5159
  store i64 %14, i64* %12, align 8, !dbg !5159
  %15 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %2, align 8, !dbg !5160
  %16 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %15, i32 0, i32 1, !dbg !5161
  %17 = bitcast %union._LARGE_INTEGER* %16 to i64*, !dbg !5162
  %18 = load i64, i64* %17, align 8, !dbg !5162
  %19 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %1, align 8, !dbg !5163
  %20 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %19, i32 0, i32 1, !dbg !5164
  %21 = bitcast %union._LARGE_INTEGER* %20 to i64*, !dbg !5165
  %22 = load i64, i64* %21, align 8, !dbg !5166
  %23 = add nsw i64 %22, %18, !dbg !5166
  store i64 %23, i64* %21, align 8, !dbg !5166
  %24 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %2, align 8, !dbg !5167
  %25 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %24, i32 0, i32 5, !dbg !5168
  %26 = load i64, i64* %25, align 8, !dbg !5168
  %27 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %1, align 8, !dbg !5169
  %28 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %27, i32 0, i32 5, !dbg !5170
  %29 = load i64, i64* %28, align 8, !dbg !5171
  %30 = add i64 %29, %26, !dbg !5171
  store i64 %30, i64* %28, align 8, !dbg !5171
  %31 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %2, align 8, !dbg !5172
  %32 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %31, i32 0, i32 6, !dbg !5173
  %33 = load i64, i64* %32, align 8, !dbg !5173
  %34 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %1, align 8, !dbg !5174
  %35 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %34, i32 0, i32 6, !dbg !5175
  %36 = load i64, i64* %35, align 8, !dbg !5176
  %37 = add i64 %36, %33, !dbg !5176
  store i64 %37, i64* %35, align 8, !dbg !5176
  %38 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %2, align 8, !dbg !5177
  %39 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %38, i32 0, i32 8, !dbg !5178
  %40 = load i64, i64* %39, align 8, !dbg !5178
  %41 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %1, align 8, !dbg !5179
  %42 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %41, i32 0, i32 8, !dbg !5180
  %43 = load i64, i64* %42, align 8, !dbg !5181
  %44 = add i64 %43, %40, !dbg !5181
  store i64 %44, i64* %42, align 8, !dbg !5181
  %45 = bitcast %union._LARGE_INTEGER* %Frequency to i64*, !dbg !5182
  %46 = load i64, i64* %45, align 8, !dbg !5182
  %47 = icmp sgt i64 %46, 0, !dbg !5184
  br i1 %47, label %48, label %88, !dbg !5185

; <label>:48                                      ; preds = %0
  %49 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %2, align 8, !dbg !5186
  %50 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %49, i32 0, i32 2, !dbg !5188
  %51 = bitcast %union._LARGE_INTEGER* %50 to i64*, !dbg !5189
  %52 = load i64, i64* %51, align 8, !dbg !5189
  %53 = mul nsw i64 %52, 10000000, !dbg !5190
  %54 = bitcast %union._LARGE_INTEGER* %Frequency to i64*, !dbg !5191
  %55 = load i64, i64* %54, align 8, !dbg !5191
  %56 = sdiv i64 %53, %55, !dbg !5192
  %57 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %1, align 8, !dbg !5193
  %58 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %57, i32 0, i32 2, !dbg !5194
  %59 = bitcast %union._LARGE_INTEGER* %58 to i64*, !dbg !5195
  %60 = load i64, i64* %59, align 8, !dbg !5196
  %61 = add nsw i64 %60, %56, !dbg !5196
  store i64 %61, i64* %59, align 8, !dbg !5196
  %62 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %2, align 8, !dbg !5197
  %63 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %62, i32 0, i32 3, !dbg !5198
  %64 = bitcast %union._LARGE_INTEGER* %63 to i64*, !dbg !5199
  %65 = load i64, i64* %64, align 8, !dbg !5199
  %66 = mul nsw i64 %65, 10000000, !dbg !5200
  %67 = bitcast %union._LARGE_INTEGER* %Frequency to i64*, !dbg !5201
  %68 = load i64, i64* %67, align 8, !dbg !5201
  %69 = sdiv i64 %66, %68, !dbg !5202
  %70 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %1, align 8, !dbg !5203
  %71 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %70, i32 0, i32 3, !dbg !5204
  %72 = bitcast %union._LARGE_INTEGER* %71 to i64*, !dbg !5205
  %73 = load i64, i64* %72, align 8, !dbg !5206
  %74 = add nsw i64 %73, %69, !dbg !5206
  store i64 %74, i64* %72, align 8, !dbg !5206
  %75 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %2, align 8, !dbg !5207
  %76 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %75, i32 0, i32 4, !dbg !5208
  %77 = bitcast %union._LARGE_INTEGER* %76 to i64*, !dbg !5209
  %78 = load i64, i64* %77, align 8, !dbg !5209
  %79 = mul nsw i64 %78, 10000000, !dbg !5210
  %80 = bitcast %union._LARGE_INTEGER* %Frequency to i64*, !dbg !5211
  %81 = load i64, i64* %80, align 8, !dbg !5211
  %82 = sdiv i64 %79, %81, !dbg !5212
  %83 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %1, align 8, !dbg !5213
  %84 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %83, i32 0, i32 4, !dbg !5214
  %85 = bitcast %union._LARGE_INTEGER* %84 to i64*, !dbg !5215
  %86 = load i64, i64* %85, align 8, !dbg !5216
  %87 = add nsw i64 %86, %82, !dbg !5216
  store i64 %87, i64* %85, align 8, !dbg !5216
  br label %116, !dbg !5217

; <label>:88                                      ; preds = %0
  %89 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %2, align 8, !dbg !5218
  %90 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %89, i32 0, i32 2, !dbg !5220
  %91 = bitcast %union._LARGE_INTEGER* %90 to i64*, !dbg !5221
  %92 = load i64, i64* %91, align 8, !dbg !5221
  %93 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %1, align 8, !dbg !5222
  %94 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %93, i32 0, i32 2, !dbg !5223
  %95 = bitcast %union._LARGE_INTEGER* %94 to i64*, !dbg !5224
  %96 = load i64, i64* %95, align 8, !dbg !5225
  %97 = add nsw i64 %96, %92, !dbg !5225
  store i64 %97, i64* %95, align 8, !dbg !5225
  %98 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %2, align 8, !dbg !5226
  %99 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %98, i32 0, i32 3, !dbg !5227
  %100 = bitcast %union._LARGE_INTEGER* %99 to i64*, !dbg !5228
  %101 = load i64, i64* %100, align 8, !dbg !5228
  %102 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %1, align 8, !dbg !5229
  %103 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %102, i32 0, i32 3, !dbg !5230
  %104 = bitcast %union._LARGE_INTEGER* %103 to i64*, !dbg !5231
  %105 = load i64, i64* %104, align 8, !dbg !5232
  %106 = add nsw i64 %105, %101, !dbg !5232
  store i64 %106, i64* %104, align 8, !dbg !5232
  %107 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %2, align 8, !dbg !5233
  %108 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %107, i32 0, i32 4, !dbg !5234
  %109 = bitcast %union._LARGE_INTEGER* %108 to i64*, !dbg !5235
  %110 = load i64, i64* %109, align 8, !dbg !5235
  %111 = load %struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE** %1, align 8, !dbg !5236
  %112 = getelementptr inbounds %struct._DISK_PERFORMANCE, %struct._DISK_PERFORMANCE* %111, i32 0, i32 4, !dbg !5237
  %113 = bitcast %union._LARGE_INTEGER* %112 to i64*, !dbg !5238
  %114 = load i64, i64* %113, align 8, !dbg !5239
  %115 = add nsw i64 %114, %110, !dbg !5239
  store i64 %115, i64* %113, align 8, !dbg !5239
  br label %116

; <label>:116                                     ; preds = %88, %48
  ret void, !dbg !5240
}

; Function Attrs: nounwind ssp uwtable
define %struct._IRP* @IoBuildDeviceIoControlRequest(i64 %IoControlCode, %struct._DEVICE_OBJECT* %DeviceObject, i8* %InputBuffer, i64 %InputBufferLength, i8* %OutputBuffer, i64 %OutputBufferLength, i8 zeroext %InternalDeviceIoControl, %struct._KEVENT* %Event, %struct._IO_STATUS_BLOCK* %IoStatusBlock) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %__BLAST_NONDET___0.i = alloca i32, align 4
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
  %__BLAST_NONDET___0 = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store i64 %IoControlCode, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5241, metadata !2009), !dbg !5242
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %5, metadata !5243, metadata !2009), !dbg !5244
  store i8* %InputBuffer, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5245, metadata !2009), !dbg !5246
  store i64 %InputBufferLength, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5247, metadata !2009), !dbg !5248
  store i8* %OutputBuffer, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5249, metadata !2009), !dbg !5250
  store i64 %OutputBufferLength, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5251, metadata !2009), !dbg !5252
  store i8 %InternalDeviceIoControl, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !5253, metadata !2009), !dbg !5254
  store %struct._KEVENT* %Event, %struct._KEVENT** %11, align 8
  call void @llvm.dbg.declare(metadata %struct._KEVENT** %11, metadata !5255, metadata !2009), !dbg !5256
  store %struct._IO_STATUS_BLOCK* %IoStatusBlock, %struct._IO_STATUS_BLOCK** %12, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_STATUS_BLOCK** %12, metadata !5257, metadata !2009), !dbg !5258
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !5259, metadata !2009), !dbg !5260
  %13 = call i32 @__VERIFIER_nondet_int(), !dbg !5261
  store i32 %13, i32* %__BLAST_NONDET___0, align 4, !dbg !5260
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !5262, metadata !2009), !dbg !5263
  store i32 1, i32* @customIrp, align 4, !dbg !5264
  %14 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !5266
  %15 = icmp eq i32 %14, 0, !dbg !5268
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2058, metadata !2009), !dbg !5269
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0.i, metadata !2060, metadata !2009), !dbg !5276
  br i1 %15, label %16, label %17, !dbg !5277

; <label>:16                                      ; preds = %0
  br label %20, !dbg !5278

; <label>:17                                      ; preds = %0
  br label %35, !dbg !5280
                                                  ; No predecessors!
  br i1 false, label %19, label %36, !dbg !5281

; <label>:19                                      ; preds = %18
  br label %20, !dbg !5282

; <label>:20                                      ; preds = %19, %16
  %21 = bitcast i8** %1 to i8*, !dbg !5283
  call void @llvm.lifetime.start(i64 8, i8* %21), !dbg !5283
  %22 = bitcast i32* %2 to i8*, !dbg !5283
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !5283
  %23 = bitcast i32* %__BLAST_NONDET___0.i to i8*, !dbg !5283
  call void @llvm.lifetime.start(i64 4, i8* %23), !dbg !5283
  store i32 216, i32* %2, align 4, !dbg !5283
  %24 = call i32 @__VERIFIER_nondet_int() #4, !dbg !5284
  store i32 %24, i32* %__BLAST_NONDET___0.i, align 4, !dbg !5276
  %25 = load i32, i32* %__BLAST_NONDET___0.i, align 4, !dbg !5285
  %26 = icmp ne i32 %25, 0, !dbg !5285
  br i1 %26, label %27, label %28, !dbg !5286

; <label>:27                                      ; preds = %20
  store i8* null, i8** %1, !dbg !5287
  br label %malloc.exit, !dbg !5287

; <label>:28                                      ; preds = %20
  store i8* inttoptr (i64 1 to i8*), i8** %1, !dbg !5288
  br label %malloc.exit, !dbg !5288

malloc.exit:                                      ; preds = %27, %28
  %29 = load i8*, i8** %1, !dbg !5289
  %30 = bitcast i8** %1 to i8*, !dbg !5289
  call void @llvm.lifetime.end(i64 8, i8* %30), !dbg !5289
  %31 = bitcast i32* %2 to i8*, !dbg !5289
  call void @llvm.lifetime.end(i64 4, i8* %31), !dbg !5289
  %32 = bitcast i32* %__BLAST_NONDET___0.i to i8*, !dbg !5289
  call void @llvm.lifetime.end(i64 4, i8* %32), !dbg !5289
  store i8* %29, i8** %tmp, align 8, !dbg !5290
  %33 = load i8*, i8** %tmp, align 8, !dbg !5291
  %34 = bitcast i8* %33 to %struct._IRP*, !dbg !5292
  store %struct._IRP* %34, %struct._IRP** %3, !dbg !5293
  br label %39, !dbg !5293

; <label>:35                                      ; preds = %17
  store %struct._IRP* null, %struct._IRP** %3, !dbg !5294
  br label %39, !dbg !5294

; <label>:36                                      ; preds = %18
  br label %37, !dbg !5295

; <label>:37                                      ; preds = %36
  br label %38

; <label>:38                                      ; preds = %37
  br label %39

; <label>:39                                      ; preds = %38, %35, %malloc.exit
  %40 = load %struct._IRP*, %struct._IRP** %3, !dbg !5296
  ret %struct._IRP* %40, !dbg !5296
}

declare i32 @swprintf(i16*, i16*, ...) #3

declare i8* @IoAllocateErrorLogEntry(i8*, i8 zeroext) #3

declare void @IoWriteErrorLogEntry(i8*) #3

declare i64 @WmiCompleteRequest(%struct._DEVICE_OBJECT*, %struct._IRP*, i64, i64, i8 signext) #3

; Function Attrs: nounwind ssp uwtable
define void @stub_driver_init() #0 {
  %1 = load i32, i32* @NP, align 4, !dbg !5297
  store i32 %1, i32* @s, align 4, !dbg !5299
  store i32 0, i32* @customIrp, align 4, !dbg !5300
  %2 = load i32, i32* @customIrp, align 4, !dbg !5301
  store i32 %2, i32* @setEventCalled, align 4, !dbg !5302
  %3 = load i32, i32* @setEventCalled, align 4, !dbg !5303
  store i32 %3, i32* @lowerDriverReturn, align 4, !dbg !5304
  %4 = load i32, i32* @lowerDriverReturn, align 4, !dbg !5305
  store i32 %4, i32* @compRegistered, align 4, !dbg !5306
  %5 = load i32, i32* @compRegistered, align 4, !dbg !5307
  %6 = sext i32 %5 to i64, !dbg !5307
  %7 = inttoptr i64 %6 to i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)*, !dbg !5307
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* %7, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** @compFptr, align 8, !dbg !5308
  %8 = load i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)*, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** @compFptr, align 8, !dbg !5309
  %9 = ptrtoint i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* %8 to i32, !dbg !5309
  store i32 %9, i32* @pended, align 4, !dbg !5310
  ret void, !dbg !5311
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  %2 = alloca %struct._IRP*, align 8
  %deviceExtension.i.2 = alloca %struct._DEVICE_EXTENSION*, align 8
  %tmp.i.3 = alloca i64, align 8
  %3 = alloca %struct._DEVICE_OBJECT*, align 8
  %4 = alloca %struct._IRP*, align 8
  %deviceExtension.i = alloca %struct._DEVICE_EXTENSION*, align 8
  %tmp.i = alloca i64, align 8
  %5 = alloca %struct._IRP*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct._DEVICE_OBJECT*, align 8
  %8 = alloca %struct._IRP*, align 8
  %9 = alloca i32, align 4
  %d = alloca %struct._DRIVER_OBJECT, align 8
  %status = alloca i64, align 8
  %we_should_unload = alloca i32, align 4
  %irp = alloca %struct._IRP, align 8
  %__BLAST_NONDET___0 = alloca i32, align 4
  %irp_choice = alloca i32, align 4
  %devobj = alloca %struct._DEVICE_OBJECT, align 8
  store i32 0, i32* %9
  call void @llvm.dbg.declare(metadata %struct._DRIVER_OBJECT* %d, metadata !5312, metadata !2009), !dbg !5314
  call void @llvm.dbg.declare(metadata i64* %status, metadata !5315, metadata !2009), !dbg !5316
  %10 = call i64 @__VERIFIER_nondet_long(), !dbg !5317
  store i64 %10, i64* %status, align 8, !dbg !5316
  call void @llvm.dbg.declare(metadata i32* %we_should_unload, metadata !5318, metadata !2009), !dbg !5319
  %11 = call i32 @__VERIFIER_nondet_int(), !dbg !5320
  store i32 %11, i32* %we_should_unload, align 4, !dbg !5319
  call void @llvm.dbg.declare(metadata %struct._IRP* %irp, metadata !5321, metadata !2009), !dbg !5322
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !5323, metadata !2009), !dbg !5324
  %12 = call i32 @__VERIFIER_nondet_int(), !dbg !5325
  store i32 %12, i32* %__BLAST_NONDET___0, align 4, !dbg !5324
  call void @llvm.dbg.declare(metadata i32* %irp_choice, metadata !5326, metadata !2009), !dbg !5327
  %13 = call i32 @__VERIFIER_nondet_int(), !dbg !5328
  store i32 %13, i32* %irp_choice, align 4, !dbg !5327
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT* %devobj, metadata !5329, metadata !2009), !dbg !5331
  %14 = call i8* @__VERIFIER_nondet_pointer(), !dbg !5332
  store i8* %14, i8** @KeNumberProcessors, align 8, !dbg !5333
  store %struct._IRP* %irp, %struct._IRP** @pirp, align 8, !dbg !5334
  store i32 0, i32* @UNLOADED, align 4, !dbg !5337
  store i32 1, i32* @NP, align 4, !dbg !5339
  store i32 2, i32* @DC, align 4, !dbg !5340
  store i32 3, i32* @SKIP1, align 4, !dbg !5341
  store i32 4, i32* @SKIP2, align 4, !dbg !5342
  store i32 5, i32* @MPR1, align 4, !dbg !5343
  store i32 6, i32* @MPR3, align 4, !dbg !5344
  store i32 7, i32* @IPC, align 4, !dbg !5345
  %15 = load i32, i32* @UNLOADED, align 4, !dbg !5346
  store i32 %15, i32* @s, align 4, !dbg !5347
  store i32 0, i32* @pended, align 4, !dbg !5348
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* null, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** @compFptr, align 8, !dbg !5349
  store i32 0, i32* @compRegistered, align 4, !dbg !5350
  store i32 0, i32* @lowerDriverReturn, align 4, !dbg !5351
  store i32 0, i32* @setEventCalled, align 4, !dbg !5352
  store i32 0, i32* @customIrp, align 4, !dbg !5353
  %16 = load i64, i64* %status, align 8, !dbg !5354
  %17 = icmp sge i64 %16, 0, !dbg !5356
  call void @llvm.dbg.declare(metadata %struct._IRP** %5, metadata !2214, metadata !2009), !dbg !5357
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2216, metadata !2009), !dbg !5375
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %7, metadata !2185, metadata !2009), !dbg !5376
  call void @llvm.dbg.declare(metadata %struct._IRP** %8, metadata !2187, metadata !2009), !dbg !5377
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %3, metadata !3085, metadata !2009), !dbg !5378
  call void @llvm.dbg.declare(metadata %struct._IRP** %4, metadata !3087, metadata !2009), !dbg !5381
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension.i, metadata !3089, metadata !2009), !dbg !5382
  call void @llvm.dbg.declare(metadata i64* %tmp.i, metadata !3091, metadata !2009), !dbg !5383
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !2948, metadata !2009), !dbg !5384
  call void @llvm.dbg.declare(metadata %struct._IRP** %2, metadata !2950, metadata !2009), !dbg !5387
  call void @llvm.dbg.declare(metadata %struct._DEVICE_EXTENSION** %deviceExtension.i.2, metadata !2952, metadata !2009), !dbg !5388
  call void @llvm.dbg.declare(metadata i64* %tmp.i.3, metadata !2954, metadata !2009), !dbg !5389
  br i1 %17, label %18, label %192, !dbg !5390

; <label>:18                                      ; preds = %0
  %19 = load i32, i32* @NP, align 4, !dbg !5391
  store i32 %19, i32* @s, align 4, !dbg !5392
  store i32 0, i32* @customIrp, align 4, !dbg !5393
  %20 = load i32, i32* @customIrp, align 4, !dbg !5394
  store i32 %20, i32* @setEventCalled, align 4, !dbg !5395
  %21 = load i32, i32* @setEventCalled, align 4, !dbg !5396
  store i32 %21, i32* @lowerDriverReturn, align 4, !dbg !5397
  %22 = load i32, i32* @lowerDriverReturn, align 4, !dbg !5398
  store i32 %22, i32* @compRegistered, align 4, !dbg !5399
  %23 = load i32, i32* @compRegistered, align 4, !dbg !5400
  %24 = sext i32 %23 to i64, !dbg !5400
  %25 = inttoptr i64 %24 to i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)*, !dbg !5400
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* %25, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** @compFptr, align 8, !dbg !5401
  %26 = load i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)*, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** @compFptr, align 8, !dbg !5402
  %27 = ptrtoint i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* %26 to i32, !dbg !5402
  store i32 %27, i32* @pended, align 4, !dbg !5403
  %28 = load %struct._IRP*, %struct._IRP** @pirp, align 8, !dbg !5404
  %29 = getelementptr inbounds %struct._IRP, %struct._IRP* %28, i32 0, i32 6, !dbg !5405
  %30 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %29, i32 0, i32 0, !dbg !5406
  %31 = bitcast %union.__anonunion____missing_field_name_6* %30 to i64*, !dbg !5407
  store i64 0, i64* %31, align 8, !dbg !5408
  store i32 0, i32* @myStatus, align 4, !dbg !5409
  %32 = load i32, i32* %irp_choice, align 4, !dbg !5410
  %33 = icmp eq i32 %32, 0, !dbg !5412
  br i1 %33, label %34, label %39, !dbg !5413

; <label>:34                                      ; preds = %18
  %35 = load %struct._IRP*, %struct._IRP** @pirp, align 8, !dbg !5414
  %36 = getelementptr inbounds %struct._IRP, %struct._IRP* %35, i32 0, i32 6, !dbg !5416
  %37 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %36, i32 0, i32 0, !dbg !5417
  %38 = bitcast %union.__anonunion____missing_field_name_6* %37 to i64*, !dbg !5418
  store i64 -1073741637, i64* %38, align 8, !dbg !5419
  store i32 -1073741637, i32* @myStatus, align 4, !dbg !5420
  br label %40, !dbg !5421

; <label>:39                                      ; preds = %18
  br label %40

; <label>:40                                      ; preds = %39, %34
  %41 = load i32, i32* @NP, align 4, !dbg !5422
  store i32 %41, i32* @s, align 4, !dbg !5425
  store i32 0, i32* @customIrp, align 4, !dbg !5426
  %42 = load i32, i32* @customIrp, align 4, !dbg !5427
  store i32 %42, i32* @setEventCalled, align 4, !dbg !5428
  %43 = load i32, i32* @setEventCalled, align 4, !dbg !5429
  store i32 %43, i32* @lowerDriverReturn, align 4, !dbg !5430
  %44 = load i32, i32* @lowerDriverReturn, align 4, !dbg !5431
  store i32 %44, i32* @compRegistered, align 4, !dbg !5432
  %45 = load i32, i32* @compRegistered, align 4, !dbg !5433
  %46 = sext i32 %45 to i64, !dbg !5433
  %47 = inttoptr i64 %46 to i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)*, !dbg !5433
  store i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* %47, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** @compFptr, align 8, !dbg !5434
  %48 = load i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)*, i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** @compFptr, align 8, !dbg !5435
  %49 = ptrtoint i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* %48 to i32, !dbg !5435
  store i32 %49, i32* @pended, align 4, !dbg !5436
  %50 = load i64, i64* %status, align 8, !dbg !5437
  %51 = icmp sge i64 %50, 0, !dbg !5439
  br i1 %51, label %53, label %52, !dbg !5440

; <label>:52                                      ; preds = %40
  store i32 -1, i32* %9, !dbg !5441
  br label %275, !dbg !5441

; <label>:53                                      ; preds = %40
  br label %54

; <label>:54                                      ; preds = %53
  %55 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !5443
  %56 = icmp eq i32 %55, 0, !dbg !5444
  br i1 %56, label %57, label %58, !dbg !5445

; <label>:57                                      ; preds = %54
  br label %77, !dbg !5446

; <label>:58                                      ; preds = %54
  %59 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !5448
  %60 = icmp eq i32 %59, 2, !dbg !5449
  br i1 %60, label %61, label %62, !dbg !5450

; <label>:61                                      ; preds = %58
  br label %95, !dbg !5451

; <label>:62                                      ; preds = %58
  %63 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !5453
  %64 = icmp eq i32 %63, 3, !dbg !5454
  br i1 %64, label %65, label %66, !dbg !5455

; <label>:65                                      ; preds = %62
  br label %98, !dbg !5456

; <label>:66                                      ; preds = %62
  %67 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !5458
  %68 = icmp eq i32 %67, 4, !dbg !5459
  br i1 %68, label %69, label %70, !dbg !5460

; <label>:69                                      ; preds = %66
  br label %101, !dbg !5461

; <label>:70                                      ; preds = %66
  %71 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !5463
  %72 = icmp eq i32 %71, 12, !dbg !5464
  br i1 %72, label %73, label %74, !dbg !5465

; <label>:73                                      ; preds = %70
  br label %142, !dbg !5466

; <label>:74                                      ; preds = %70
  br label %178, !dbg !5468
                                                  ; No predecessors!
  br i1 false, label %76, label %179, !dbg !5469

; <label>:76                                      ; preds = %75
  br label %77, !dbg !5470

; <label>:77                                      ; preds = %76, %57
  %78 = load %struct._IRP*, %struct._IRP** @pirp, align 8, !dbg !5471
  %79 = bitcast %struct._DEVICE_OBJECT** %7 to i8*, !dbg !5472
  call void @llvm.lifetime.start(i64 8, i8* %79), !dbg !5472
  %80 = bitcast %struct._IRP** %8 to i8*, !dbg !5472
  call void @llvm.lifetime.start(i64 8, i8* %80), !dbg !5472
  store %struct._DEVICE_OBJECT* %devobj, %struct._DEVICE_OBJECT** %7, align 8, !dbg !5472
  store %struct._IRP* %78, %struct._IRP** %8, align 8, !dbg !5472
  %81 = load %struct._IRP*, %struct._IRP** %8, align 8, !dbg !5473
  %82 = getelementptr inbounds %struct._IRP, %struct._IRP* %81, i32 0, i32 6, !dbg !5474
  %83 = getelementptr inbounds %struct._IO_STATUS_BLOCK, %struct._IO_STATUS_BLOCK* %82, i32 0, i32 0, !dbg !5475
  %84 = bitcast %union.__anonunion____missing_field_name_6* %83 to i64*, !dbg !5476
  store i64 0, i64* %84, align 8, !dbg !5477
  store i32 0, i32* @myStatus, align 4, !dbg !5478
  %85 = load %struct._IRP*, %struct._IRP** %8, align 8, !dbg !5479
  %86 = bitcast %struct._IRP** %5 to i8*, !dbg !5480
  call void @llvm.lifetime.start(i64 8, i8* %86) #4, !dbg !5480
  call void @llvm.lifetime.start(i64 1, i8* %6) #4, !dbg !5480
  store %struct._IRP* %85, %struct._IRP** %5, align 8, !dbg !5480
  store i8 0, i8* %6, align 1, !dbg !5480
  %87 = load i32, i32* @s, align 4, !dbg !5481
  %88 = load i32, i32* @NP, align 4, !dbg !5482
  %89 = icmp eq i32 %87, %88, !dbg !5483
  br i1 %89, label %DiskPerfCreate.exit, label %90, !dbg !5484

; <label>:90                                      ; preds = %77
  call void (...) @__VERIFIER_error() #6, !dbg !5485
  unreachable, !dbg !5485

DiskPerfCreate.exit:                              ; preds = %77
  %91 = load i32, i32* @DC, align 4, !dbg !5487
  store i32 %91, i32* @s, align 4, !dbg !5488
  %92 = bitcast %struct._IRP** %5 to i8*, !dbg !5489
  call void @llvm.lifetime.end(i64 8, i8* %92) #4, !dbg !5489
  call void @llvm.lifetime.end(i64 1, i8* %6) #4, !dbg !5489
  %93 = bitcast %struct._DEVICE_OBJECT** %7 to i8*, !dbg !5490
  call void @llvm.lifetime.end(i64 8, i8* %93), !dbg !5490
  %94 = bitcast %struct._IRP** %8 to i8*, !dbg !5490
  call void @llvm.lifetime.end(i64 8, i8* %94), !dbg !5490
  store i64 0, i64* %status, align 8, !dbg !5491
  br label %180, !dbg !5492

; <label>:95                                      ; preds = %61
  %96 = load %struct._IRP*, %struct._IRP** @pirp, align 8, !dbg !5493
  %97 = call i64 @DiskPerfDeviceControl(%struct._DEVICE_OBJECT* %devobj, %struct._IRP* %96), !dbg !5495
  store i64 %97, i64* %status, align 8, !dbg !5496
  br label %180, !dbg !5497

; <label>:98                                      ; preds = %65
  %99 = load %struct._IRP*, %struct._IRP** @pirp, align 8, !dbg !5498
  %100 = call i64 @DiskPerfDispatchPnp(%struct._DEVICE_OBJECT* %devobj, %struct._IRP* %99), !dbg !5500
  store i64 %100, i64* %status, align 8, !dbg !5501
  br label %180, !dbg !5502

; <label>:101                                     ; preds = %69
  %102 = load %struct._IRP*, %struct._IRP** @pirp, align 8, !dbg !5503
  %103 = bitcast %struct._DEVICE_OBJECT** %3 to i8*, !dbg !5504
  call void @llvm.lifetime.start(i64 8, i8* %103), !dbg !5504
  %104 = bitcast %struct._IRP** %4 to i8*, !dbg !5504
  call void @llvm.lifetime.start(i64 8, i8* %104), !dbg !5504
  %105 = bitcast %struct._DEVICE_EXTENSION** %deviceExtension.i to i8*, !dbg !5504
  call void @llvm.lifetime.start(i64 8, i8* %105), !dbg !5504
  %106 = bitcast i64* %tmp.i to i8*, !dbg !5504
  call void @llvm.lifetime.start(i64 8, i8* %106), !dbg !5504
  store %struct._DEVICE_OBJECT* %devobj, %struct._DEVICE_OBJECT** %3, align 8, !dbg !5504
  store %struct._IRP* %102, %struct._IRP** %4, align 8, !dbg !5504
  %107 = load i32, i32* @s, align 4, !dbg !5505
  %108 = load i32, i32* @NP, align 4, !dbg !5506
  %109 = icmp eq i32 %107, %108, !dbg !5507
  br i1 %109, label %DiskPerfDispatchPower.exit, label %110, !dbg !5508

; <label>:110                                     ; preds = %101
  call void (...) @__VERIFIER_error() #6, !dbg !5509
  unreachable, !dbg !5509

DiskPerfDispatchPower.exit:                       ; preds = %101
  %111 = load i32, i32* @SKIP1, align 4, !dbg !5511
  store i32 %111, i32* @s, align 4, !dbg !5512
  %112 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !5513
  %113 = getelementptr inbounds %struct._IRP, %struct._IRP* %112, i32 0, i32 10, !dbg !5514
  %114 = load i8, i8* %113, align 1, !dbg !5514
  %115 = sext i8 %114 to i32, !dbg !5515
  %116 = add nsw i32 %115, 1, !dbg !5516
  %117 = trunc i32 %116 to i8, !dbg !5517
  %118 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !5518
  %119 = getelementptr inbounds %struct._IRP, %struct._IRP* %118, i32 0, i32 10, !dbg !5519
  store i8 %117, i8* %119, align 1, !dbg !5520
  %120 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !5521
  %121 = getelementptr inbounds %struct._IRP, %struct._IRP* %120, i32 0, i32 20, !dbg !5522
  %122 = bitcast %union.__anonunion_Tail_47* %121 to %struct.__anonstruct_Overlay_48*, !dbg !5523
  %123 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %122, i32 0, i32 3, !dbg !5524
  %124 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %123, i32 0, i32 1, !dbg !5525
  %125 = bitcast %union.__anonunion____missing_field_name_52* %124 to %struct._IO_STACK_LOCATION**, !dbg !5526
  %126 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %125, align 8, !dbg !5527
  %127 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %126, i64 1, !dbg !5527
  store %struct._IO_STACK_LOCATION* %127, %struct._IO_STACK_LOCATION** %125, align 8, !dbg !5527
  %128 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %3, align 8, !dbg !5528
  %129 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %128, i32 0, i32 11, !dbg !5529
  %130 = load i8*, i8** %129, align 8, !dbg !5529
  %131 = bitcast i8* %130 to %struct._DEVICE_EXTENSION*, !dbg !5530
  store %struct._DEVICE_EXTENSION* %131, %struct._DEVICE_EXTENSION** %deviceExtension.i, align 8, !dbg !5531
  %132 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension.i, align 8, !dbg !5532
  %133 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %132, i32 0, i32 1, !dbg !5533
  %134 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %133, align 8, !dbg !5533
  %135 = load %struct._IRP*, %struct._IRP** %4, align 8, !dbg !5534
  %136 = call i64 @PoCallDriver(%struct._DEVICE_OBJECT* %134, %struct._IRP* %135) #4, !dbg !5535
  store i64 %136, i64* %tmp.i, align 8, !dbg !5536
  %137 = load i64, i64* %tmp.i, align 8, !dbg !5537
  %138 = bitcast %struct._DEVICE_OBJECT** %3 to i8*, !dbg !5538
  call void @llvm.lifetime.end(i64 8, i8* %138), !dbg !5538
  %139 = bitcast %struct._IRP** %4 to i8*, !dbg !5538
  call void @llvm.lifetime.end(i64 8, i8* %139), !dbg !5538
  %140 = bitcast %struct._DEVICE_EXTENSION** %deviceExtension.i to i8*, !dbg !5538
  call void @llvm.lifetime.end(i64 8, i8* %140), !dbg !5538
  %141 = bitcast i64* %tmp.i to i8*, !dbg !5538
  call void @llvm.lifetime.end(i64 8, i8* %141), !dbg !5538
  store i64 %137, i64* %status, align 8, !dbg !5539
  br label %180, !dbg !5540

; <label>:142                                     ; preds = %73
  %143 = load %struct._IRP*, %struct._IRP** @pirp, align 8, !dbg !5541
  %144 = bitcast %struct._DEVICE_OBJECT** %1 to i8*, !dbg !5542
  call void @llvm.lifetime.start(i64 8, i8* %144), !dbg !5542
  %145 = bitcast %struct._IRP** %2 to i8*, !dbg !5542
  call void @llvm.lifetime.start(i64 8, i8* %145), !dbg !5542
  %146 = bitcast %struct._DEVICE_EXTENSION** %deviceExtension.i.2 to i8*, !dbg !5542
  call void @llvm.lifetime.start(i64 8, i8* %146), !dbg !5542
  %147 = bitcast i64* %tmp.i.3 to i8*, !dbg !5542
  call void @llvm.lifetime.start(i64 8, i8* %147), !dbg !5542
  store %struct._DEVICE_OBJECT* %devobj, %struct._DEVICE_OBJECT** %1, align 8, !dbg !5542
  store %struct._IRP* %143, %struct._IRP** %2, align 8, !dbg !5542
  %148 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %1, align 8, !dbg !5543
  %149 = getelementptr inbounds %struct._DEVICE_OBJECT, %struct._DEVICE_OBJECT* %148, i32 0, i32 11, !dbg !5544
  %150 = load i8*, i8** %149, align 8, !dbg !5544
  %151 = bitcast i8* %150 to %struct._DEVICE_EXTENSION*, !dbg !5543
  store %struct._DEVICE_EXTENSION* %151, %struct._DEVICE_EXTENSION** %deviceExtension.i.2, align 8, !dbg !5545
  %152 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !5546
  %153 = getelementptr inbounds %struct._IRP, %struct._IRP* %152, i32 0, i32 10, !dbg !5547
  %154 = load i8, i8* %153, align 1, !dbg !5547
  %155 = sext i8 %154 to i32, !dbg !5548
  %156 = add nsw i32 %155, 1, !dbg !5549
  %157 = trunc i32 %156 to i8, !dbg !5550
  %158 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !5551
  %159 = getelementptr inbounds %struct._IRP, %struct._IRP* %158, i32 0, i32 10, !dbg !5552
  store i8 %157, i8* %159, align 1, !dbg !5553
  %160 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !5554
  %161 = getelementptr inbounds %struct._IRP, %struct._IRP* %160, i32 0, i32 20, !dbg !5555
  %162 = bitcast %union.__anonunion_Tail_47* %161 to %struct.__anonstruct_Overlay_48*, !dbg !5556
  %163 = getelementptr inbounds %struct.__anonstruct_Overlay_48, %struct.__anonstruct_Overlay_48* %162, i32 0, i32 3, !dbg !5557
  %164 = getelementptr inbounds %struct.__anonstruct____missing_field_name_51, %struct.__anonstruct____missing_field_name_51* %163, i32 0, i32 1, !dbg !5558
  %165 = bitcast %union.__anonunion____missing_field_name_52* %164 to %struct._IO_STACK_LOCATION**, !dbg !5559
  %166 = load %struct._IO_STACK_LOCATION*, %struct._IO_STACK_LOCATION** %165, align 8, !dbg !5560
  %167 = getelementptr inbounds %struct._IO_STACK_LOCATION, %struct._IO_STACK_LOCATION* %166, i64 1, !dbg !5560
  store %struct._IO_STACK_LOCATION* %167, %struct._IO_STACK_LOCATION** %165, align 8, !dbg !5560
  %168 = load %struct._DEVICE_EXTENSION*, %struct._DEVICE_EXTENSION** %deviceExtension.i.2, align 8, !dbg !5561
  %169 = getelementptr inbounds %struct._DEVICE_EXTENSION, %struct._DEVICE_EXTENSION* %168, i32 0, i32 1, !dbg !5562
  %170 = load %struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT** %169, align 8, !dbg !5562
  %171 = load %struct._IRP*, %struct._IRP** %2, align 8, !dbg !5563
  %172 = call i64 @IofCallDriver(%struct._DEVICE_OBJECT* %170, %struct._IRP* %171) #4, !dbg !5564
  store i64 %172, i64* %tmp.i.3, align 8, !dbg !5565
  %173 = load i64, i64* %tmp.i.3, align 8, !dbg !5566
  %174 = bitcast %struct._DEVICE_OBJECT** %1 to i8*, !dbg !5567
  call void @llvm.lifetime.end(i64 8, i8* %174), !dbg !5567
  %175 = bitcast %struct._IRP** %2 to i8*, !dbg !5567
  call void @llvm.lifetime.end(i64 8, i8* %175), !dbg !5567
  %176 = bitcast %struct._DEVICE_EXTENSION** %deviceExtension.i.2 to i8*, !dbg !5567
  call void @llvm.lifetime.end(i64 8, i8* %176), !dbg !5567
  %177 = bitcast i64* %tmp.i.3 to i8*, !dbg !5567
  call void @llvm.lifetime.end(i64 8, i8* %177), !dbg !5567
  store i64 %173, i64* %status, align 8, !dbg !5568
  br label %180, !dbg !5569

; <label>:178                                     ; preds = %74
  store i32 -1, i32* %9, !dbg !5570
  br label %275, !dbg !5570

; <label>:179                                     ; preds = %75
  br label %180, !dbg !5571

; <label>:180                                     ; preds = %179, %142, %DiskPerfDispatchPower.exit, %98, %95, %DiskPerfCreate.exit
  br label %181

; <label>:181                                     ; preds = %180
  br label %182

; <label>:182                                     ; preds = %181
  br label %183

; <label>:183                                     ; preds = %182
  br label %184

; <label>:184                                     ; preds = %183
  br label %185

; <label>:185                                     ; preds = %184
  br label %186

; <label>:186                                     ; preds = %185
  %187 = load i32, i32* %we_should_unload, align 4, !dbg !5572
  %188 = icmp ne i32 %187, 0, !dbg !5572
  br i1 %188, label %189, label %190, !dbg !5574

; <label>:189                                     ; preds = %186
  br label %191, !dbg !5575

; <label>:190                                     ; preds = %186
  br label %191

; <label>:191                                     ; preds = %190, %189
  br label %193, !dbg !5577

; <label>:192                                     ; preds = %0
  br label %193

; <label>:193                                     ; preds = %192, %191
  %194 = load i32, i32* @pended, align 4, !dbg !5578
  %195 = icmp eq i32 %194, 1, !dbg !5580
  br i1 %195, label %196, label %204, !dbg !5581

; <label>:196                                     ; preds = %193
  %197 = load i32, i32* @s, align 4, !dbg !5582
  %198 = load i32, i32* @NP, align 4, !dbg !5585
  %199 = icmp eq i32 %197, %198, !dbg !5586
  br i1 %199, label %200, label %202, !dbg !5587

; <label>:200                                     ; preds = %196
  %201 = load i32, i32* @NP, align 4, !dbg !5588
  store i32 %201, i32* @s, align 4, !dbg !5590
  br label %203, !dbg !5591

; <label>:202                                     ; preds = %196
  br label %205, !dbg !5592

; <label>:203                                     ; preds = %200
  br label %272, !dbg !5594

; <label>:204                                     ; preds = %193
  br label %205, !dbg !5595

; <label>:205                                     ; preds = %204, %202
  %206 = load i32, i32* @pended, align 4, !dbg !5596
  %207 = icmp eq i32 %206, 1, !dbg !5599
  br i1 %207, label %208, label %216, !dbg !5600

; <label>:208                                     ; preds = %205
  %209 = load i32, i32* @s, align 4, !dbg !5601
  %210 = load i32, i32* @MPR3, align 4, !dbg !5604
  %211 = icmp eq i32 %209, %210, !dbg !5605
  br i1 %211, label %212, label %214, !dbg !5606

; <label>:212                                     ; preds = %208
  %213 = load i32, i32* @MPR3, align 4, !dbg !5607
  store i32 %213, i32* @s, align 4, !dbg !5609
  br label %215, !dbg !5610

; <label>:214                                     ; preds = %208
  br label %217, !dbg !5611

; <label>:215                                     ; preds = %212
  br label %271, !dbg !5613

; <label>:216                                     ; preds = %205
  br label %217, !dbg !5614

; <label>:217                                     ; preds = %216, %214
  %218 = load i32, i32* @s, align 4, !dbg !5615
  %219 = load i32, i32* @UNLOADED, align 4, !dbg !5618
  %220 = icmp eq i32 %218, %219, !dbg !5619
  br i1 %220, label %221, label %222, !dbg !5620

; <label>:221                                     ; preds = %217
  br label %270, !dbg !5621

; <label>:222                                     ; preds = %217
  %223 = load i64, i64* %status, align 8, !dbg !5623
  %224 = icmp eq i64 %223, -1, !dbg !5626
  br i1 %224, label %225, label %226, !dbg !5627

; <label>:225                                     ; preds = %222
  br label %269, !dbg !5628

; <label>:226                                     ; preds = %222
  %227 = load i32, i32* @s, align 4, !dbg !5630
  %228 = load i32, i32* @SKIP2, align 4, !dbg !5633
  %229 = icmp ne i32 %227, %228, !dbg !5634
  br i1 %229, label %230, label %243, !dbg !5635

; <label>:230                                     ; preds = %226
  %231 = load i32, i32* @s, align 4, !dbg !5636
  %232 = load i32, i32* @IPC, align 4, !dbg !5639
  %233 = icmp ne i32 %231, %232, !dbg !5640
  br i1 %233, label %234, label %241, !dbg !5641

; <label>:234                                     ; preds = %230
  %235 = load i32, i32* @s, align 4, !dbg !5642
  %236 = load i32, i32* @DC, align 4, !dbg !5645
  %237 = icmp ne i32 %235, %236, !dbg !5646
  br i1 %237, label %238, label %239, !dbg !5647

; <label>:238                                     ; preds = %234
  call void (...) @__VERIFIER_error() #6, !dbg !5648
  unreachable, !dbg !5648

errorFn.exit4:                                    ; No predecessors!
  br label %240, !dbg !5652

; <label>:239                                     ; preds = %234
  br label %244, !dbg !5653

; <label>:240                                     ; preds = %errorFn.exit4
  br label %242, !dbg !5655

; <label>:241                                     ; preds = %230
  br label %244, !dbg !5656

; <label>:242                                     ; preds = %240
  br label %268, !dbg !5658

; <label>:243                                     ; preds = %226
  br label %244, !dbg !5659

; <label>:244                                     ; preds = %243, %241, %239
  %245 = load i32, i32* @pended, align 4, !dbg !5660
  %246 = icmp eq i32 %245, 1, !dbg !5663
  br i1 %246, label %247, label %253, !dbg !5664

; <label>:247                                     ; preds = %244
  %248 = load i64, i64* %status, align 8, !dbg !5665
  %249 = icmp ne i64 %248, 259, !dbg !5668
  br i1 %249, label %250, label %251, !dbg !5669

; <label>:250                                     ; preds = %247
  call void (...) @__VERIFIER_error() #6, !dbg !5670
  unreachable, !dbg !5670

errorFn.exit5:                                    ; No predecessors!
  br label %252, !dbg !5674

; <label>:251                                     ; preds = %247
  br label %252

; <label>:252                                     ; preds = %251, %errorFn.exit5
  br label %267, !dbg !5675

; <label>:253                                     ; preds = %244
  %254 = load i32, i32* @s, align 4, !dbg !5676
  %255 = load i32, i32* @DC, align 4, !dbg !5679
  %256 = icmp eq i32 %254, %255, !dbg !5680
  br i1 %256, label %257, label %258, !dbg !5681

; <label>:257                                     ; preds = %253
  call void (...) @__VERIFIER_error() #6, !dbg !5682
  unreachable, !dbg !5682

errorFn.exit1:                                    ; No predecessors!
  br label %266, !dbg !5686

; <label>:258                                     ; preds = %253
  %259 = load i64, i64* %status, align 8, !dbg !5687
  %260 = load i32, i32* @lowerDriverReturn, align 4, !dbg !5690
  %261 = sext i32 %260 to i64, !dbg !5691
  %262 = icmp ne i64 %259, %261, !dbg !5692
  br i1 %262, label %263, label %264, !dbg !5693

; <label>:263                                     ; preds = %258
  call void (...) @__VERIFIER_error() #6, !dbg !5694
  unreachable, !dbg !5694

errorFn.exit:                                     ; No predecessors!
  br label %265, !dbg !5698

; <label>:264                                     ; preds = %258
  br label %265

; <label>:265                                     ; preds = %264, %errorFn.exit
  br label %266

; <label>:266                                     ; preds = %265, %errorFn.exit1
  br label %267

; <label>:267                                     ; preds = %266, %252
  br label %268

; <label>:268                                     ; preds = %267, %242
  br label %269

; <label>:269                                     ; preds = %268, %225
  br label %270

; <label>:270                                     ; preds = %269, %221
  br label %271

; <label>:271                                     ; preds = %270, %215
  br label %272

; <label>:272                                     ; preds = %271, %203
  %273 = load i64, i64* %status, align 8, !dbg !5699
  %274 = trunc i64 %273 to i32, !dbg !5700
  store i32 %274, i32* %9, !dbg !5701
  br label %275, !dbg !5701

; <label>:275                                     ; preds = %272, %178, %52
  %276 = load i32, i32* %9, !dbg !5702
  ret i32 %276, !dbg !5702
}

declare i64 @__VERIFIER_nondet_long() #3

declare i32 @__VERIFIER_nondet_int() #3

; Function Attrs: nounwind ssp uwtable
define i8* @malloc(i32 %i) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %__BLAST_NONDET___0 = alloca i32, align 4
  store i32 %i, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2058, metadata !2009), !dbg !5703
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !2060, metadata !2009), !dbg !5704
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !5705
  store i32 %3, i32* %__BLAST_NONDET___0, align 4, !dbg !5704
  %4 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !5706
  %5 = icmp ne i32 %4, 0, !dbg !5706
  br i1 %5, label %6, label %7, !dbg !5707

; <label>:6                                       ; preds = %0
  store i8* null, i8** %1, !dbg !5708
  br label %8, !dbg !5708

; <label>:7                                       ; preds = %0
  store i8* inttoptr (i64 1 to i8*), i8** %1, !dbg !5709
  br label %8, !dbg !5709

; <label>:8                                       ; preds = %7, %6
  %9 = load i8*, i8** %1, !dbg !5710
  ret i8* %9, !dbg !5710
}

; Function Attrs: nounwind ssp uwtable
define void @ExAcquireFastMutex(%struct._FAST_MUTEX* %FastMutex) #0 {
  %1 = alloca %struct._FAST_MUTEX*, align 8
  store %struct._FAST_MUTEX* %FastMutex, %struct._FAST_MUTEX** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._FAST_MUTEX** %1, metadata !5711, metadata !2009), !dbg !5712
  ret void, !dbg !5713
}

; Function Attrs: nounwind ssp uwtable
define void @ExReleaseFastMutex(%struct._FAST_MUTEX* %FastMutex) #0 {
  %1 = alloca %struct._FAST_MUTEX*, align 8
  store %struct._FAST_MUTEX* %FastMutex, %struct._FAST_MUTEX** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._FAST_MUTEX** %1, metadata !5715, metadata !2009), !dbg !5716
  ret void, !dbg !5717
}

; Function Attrs: nounwind ssp uwtable
define void @ExFreePool(i8* %P) #0 {
  %1 = alloca i8*, align 8
  store i8* %P, i8** %1, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !5719, metadata !2009), !dbg !5720
  ret void, !dbg !5721
}

; Function Attrs: nounwind ssp uwtable
define %struct._LIST_ENTRY* @ExfInterlockedInsertHeadList(%struct._LIST_ENTRY* %ListHead, %struct._LIST_ENTRY* %ListEntry, i64* %Lock) #0 {
  %1 = alloca %struct._LIST_ENTRY*, align 8
  %2 = alloca %struct._LIST_ENTRY*, align 8
  %3 = alloca i64*, align 8
  store %struct._LIST_ENTRY* %ListHead, %struct._LIST_ENTRY** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._LIST_ENTRY** %1, metadata !5723, metadata !2009), !dbg !5724
  store %struct._LIST_ENTRY* %ListEntry, %struct._LIST_ENTRY** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._LIST_ENTRY** %2, metadata !5725, metadata !2009), !dbg !5726
  store i64* %Lock, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !5727, metadata !2009), !dbg !5728
  ret %struct._LIST_ENTRY* null, !dbg !5729
}

; Function Attrs: nounwind ssp uwtable
define %struct._LIST_ENTRY* @ExfInterlockedInsertTailList(%struct._LIST_ENTRY* %ListHead, %struct._LIST_ENTRY* %ListEntry, i64* %Lock) #0 {
  %1 = alloca %struct._LIST_ENTRY*, align 8
  %2 = alloca %struct._LIST_ENTRY*, align 8
  %3 = alloca i64*, align 8
  store %struct._LIST_ENTRY* %ListHead, %struct._LIST_ENTRY** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._LIST_ENTRY** %1, metadata !5731, metadata !2009), !dbg !5732
  store %struct._LIST_ENTRY* %ListEntry, %struct._LIST_ENTRY** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._LIST_ENTRY** %2, metadata !5733, metadata !2009), !dbg !5734
  store i64* %Lock, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !5735, metadata !2009), !dbg !5736
  ret %struct._LIST_ENTRY* null, !dbg !5737
}

; Function Attrs: nounwind ssp uwtable
define %struct._LIST_ENTRY* @ExfInterlockedRemoveHeadList(%struct._LIST_ENTRY* %ListHead, i64* %Lock) #0 {
  %1 = alloca %struct._LIST_ENTRY*, align 8
  %2 = alloca i64*, align 8
  store %struct._LIST_ENTRY* %ListHead, %struct._LIST_ENTRY** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._LIST_ENTRY** %1, metadata !5739, metadata !2009), !dbg !5740
  store i64* %Lock, i64** %2, align 8
  call void @llvm.dbg.declare(metadata i64** %2, metadata !5741, metadata !2009), !dbg !5742
  ret %struct._LIST_ENTRY* null, !dbg !5743
}

; Function Attrs: nounwind ssp uwtable
define %struct._MDL* @IoAllocateMdl(i8* %VirtualAddress, i64 %Length, i8 zeroext %SecondaryBuffer, i8 zeroext %ChargeQuota, %struct._IRP* %Irp) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %__BLAST_NONDET___0.i = alloca i32, align 4
  %3 = alloca %struct._MDL*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct._IRP*, align 8
  %__BLAST_NONDET___0 = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store i8* %VirtualAddress, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5745, metadata !2009), !dbg !5746
  store i64 %Length, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5747, metadata !2009), !dbg !5748
  store i8 %SecondaryBuffer, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !5749, metadata !2009), !dbg !5750
  store i8 %ChargeQuota, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !5751, metadata !2009), !dbg !5752
  store %struct._IRP* %Irp, %struct._IRP** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %8, metadata !5753, metadata !2009), !dbg !5754
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !5755, metadata !2009), !dbg !5756
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !5757
  store i32 %9, i32* %__BLAST_NONDET___0, align 4, !dbg !5756
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !5758, metadata !2009), !dbg !5759
  %10 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !5760
  %11 = icmp eq i32 %10, 0, !dbg !5763
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2058, metadata !2009), !dbg !5764
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0.i, metadata !2060, metadata !2009), !dbg !5771
  br i1 %11, label %12, label %13, !dbg !5772

; <label>:12                                      ; preds = %0
  br label %16, !dbg !5773

; <label>:13                                      ; preds = %0
  br label %31, !dbg !5775
                                                  ; No predecessors!
  br i1 false, label %15, label %32, !dbg !5776

; <label>:15                                      ; preds = %14
  br label %16, !dbg !5777

; <label>:16                                      ; preds = %15, %12
  %17 = bitcast i8** %1 to i8*, !dbg !5778
  call void @llvm.lifetime.start(i64 8, i8* %17), !dbg !5778
  %18 = bitcast i32* %2 to i8*, !dbg !5778
  call void @llvm.lifetime.start(i64 4, i8* %18), !dbg !5778
  %19 = bitcast i32* %__BLAST_NONDET___0.i to i8*, !dbg !5778
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !5778
  store i32 56, i32* %2, align 4, !dbg !5778
  %20 = call i32 @__VERIFIER_nondet_int() #4, !dbg !5779
  store i32 %20, i32* %__BLAST_NONDET___0.i, align 4, !dbg !5771
  %21 = load i32, i32* %__BLAST_NONDET___0.i, align 4, !dbg !5780
  %22 = icmp ne i32 %21, 0, !dbg !5780
  br i1 %22, label %23, label %24, !dbg !5781

; <label>:23                                      ; preds = %16
  store i8* null, i8** %1, !dbg !5782
  br label %malloc.exit, !dbg !5782

; <label>:24                                      ; preds = %16
  store i8* inttoptr (i64 1 to i8*), i8** %1, !dbg !5783
  br label %malloc.exit, !dbg !5783

malloc.exit:                                      ; preds = %23, %24
  %25 = load i8*, i8** %1, !dbg !5784
  %26 = bitcast i8** %1 to i8*, !dbg !5784
  call void @llvm.lifetime.end(i64 8, i8* %26), !dbg !5784
  %27 = bitcast i32* %2 to i8*, !dbg !5784
  call void @llvm.lifetime.end(i64 4, i8* %27), !dbg !5784
  %28 = bitcast i32* %__BLAST_NONDET___0.i to i8*, !dbg !5784
  call void @llvm.lifetime.end(i64 4, i8* %28), !dbg !5784
  store i8* %25, i8** %tmp, align 8, !dbg !5785
  %29 = load i8*, i8** %tmp, align 8, !dbg !5786
  %30 = bitcast i8* %29 to %struct._MDL*, !dbg !5787
  store %struct._MDL* %30, %struct._MDL** %3, !dbg !5788
  br label %35, !dbg !5788

; <label>:31                                      ; preds = %13
  store %struct._MDL* null, %struct._MDL** %3, !dbg !5789
  br label %35, !dbg !5789

; <label>:32                                      ; preds = %14
  br label %33, !dbg !5790

; <label>:33                                      ; preds = %32
  br label %34

; <label>:34                                      ; preds = %33
  br label %35

; <label>:35                                      ; preds = %34, %31, %malloc.exit
  %36 = load %struct._MDL*, %struct._MDL** %3, !dbg !5791
  ret %struct._MDL* %36, !dbg !5791
}

; Function Attrs: nounwind ssp uwtable
define %struct._IRP* @IoBuildAsynchronousFsdRequest(i64 %MajorFunction, %struct._DEVICE_OBJECT* %DeviceObject, i8* %Buffer, i64 %Length, %union._LARGE_INTEGER* %StartingOffset, %struct._IO_STATUS_BLOCK* %IoStatusBlock) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %__BLAST_NONDET___0.i = alloca i32, align 4
  %3 = alloca %struct._IRP*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct._DEVICE_OBJECT*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union._LARGE_INTEGER*, align 8
  %9 = alloca %struct._IO_STATUS_BLOCK*, align 8
  %__BLAST_NONDET___0 = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store i64 %MajorFunction, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5792, metadata !2009), !dbg !5793
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %5, metadata !5794, metadata !2009), !dbg !5795
  store i8* %Buffer, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5796, metadata !2009), !dbg !5797
  store i64 %Length, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5798, metadata !2009), !dbg !5799
  store %union._LARGE_INTEGER* %StartingOffset, %union._LARGE_INTEGER** %8, align 8
  call void @llvm.dbg.declare(metadata %union._LARGE_INTEGER** %8, metadata !5800, metadata !2009), !dbg !5801
  store %struct._IO_STATUS_BLOCK* %IoStatusBlock, %struct._IO_STATUS_BLOCK** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_STATUS_BLOCK** %9, metadata !5802, metadata !2009), !dbg !5803
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !5804, metadata !2009), !dbg !5805
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !5806
  store i32 %10, i32* %__BLAST_NONDET___0, align 4, !dbg !5805
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !5807, metadata !2009), !dbg !5808
  store i32 1, i32* @customIrp, align 4, !dbg !5809
  %11 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !5811
  %12 = icmp eq i32 %11, 0, !dbg !5813
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2058, metadata !2009), !dbg !5814
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0.i, metadata !2060, metadata !2009), !dbg !5821
  br i1 %12, label %13, label %14, !dbg !5822

; <label>:13                                      ; preds = %0
  br label %17, !dbg !5823

; <label>:14                                      ; preds = %0
  br label %32, !dbg !5825
                                                  ; No predecessors!
  br i1 false, label %16, label %33, !dbg !5826

; <label>:16                                      ; preds = %15
  br label %17, !dbg !5827

; <label>:17                                      ; preds = %16, %13
  %18 = bitcast i8** %1 to i8*, !dbg !5828
  call void @llvm.lifetime.start(i64 8, i8* %18), !dbg !5828
  %19 = bitcast i32* %2 to i8*, !dbg !5828
  call void @llvm.lifetime.start(i64 4, i8* %19), !dbg !5828
  %20 = bitcast i32* %__BLAST_NONDET___0.i to i8*, !dbg !5828
  call void @llvm.lifetime.start(i64 4, i8* %20), !dbg !5828
  store i32 216, i32* %2, align 4, !dbg !5828
  %21 = call i32 @__VERIFIER_nondet_int() #4, !dbg !5829
  store i32 %21, i32* %__BLAST_NONDET___0.i, align 4, !dbg !5821
  %22 = load i32, i32* %__BLAST_NONDET___0.i, align 4, !dbg !5830
  %23 = icmp ne i32 %22, 0, !dbg !5830
  br i1 %23, label %24, label %25, !dbg !5831

; <label>:24                                      ; preds = %17
  store i8* null, i8** %1, !dbg !5832
  br label %malloc.exit, !dbg !5832

; <label>:25                                      ; preds = %17
  store i8* inttoptr (i64 1 to i8*), i8** %1, !dbg !5833
  br label %malloc.exit, !dbg !5833

malloc.exit:                                      ; preds = %24, %25
  %26 = load i8*, i8** %1, !dbg !5834
  %27 = bitcast i8** %1 to i8*, !dbg !5834
  call void @llvm.lifetime.end(i64 8, i8* %27), !dbg !5834
  %28 = bitcast i32* %2 to i8*, !dbg !5834
  call void @llvm.lifetime.end(i64 4, i8* %28), !dbg !5834
  %29 = bitcast i32* %__BLAST_NONDET___0.i to i8*, !dbg !5834
  call void @llvm.lifetime.end(i64 4, i8* %29), !dbg !5834
  store i8* %26, i8** %tmp, align 8, !dbg !5835
  %30 = load i8*, i8** %tmp, align 8, !dbg !5836
  %31 = bitcast i8* %30 to %struct._IRP*, !dbg !5837
  store %struct._IRP* %31, %struct._IRP** %3, !dbg !5838
  br label %36, !dbg !5838

; <label>:32                                      ; preds = %14
  store %struct._IRP* null, %struct._IRP** %3, !dbg !5839
  br label %36, !dbg !5839

; <label>:33                                      ; preds = %15
  br label %34, !dbg !5840

; <label>:34                                      ; preds = %33
  br label %35

; <label>:35                                      ; preds = %34
  br label %36

; <label>:36                                      ; preds = %35, %32, %malloc.exit
  %37 = load %struct._IRP*, %struct._IRP** %3, !dbg !5841
  ret %struct._IRP* %37, !dbg !5841
}

; Function Attrs: nounwind ssp uwtable
define i64 @IoCreateSymbolicLink(%struct._UNICODE_STRING* %SymbolicLinkName, %struct._UNICODE_STRING* %DeviceName) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._UNICODE_STRING*, align 8
  %3 = alloca %struct._UNICODE_STRING*, align 8
  %__BLAST_NONDET___0 = alloca i32, align 4
  store %struct._UNICODE_STRING* %SymbolicLinkName, %struct._UNICODE_STRING** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %2, metadata !5842, metadata !2009), !dbg !5843
  store %struct._UNICODE_STRING* %DeviceName, %struct._UNICODE_STRING** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %3, metadata !5844, metadata !2009), !dbg !5845
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !5846, metadata !2009), !dbg !5847
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !5848
  store i32 %4, i32* %__BLAST_NONDET___0, align 4, !dbg !5847
  %5 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !5849
  %6 = icmp eq i32 %5, 0, !dbg !5852
  br i1 %6, label %7, label %8, !dbg !5853

; <label>:7                                       ; preds = %0
  br label %11, !dbg !5854

; <label>:8                                       ; preds = %0
  br label %12, !dbg !5856
                                                  ; No predecessors!
  br i1 false, label %10, label %13, !dbg !5859

; <label>:10                                      ; preds = %9
  br label %11, !dbg !5860

; <label>:11                                      ; preds = %10, %7
  store i64 0, i64* %1, !dbg !5862
  br label %16, !dbg !5862

; <label>:12                                      ; preds = %8
  store i64 -1073741823, i64* %1, !dbg !5864
  br label %16, !dbg !5864

; <label>:13                                      ; preds = %9
  br label %14, !dbg !5865

; <label>:14                                      ; preds = %13
  br label %15

; <label>:15                                      ; preds = %14
  br label %16

; <label>:16                                      ; preds = %15, %12, %11
  %17 = load i64, i64* %1, !dbg !5866
  ret i64 %17, !dbg !5866
}

; Function Attrs: nounwind ssp uwtable
define void @IoDeleteDevice(%struct._DEVICE_OBJECT* %DeviceObject) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !5867, metadata !2009), !dbg !5868
  ret void, !dbg !5869
}

; Function Attrs: nounwind ssp uwtable
define i64 @IoDeleteSymbolicLink(%struct._UNICODE_STRING* %SymbolicLinkName) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._UNICODE_STRING*, align 8
  %__BLAST_NONDET___0 = alloca i32, align 4
  store %struct._UNICODE_STRING* %SymbolicLinkName, %struct._UNICODE_STRING** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %2, metadata !5871, metadata !2009), !dbg !5872
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !5873, metadata !2009), !dbg !5874
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !5875
  store i32 %3, i32* %__BLAST_NONDET___0, align 4, !dbg !5874
  %4 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !5876
  %5 = icmp eq i32 %4, 0, !dbg !5879
  br i1 %5, label %6, label %7, !dbg !5880

; <label>:6                                       ; preds = %0
  br label %10, !dbg !5881

; <label>:7                                       ; preds = %0
  br label %11, !dbg !5883
                                                  ; No predecessors!
  br i1 false, label %9, label %12, !dbg !5886

; <label>:9                                       ; preds = %8
  br label %10, !dbg !5887

; <label>:10                                      ; preds = %9, %6
  store i64 0, i64* %1, !dbg !5889
  br label %15, !dbg !5889

; <label>:11                                      ; preds = %7
  store i64 -1073741823, i64* %1, !dbg !5891
  br label %15, !dbg !5891

; <label>:12                                      ; preds = %8
  br label %13, !dbg !5892

; <label>:13                                      ; preds = %12
  br label %14

; <label>:14                                      ; preds = %13
  br label %15

; <label>:15                                      ; preds = %14, %11, %10
  %16 = load i64, i64* %1, !dbg !5893
  ret i64 %16, !dbg !5893
}

; Function Attrs: nounwind ssp uwtable
define void @IoDetachDevice(%struct._DEVICE_OBJECT* %TargetDevice) #0 {
  %1 = alloca %struct._DEVICE_OBJECT*, align 8
  store %struct._DEVICE_OBJECT* %TargetDevice, %struct._DEVICE_OBJECT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %1, metadata !5894, metadata !2009), !dbg !5895
  ret void, !dbg !5896
}

; Function Attrs: nounwind ssp uwtable
define void @IoFreeIrp(%struct._IRP* %Irp) #0 {
  %1 = alloca %struct._IRP*, align 8
  store %struct._IRP* %Irp, %struct._IRP** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %1, metadata !5898, metadata !2009), !dbg !5899
  ret void, !dbg !5900
}

; Function Attrs: nounwind ssp uwtable
define void @IoFreeMdl(%struct._MDL* %Mdl) #0 {
  %1 = alloca %struct._MDL*, align 8
  store %struct._MDL* %Mdl, %struct._MDL** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._MDL** %1, metadata !5902, metadata !2009), !dbg !5903
  ret void, !dbg !5904
}

; Function Attrs: nounwind ssp uwtable
define %struct._CONFIGURATION_INFORMATION* @IoGetConfigurationInformation() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %__BLAST_NONDET___0.i = alloca i32, align 4
  %tmp = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !5906, metadata !2009), !dbg !5907
  %3 = bitcast i8** %1 to i8*, !dbg !5908
  call void @llvm.lifetime.start(i64 8, i8* %3), !dbg !5908
  %4 = bitcast i32* %2 to i8*, !dbg !5908
  call void @llvm.lifetime.start(i64 4, i8* %4), !dbg !5908
  %5 = bitcast i32* %__BLAST_NONDET___0.i to i8*, !dbg !5908
  call void @llvm.lifetime.start(i64 4, i8* %5), !dbg !5908
  store i32 80, i32* %2, align 4, !dbg !5908
  %6 = call i32 @__VERIFIER_nondet_int() #4, !dbg !5911
  store i32 %6, i32* %__BLAST_NONDET___0.i, align 4, !dbg !5913
  %7 = load i32, i32* %__BLAST_NONDET___0.i, align 4, !dbg !5914
  %8 = icmp ne i32 %7, 0, !dbg !5914
  br i1 %8, label %9, label %10, !dbg !5915

; <label>:9                                       ; preds = %0
  store i8* null, i8** %1, !dbg !5916
  br label %malloc.exit, !dbg !5916

; <label>:10                                      ; preds = %0
  store i8* inttoptr (i64 1 to i8*), i8** %1, !dbg !5917
  br label %malloc.exit, !dbg !5917

malloc.exit:                                      ; preds = %9, %10
  %11 = load i8*, i8** %1, !dbg !5918
  %12 = bitcast i8** %1 to i8*, !dbg !5918
  call void @llvm.lifetime.end(i64 8, i8* %12), !dbg !5918
  %13 = bitcast i32* %2 to i8*, !dbg !5918
  call void @llvm.lifetime.end(i64 4, i8* %13), !dbg !5918
  %14 = bitcast i32* %__BLAST_NONDET___0.i to i8*, !dbg !5918
  call void @llvm.lifetime.end(i64 4, i8* %14), !dbg !5918
  store i8* %11, i8** %tmp, align 8, !dbg !5919
  %15 = load i8*, i8** %tmp, align 8, !dbg !5920
  %16 = bitcast i8* %15 to %struct._CONFIGURATION_INFORMATION*, !dbg !5921
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2058, metadata !2009), !dbg !5922
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0.i, metadata !2060, metadata !2009), !dbg !5913
  ret %struct._CONFIGURATION_INFORMATION* %16, !dbg !5923
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
  %__BLAST_NONDET___0 = alloca i32, align 4
  store i32* %BusType, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !5924, metadata !2009), !dbg !5925
  store i64* %BusNumber, i64** %3, align 8
  call void @llvm.dbg.declare(metadata i64** %3, metadata !5926, metadata !2009), !dbg !5927
  store i32* %ControllerType, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !5928, metadata !2009), !dbg !5929
  store i64* %ControllerNumber, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !5930, metadata !2009), !dbg !5931
  store i32* %PeripheralType, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !5932, metadata !2009), !dbg !5933
  store i64* %PeripheralNumber, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !5934, metadata !2009), !dbg !5935
  store i64 (i8*, %struct._UNICODE_STRING*, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**)* %CalloutRoutine, i64 (i8*, %struct._UNICODE_STRING*, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**)** %8, align 8
  call void @llvm.dbg.declare(metadata i64 (i8*, %struct._UNICODE_STRING*, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**)** %8, metadata !5936, metadata !2009), !dbg !5937
  store i8* %Context, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !5938, metadata !2009), !dbg !5939
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !5940, metadata !2009), !dbg !5941
  %10 = call i32 @__VERIFIER_nondet_int(), !dbg !5942
  store i32 %10, i32* %__BLAST_NONDET___0, align 4, !dbg !5941
  %11 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !5943
  %12 = icmp eq i32 %11, 0, !dbg !5946
  br i1 %12, label %13, label %14, !dbg !5947

; <label>:13                                      ; preds = %0
  br label %17, !dbg !5948

; <label>:14                                      ; preds = %0
  br label %18, !dbg !5950
                                                  ; No predecessors!
  br i1 false, label %16, label %19, !dbg !5953

; <label>:16                                      ; preds = %15
  br label %17, !dbg !5954

; <label>:17                                      ; preds = %16, %13
  store i64 0, i64* %1, !dbg !5956
  br label %22, !dbg !5956

; <label>:18                                      ; preds = %14
  store i64 -1073741823, i64* %1, !dbg !5958
  br label %22, !dbg !5958

; <label>:19                                      ; preds = %15
  br label %20, !dbg !5959

; <label>:20                                      ; preds = %19
  br label %21

; <label>:21                                      ; preds = %20
  br label %22

; <label>:22                                      ; preds = %21, %18, %17
  %23 = load i64, i64* %1, !dbg !5960
  ret i64 %23, !dbg !5960
}

; Function Attrs: nounwind ssp uwtable
define i64 @IoRegisterDeviceInterface(%struct._DEVICE_OBJECT* %PhysicalDeviceObject, %struct._GUID* %InterfaceClassGuid, %struct._UNICODE_STRING* %ReferenceString, %struct._UNICODE_STRING* %SymbolicLinkName) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._DEVICE_OBJECT*, align 8
  %3 = alloca %struct._GUID*, align 8
  %4 = alloca %struct._UNICODE_STRING*, align 8
  %5 = alloca %struct._UNICODE_STRING*, align 8
  %__BLAST_NONDET___0 = alloca i32, align 4
  store %struct._DEVICE_OBJECT* %PhysicalDeviceObject, %struct._DEVICE_OBJECT** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %2, metadata !5961, metadata !2009), !dbg !5962
  store %struct._GUID* %InterfaceClassGuid, %struct._GUID** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GUID** %3, metadata !5963, metadata !2009), !dbg !5964
  store %struct._UNICODE_STRING* %ReferenceString, %struct._UNICODE_STRING** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %4, metadata !5965, metadata !2009), !dbg !5966
  store %struct._UNICODE_STRING* %SymbolicLinkName, %struct._UNICODE_STRING** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %5, metadata !5967, metadata !2009), !dbg !5968
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !5969, metadata !2009), !dbg !5970
  %6 = call i32 @__VERIFIER_nondet_int(), !dbg !5971
  store i32 %6, i32* %__BLAST_NONDET___0, align 4, !dbg !5970
  %7 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !5972
  %8 = icmp eq i32 %7, 0, !dbg !5975
  br i1 %8, label %9, label %10, !dbg !5976

; <label>:9                                       ; preds = %0
  br label %13, !dbg !5977

; <label>:10                                      ; preds = %0
  br label %14, !dbg !5979
                                                  ; No predecessors!
  br i1 false, label %12, label %15, !dbg !5982

; <label>:12                                      ; preds = %11
  br label %13, !dbg !5983

; <label>:13                                      ; preds = %12, %9
  store i64 0, i64* %1, !dbg !5985
  br label %18, !dbg !5985

; <label>:14                                      ; preds = %10
  store i64 -1073741808, i64* %1, !dbg !5987
  br label %18, !dbg !5987

; <label>:15                                      ; preds = %11
  br label %16, !dbg !5988

; <label>:16                                      ; preds = %15
  br label %17

; <label>:17                                      ; preds = %16
  br label %18

; <label>:18                                      ; preds = %17, %14, %13
  %19 = load i64, i64* %1, !dbg !5989
  ret i64 %19, !dbg !5989
}

; Function Attrs: nounwind ssp uwtable
define void @IoReleaseCancelSpinLock(i8 zeroext %Irql) #0 {
  %1 = alloca i8, align 1
  store i8 %Irql, i8* %1, align 1
  call void @llvm.dbg.declare(metadata i8* %1, metadata !5990, metadata !2009), !dbg !5991
  ret void, !dbg !5992
}

; Function Attrs: nounwind ssp uwtable
define i64 @IoSetDeviceInterfaceState(%struct._UNICODE_STRING* %SymbolicLinkName, i8 zeroext %Enable) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._UNICODE_STRING*, align 8
  %3 = alloca i8, align 1
  %__BLAST_NONDET___0 = alloca i32, align 4
  store %struct._UNICODE_STRING* %SymbolicLinkName, %struct._UNICODE_STRING** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %2, metadata !5994, metadata !2009), !dbg !5995
  store i8 %Enable, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !5996, metadata !2009), !dbg !5997
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !5998, metadata !2009), !dbg !5999
  %4 = call i32 @__VERIFIER_nondet_int(), !dbg !6000
  store i32 %4, i32* %__BLAST_NONDET___0, align 4, !dbg !5999
  %5 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !6001
  %6 = icmp eq i32 %5, 0, !dbg !6004
  br i1 %6, label %7, label %8, !dbg !6005

; <label>:7                                       ; preds = %0
  br label %11, !dbg !6006

; <label>:8                                       ; preds = %0
  br label %12, !dbg !6008
                                                  ; No predecessors!
  br i1 false, label %10, label %13, !dbg !6011

; <label>:10                                      ; preds = %9
  br label %11, !dbg !6012

; <label>:11                                      ; preds = %10, %7
  store i64 0, i64* %1, !dbg !6014
  br label %16, !dbg !6014

; <label>:12                                      ; preds = %8
  store i64 -1073741823, i64* %1, !dbg !6016
  br label %16, !dbg !6016

; <label>:13                                      ; preds = %9
  br label %14, !dbg !6017

; <label>:14                                      ; preds = %13
  br label %15

; <label>:15                                      ; preds = %14
  br label %16

; <label>:16                                      ; preds = %15, %12, %11
  %17 = load i64, i64* %1, !dbg !6018
  ret i64 %17, !dbg !6018
}

; Function Attrs: nounwind ssp uwtable
define void @IoSetHardErrorOrVerifyDevice(%struct._IRP* %Irp, %struct._DEVICE_OBJECT* %DeviceObject) #0 {
  %1 = alloca %struct._IRP*, align 8
  %2 = alloca %struct._DEVICE_OBJECT*, align 8
  store %struct._IRP* %Irp, %struct._IRP** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %1, metadata !6019, metadata !2009), !dbg !6020
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %2, metadata !6021, metadata !2009), !dbg !6022
  ret void, !dbg !6023
}

; Function Attrs: nounwind ssp uwtable
define void @stubMoreProcessingRequired() #0 {
  %1 = load i32, i32* @s, align 4, !dbg !6025
  %2 = load i32, i32* @NP, align 4, !dbg !6026
  %3 = icmp eq i32 %1, %2, !dbg !6027
  br i1 %3, label %4, label %6, !dbg !6028

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* @MPR1, align 4, !dbg !6029
  store i32 %5, i32* @s, align 4, !dbg !6030
  br label %7, !dbg !6031

; <label>:6                                       ; preds = %0
  call void (...) @__VERIFIER_error() #6, !dbg !6032
  unreachable, !dbg !6032

errorFn.exit:                                     ; No predecessors!
  br label %7

; <label>:7                                       ; preds = %errorFn.exit, %4
  ret void, !dbg !6034
}

; Function Attrs: nounwind ssp uwtable
define zeroext i8 @KeAcquireSpinLockRaiseToDpc(i64* %SpinLock) #0 {
  %1 = alloca i64*, align 8
  store i64* %SpinLock, i64** %1, align 8
  call void @llvm.dbg.declare(metadata i64** %1, metadata !6035, metadata !2009), !dbg !6036
  ret i8 0, !dbg !6037
}

; Function Attrs: nounwind ssp uwtable
define i64 @KeDelayExecutionThread(i8 signext %WaitMode, i8 zeroext %Alertable, %union._LARGE_INTEGER* %Interval) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca %union._LARGE_INTEGER*, align 8
  %__BLAST_NONDET___0 = alloca i32, align 4
  store i8 %WaitMode, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !6039, metadata !2009), !dbg !6040
  store i8 %Alertable, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !6041, metadata !2009), !dbg !6042
  store %union._LARGE_INTEGER* %Interval, %union._LARGE_INTEGER** %4, align 8
  call void @llvm.dbg.declare(metadata %union._LARGE_INTEGER** %4, metadata !6043, metadata !2009), !dbg !6044
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !6045, metadata !2009), !dbg !6046
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !6047
  store i32 %5, i32* %__BLAST_NONDET___0, align 4, !dbg !6046
  %6 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !6048
  %7 = icmp eq i32 %6, 0, !dbg !6051
  br i1 %7, label %8, label %9, !dbg !6052

; <label>:8                                       ; preds = %0
  br label %12, !dbg !6053

; <label>:9                                       ; preds = %0
  br label %13, !dbg !6055
                                                  ; No predecessors!
  br i1 false, label %11, label %14, !dbg !6058

; <label>:11                                      ; preds = %10
  br label %12, !dbg !6059

; <label>:12                                      ; preds = %11, %8
  store i64 0, i64* %1, !dbg !6061
  br label %17, !dbg !6061

; <label>:13                                      ; preds = %9
  store i64 -1073741823, i64* %1, !dbg !6063
  br label %17, !dbg !6063

; <label>:14                                      ; preds = %10
  br label %15, !dbg !6064

; <label>:15                                      ; preds = %14
  br label %16

; <label>:16                                      ; preds = %15
  br label %17

; <label>:17                                      ; preds = %16, %13, %12
  %18 = load i64, i64* %1, !dbg !6065
  ret i64 %18, !dbg !6065
}

; Function Attrs: nounwind ssp uwtable
define void @KeInitializeEvent(%struct._KEVENT* %Event, i32 %Type, i8 zeroext %State) #0 {
  %1 = alloca %struct._KEVENT*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store %struct._KEVENT* %Event, %struct._KEVENT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._KEVENT** %1, metadata !6066, metadata !2009), !dbg !6067
  store i32 %Type, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !6068, metadata !2009), !dbg !6069
  store i8 %State, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !6070, metadata !2009), !dbg !6071
  ret void, !dbg !6072
}

; Function Attrs: nounwind ssp uwtable
define void @KeInitializeSemaphore(%struct._KSEMAPHORE* %Semaphore, i64 %Count, i64 %Limit) #0 {
  %1 = alloca %struct._KSEMAPHORE*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store %struct._KSEMAPHORE* %Semaphore, %struct._KSEMAPHORE** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._KSEMAPHORE** %1, metadata !6074, metadata !2009), !dbg !6075
  store i64 %Count, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !6076, metadata !2009), !dbg !6077
  store i64 %Limit, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !6078, metadata !2009), !dbg !6079
  ret void, !dbg !6080
}

; Function Attrs: nounwind ssp uwtable
define void @KeInitializeSpinLock(i64* %SpinLock) #0 {
  %1 = alloca i64*, align 8
  store i64* %SpinLock, i64** %1, align 8
  call void @llvm.dbg.declare(metadata i64** %1, metadata !6082, metadata !2009), !dbg !6083
  ret void, !dbg !6084
}

; Function Attrs: nounwind ssp uwtable
define i64 @KeReleaseSemaphore(%struct._KSEMAPHORE* %Semaphore, i64 %Increment, i64 %Adjustment, i8 zeroext %Wait) #0 {
  %1 = alloca %struct._KSEMAPHORE*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %r = alloca i64, align 8
  store %struct._KSEMAPHORE* %Semaphore, %struct._KSEMAPHORE** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._KSEMAPHORE** %1, metadata !6086, metadata !2009), !dbg !6087
  store i64 %Increment, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !6088, metadata !2009), !dbg !6089
  store i64 %Adjustment, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !6090, metadata !2009), !dbg !6091
  store i8 %Wait, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !6092, metadata !2009), !dbg !6093
  call void @llvm.dbg.declare(metadata i64* %r, metadata !6094, metadata !2009), !dbg !6095
  %5 = call i64 @__VERIFIER_nondet_long(), !dbg !6096
  store i64 %5, i64* %r, align 8, !dbg !6095
  %6 = load i64, i64* %r, align 8, !dbg !6097
  ret i64 %6, !dbg !6099
}

; Function Attrs: nounwind ssp uwtable
define void @KfReleaseSpinLock(i64* %SpinLock, i8 zeroext %NewIrql) #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i8, align 1
  store i64* %SpinLock, i64** %1, align 8
  call void @llvm.dbg.declare(metadata i64** %1, metadata !6100, metadata !2009), !dbg !6101
  store i8 %NewIrql, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !6102, metadata !2009), !dbg !6103
  ret void, !dbg !6104
}

; Function Attrs: nounwind ssp uwtable
define i8* @MmAllocateContiguousMemory(i64 %NumberOfBytes, i64 %HighestAcceptableAddress.coerce0, i64 %HighestAcceptableAddress.coerce1) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %__BLAST_NONDET___0.i = alloca i32, align 4
  %3 = alloca i8*, align 8
  %HighestAcceptableAddress = alloca %union._LARGE_INTEGER, align 8
  %4 = alloca i64, align 8
  %__BLAST_NONDET___0 = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %5 = bitcast %union._LARGE_INTEGER* %HighestAcceptableAddress to { i64, i64 }*
  %6 = getelementptr { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  store i64 %HighestAcceptableAddress.coerce0, i64* %6
  %7 = getelementptr { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  store i64 %HighestAcceptableAddress.coerce1, i64* %7
  store i64 %NumberOfBytes, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !6106, metadata !2009), !dbg !6107
  call void @llvm.dbg.declare(metadata %union._LARGE_INTEGER* %HighestAcceptableAddress, metadata !6108, metadata !2009), !dbg !6109
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !6110, metadata !2009), !dbg !6111
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !6112
  store i32 %8, i32* %__BLAST_NONDET___0, align 4, !dbg !6111
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !6113, metadata !2009), !dbg !6114
  %9 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !6115
  %10 = icmp eq i32 %9, 0, !dbg !6118
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2058, metadata !2009), !dbg !6119
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0.i, metadata !2060, metadata !2009), !dbg !6127
  br i1 %10, label %11, label %12, !dbg !6128

; <label>:11                                      ; preds = %0
  br label %18, !dbg !6129

; <label>:12                                      ; preds = %0
  %13 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !6131
  %14 = icmp eq i32 %13, 1, !dbg !6132
  br i1 %14, label %15, label %16, !dbg !6133

; <label>:15                                      ; preds = %12
  br label %34, !dbg !6134

; <label>:16                                      ; preds = %12
  br i1 false, label %17, label %35, !dbg !6136

; <label>:17                                      ; preds = %16
  br label %18, !dbg !6137

; <label>:18                                      ; preds = %17, %11
  %19 = load i64, i64* %4, align 8, !dbg !6138
  %20 = trunc i64 %19 to i32, !dbg !6138
  %21 = bitcast i8** %1 to i8*, !dbg !6139
  call void @llvm.lifetime.start(i64 8, i8* %21), !dbg !6139
  %22 = bitcast i32* %2 to i8*, !dbg !6139
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !6139
  %23 = bitcast i32* %__BLAST_NONDET___0.i to i8*, !dbg !6139
  call void @llvm.lifetime.start(i64 4, i8* %23), !dbg !6139
  store i32 %20, i32* %2, align 4, !dbg !6139
  %24 = call i32 @__VERIFIER_nondet_int() #4, !dbg !6140
  store i32 %24, i32* %__BLAST_NONDET___0.i, align 4, !dbg !6127
  %25 = load i32, i32* %__BLAST_NONDET___0.i, align 4, !dbg !6141
  %26 = icmp ne i32 %25, 0, !dbg !6141
  br i1 %26, label %27, label %28, !dbg !6142

; <label>:27                                      ; preds = %18
  store i8* null, i8** %1, !dbg !6143
  br label %malloc.exit, !dbg !6143

; <label>:28                                      ; preds = %18
  store i8* inttoptr (i64 1 to i8*), i8** %1, !dbg !6144
  br label %malloc.exit, !dbg !6144

malloc.exit:                                      ; preds = %27, %28
  %29 = load i8*, i8** %1, !dbg !6145
  %30 = bitcast i8** %1 to i8*, !dbg !6145
  call void @llvm.lifetime.end(i64 8, i8* %30), !dbg !6145
  %31 = bitcast i32* %2 to i8*, !dbg !6145
  call void @llvm.lifetime.end(i64 4, i8* %31), !dbg !6145
  %32 = bitcast i32* %__BLAST_NONDET___0.i to i8*, !dbg !6145
  call void @llvm.lifetime.end(i64 4, i8* %32), !dbg !6145
  store i8* %29, i8** %tmp, align 8, !dbg !6146
  %33 = load i8*, i8** %tmp, align 8, !dbg !6147
  store i8* %33, i8** %3, !dbg !6148
  br label %40, !dbg !6148

; <label>:34                                      ; preds = %15
  store i8* null, i8** %3, !dbg !6149
  br label %40, !dbg !6149

; <label>:35                                      ; preds = %16
  br label %36, !dbg !6150

; <label>:36                                      ; preds = %35
  br label %37

; <label>:37                                      ; preds = %36
  br label %38

; <label>:38                                      ; preds = %37
  br label %39

; <label>:39                                      ; preds = %38
  store i8* null, i8** %3, !dbg !6151
  br label %40, !dbg !6151

; <label>:40                                      ; preds = %39, %34, %malloc.exit
  %41 = load i8*, i8** %3, !dbg !6152
  ret i8* %41, !dbg !6152
}

; Function Attrs: nounwind ssp uwtable
define void @MmFreeContiguousMemory(i8* %BaseAddress) #0 {
  %1 = alloca i8*, align 8
  store i8* %BaseAddress, i8** %1, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !6153, metadata !2009), !dbg !6154
  ret void, !dbg !6155
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
  call void @llvm.dbg.declare(metadata %struct._MDL** %1, metadata !6157, metadata !2009), !dbg !6158
  store i8 %AccessMode, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !6159, metadata !2009), !dbg !6160
  store i32 %CacheType, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !6161, metadata !2009), !dbg !6162
  store i8* %BaseAddress, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !6163, metadata !2009), !dbg !6164
  store i64 %BugCheckOnFailure, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !6165, metadata !2009), !dbg !6166
  store i32 %Priority, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !6167, metadata !2009), !dbg !6168
  ret i8* null, !dbg !6169
}

; Function Attrs: nounwind ssp uwtable
define i8* @MmPageEntireDriver(i8* %AddressWithinSection) #0 {
  %1 = alloca i8*, align 8
  store i8* %AddressWithinSection, i8** %1, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !6171, metadata !2009), !dbg !6172
  ret i8* null, !dbg !6173
}

; Function Attrs: nounwind ssp uwtable
define void @MmResetDriverPaging(i8* %AddressWithinSection) #0 {
  %1 = alloca i8*, align 8
  store i8* %AddressWithinSection, i8** %1, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !6175, metadata !2009), !dbg !6176
  ret void, !dbg !6177
}

; Function Attrs: nounwind ssp uwtable
define void @MmUnlockPages(%struct._MDL* %MemoryDescriptorList) #0 {
  %1 = alloca %struct._MDL*, align 8
  store %struct._MDL* %MemoryDescriptorList, %struct._MDL** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._MDL** %1, metadata !6179, metadata !2009), !dbg !6180
  ret void, !dbg !6181
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
  %__BLAST_NONDET___0 = alloca i32, align 4
  store i8* %Handle, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !6183, metadata !2009), !dbg !6184
  store i64 %DesiredAccess, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !6185, metadata !2009), !dbg !6186
  store %struct._OBJECT_TYPE* %ObjectType, %struct._OBJECT_TYPE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._OBJECT_TYPE** %4, metadata !6187, metadata !2009), !dbg !6188
  store i8 %AccessMode, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !6189, metadata !2009), !dbg !6190
  store i8** %Object, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !6191, metadata !2009), !dbg !6192
  store %struct._OBJECT_HANDLE_INFORMATION* %HandleInformation, %struct._OBJECT_HANDLE_INFORMATION** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._OBJECT_HANDLE_INFORMATION** %7, metadata !6193, metadata !2009), !dbg !6194
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !6195, metadata !2009), !dbg !6196
  %8 = call i32 @__VERIFIER_nondet_int(), !dbg !6197
  store i32 %8, i32* %__BLAST_NONDET___0, align 4, !dbg !6196
  %9 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !6198
  %10 = icmp eq i32 %9, 0, !dbg !6201
  br i1 %10, label %11, label %12, !dbg !6202

; <label>:11                                      ; preds = %0
  br label %15, !dbg !6203

; <label>:12                                      ; preds = %0
  br label %16, !dbg !6205
                                                  ; No predecessors!
  br i1 false, label %14, label %17, !dbg !6208

; <label>:14                                      ; preds = %13
  br label %15, !dbg !6209

; <label>:15                                      ; preds = %14, %11
  store i64 0, i64* %1, !dbg !6211
  br label %20, !dbg !6211

; <label>:16                                      ; preds = %12
  store i64 -1073741823, i64* %1, !dbg !6213
  br label %20, !dbg !6213

; <label>:17                                      ; preds = %13
  br label %18, !dbg !6214

; <label>:18                                      ; preds = %17
  br label %19

; <label>:19                                      ; preds = %18
  br label %20

; <label>:20                                      ; preds = %19, %16, %15
  %21 = load i64, i64* %1, !dbg !6215
  ret i64 %21, !dbg !6215
}

; Function Attrs: nounwind ssp uwtable
define void @ObfDereferenceObject(i8* %Object) #0 {
  %1 = alloca i8*, align 8
  store i8* %Object, i8** %1, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !6216, metadata !2009), !dbg !6217
  ret void, !dbg !6218
}

; Function Attrs: nounwind ssp uwtable
define void @PoStartNextPowerIrp(%struct._IRP* %Irp) #0 {
  %1 = alloca %struct._IRP*, align 8
  store %struct._IRP* %Irp, %struct._IRP** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %1, metadata !6220, metadata !2009), !dbg !6221
  ret void, !dbg !6222
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
  %__BLAST_NONDET___0 = alloca i32, align 4
  store i8** %ThreadHandle, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !6224, metadata !2009), !dbg !6225
  store i64 %DesiredAccess, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !6226, metadata !2009), !dbg !6227
  store %struct._OBJECT_ATTRIBUTES* %ObjectAttributes, %struct._OBJECT_ATTRIBUTES** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._OBJECT_ATTRIBUTES** %4, metadata !6228, metadata !2009), !dbg !6229
  store i8* %ProcessHandle, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !6230, metadata !2009), !dbg !6231
  store %struct._CLIENT_ID* %ClientId, %struct._CLIENT_ID** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CLIENT_ID** %6, metadata !6232, metadata !2009), !dbg !6233
  store void (i8*)* %StartRoutine, void (i8*)** %7, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %7, metadata !6234, metadata !2009), !dbg !6235
  store i8* %StartContext, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !6236, metadata !2009), !dbg !6237
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !6238, metadata !2009), !dbg !6239
  %9 = call i32 @__VERIFIER_nondet_int(), !dbg !6240
  store i32 %9, i32* %__BLAST_NONDET___0, align 4, !dbg !6239
  %10 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !6241
  %11 = icmp eq i32 %10, 0, !dbg !6244
  br i1 %11, label %12, label %13, !dbg !6245

; <label>:12                                      ; preds = %0
  br label %16, !dbg !6246

; <label>:13                                      ; preds = %0
  br label %17, !dbg !6248
                                                  ; No predecessors!
  br i1 false, label %15, label %18, !dbg !6251

; <label>:15                                      ; preds = %14
  br label %16, !dbg !6252

; <label>:16                                      ; preds = %15, %12
  store i64 0, i64* %1, !dbg !6254
  br label %21, !dbg !6254

; <label>:17                                      ; preds = %13
  store i64 -1073741823, i64* %1, !dbg !6256
  br label %21, !dbg !6256

; <label>:18                                      ; preds = %14
  br label %19, !dbg !6257

; <label>:19                                      ; preds = %18
  br label %20

; <label>:20                                      ; preds = %19
  br label %21

; <label>:21                                      ; preds = %20, %17, %16
  %22 = load i64, i64* %1, !dbg !6258
  ret i64 %22, !dbg !6258
}

; Function Attrs: nounwind ssp uwtable
define i64 @PsTerminateSystemThread(i64 %ExitStatus) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %__BLAST_NONDET___0 = alloca i32, align 4
  store i64 %ExitStatus, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !6259, metadata !2009), !dbg !6260
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !6261, metadata !2009), !dbg !6262
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !6263
  store i32 %3, i32* %__BLAST_NONDET___0, align 4, !dbg !6262
  %4 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !6264
  %5 = icmp eq i32 %4, 0, !dbg !6267
  br i1 %5, label %6, label %7, !dbg !6268

; <label>:6                                       ; preds = %0
  br label %10, !dbg !6269

; <label>:7                                       ; preds = %0
  br label %11, !dbg !6271
                                                  ; No predecessors!
  br i1 false, label %9, label %12, !dbg !6274

; <label>:9                                       ; preds = %8
  br label %10, !dbg !6275

; <label>:10                                      ; preds = %9, %6
  store i64 0, i64* %1, !dbg !6277
  br label %15, !dbg !6277

; <label>:11                                      ; preds = %7
  store i64 -1073741823, i64* %1, !dbg !6279
  br label %15, !dbg !6279

; <label>:12                                      ; preds = %8
  br label %13, !dbg !6280

; <label>:13                                      ; preds = %12
  br label %14

; <label>:14                                      ; preds = %13
  br label %15

; <label>:15                                      ; preds = %14, %11, %10
  %16 = load i64, i64* %1, !dbg !6281
  ret i64 %16, !dbg !6281
}

; Function Attrs: nounwind ssp uwtable
define i64 @RtlAnsiStringToUnicodeString(%struct._UNICODE_STRING* %DestinationString, %struct._STRING* %SourceString, i8 zeroext %AllocateDestinationString) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._UNICODE_STRING*, align 8
  %3 = alloca %struct._STRING*, align 8
  %4 = alloca i8, align 1
  %__BLAST_NONDET___0 = alloca i32, align 4
  store %struct._UNICODE_STRING* %DestinationString, %struct._UNICODE_STRING** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %2, metadata !6282, metadata !2009), !dbg !6283
  store %struct._STRING* %SourceString, %struct._STRING** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._STRING** %3, metadata !6284, metadata !2009), !dbg !6285
  store i8 %AllocateDestinationString, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !6286, metadata !2009), !dbg !6287
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !6288, metadata !2009), !dbg !6289
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !6290
  store i32 %5, i32* %__BLAST_NONDET___0, align 4, !dbg !6289
  %6 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !6291
  %7 = icmp eq i32 %6, 0, !dbg !6294
  br i1 %7, label %8, label %9, !dbg !6295

; <label>:8                                       ; preds = %0
  br label %12, !dbg !6296

; <label>:9                                       ; preds = %0
  br label %13, !dbg !6298
                                                  ; No predecessors!
  br i1 false, label %11, label %14, !dbg !6301

; <label>:11                                      ; preds = %10
  br label %12, !dbg !6302

; <label>:12                                      ; preds = %11, %8
  store i64 0, i64* %1, !dbg !6304
  br label %17, !dbg !6304

; <label>:13                                      ; preds = %9
  store i64 -1073741823, i64* %1, !dbg !6306
  br label %17, !dbg !6306

; <label>:14                                      ; preds = %10
  br label %15, !dbg !6307

; <label>:15                                      ; preds = %14
  br label %16

; <label>:16                                      ; preds = %15
  br label %17

; <label>:17                                      ; preds = %16, %13, %12
  %18 = load i64, i64* %1, !dbg !6308
  ret i64 %18, !dbg !6308
}

; Function Attrs: nounwind ssp uwtable
define i64 @RtlCompareMemory(i8* %Source1, i8* %Source2, i64 %Length) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %r = alloca i64, align 8
  store i8* %Source1, i8** %1, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !6309, metadata !2009), !dbg !6310
  store i8* %Source2, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !6311, metadata !2009), !dbg !6312
  store i64 %Length, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !6313, metadata !2009), !dbg !6314
  call void @llvm.dbg.declare(metadata i64* %r, metadata !6315, metadata !2009), !dbg !6316
  %4 = call i64 @__VERIFIER_nondet_long(), !dbg !6317
  store i64 %4, i64* %r, align 8, !dbg !6316
  %5 = load i64, i64* %r, align 8, !dbg !6318
  ret i64 %5, !dbg !6320
}

; Function Attrs: nounwind ssp uwtable
define void @RtlCopyUnicodeString(%struct._UNICODE_STRING* %DestinationString, %struct._UNICODE_STRING* %SourceString) #0 {
  %1 = alloca %struct._UNICODE_STRING*, align 8
  %2 = alloca %struct._UNICODE_STRING*, align 8
  store %struct._UNICODE_STRING* %DestinationString, %struct._UNICODE_STRING** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %1, metadata !6321, metadata !2009), !dbg !6322
  store %struct._UNICODE_STRING* %SourceString, %struct._UNICODE_STRING** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %2, metadata !6323, metadata !2009), !dbg !6324
  ret void, !dbg !6325
}

; Function Attrs: nounwind ssp uwtable
define i64 @RtlDeleteRegistryValue(i64 %RelativeTo, i16* %Path, i16* %ValueName) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %__BLAST_NONDET___0 = alloca i32, align 4
  store i64 %RelativeTo, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !6327, metadata !2009), !dbg !6328
  store i16* %Path, i16** %3, align 8
  call void @llvm.dbg.declare(metadata i16** %3, metadata !6329, metadata !2009), !dbg !6330
  store i16* %ValueName, i16** %4, align 8
  call void @llvm.dbg.declare(metadata i16** %4, metadata !6331, metadata !2009), !dbg !6332
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !6333, metadata !2009), !dbg !6334
  %5 = call i32 @__VERIFIER_nondet_int(), !dbg !6335
  store i32 %5, i32* %__BLAST_NONDET___0, align 4, !dbg !6334
  %6 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !6336
  %7 = icmp eq i32 %6, 0, !dbg !6339
  br i1 %7, label %8, label %9, !dbg !6340

; <label>:8                                       ; preds = %0
  br label %12, !dbg !6341

; <label>:9                                       ; preds = %0
  br label %13, !dbg !6343
                                                  ; No predecessors!
  br i1 false, label %11, label %14, !dbg !6346

; <label>:11                                      ; preds = %10
  br label %12, !dbg !6347

; <label>:12                                      ; preds = %11, %8
  store i64 0, i64* %1, !dbg !6349
  br label %17, !dbg !6349

; <label>:13                                      ; preds = %9
  store i64 -1073741823, i64* %1, !dbg !6351
  br label %17, !dbg !6351

; <label>:14                                      ; preds = %10
  br label %15, !dbg !6352

; <label>:15                                      ; preds = %14
  br label %16

; <label>:16                                      ; preds = %15
  br label %17

; <label>:17                                      ; preds = %16, %13, %12
  %18 = load i64, i64* %1, !dbg !6353
  ret i64 %18, !dbg !6353
}

; Function Attrs: nounwind ssp uwtable
define void @RtlFreeUnicodeString(%struct._UNICODE_STRING* %UnicodeString) #0 {
  %1 = alloca %struct._UNICODE_STRING*, align 8
  store %struct._UNICODE_STRING* %UnicodeString, %struct._UNICODE_STRING** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %1, metadata !6354, metadata !2009), !dbg !6355
  ret void, !dbg !6356
}

; Function Attrs: nounwind ssp uwtable
define void @RtlInitString(%struct._STRING* %DestinationString, i8* %SourceString) #0 {
  %1 = alloca %struct._STRING*, align 8
  %2 = alloca i8*, align 8
  store %struct._STRING* %DestinationString, %struct._STRING** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._STRING** %1, metadata !6358, metadata !2009), !dbg !6359
  store i8* %SourceString, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !6360, metadata !2009), !dbg !6361
  ret void, !dbg !6362
}

; Function Attrs: nounwind ssp uwtable
define void @RtlInitUnicodeString(%struct._UNICODE_STRING* %DestinationString, i16* %SourceString) #0 {
  %1 = alloca %struct._UNICODE_STRING*, align 8
  %2 = alloca i16*, align 8
  store %struct._UNICODE_STRING* %DestinationString, %struct._UNICODE_STRING** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._UNICODE_STRING** %1, metadata !6364, metadata !2009), !dbg !6365
  store i16* %SourceString, i16** %2, align 8
  call void @llvm.dbg.declare(metadata i16** %2, metadata !6366, metadata !2009), !dbg !6367
  ret void, !dbg !6368
}

; Function Attrs: nounwind ssp uwtable
define i64 @RtlQueryRegistryValues(i64 %RelativeTo, i16* %Path, %struct._RTL_QUERY_REGISTRY_TABLE* %QueryTable, i8* %Context, i8* %Environment) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i16*, align 8
  %4 = alloca %struct._RTL_QUERY_REGISTRY_TABLE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %__BLAST_NONDET___0 = alloca i32, align 4
  store i64 %RelativeTo, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !6370, metadata !2009), !dbg !6371
  store i16* %Path, i16** %3, align 8
  call void @llvm.dbg.declare(metadata i16** %3, metadata !6372, metadata !2009), !dbg !6373
  store %struct._RTL_QUERY_REGISTRY_TABLE* %QueryTable, %struct._RTL_QUERY_REGISTRY_TABLE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._RTL_QUERY_REGISTRY_TABLE** %4, metadata !6374, metadata !2009), !dbg !6375
  store i8* %Context, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !6376, metadata !2009), !dbg !6377
  store i8* %Environment, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !6378, metadata !2009), !dbg !6379
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !6380, metadata !2009), !dbg !6381
  %7 = call i32 @__VERIFIER_nondet_int(), !dbg !6382
  store i32 %7, i32* %__BLAST_NONDET___0, align 4, !dbg !6381
  %8 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !6383
  %9 = icmp eq i32 %8, 0, !dbg !6386
  br i1 %9, label %10, label %11, !dbg !6387

; <label>:10                                      ; preds = %0
  br label %14, !dbg !6388

; <label>:11                                      ; preds = %0
  br label %15, !dbg !6390
                                                  ; No predecessors!
  br i1 false, label %13, label %16, !dbg !6393

; <label>:13                                      ; preds = %12
  br label %14, !dbg !6394

; <label>:14                                      ; preds = %13, %10
  store i64 0, i64* %1, !dbg !6396
  br label %19, !dbg !6396

; <label>:15                                      ; preds = %11
  store i64 -1073741823, i64* %1, !dbg !6398
  br label %19, !dbg !6398

; <label>:16                                      ; preds = %12
  br label %17, !dbg !6399

; <label>:17                                      ; preds = %16
  br label %18

; <label>:18                                      ; preds = %17
  br label %19

; <label>:19                                      ; preds = %18, %15, %14
  %20 = load i64, i64* %1, !dbg !6400
  ret i64 %20, !dbg !6400
}

; Function Attrs: nounwind ssp uwtable
define i64 @ZwClose(i8* %Handle) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %__BLAST_NONDET___0 = alloca i32, align 4
  store i8* %Handle, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !6401, metadata !2009), !dbg !6402
  call void @llvm.dbg.declare(metadata i32* %__BLAST_NONDET___0, metadata !6403, metadata !2009), !dbg !6404
  %3 = call i32 @__VERIFIER_nondet_int(), !dbg !6405
  store i32 %3, i32* %__BLAST_NONDET___0, align 4, !dbg !6404
  %4 = load i32, i32* %__BLAST_NONDET___0, align 4, !dbg !6406
  %5 = icmp eq i32 %4, 0, !dbg !6409
  br i1 %5, label %6, label %7, !dbg !6410

; <label>:6                                       ; preds = %0
  br label %10, !dbg !6411

; <label>:7                                       ; preds = %0
  br label %11, !dbg !6413
                                                  ; No predecessors!
  br i1 false, label %9, label %12, !dbg !6416

; <label>:9                                       ; preds = %8
  br label %10, !dbg !6417

; <label>:10                                      ; preds = %9, %6
  store i64 0, i64* %1, !dbg !6419
  br label %15, !dbg !6419

; <label>:11                                      ; preds = %7
  store i64 -1073741823, i64* %1, !dbg !6421
  br label %15, !dbg !6421

; <label>:12                                      ; preds = %8
  br label %13, !dbg !6422

; <label>:13                                      ; preds = %12
  br label %14

; <label>:14                                      ; preds = %13
  br label %15

; <label>:15                                      ; preds = %14, %11, %10
  %16 = load i64, i64* %1, !dbg !6423
  ret i64 %16, !dbg !6423
}

; Function Attrs: nounwind ssp uwtable
define i64 @WmiSystemControl(%struct._WMILIB_CONTEXT* %WmiLibInfo, %struct._DEVICE_OBJECT* %DeviceObject, %struct._IRP* %Irp, i32* %IrpDisposition) #0 {
  %1 = alloca %struct._WMILIB_CONTEXT*, align 8
  %2 = alloca %struct._DEVICE_OBJECT*, align 8
  %3 = alloca %struct._IRP*, align 8
  %4 = alloca i32*, align 8
  store %struct._WMILIB_CONTEXT* %WmiLibInfo, %struct._WMILIB_CONTEXT** %1, align 8
  call void @llvm.dbg.declare(metadata %struct._WMILIB_CONTEXT** %1, metadata !6424, metadata !2009), !dbg !6425
  store %struct._DEVICE_OBJECT* %DeviceObject, %struct._DEVICE_OBJECT** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._DEVICE_OBJECT** %2, metadata !6426, metadata !2009), !dbg !6427
  store %struct._IRP* %Irp, %struct._IRP** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRP** %3, metadata !6428, metadata !2009), !dbg !6429
  store i32* %IrpDisposition, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !6430, metadata !2009), !dbg !6431
  ret i64 0, !dbg !6432
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
!llvm.module.flags = !{!1980, !1981, !1982}
!llvm.ident = !{!1983}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !258, subprograms: !1459, globals: !1788)
!1 = !DIFile(filename: "programs/svcomp16/ntdrivers/diskperf_false-unreach-call.i.cil.c", directory: ".")
!2 = !{!3, !9, !48, !59, !66, !74, !84, !104, !111, !115, !121, !125, !135, !140, !144, !150, !167, !210, !214, !244, !253}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SECURITY_IMPERSONATION_LEVEL", file: !1, line: 184, size: 32, align: 32, elements: !4)
!4 = !{!5, !6, !7, !8}
!5 = !DIEnumerator(name: "SecurityAnonymous", value: 0)
!6 = !DIEnumerator(name: "SecurityIdentification", value: 1)
!7 = !DIEnumerator(name: "SecurityImpersonation", value: 2)
!8 = !DIEnumerator(name: "SecurityDelegation", value: 3)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_FILE_INFORMATION_CLASS", file: !1, line: 225, size: 32, align: 32, elements: !10)
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
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_FSINFOCLASS", file: !1, line: 291, size: 32, align: 32, elements: !49)
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
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_DEVICE_RELATION_TYPE", file: !1, line: 1072, size: 32, align: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65}
!61 = !DIEnumerator(name: "BusRelations", value: 0)
!62 = !DIEnumerator(name: "EjectionRelations", value: 1)
!63 = !DIEnumerator(name: "PowerRelations", value: 2)
!64 = !DIEnumerator(name: "RemovalRelations", value: 3)
!65 = !DIEnumerator(name: "TargetDeviceRelation", value: 4)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_DEVICE_POWER_STATE", file: !1, line: 379, size: 32, align: 32, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73}
!68 = !DIEnumerator(name: "PowerDeviceUnspecified", value: 0)
!69 = !DIEnumerator(name: "PowerDeviceD0", value: 1)
!70 = !DIEnumerator(name: "PowerDeviceD1", value: 2)
!71 = !DIEnumerator(name: "PowerDeviceD2", value: 3)
!72 = !DIEnumerator(name: "PowerDeviceD3", value: 4)
!73 = !DIEnumerator(name: "PowerDeviceMaximum", value: 5)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SYSTEM_POWER_STATE", file: !1, line: 357, size: 32, align: 32, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83}
!76 = !DIEnumerator(name: "PowerSystemUnspecified", value: 0)
!77 = !DIEnumerator(name: "PowerSystemWorking", value: 1)
!78 = !DIEnumerator(name: "PowerSystemSleeping1", value: 2)
!79 = !DIEnumerator(name: "PowerSystemSleeping2", value: 3)
!80 = !DIEnumerator(name: "PowerSystemSleeping3", value: 4)
!81 = !DIEnumerator(name: "PowerSystemHibernate", value: 5)
!82 = !DIEnumerator(name: "PowerSystemShutdown", value: 6)
!83 = !DIEnumerator(name: "PowerSystemMaximum", value: 7)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_INTERFACE_TYPE", file: !1, line: 303, size: 32, align: 32, elements: !85)
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
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__anonenum_BUS_QUERY_ID_TYPE_53", file: !1, line: 1132, size: 32, align: 32, elements: !105)
!105 = !{!106, !107, !108, !109, !110}
!106 = !DIEnumerator(name: "BusQueryDeviceID", value: 0)
!107 = !DIEnumerator(name: "BusQueryHardwareIDs", value: 1)
!108 = !DIEnumerator(name: "BusQueryCompatibleIDs", value: 2)
!109 = !DIEnumerator(name: "BusQueryInstanceID", value: 3)
!110 = !DIEnumerator(name: "BusQueryDeviceSerialNumber", value: 4)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__anonenum_DEVICE_TEXT_TYPE_54", file: !1, line: 1140, size: 32, align: 32, elements: !112)
!112 = !{!113, !114}
!113 = !DIEnumerator(name: "DeviceTextDescription", value: 0)
!114 = !DIEnumerator(name: "DeviceTextLocationInformation", value: 1)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_DEVICE_USAGE_NOTIFICATION_TYPE", file: !1, line: 1080, size: 32, align: 32, elements: !116)
!116 = !{!117, !118, !119, !120}
!117 = !DIEnumerator(name: "DeviceUsageTypeUndefined", value: 0)
!118 = !DIEnumerator(name: "DeviceUsageTypePaging", value: 1)
!119 = !DIEnumerator(name: "DeviceUsageTypeHibernation", value: 2)
!120 = !DIEnumerator(name: "DeviceUsageTypeDumpFile", value: 3)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_POWER_STATE_TYPE", file: !1, line: 393, size: 32, align: 32, elements: !122)
!122 = !{!123, !124}
!123 = !DIEnumerator(name: "SystemPowerState", value: 0)
!124 = !DIEnumerator(name: "DevicePowerState", value: 1)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__anonenum_POWER_ACTION_11", file: !1, line: 368, size: 32, align: 32, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134}
!127 = !DIEnumerator(name: "PowerActionNone", value: 0)
!128 = !DIEnumerator(name: "PowerActionReserved", value: 1)
!129 = !DIEnumerator(name: "PowerActionSleep", value: 2)
!130 = !DIEnumerator(name: "PowerActionHibernate", value: 3)
!131 = !DIEnumerator(name: "PowerActionShutdown", value: 4)
!132 = !DIEnumerator(name: "PowerActionShutdownReset", value: 5)
!133 = !DIEnumerator(name: "PowerActionShutdownOff", value: 6)
!134 = !DIEnumerator(name: "PowerActionWarmEject", value: 7)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_IO_ALLOCATION_ACTION", file: !1, line: 862, size: 32, align: 32, elements: !136)
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "KeepObject", value: 1)
!138 = !DIEnumerator(name: "DeallocateObject", value: 2)
!139 = !DIEnumerator(name: "DeallocateObjectKeepRegisters", value: 3)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__anonenum_WMIENABLEDISABLECONTROL_131", file: !1, line: 1409, size: 32, align: 32, elements: !141)
!141 = !{!142, !143}
!142 = !DIEnumerator(name: "WmiEventControl", value: 0)
!143 = !DIEnumerator(name: "WmiDataBlockControl", value: 1)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__anonenum_SYSCTL_IRP_DISPOSITION_132", file: !1, line: 1436, size: 32, align: 32, elements: !145)
!145 = !{!146, !147, !148, !149}
!146 = !DIEnumerator(name: "IrpProcessed", value: 0)
!147 = !DIEnumerator(name: "IrpNotCompleted", value: 1)
!148 = !DIEnumerator(name: "IrpNotWmi", value: 2)
!149 = !DIEnumerator(name: "IrpForward", value: 3)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_POOL_TYPE", file: !1, line: 682, size: 32, align: 32, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!152 = !DIEnumerator(name: "NonPagedPool", value: 0)
!153 = !DIEnumerator(name: "PagedPool", value: 1)
!154 = !DIEnumerator(name: "NonPagedPoolMustSucceed", value: 2)
!155 = !DIEnumerator(name: "DontUseThisType", value: 3)
!156 = !DIEnumerator(name: "NonPagedPoolCacheAligned", value: 4)
!157 = !DIEnumerator(name: "PagedPoolCacheAligned", value: 5)
!158 = !DIEnumerator(name: "NonPagedPoolCacheAlignedMustS", value: 6)
!159 = !DIEnumerator(name: "MaxPoolType", value: 7)
!160 = !DIEnumerator(name: "NonPagedPoolSession", value: 32)
!161 = !DIEnumerator(name: "PagedPoolSession", value: 33)
!162 = !DIEnumerator(name: "NonPagedPoolMustSucceedSession", value: 34)
!163 = !DIEnumerator(name: "DontUseThisTypeSession", value: 35)
!164 = !DIEnumerator(name: "NonPagedPoolCacheAlignedSession", value: 36)
!165 = !DIEnumerator(name: "PagedPoolCacheAlignedSession", value: 37)
!166 = !DIEnumerator(name: "NonPagedPoolCacheAlignedMustSSession", value: 38)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_CONFIGURATION_TYPE", file: !1, line: 561, size: 32, align: 32, elements: !168)
!168 = !{!169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209}
!169 = !DIEnumerator(name: "ArcSystem", value: 0)
!170 = !DIEnumerator(name: "CentralProcessor", value: 1)
!171 = !DIEnumerator(name: "FloatingPointProcessor", value: 2)
!172 = !DIEnumerator(name: "PrimaryIcache", value: 3)
!173 = !DIEnumerator(name: "PrimaryDcache", value: 4)
!174 = !DIEnumerator(name: "SecondaryIcache", value: 5)
!175 = !DIEnumerator(name: "SecondaryDcache", value: 6)
!176 = !DIEnumerator(name: "SecondaryCache", value: 7)
!177 = !DIEnumerator(name: "EisaAdapter", value: 8)
!178 = !DIEnumerator(name: "TcAdapter", value: 9)
!179 = !DIEnumerator(name: "ScsiAdapter", value: 10)
!180 = !DIEnumerator(name: "DtiAdapter", value: 11)
!181 = !DIEnumerator(name: "MultiFunctionAdapter", value: 12)
!182 = !DIEnumerator(name: "DiskController", value: 13)
!183 = !DIEnumerator(name: "TapeController", value: 14)
!184 = !DIEnumerator(name: "CdromController", value: 15)
!185 = !DIEnumerator(name: "WormController", value: 16)
!186 = !DIEnumerator(name: "SerialController", value: 17)
!187 = !DIEnumerator(name: "NetworkController", value: 18)
!188 = !DIEnumerator(name: "DisplayController", value: 19)
!189 = !DIEnumerator(name: "ParallelController", value: 20)
!190 = !DIEnumerator(name: "PointerController", value: 21)
!191 = !DIEnumerator(name: "KeyboardController", value: 22)
!192 = !DIEnumerator(name: "AudioController", value: 23)
!193 = !DIEnumerator(name: "OtherController", value: 24)
!194 = !DIEnumerator(name: "DiskPeripheral", value: 25)
!195 = !DIEnumerator(name: "FloppyDiskPeripheral", value: 26)
!196 = !DIEnumerator(name: "TapePeripheral", value: 27)
!197 = !DIEnumerator(name: "ModemPeripheral", value: 28)
!198 = !DIEnumerator(name: "MonitorPeripheral", value: 29)
!199 = !DIEnumerator(name: "PrinterPeripheral", value: 30)
!200 = !DIEnumerator(name: "PointerPeripheral", value: 31)
!201 = !DIEnumerator(name: "KeyboardPeripheral", value: 32)
!202 = !DIEnumerator(name: "TerminalPeripheral", value: 33)
!203 = !DIEnumerator(name: "OtherPeripheral", value: 34)
!204 = !DIEnumerator(name: "LinePeripheral", value: 35)
!205 = !DIEnumerator(name: "NetworkPeripheral", value: 36)
!206 = !DIEnumerator(name: "SystemMemory", value: 37)
!207 = !DIEnumerator(name: "DockingInformation", value: 38)
!208 = !DIEnumerator(name: "RealModeIrqRoutingTable", value: 39)
!209 = !DIEnumerator(name: "MaximumType", value: 40)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_EVENT_TYPE", file: !1, line: 60, size: 32, align: 32, elements: !211)
!211 = !{!212, !213}
!212 = !DIEnumerator(name: "NotificationEvent", value: 0)
!213 = !DIEnumerator(name: "SynchronizationEvent", value: 1)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_KWAIT_REASON", file: !1, line: 606, size: 32, align: 32, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243}
!216 = !DIEnumerator(name: "Executive", value: 0)
!217 = !DIEnumerator(name: "FreePage", value: 1)
!218 = !DIEnumerator(name: "PageIn", value: 2)
!219 = !DIEnumerator(name: "PoolAllocation", value: 3)
!220 = !DIEnumerator(name: "DelayExecution", value: 4)
!221 = !DIEnumerator(name: "Suspended", value: 5)
!222 = !DIEnumerator(name: "UserRequest", value: 6)
!223 = !DIEnumerator(name: "WrExecutive", value: 7)
!224 = !DIEnumerator(name: "WrFreePage", value: 8)
!225 = !DIEnumerator(name: "WrPageIn", value: 9)
!226 = !DIEnumerator(name: "WrPoolAllocation", value: 10)
!227 = !DIEnumerator(name: "WrDelayExecution", value: 11)
!228 = !DIEnumerator(name: "WrSuspended", value: 12)
!229 = !DIEnumerator(name: "WrUserRequest", value: 13)
!230 = !DIEnumerator(name: "WrEventPair", value: 14)
!231 = !DIEnumerator(name: "WrQueue", value: 15)
!232 = !DIEnumerator(name: "WrLpcReceive", value: 16)
!233 = !DIEnumerator(name: "WrLpcReply", value: 17)
!234 = !DIEnumerator(name: "WrVirtualMemory", value: 18)
!235 = !DIEnumerator(name: "WrPageOut", value: 19)
!236 = !DIEnumerator(name: "WrRendezvous", value: 20)
!237 = !DIEnumerator(name: "Spare2", value: 21)
!238 = !DIEnumerator(name: "Spare3", value: 22)
!239 = !DIEnumerator(name: "Spare4", value: 23)
!240 = !DIEnumerator(name: "Spare5", value: 24)
!241 = !DIEnumerator(name: "Spare6", value: 25)
!242 = !DIEnumerator(name: "WrKernel", value: 26)
!243 = !DIEnumerator(name: "MaximumWaitReason", value: 27)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_MEMORY_CACHING_TYPE", file: !1, line: 672, size: 32, align: 32, elements: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !252}
!246 = !DIEnumerator(name: "MmNonCached", value: 0)
!247 = !DIEnumerator(name: "MmCached", value: 1)
!248 = !DIEnumerator(name: "MmWriteCombined", value: 2)
!249 = !DIEnumerator(name: "MmHardwareCoherentCached", value: 3)
!250 = !DIEnumerator(name: "MmNonCachedUnordered", value: 4)
!251 = !DIEnumerator(name: "MmUSWCCached", value: 5)
!252 = !DIEnumerator(name: "MmMaximumCacheType", value: 6)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_MM_PAGE_PRIORITY", file: !1, line: 737, size: 32, align: 32, elements: !254)
!254 = !{!255, !256, !257}
!255 = !DIEnumerator(name: "LowPagePriority", value: 0)
!256 = !DIEnumerator(name: "NormalPagePriority", value: 16)
!257 = !DIEnumerator(name: "HighPagePriority", value: 32)
!258 = !{!259, !260, !261, !287, !286, !277, !1419, !682, !1349, !550, !1421, !627, !1422, !1423, !428, !394, !331, !1425, !1442, !312, !302, !1458}
!259 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DEVICE_EXTENSION", file: !1, line: 1444, size: 2752, align: 64, elements: !263)
!263 = !{!264, !1341, !1342, !1343, !1344, !1346, !1347, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1374}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceObject", scope: !262, file: !1, line: 1445, baseType: !265, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "PDEVICE_OBJECT", file: !1, line: 931, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DEVICE_OBJECT", file: !1, line: 903, size: 2944, align: 64, elements: !268)
!268 = !{!269, !272, !275, !278, !1266, !1267, !1268, !1269, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1316, !1317, !1326, !1328, !1329, !1330, !1331, !1332, !1333, !1340}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !267, file: !1, line: 904, baseType: !270, size: 16, align: 16)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "CSHORT", file: !1, line: 34, baseType: !271)
!271 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !267, file: !1, line: 905, baseType: !273, size: 16, align: 16, offset: 16)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "USHORT", file: !1, line: 27, baseType: !274)
!274 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "ReferenceCount", scope: !267, file: !1, line: 906, baseType: !276, size: 64, align: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "LONG", file: !1, line: 19, baseType: !277)
!277 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "DriverObject", scope: !267, file: !1, line: 907, baseType: !279, size: 64, align: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DRIVER_OBJECT", file: !1, line: 944, size: 2688, align: 64, elements: !281)
!281 = !{!282, !283, !284, !285, !288, !290, !291, !292, !315, !316, !319, !1249, !1253, !1254, !1258}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !280, file: !1, line: 945, baseType: !270, size: 16, align: 16)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !280, file: !1, line: 946, baseType: !270, size: 16, align: 16, offset: 16)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceObject", scope: !280, file: !1, line: 947, baseType: !265, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !280, file: !1, line: 948, baseType: !286, size: 64, align: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "ULONG", file: !1, line: 28, baseType: !287)
!287 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "DriverStart", scope: !280, file: !1, line: 949, baseType: !289, size: 64, align: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "PVOID", file: !1, line: 16, baseType: !260)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "DriverSize", scope: !280, file: !1, line: 950, baseType: !286, size: 64, align: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "DriverSection", scope: !280, file: !1, line: 951, baseType: !289, size: 64, align: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "DriverExtension", scope: !280, file: !1, line: 952, baseType: !293, size: 64, align: 64, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "PDRIVER_EXTENSION", file: !1, line: 943, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DRIVER_EXTENSION", file: !1, line: 937, size: 320, align: 64, elements: !296)
!296 = !{!297, !298, !303, !304}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "DriverObject", scope: !295, file: !1, line: 938, baseType: !279, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "AddDevice", scope: !295, file: !1, line: 939, baseType: !299, size: 64, align: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!302, !279, !266}
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "NTSTATUS", file: !1, line: 37, baseType: !276)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "Count", scope: !295, file: !1, line: 940, baseType: !286, size: 64, align: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ServiceKeyName", scope: !295, file: !1, line: 941, baseType: !305, size: 128, align: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "UNICODE_STRING", file: !1, line: 79, baseType: !306)
!306 = !DICompositeType(tag: DW_TAG_structure_type, name: "_UNICODE_STRING", file: !1, line: 74, size: 128, align: 64, elements: !307)
!307 = !{!308, !309, !310}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !306, file: !1, line: 75, baseType: !273, size: 16, align: 16)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "MaximumLength", scope: !306, file: !1, line: 76, baseType: !273, size: 16, align: 16, offset: 16)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "Buffer", scope: !306, file: !1, line: 77, baseType: !311, size: 64, align: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "PWSTR", file: !1, line: 22, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "WCHAR", file: !1, line: 20, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !1, line: 12, baseType: !274)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "DriverName", scope: !280, file: !1, line: 953, baseType: !305, size: 128, align: 64, offset: 448)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "HardwareDatabase", scope: !280, file: !1, line: 954, baseType: !317, size: 64, align: 64, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "PUNICODE_STRING", file: !1, line: 80, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoDispatch", scope: !280, file: !1, line: 955, baseType: !320, size: 64, align: 64, offset: 640)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFAST_IO_DISPATCH", file: !1, line: 861, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FAST_IO_DISPATCH", file: !1, line: 792, size: 1792, align: 64, elements: !323)
!323 = !{!324, !325, !440, !444, !445, !458, !471, !478, !482, !486, !490, !494, !498, !499, !503, !517, !566, !583, !587, !588, !592, !598, !599, !600, !601, !1240, !1244, !1248}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "SizeOfFastIoDispatch", scope: !322, file: !1, line: 793, baseType: !286, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoCheckIfPossible", scope: !322, file: !1, line: 794, baseType: !326, size: 64, align: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!329, !332, !427, !286, !329, !286, !329, !429, !266}
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOLEAN", file: !1, line: 81, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "UCHAR", file: !1, line: 26, baseType: !331)
!331 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FILE_OBJECT", file: !1, line: 975, size: 1728, align: 64, elements: !334)
!334 = !{!335, !336, !337, !338, !355, !356, !357, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !396, !397, !398, !399, !419, !420}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !333, file: !1, line: 976, baseType: !270, size: 16, align: 16)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !333, file: !1, line: 977, baseType: !270, size: 16, align: 16, offset: 16)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceObject", scope: !333, file: !1, line: 978, baseType: !265, size: 64, align: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "Vpb", scope: !333, file: !1, line: 979, baseType: !339, size: 64, align: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "PVPB", file: !1, line: 886, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "_VPB", file: !1, line: 875, size: 832, align: 64, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !341, file: !1, line: 876, baseType: !270, size: 16, align: 16)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !341, file: !1, line: 877, baseType: !270, size: 16, align: 16, offset: 16)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !341, file: !1, line: 878, baseType: !273, size: 16, align: 16, offset: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "VolumeLabelLength", scope: !341, file: !1, line: 879, baseType: !273, size: 16, align: 16, offset: 48)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceObject", scope: !341, file: !1, line: 880, baseType: !266, size: 64, align: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "RealDevice", scope: !341, file: !1, line: 881, baseType: !266, size: 64, align: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "SerialNumber", scope: !341, file: !1, line: 882, baseType: !286, size: 64, align: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ReferenceCount", scope: !341, file: !1, line: 883, baseType: !286, size: 64, align: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "VolumeLabel", scope: !341, file: !1, line: 884, baseType: !352, size: 512, align: 16, offset: 320)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 512, align: 16, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "FsContext", scope: !333, file: !1, line: 980, baseType: !289, size: 64, align: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "FsContext2", scope: !333, file: !1, line: 981, baseType: !289, size: 64, align: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "SectionObjectPointer", scope: !333, file: !1, line: 982, baseType: !358, size: 64, align: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "PSECTION_OBJECT_POINTERS", file: !1, line: 969, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "SECTION_OBJECT_POINTERS", file: !1, line: 968, baseType: !361)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SECTION_OBJECT_POINTERS", file: !1, line: 963, size: 192, align: 64, elements: !362)
!362 = !{!363, !364, !365}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "DataSectionObject", scope: !361, file: !1, line: 964, baseType: !289, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "SharedCacheMap", scope: !361, file: !1, line: 965, baseType: !289, size: 64, align: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ImageSectionObject", scope: !361, file: !1, line: 966, baseType: !289, size: 64, align: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "PrivateCacheMap", scope: !333, file: !1, line: 983, baseType: !289, size: 64, align: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "FinalStatus", scope: !333, file: !1, line: 984, baseType: !302, size: 64, align: 64, offset: 448)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "RelatedFileObject", scope: !333, file: !1, line: 985, baseType: !332, size: 64, align: 64, offset: 512)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "LockOperation", scope: !333, file: !1, line: 986, baseType: !329, size: 8, align: 8, offset: 576)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "DeletePending", scope: !333, file: !1, line: 987, baseType: !329, size: 8, align: 8, offset: 584)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ReadAccess", scope: !333, file: !1, line: 988, baseType: !329, size: 8, align: 8, offset: 592)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "WriteAccess", scope: !333, file: !1, line: 989, baseType: !329, size: 8, align: 8, offset: 600)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "DeleteAccess", scope: !333, file: !1, line: 990, baseType: !329, size: 8, align: 8, offset: 608)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "SharedRead", scope: !333, file: !1, line: 991, baseType: !329, size: 8, align: 8, offset: 616)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "SharedWrite", scope: !333, file: !1, line: 992, baseType: !329, size: 8, align: 8, offset: 624)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "SharedDelete", scope: !333, file: !1, line: 993, baseType: !329, size: 8, align: 8, offset: 632)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !333, file: !1, line: 994, baseType: !286, size: 64, align: 64, offset: 640)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "FileName", scope: !333, file: !1, line: 995, baseType: !305, size: 128, align: 64, offset: 704)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "CurrentByteOffset", scope: !333, file: !1, line: 996, baseType: !380, size: 128, align: 64, offset: 832)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "LARGE_INTEGER", file: !1, line: 52, baseType: !381)
!381 = !DICompositeType(tag: DW_TAG_union_type, name: "_LARGE_INTEGER", file: !1, line: 47, size: 128, align: 64, elements: !382)
!382 = !{!383, !388, !393}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField1", scope: !381, file: !1, line: 48, baseType: !384, size: 128, align: 64)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct____missing_field_name_1", file: !1, line: 39, size: 128, align: 64, elements: !385)
!385 = !{!386, !387}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "LowPart", scope: !384, file: !1, line: 40, baseType: !286, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "HighPart", scope: !384, file: !1, line: 41, baseType: !276, size: 64, align: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !381, file: !1, line: 49, baseType: !389, size: 128, align: 64)
!389 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_u_2", file: !1, line: 43, size: 128, align: 64, elements: !390)
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "LowPart", scope: !389, file: !1, line: 44, baseType: !286, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "HighPart", scope: !389, file: !1, line: 45, baseType: !276, size: 64, align: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "QuadPart", scope: !381, file: !1, line: 50, baseType: !394, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "LONGLONG", file: !1, line: 38, baseType: !395)
!395 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "Waiters", scope: !333, file: !1, line: 997, baseType: !286, size: 64, align: 64, offset: 960)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "Busy", scope: !333, file: !1, line: 998, baseType: !286, size: 64, align: 64, offset: 1024)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "LastLock", scope: !333, file: !1, line: 999, baseType: !289, size: 64, align: 64, offset: 1088)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "Lock", scope: !333, file: !1, line: 1000, baseType: !400, size: 256, align: 64, offset: 1152)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "KEVENT", file: !1, line: 663, baseType: !401)
!401 = !DICompositeType(tag: DW_TAG_structure_type, name: "_KEVENT", file: !1, line: 660, size: 256, align: 64, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "Header", scope: !401, file: !1, line: 661, baseType: !404, size: 256, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "DISPATCHER_HEADER", file: !1, line: 645, baseType: !405)
!405 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DISPATCHER_HEADER", file: !1, line: 637, size: 256, align: 64, elements: !406)
!406 = !{!407, !408, !409, !410, !411, !412}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !405, file: !1, line: 638, baseType: !330, size: 8, align: 8)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "Absolute", scope: !405, file: !1, line: 639, baseType: !330, size: 8, align: 8, offset: 8)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !405, file: !1, line: 640, baseType: !330, size: 8, align: 8, offset: 16)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "Inserted", scope: !405, file: !1, line: 641, baseType: !330, size: 8, align: 8, offset: 24)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "SignalState", scope: !405, file: !1, line: 642, baseType: !276, size: 64, align: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "WaitListHead", scope: !405, file: !1, line: 643, baseType: !413, size: 128, align: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "LIST_ENTRY", file: !1, line: 86, baseType: !414)
!414 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LIST_ENTRY", file: !1, line: 82, size: 128, align: 64, elements: !415)
!415 = !{!416, !418}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "Flink", scope: !414, file: !1, line: 83, baseType: !417, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "Blink", scope: !414, file: !1, line: 84, baseType: !417, size: 64, align: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "Event", scope: !333, file: !1, line: 1001, baseType: !400, size: 256, align: 64, offset: 1408)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "CompletionContext", scope: !333, file: !1, line: 1002, baseType: !421, size: 64, align: 64, offset: 1664)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "PIO_COMPLETION_CONTEXT", file: !1, line: 974, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_COMPLETION_CONTEXT", file: !1, line: 970, size: 128, align: 64, elements: !424)
!424 = !{!425, !426}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "Port", scope: !423, file: !1, line: 971, baseType: !289, size: 64, align: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "Key", scope: !423, file: !1, line: 972, baseType: !289, size: 64, align: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "PLARGE_INTEGER", file: !1, line: 53, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "PIO_STATUS_BLOCK", file: !1, line: 224, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!431 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_STATUS_BLOCK", file: !1, line: 219, size: 128, align: 64, elements: !432)
!432 = !{!433, !438}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField4", scope: !431, file: !1, line: 220, baseType: !434, size: 64, align: 64)
!434 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion____missing_field_name_6", file: !1, line: 215, size: 64, align: 64, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "Status", scope: !434, file: !1, line: 216, baseType: !302, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "Pointer", scope: !434, file: !1, line: 217, baseType: !289, size: 64, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "Information", scope: !431, file: !1, line: 221, baseType: !439, size: 64, align: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "ULONG_PTR", file: !1, line: 13, baseType: !287)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoRead", scope: !322, file: !1, line: 798, baseType: !441, size: 64, align: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!329, !332, !427, !286, !329, !286, !289, !429, !266}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoWrite", scope: !322, file: !1, line: 801, baseType: !441, size: 64, align: 64, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoQueryBasicInfo", scope: !322, file: !1, line: 804, baseType: !446, size: 64, align: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64, align: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!329, !332, !329, !449, !429, !266}
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFILE_BASIC_INFORMATION", file: !1, line: 272, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, align: 64)
!451 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FILE_BASIC_INFORMATION", file: !1, line: 265, size: 576, align: 64, elements: !452)
!452 = !{!453, !454, !455, !456, !457}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "CreationTime", scope: !451, file: !1, line: 266, baseType: !380, size: 128, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessTime", scope: !451, file: !1, line: 267, baseType: !380, size: 128, align: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "LastWriteTime", scope: !451, file: !1, line: 268, baseType: !380, size: 128, align: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ChangeTime", scope: !451, file: !1, line: 269, baseType: !380, size: 128, align: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "FileAttributes", scope: !451, file: !1, line: 270, baseType: !286, size: 64, align: 64, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoQueryStandardInfo", scope: !322, file: !1, line: 807, baseType: !459, size: 64, align: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!329, !332, !329, !462, !429, !266}
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFILE_STANDARD_INFORMATION", file: !1, line: 280, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FILE_STANDARD_INFORMATION", file: !1, line: 273, size: 384, align: 64, elements: !465)
!465 = !{!466, !467, !468, !469, !470}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "AllocationSize", scope: !464, file: !1, line: 274, baseType: !380, size: 128, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "EndOfFile", scope: !464, file: !1, line: 275, baseType: !380, size: 128, align: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfLinks", scope: !464, file: !1, line: 276, baseType: !286, size: 64, align: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "DeletePending", scope: !464, file: !1, line: 277, baseType: !329, size: 8, align: 8, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "Directory", scope: !464, file: !1, line: 278, baseType: !329, size: 8, align: 8, offset: 328)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoLock", scope: !322, file: !1, line: 810, baseType: !472, size: 64, align: 64, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!329, !332, !427, !427, !475, !286, !329, !329, !429, !266}
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "PEPROCESS", file: !1, line: 113, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DICompositeType(tag: DW_TAG_structure_type, name: "_EPROCESS", file: !1, line: 112, flags: DIFlagFwdDecl)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoUnlockSingle", scope: !322, file: !1, line: 814, baseType: !479, size: 64, align: 64, offset: 448)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, align: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!329, !332, !427, !427, !475, !286, !429, !266}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoUnlockAll", scope: !322, file: !1, line: 817, baseType: !483, size: 64, align: 64, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64, align: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!329, !332, !475, !429, !266}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoUnlockAllByKey", scope: !322, file: !1, line: 819, baseType: !487, size: 64, align: 64, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64, align: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!329, !332, !289, !286, !429, !266}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoDeviceControl", scope: !322, file: !1, line: 821, baseType: !491, size: 64, align: 64, offset: 640)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!329, !332, !329, !289, !286, !289, !286, !286, !429, !266}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "AcquireFileForNtCreateSection", scope: !322, file: !1, line: 825, baseType: !495, size: 64, align: 64, offset: 704)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, align: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !332}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ReleaseFileForNtCreateSection", scope: !322, file: !1, line: 826, baseType: !495, size: 64, align: 64, offset: 768)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoDetachDevice", scope: !322, file: !1, line: 827, baseType: !500, size: 64, align: 64, offset: 832)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64, align: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !266, !266}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoQueryNetworkOpenInfo", scope: !322, file: !1, line: 828, baseType: !504, size: 64, align: 64, offset: 896)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!329, !332, !329, !507, !430, !266}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64, align: 64)
!508 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FILE_NETWORK_OPEN_INFORMATION", file: !1, line: 281, size: 832, align: 64, elements: !509)
!509 = !{!510, !511, !512, !513, !514, !515, !516}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "CreationTime", scope: !508, file: !1, line: 282, baseType: !380, size: 128, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "LastAccessTime", scope: !508, file: !1, line: 283, baseType: !380, size: 128, align: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "LastWriteTime", scope: !508, file: !1, line: 284, baseType: !380, size: 128, align: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ChangeTime", scope: !508, file: !1, line: 285, baseType: !380, size: 128, align: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "AllocationSize", scope: !508, file: !1, line: 286, baseType: !380, size: 128, align: 64, offset: 512)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "EndOfFile", scope: !508, file: !1, line: 287, baseType: !380, size: 128, align: 64, offset: 640)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "FileAttributes", scope: !508, file: !1, line: 288, baseType: !286, size: 64, align: 64, offset: 768)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "AcquireForModWrite", scope: !322, file: !1, line: 831, baseType: !518, size: 64, align: 64, offset: 960)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64, align: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!302, !332, !427, !521, !266}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64, align: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64, align: 64)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ERESOURCE", file: !1, line: 723, size: 896, align: 64, elements: !524)
!524 = !{!525, !526, !538, !540, !541, !548, !551, !556, !557, !558, !559, !564}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "SystemResourcesList", scope: !523, file: !1, line: 724, baseType: !413, size: 128, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "OwnerTable", scope: !523, file: !1, line: 725, baseType: !527, size: 64, align: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "POWNER_ENTRY", file: !1, line: 718, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64, align: 64)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "_OWNER_ENTRY", file: !1, line: 713, size: 128, align: 64, elements: !530)
!530 = !{!531, !533}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "OwnerThread", scope: !529, file: !1, line: 714, baseType: !532, size: 64, align: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "ERESOURCE_THREAD", file: !1, line: 708, baseType: !439)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField10", scope: !529, file: !1, line: 715, baseType: !534, size: 64, align: 64, offset: 64)
!534 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion____missing_field_name_38", file: !1, line: 709, size: 64, align: 64, elements: !535)
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "OwnerCount", scope: !534, file: !1, line: 710, baseType: !276, size: 64, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "TableSize", scope: !534, file: !1, line: 711, baseType: !286, size: 64, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ActiveCount", scope: !523, file: !1, line: 726, baseType: !539, size: 16, align: 16, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "SHORT", file: !1, line: 18, baseType: !271)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "Flag", scope: !523, file: !1, line: 727, baseType: !273, size: 16, align: 16, offset: 208)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "SharedWaiters", scope: !523, file: !1, line: 728, baseType: !542, size: 64, align: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "PKSEMAPHORE", file: !1, line: 670, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64, align: 64)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "_KSEMAPHORE", file: !1, line: 666, size: 320, align: 64, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "Header", scope: !544, file: !1, line: 667, baseType: !404, size: 256, align: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "Limit", scope: !544, file: !1, line: 668, baseType: !276, size: 64, align: 64, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ExclusiveWaiters", scope: !523, file: !1, line: 729, baseType: !549, size: 64, align: 64, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "PKEVENT", file: !1, line: 664, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "OwnerThreads", scope: !523, file: !1, line: 730, baseType: !552, size: 256, align: 64, offset: 384)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 256, align: 64, elements: !554)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "OWNER_ENTRY", file: !1, line: 717, baseType: !529)
!554 = !{!555}
!555 = !DISubrange(count: 2)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ContentionCount", scope: !523, file: !1, line: 731, baseType: !286, size: 64, align: 64, offset: 640)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfSharedWaiters", scope: !523, file: !1, line: 732, baseType: !273, size: 16, align: 16, offset: 704)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfExclusiveWaiters", scope: !523, file: !1, line: 733, baseType: !273, size: 16, align: 16, offset: 720)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField11", scope: !523, file: !1, line: 734, baseType: !560, size: 64, align: 64, offset: 768)
!560 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion____missing_field_name_39", file: !1, line: 719, size: 64, align: 64, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "Address", scope: !560, file: !1, line: 720, baseType: !289, size: 64, align: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "CreatorBackTraceIndex", scope: !560, file: !1, line: 721, baseType: !439, size: 64, align: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "SpinLock", scope: !523, file: !1, line: 735, baseType: !565, size: 64, align: 64, offset: 832)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "KSPIN_LOCK", file: !1, line: 201, baseType: !439)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "MdlRead", scope: !322, file: !1, line: 833, baseType: !567, size: 64, align: 64, offset: 1024)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64, align: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!329, !332, !427, !286, !286, !570, !429, !266}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64, align: 64)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "PMDL", file: !1, line: 167, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64, align: 64)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "_MDL", file: !1, line: 156, size: 448, align: 64, elements: !574)
!574 = !{!575, !576, !577, !578, !579, !580, !581, !582}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !573, file: !1, line: 157, baseType: !572, size: 64, align: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !573, file: !1, line: 158, baseType: !270, size: 16, align: 16, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "MdlFlags", scope: !573, file: !1, line: 159, baseType: !270, size: 16, align: 16, offset: 80)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "Process", scope: !573, file: !1, line: 160, baseType: !476, size: 64, align: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "MappedSystemVa", scope: !573, file: !1, line: 161, baseType: !289, size: 64, align: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "StartVa", scope: !573, file: !1, line: 162, baseType: !289, size: 64, align: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ByteCount", scope: !573, file: !1, line: 163, baseType: !286, size: 64, align: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ByteOffset", scope: !573, file: !1, line: 164, baseType: !286, size: 64, align: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "MdlReadComplete", scope: !322, file: !1, line: 836, baseType: !584, size: 64, align: 64, offset: 1088)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64, align: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!329, !332, !571, !266}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "PrepareMdlWrite", scope: !322, file: !1, line: 837, baseType: !567, size: 64, align: 64, offset: 1152)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "MdlWriteComplete", scope: !322, file: !1, line: 840, baseType: !589, size: 64, align: 64, offset: 1216)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64, align: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!329, !332, !427, !571, !266}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoReadCompressed", scope: !322, file: !1, line: 842, baseType: !593, size: 64, align: 64, offset: 1280)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64, align: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!329, !332, !427, !286, !286, !289, !570, !429, !596, !286, !266}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64, align: 64)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "_COMPRESSED_DATA_INFO", file: !1, line: 791, flags: DIFlagFwdDecl)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoWriteCompressed", scope: !322, file: !1, line: 846, baseType: !593, size: 64, align: 64, offset: 1344)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "MdlReadCompleteCompressed", scope: !322, file: !1, line: 850, baseType: !584, size: 64, align: 64, offset: 1408)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "MdlWriteCompleteCompressed", scope: !322, file: !1, line: 852, baseType: !589, size: 64, align: 64, offset: 1472)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "FastIoQueryOpen", scope: !322, file: !1, line: 854, baseType: !602, size: 64, align: 64, offset: 1536)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64, align: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!329, !605, !1239, !266}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64, align: 64)
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IRP", file: !1, line: 1047, size: 1728, align: 64, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !618, !619, !621, !625, !626, !628, !629, !630, !632, !633, !634, !635, !636, !648, !652, !653}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !606, file: !1, line: 1048, baseType: !270, size: 16, align: 16)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !606, file: !1, line: 1049, baseType: !273, size: 16, align: 16, offset: 16)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "MdlAddress", scope: !606, file: !1, line: 1050, baseType: !571, size: 64, align: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !606, file: !1, line: 1051, baseType: !286, size: 64, align: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "AssociatedIrp", scope: !606, file: !1, line: 1052, baseType: !613, size: 64, align: 64, offset: 192)
!613 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion_AssociatedIrp_44", file: !1, line: 1005, size: 64, align: 64, elements: !614)
!614 = !{!615, !616, !617}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "MasterIrp", scope: !613, file: !1, line: 1006, baseType: !605, size: 64, align: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "IrpCount", scope: !613, file: !1, line: 1007, baseType: !276, size: 64, align: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "SystemBuffer", scope: !613, file: !1, line: 1008, baseType: !289, size: 64, align: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "ThreadListEntry", scope: !606, file: !1, line: 1053, baseType: !413, size: 128, align: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "IoStatus", scope: !606, file: !1, line: 1054, baseType: !620, size: 128, align: 64, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "IO_STATUS_BLOCK", file: !1, line: 223, baseType: !431)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "RequestorMode", scope: !606, file: !1, line: 1055, baseType: !622, size: 8, align: 8, offset: 512)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "KPROCESSOR_MODE", file: !1, line: 118, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "CCHAR", file: !1, line: 33, baseType: !624)
!624 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "PendingReturned", scope: !606, file: !1, line: 1056, baseType: !329, size: 8, align: 8, offset: 520)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "StackCount", scope: !606, file: !1, line: 1057, baseType: !627, size: 8, align: 8, offset: 528)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR", file: !1, line: 17, baseType: !624)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "CurrentLocation", scope: !606, file: !1, line: 1058, baseType: !627, size: 8, align: 8, offset: 536)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "Cancel", scope: !606, file: !1, line: 1059, baseType: !329, size: 8, align: 8, offset: 544)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "CancelIrql", scope: !606, file: !1, line: 1060, baseType: !631, size: 8, align: 8, offset: 552)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "KIRQL", file: !1, line: 107, baseType: !330)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ApcEnvironment", scope: !606, file: !1, line: 1061, baseType: !623, size: 8, align: 8, offset: 560)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "AllocationFlags", scope: !606, file: !1, line: 1062, baseType: !330, size: 8, align: 8, offset: 568)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "UserIosb", scope: !606, file: !1, line: 1063, baseType: !429, size: 64, align: 64, offset: 576)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "UserEvent", scope: !606, file: !1, line: 1064, baseType: !549, size: 64, align: 64, offset: 640)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "Overlay", scope: !606, file: !1, line: 1065, baseType: !637, size: 128, align: 64, offset: 704)
!637 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion_Overlay_45", file: !1, line: 1015, size: 128, align: 64, elements: !638)
!638 = !{!639, !647}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "AsynchronousParameters", scope: !637, file: !1, line: 1016, baseType: !640, size: 128, align: 64)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_AsynchronousParameters_46", file: !1, line: 1010, size: 128, align: 64, elements: !641)
!641 = !{!642, !646}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "UserApcRoutine", scope: !640, file: !1, line: 1011, baseType: !643, size: 64, align: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64, align: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !289, !429, !286}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "UserApcContext", scope: !640, file: !1, line: 1013, baseType: !289, size: 64, align: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "AllocationSize", scope: !637, file: !1, line: 1017, baseType: !380, size: 128, align: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "CancelRoutine", scope: !606, file: !1, line: 1066, baseType: !649, size: 64, align: 64, offset: 832)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64, align: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !266, !605}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "UserBuffer", scope: !606, file: !1, line: 1067, baseType: !289, size: 64, align: 64, offset: 896)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "Tail", scope: !606, file: !1, line: 1068, baseType: !654, size: 768, align: 64, offset: 960)
!654 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion_Tail_47", file: !1, line: 1042, size: 768, align: 64, elements: !655)
!655 = !{!656, !1205, !1238}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "Overlay", scope: !654, file: !1, line: 1043, baseType: !657, size: 640, align: 64)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Overlay_48", file: !1, line: 1035, size: 640, align: 64, elements: !658)
!658 = !{!659, !676, !680, !683, !1204}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField15", scope: !657, file: !1, line: 1036, baseType: !660, size: 256, align: 64)
!660 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion____missing_field_name_49", file: !1, line: 1022, size: 256, align: 64, elements: !661)
!661 = !{!662, !669}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceQueueEntry", scope: !660, file: !1, line: 1023, baseType: !663, size: 256, align: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "KDEVICE_QUEUE_ENTRY", file: !1, line: 659, baseType: !664)
!664 = !DICompositeType(tag: DW_TAG_structure_type, name: "_KDEVICE_QUEUE_ENTRY", file: !1, line: 654, size: 256, align: 64, elements: !665)
!665 = !{!666, !667, !668}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceListEntry", scope: !664, file: !1, line: 655, baseType: !413, size: 128, align: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "SortKey", scope: !664, file: !1, line: 656, baseType: !286, size: 64, align: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "Inserted", scope: !664, file: !1, line: 657, baseType: !329, size: 8, align: 8, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField14", scope: !660, file: !1, line: 1024, baseType: !670, size: 256, align: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct____missing_field_name_50", file: !1, line: 1019, size: 256, align: 64, elements: !671)
!671 = !{!672}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "DriverContext", scope: !670, file: !1, line: 1020, baseType: !673, size: 256, align: 64)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 256, align: 64, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 4)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "Thread", scope: !657, file: !1, line: 1037, baseType: !677, size: 64, align: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "PETHREAD", file: !1, line: 111, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64, align: 64)
!679 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ETHREAD", file: !1, line: 110, flags: DIFlagFwdDecl)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "AuxiliaryBuffer", scope: !657, file: !1, line: 1038, baseType: !681, size: 64, align: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCHAR", file: !1, line: 24, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64, align: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField17", scope: !657, file: !1, line: 1039, baseType: !684, size: 192, align: 64, offset: 384)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct____missing_field_name_51", file: !1, line: 1031, size: 192, align: 64, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "ListEntry", scope: !684, file: !1, line: 1032, baseType: !413, size: 128, align: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField16", scope: !684, file: !1, line: 1033, baseType: !688, size: 64, align: 64, offset: 128)
!688 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion____missing_field_name_52", file: !1, line: 1027, size: 64, align: 64, elements: !689)
!689 = !{!690, !1203}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "CurrentStackLocation", scope: !688, file: !1, line: 1028, baseType: !691, size: 64, align: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64, align: 64)
!692 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_STACK_LOCATION", file: !1, line: 1305, size: 544, align: 32, elements: !693)
!693 = !{!694, !695, !696, !697, !698, !1195, !1196, !1197, !1202}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "MajorFunction", scope: !692, file: !1, line: 1306, baseType: !330, size: 8, align: 8)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "MinorFunction", scope: !692, file: !1, line: 1307, baseType: !330, size: 8, align: 8, offset: 8)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !692, file: !1, line: 1308, baseType: !330, size: 8, align: 8, offset: 16)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "Control", scope: !692, file: !1, line: 1309, baseType: !330, size: 8, align: 8, offset: 24)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "Parameters", scope: !692, file: !1, line: 1310, baseType: !699, size: 256, align: 32, offset: 32)
!699 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion_Parameters_55", file: !1, line: 1276, size: 256, align: 32, elements: !700)
!700 = !{!701, !789, !795, !801, !807, !825, !831, !838, !844, !849, !854, !859, !865, !870, !902, !943, !1043, !1050, !1054, !1059, !1066, !1074, !1078, !1089, !1103, !1181, !1188}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "Create", scope: !699, file: !1, line: 1277, baseType: !702, size: 224, align: 32)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Create_56", file: !1, line: 1146, size: 224, align: 32, elements: !703)
!703 = !{!704, !785, !786, !787, !788}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "SecurityContext", scope: !702, file: !1, line: 1147, baseType: !705, size: 64, align: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "PIO_SECURITY_CONTEXT", file: !1, line: 874, baseType: !706)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64, align: 64)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_SECURITY_CONTEXT", file: !1, line: 868, size: 256, align: 64, elements: !708)
!708 = !{!709, !720, !783, !784}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "SecurityQos", scope: !707, file: !1, line: 869, baseType: !710, size: 64, align: 64)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "PSECURITY_QUALITY_OF_SERVICE", file: !1, line: 198, baseType: !711)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64, align: 64)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SECURITY_QUALITY_OF_SERVICE", file: !1, line: 192, size: 128, align: 64, elements: !713)
!713 = !{!714, !715, !717, !719}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !712, file: !1, line: 193, baseType: !286, size: 64, align: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ImpersonationLevel", scope: !712, file: !1, line: 194, baseType: !716, size: 32, align: 32, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "SECURITY_IMPERSONATION_LEVEL", file: !1, line: 190, baseType: !3)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "ContextTrackingMode", scope: !712, file: !1, line: 195, baseType: !718, size: 8, align: 8, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "SECURITY_CONTEXT_TRACKING_MODE", file: !1, line: 191, baseType: !329)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "EffectiveOnly", scope: !712, file: !1, line: 196, baseType: !329, size: 8, align: 8, offset: 104)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "AccessState", scope: !707, file: !1, line: 870, baseType: !721, size: 64, align: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "PACCESS_STATE", file: !1, line: 780, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64, align: 64)
!723 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ACCESS_STATE", file: !1, line: 762, size: 1856, align: 64, elements: !724)
!724 = !{!725, !731, !732, !733, !734, !735, !736, !738, !739, !740, !749, !751, !752, !780, !781, !782}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "OperationID", scope: !723, file: !1, line: 763, baseType: !726, size: 128, align: 64)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "LUID", file: !1, line: 58, baseType: !727)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LUID", file: !1, line: 54, size: 128, align: 64, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "LowPart", scope: !727, file: !1, line: 55, baseType: !286, size: 64, align: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "HighPart", scope: !727, file: !1, line: 56, baseType: !276, size: 64, align: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "SecurityEvaluated", scope: !723, file: !1, line: 764, baseType: !329, size: 8, align: 8, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "GenerateAudit", scope: !723, file: !1, line: 765, baseType: !329, size: 8, align: 8, offset: 136)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "GenerateOnClose", scope: !723, file: !1, line: 766, baseType: !329, size: 8, align: 8, offset: 144)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "PrivilegesAllocated", scope: !723, file: !1, line: 767, baseType: !329, size: 8, align: 8, offset: 152)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !723, file: !1, line: 768, baseType: !286, size: 64, align: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "RemainingDesiredAccess", scope: !723, file: !1, line: 769, baseType: !737, size: 64, align: 64, offset: 256)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "ACCESS_MASK", file: !1, line: 170, baseType: !286)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "PreviouslyGrantedAccess", scope: !723, file: !1, line: 770, baseType: !737, size: 64, align: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "OriginalDesiredAccess", scope: !723, file: !1, line: 771, baseType: !737, size: 64, align: 64, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "SubjectSecurityContext", scope: !723, file: !1, line: 772, baseType: !741, size: 256, align: 64, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "SECURITY_SUBJECT_CONTEXT", file: !1, line: 751, baseType: !742)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SECURITY_SUBJECT_CONTEXT", file: !1, line: 745, size: 256, align: 64, elements: !743)
!743 = !{!744, !746, !747, !748}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "ClientToken", scope: !742, file: !1, line: 746, baseType: !745, size: 64, align: 64)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "PACCESS_TOKEN", file: !1, line: 168, baseType: !289)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ImpersonationLevel", scope: !742, file: !1, line: 747, baseType: !716, size: 32, align: 32, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "PrimaryToken", scope: !742, file: !1, line: 748, baseType: !745, size: 64, align: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessAuditId", scope: !742, file: !1, line: 749, baseType: !289, size: 64, align: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "SecurityDescriptor", scope: !723, file: !1, line: 773, baseType: !750, size: 64, align: 64, offset: 704)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "PSECURITY_DESCRIPTOR", file: !1, line: 169, baseType: !289)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "AuxData", scope: !723, file: !1, line: 774, baseType: !289, size: 64, align: 64, offset: 768)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "Privileges", scope: !723, file: !1, line: 775, baseType: !753, size: 704, align: 64, offset: 832)
!753 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion_Privileges_40", file: !1, line: 758, size: 704, align: 64, elements: !754)
!754 = !{!755, !770}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "InitialPrivilegeSet", scope: !753, file: !1, line: 759, baseType: !756, size: 704, align: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "INITIAL_PRIVILEGE_SET", file: !1, line: 757, baseType: !757)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "_INITIAL_PRIVILEGE_SET", file: !1, line: 752, size: 704, align: 64, elements: !758)
!758 = !{!759, !760, !761}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "PrivilegeCount", scope: !757, file: !1, line: 753, baseType: !286, size: 64, align: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "Control", scope: !757, file: !1, line: 754, baseType: !286, size: 64, align: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "Privilege", scope: !757, file: !1, line: 755, baseType: !762, size: 576, align: 32, offset: 128)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 576, align: 32, elements: !768)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "LUID_AND_ATTRIBUTES", file: !1, line: 176, baseType: !764)
!764 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LUID_AND_ATTRIBUTES", file: !1, line: 172, size: 192, align: 32, elements: !765)
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "Luid", scope: !764, file: !1, line: 173, baseType: !726, size: 128, align: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "Attributes", scope: !764, file: !1, line: 174, baseType: !286, size: 64, align: 64, offset: 128)
!768 = !{!769}
!769 = !DISubrange(count: 3)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "PrivilegeSet", scope: !753, file: !1, line: 760, baseType: !771, size: 320, align: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "PRIVILEGE_SET", file: !1, line: 183, baseType: !772)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PRIVILEGE_SET", file: !1, line: 178, size: 320, align: 64, elements: !773)
!773 = !{!774, !775, !776}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "PrivilegeCount", scope: !772, file: !1, line: 179, baseType: !286, size: 64, align: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "Control", scope: !772, file: !1, line: 180, baseType: !286, size: 64, align: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "Privilege", scope: !772, file: !1, line: 181, baseType: !777, size: 192, align: 32, offset: 128)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 192, align: 32, elements: !778)
!778 = !{!779}
!779 = !DISubrange(count: 1)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "AuditPrivileges", scope: !723, file: !1, line: 776, baseType: !329, size: 8, align: 8, offset: 1536)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "ObjectName", scope: !723, file: !1, line: 777, baseType: !305, size: 128, align: 64, offset: 1600)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "ObjectTypeName", scope: !723, file: !1, line: 778, baseType: !305, size: 128, align: 64, offset: 1728)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "DesiredAccess", scope: !707, file: !1, line: 871, baseType: !737, size: 64, align: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "FullCreateOptions", scope: !707, file: !1, line: 872, baseType: !286, size: 64, align: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "Options", scope: !702, file: !1, line: 1148, baseType: !286, size: 64, align: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "FileAttributes", scope: !702, file: !1, line: 1149, baseType: !273, size: 16, align: 16, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ShareAccess", scope: !702, file: !1, line: 1150, baseType: !273, size: 16, align: 16, offset: 144)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "EaLength", scope: !702, file: !1, line: 1151, baseType: !286, size: 64, align: 64, offset: 160)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "Read", scope: !699, file: !1, line: 1278, baseType: !790, size: 256, align: 32)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Read_57", file: !1, line: 1153, size: 256, align: 32, elements: !791)
!791 = !{!792, !793, !794}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !790, file: !1, line: 1154, baseType: !286, size: 64, align: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "Key", scope: !790, file: !1, line: 1155, baseType: !286, size: 64, align: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ByteOffset", scope: !790, file: !1, line: 1156, baseType: !380, size: 128, align: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "Write", scope: !699, file: !1, line: 1279, baseType: !796, size: 256, align: 32)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Write_58", file: !1, line: 1158, size: 256, align: 32, elements: !797)
!797 = !{!798, !799, !800}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !796, file: !1, line: 1159, baseType: !286, size: 64, align: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "Key", scope: !796, file: !1, line: 1160, baseType: !286, size: 64, align: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ByteOffset", scope: !796, file: !1, line: 1161, baseType: !380, size: 128, align: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "QueryFile", scope: !699, file: !1, line: 1280, baseType: !802, size: 96, align: 32)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_QueryFile_59", file: !1, line: 1163, size: 96, align: 32, elements: !803)
!803 = !{!804, !805}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !802, file: !1, line: 1164, baseType: !286, size: 64, align: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "FileInformationClass", scope: !802, file: !1, line: 1165, baseType: !806, size: 32, align: 32, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE_INFORMATION_CLASS", file: !1, line: 264, baseType: !9)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "SetFile", scope: !699, file: !1, line: 1281, baseType: !808, size: 224, align: 32)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_SetFile_60", file: !1, line: 1176, size: 224, align: 32, elements: !809)
!809 = !{!810, !811, !812, !814}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !808, file: !1, line: 1177, baseType: !286, size: 64, align: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "FileInformationClass", scope: !808, file: !1, line: 1178, baseType: !806, size: 32, align: 32, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "FileObject", scope: !808, file: !1, line: 1179, baseType: !813, size: 64, align: 64, offset: 96)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFILE_OBJECT", file: !1, line: 1004, baseType: !332)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField19", scope: !808, file: !1, line: 1180, baseType: !815, size: 64, align: 32, offset: 160)
!815 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion____missing_field_name_61", file: !1, line: 1171, size: 64, align: 32, elements: !816)
!816 = !{!817, !822, !823}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "__annonCompField18", scope: !815, file: !1, line: 1172, baseType: !818, size: 16, align: 8)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct____missing_field_name_62", file: !1, line: 1167, size: 16, align: 8, elements: !819)
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ReplaceIfExists", scope: !818, file: !1, line: 1168, baseType: !329, size: 8, align: 8)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "AdvanceOnly", scope: !818, file: !1, line: 1169, baseType: !329, size: 8, align: 8, offset: 8)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ClusterCount", scope: !815, file: !1, line: 1173, baseType: !286, size: 64, align: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "DeleteHandle", scope: !815, file: !1, line: 1174, baseType: !824, size: 64, align: 64)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "HANDLE", file: !1, line: 31, baseType: !260)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "QueryVolume", scope: !699, file: !1, line: 1282, baseType: !826, size: 96, align: 32)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_QueryVolume_63", file: !1, line: 1182, size: 96, align: 32, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !826, file: !1, line: 1183, baseType: !286, size: 64, align: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "FsInformationClass", scope: !826, file: !1, line: 1184, baseType: !830, size: 32, align: 32, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "FS_INFORMATION_CLASS", file: !1, line: 302, baseType: !48)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceIoControl", scope: !699, file: !1, line: 1283, baseType: !832, size: 256, align: 32)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_DeviceIoControl_64", file: !1, line: 1186, size: 256, align: 32, elements: !833)
!833 = !{!834, !835, !836, !837}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "OutputBufferLength", scope: !832, file: !1, line: 1187, baseType: !286, size: 64, align: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "InputBufferLength", scope: !832, file: !1, line: 1188, baseType: !286, size: 64, align: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "IoControlCode", scope: !832, file: !1, line: 1189, baseType: !286, size: 64, align: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "Type3InputBuffer", scope: !832, file: !1, line: 1190, baseType: !289, size: 64, align: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "QuerySecurity", scope: !699, file: !1, line: 1284, baseType: !839, size: 128, align: 32)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_QuerySecurity_65", file: !1, line: 1192, size: 128, align: 32, elements: !840)
!840 = !{!841, !843}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "SecurityInformation", scope: !839, file: !1, line: 1193, baseType: !842, size: 64, align: 64)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "SECURITY_INFORMATION", file: !1, line: 199, baseType: !286)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !839, file: !1, line: 1194, baseType: !286, size: 64, align: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "SetSecurity", scope: !699, file: !1, line: 1285, baseType: !845, size: 128, align: 32)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_SetSecurity_66", file: !1, line: 1196, size: 128, align: 32, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "SecurityInformation", scope: !845, file: !1, line: 1197, baseType: !842, size: 64, align: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "SecurityDescriptor", scope: !845, file: !1, line: 1198, baseType: !750, size: 64, align: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "MountVolume", scope: !699, file: !1, line: 1286, baseType: !850, size: 128, align: 32)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_MountVolume_67", file: !1, line: 1200, size: 128, align: 32, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "Vpb", scope: !850, file: !1, line: 1201, baseType: !339, size: 64, align: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceObject", scope: !850, file: !1, line: 1202, baseType: !265, size: 64, align: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "VerifyVolume", scope: !699, file: !1, line: 1287, baseType: !855, size: 128, align: 32)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_VerifyVolume_68", file: !1, line: 1204, size: 128, align: 32, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "Vpb", scope: !855, file: !1, line: 1205, baseType: !339, size: 64, align: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceObject", scope: !855, file: !1, line: 1206, baseType: !265, size: 64, align: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "Scsi", scope: !699, file: !1, line: 1288, baseType: !860, size: 64, align: 32)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Scsi_69", file: !1, line: 1208, size: 64, align: 32, elements: !861)
!861 = !{!862}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "Srb", scope: !860, file: !1, line: 1209, baseType: !863, size: 64, align: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64, align: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SCSI_REQUEST_BLOCK", file: !1, line: 788, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "QueryDeviceRelations", scope: !699, file: !1, line: 1289, baseType: !866, size: 32, align: 32)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_QueryDeviceRelations_70", file: !1, line: 1211, size: 32, align: 32, elements: !867)
!867 = !{!868}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !866, file: !1, line: 1212, baseType: !869, size: 32, align: 32)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "DEVICE_RELATION_TYPE", file: !1, line: 1079, baseType: !59)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "QueryInterface", scope: !699, file: !1, line: 1290, baseType: !871, size: 224, align: 32)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_QueryInterface_71", file: !1, line: 1214, size: 224, align: 32, elements: !872)
!872 = !{!873, !886, !887, !888, !901}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceType", scope: !871, file: !1, line: 1215, baseType: !874, size: 64, align: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64, align: 64)
!875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !876)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "GUID", file: !1, line: 104, baseType: !877)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GUID", file: !1, line: 98, size: 192, align: 64, elements: !878)
!878 = !{!879, !880, !881, !882}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "Data1", scope: !877, file: !1, line: 99, baseType: !287, size: 64, align: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "Data2", scope: !877, file: !1, line: 100, baseType: !274, size: 16, align: 16, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "Data3", scope: !877, file: !1, line: 101, baseType: !274, size: 16, align: 16, offset: 80)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "Data4", scope: !877, file: !1, line: 102, baseType: !883, size: 64, align: 8, offset: 96)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 64, align: 8, elements: !884)
!884 = !{!885}
!885 = !DISubrange(count: 8)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !871, file: !1, line: 1216, baseType: !273, size: 16, align: 16, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "Version", scope: !871, file: !1, line: 1217, baseType: !273, size: 16, align: 16, offset: 80)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "Interface", scope: !871, file: !1, line: 1218, baseType: !889, size: 64, align: 64, offset: 96)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "PINTERFACE", file: !1, line: 1094, baseType: !890)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64, align: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "_INTERFACE", file: !1, line: 1087, size: 256, align: 64, elements: !892)
!892 = !{!893, !894, !895, !896, !900}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !891, file: !1, line: 1088, baseType: !273, size: 16, align: 16)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "Version", scope: !891, file: !1, line: 1089, baseType: !273, size: 16, align: 16, offset: 16)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "Context", scope: !891, file: !1, line: 1090, baseType: !289, size: 64, align: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceReference", scope: !891, file: !1, line: 1091, baseType: !897, size: 64, align: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64, align: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{null, !289}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceDereference", scope: !891, file: !1, line: 1092, baseType: !897, size: 64, align: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceSpecificData", scope: !871, file: !1, line: 1219, baseType: !289, size: 64, align: 64, offset: 160)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceCapabilities", scope: !699, file: !1, line: 1291, baseType: !903, size: 64, align: 32)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_DeviceCapabilities_72", file: !1, line: 1221, size: 64, align: 32, elements: !904)
!904 = !{!905}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "Capabilities", scope: !903, file: !1, line: 1222, baseType: !906, size: 64, align: 64)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "PDEVICE_CAPABILITIES", file: !1, line: 1125, baseType: !907)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64, align: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DEVICE_CAPABILITIES", file: !1, line: 1095, size: 704, align: 64, elements: !909)
!909 = !{!910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !937, !939, !940, !941, !942}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !908, file: !1, line: 1096, baseType: !273, size: 16, align: 16)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "Version", scope: !908, file: !1, line: 1097, baseType: !273, size: 16, align: 16, offset: 16)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceD1", scope: !908, file: !1, line: 1098, baseType: !286, size: 1, align: 64, offset: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceD2", scope: !908, file: !1, line: 1099, baseType: !286, size: 1, align: 64, offset: 33)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "LockSupported", scope: !908, file: !1, line: 1100, baseType: !286, size: 1, align: 64, offset: 34)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "EjectSupported", scope: !908, file: !1, line: 1101, baseType: !286, size: 1, align: 64, offset: 35)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "Removable", scope: !908, file: !1, line: 1102, baseType: !286, size: 1, align: 64, offset: 36)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "DockDevice", scope: !908, file: !1, line: 1103, baseType: !286, size: 1, align: 64, offset: 37)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "UniqueID", scope: !908, file: !1, line: 1104, baseType: !286, size: 1, align: 64, offset: 38)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "SilentInstall", scope: !908, file: !1, line: 1105, baseType: !286, size: 1, align: 64, offset: 39)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "RawDeviceOK", scope: !908, file: !1, line: 1106, baseType: !286, size: 1, align: 64, offset: 40)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "SurpriseRemovalOK", scope: !908, file: !1, line: 1107, baseType: !286, size: 1, align: 64, offset: 41)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "WakeFromD0", scope: !908, file: !1, line: 1108, baseType: !286, size: 1, align: 64, offset: 42)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "WakeFromD1", scope: !908, file: !1, line: 1109, baseType: !286, size: 1, align: 64, offset: 43)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "WakeFromD2", scope: !908, file: !1, line: 1110, baseType: !286, size: 1, align: 64, offset: 44)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "WakeFromD3", scope: !908, file: !1, line: 1111, baseType: !286, size: 1, align: 64, offset: 45)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "HardwareDisabled", scope: !908, file: !1, line: 1112, baseType: !286, size: 1, align: 64, offset: 46)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "NonDynamic", scope: !908, file: !1, line: 1113, baseType: !286, size: 1, align: 64, offset: 47)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "WarmEjectSupported", scope: !908, file: !1, line: 1114, baseType: !286, size: 1, align: 64, offset: 48)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !908, file: !1, line: 1115, baseType: !286, size: 15, align: 64, offset: 49)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "Address", scope: !908, file: !1, line: 1116, baseType: !286, size: 64, align: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "UINumber", scope: !908, file: !1, line: 1117, baseType: !286, size: 64, align: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceState", scope: !908, file: !1, line: 1118, baseType: !933, size: 224, align: 32, offset: 192)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !934, size: 224, align: 32, elements: !935)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "DEVICE_POWER_STATE", file: !1, line: 387, baseType: !66)
!935 = !{!936}
!936 = !DISubrange(count: 7)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "SystemWake", scope: !908, file: !1, line: 1119, baseType: !938, size: 32, align: 32, offset: 416)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "SYSTEM_POWER_STATE", file: !1, line: 367, baseType: !74)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceWake", scope: !908, file: !1, line: 1120, baseType: !934, size: 32, align: 32, offset: 448)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "D1Latency", scope: !908, file: !1, line: 1121, baseType: !286, size: 64, align: 64, offset: 512)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "D2Latency", scope: !908, file: !1, line: 1122, baseType: !286, size: 64, align: 64, offset: 576)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "D3Latency", scope: !908, file: !1, line: 1123, baseType: !286, size: 64, align: 64, offset: 640)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "FilterResourceRequirements", scope: !699, file: !1, line: 1292, baseType: !944, size: 64, align: 32)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_FilterResourceRequirements_73", file: !1, line: 1224, size: 64, align: 32, elements: !945)
!945 = !{!946}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "IoResourceRequirementList", scope: !944, file: !1, line: 1225, baseType: !947, size: 64, align: 64)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "PIO_RESOURCE_REQUIREMENTS_LIST", file: !1, line: 560, baseType: !948)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64, align: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_RESOURCE_REQUIREMENTS_LIST", file: !1, line: 551, size: 1088, align: 64, elements: !950)
!950 = !{!951, !952, !954, !955, !956, !958, !959}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "ListSize", scope: !949, file: !1, line: 552, baseType: !286, size: 64, align: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceType", scope: !949, file: !1, line: 553, baseType: !953, size: 32, align: 32, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTERFACE_TYPE", file: !1, line: 323, baseType: !84)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "BusNumber", scope: !949, file: !1, line: 554, baseType: !286, size: 64, align: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "SlotNumber", scope: !949, file: !1, line: 555, baseType: !286, size: 64, align: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !949, file: !1, line: 556, baseType: !957, size: 192, align: 64, offset: 256)
!957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 192, align: 64, elements: !768)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "AlternativeLists", scope: !949, file: !1, line: 557, baseType: !286, size: 64, align: 64, offset: 448)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "List", scope: !949, file: !1, line: 558, baseType: !960, size: 576, align: 64, offset: 512)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !961, size: 576, align: 64, elements: !778)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "IO_RESOURCE_LIST", file: !1, line: 550, baseType: !962)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_RESOURCE_LIST", file: !1, line: 544, size: 576, align: 64, elements: !963)
!963 = !{!964, !965, !966, !967}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "Version", scope: !962, file: !1, line: 545, baseType: !273, size: 16, align: 16)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "Revision", scope: !962, file: !1, line: 546, baseType: !273, size: 16, align: 16, offset: 16)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "Count", scope: !962, file: !1, line: 547, baseType: !286, size: 64, align: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "Descriptors", scope: !962, file: !1, line: 548, baseType: !968, size: 448, align: 64, offset: 128)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !969, size: 448, align: 64, elements: !778)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "IO_RESOURCE_DESCRIPTOR", file: !1, line: 543, baseType: !970)
!970 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_RESOURCE_DESCRIPTOR", file: !1, line: 534, size: 448, align: 64, elements: !971)
!971 = !{!972, !973, !974, !975, !976, !977, !978}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "Option", scope: !970, file: !1, line: 535, baseType: !330, size: 8, align: 8)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !970, file: !1, line: 536, baseType: !330, size: 8, align: 8, offset: 8)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ShareDisposition", scope: !970, file: !1, line: 537, baseType: !330, size: 8, align: 8, offset: 16)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "Spare1", scope: !970, file: !1, line: 538, baseType: !330, size: 8, align: 8, offset: 24)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !970, file: !1, line: 539, baseType: !273, size: 16, align: 16, offset: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "Spare2", scope: !970, file: !1, line: 540, baseType: !273, size: 16, align: 16, offset: 48)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !970, file: !1, line: 541, baseType: !979, size: 384, align: 64, offset: 64)
!979 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion_u_24", file: !1, line: 522, size: 384, align: 64, elements: !980)
!980 = !{!981, !989, !996, !1001, !1006, !1013, !1017, !1024, !1029, !1037}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "Port", scope: !979, file: !1, line: 523, baseType: !982, size: 384, align: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Port_25", file: !1, line: 473, size: 384, align: 64, elements: !983)
!983 = !{!984, !985, !986, !988}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !982, file: !1, line: 474, baseType: !286, size: 64, align: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "Alignment", scope: !982, file: !1, line: 475, baseType: !286, size: 64, align: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "MinimumAddress", scope: !982, file: !1, line: 476, baseType: !987, size: 128, align: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "PHYSICAL_ADDRESS", file: !1, line: 59, baseType: !380)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "MaximumAddress", scope: !982, file: !1, line: 477, baseType: !987, size: 128, align: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "Memory", scope: !979, file: !1, line: 524, baseType: !990, size: 384, align: 64)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Memory_26", file: !1, line: 479, size: 384, align: 64, elements: !991)
!991 = !{!992, !993, !994, !995}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !990, file: !1, line: 480, baseType: !286, size: 64, align: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "Alignment", scope: !990, file: !1, line: 481, baseType: !286, size: 64, align: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "MinimumAddress", scope: !990, file: !1, line: 482, baseType: !987, size: 128, align: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "MaximumAddress", scope: !990, file: !1, line: 483, baseType: !987, size: 128, align: 64, offset: 256)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "Interrupt", scope: !979, file: !1, line: 525, baseType: !997, size: 128, align: 64)
!997 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Interrupt_27", file: !1, line: 485, size: 128, align: 64, elements: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "MinimumVector", scope: !997, file: !1, line: 486, baseType: !286, size: 64, align: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "MaximumVector", scope: !997, file: !1, line: 487, baseType: !286, size: 64, align: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "Dma", scope: !979, file: !1, line: 526, baseType: !1002, size: 128, align: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Dma_28", file: !1, line: 489, size: 128, align: 64, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "MinimumChannel", scope: !1002, file: !1, line: 490, baseType: !286, size: 64, align: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "MaximumChannel", scope: !1002, file: !1, line: 491, baseType: !286, size: 64, align: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "Generic", scope: !979, file: !1, line: 527, baseType: !1007, size: 384, align: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Generic_29", file: !1, line: 493, size: 384, align: 64, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1012}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !1007, file: !1, line: 494, baseType: !286, size: 64, align: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "Alignment", scope: !1007, file: !1, line: 495, baseType: !286, size: 64, align: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "MinimumAddress", scope: !1007, file: !1, line: 496, baseType: !987, size: 128, align: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "MaximumAddress", scope: !1007, file: !1, line: 497, baseType: !987, size: 128, align: 64, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "DevicePrivate", scope: !979, file: !1, line: 528, baseType: !1014, size: 192, align: 64)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_DevicePrivate_30", file: !1, line: 499, size: 192, align: 64, elements: !1015)
!1015 = !{!1016}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !1014, file: !1, line: 500, baseType: !957, size: 192, align: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "BusNumber", scope: !979, file: !1, line: 529, baseType: !1018, size: 256, align: 64)
!1018 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_BusNumber_31", file: !1, line: 502, size: 256, align: 64, elements: !1019)
!1019 = !{!1020, !1021, !1022, !1023}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !1018, file: !1, line: 503, baseType: !286, size: 64, align: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "MinBusNumber", scope: !1018, file: !1, line: 504, baseType: !286, size: 64, align: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "MaxBusNumber", scope: !1018, file: !1, line: 505, baseType: !286, size: 64, align: 64, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !1018, file: !1, line: 506, baseType: !286, size: 64, align: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "AssignedResource", scope: !979, file: !1, line: 530, baseType: !1025, size: 64, align: 64)
!1025 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_AssignedResource_32", file: !1, line: 508, size: 64, align: 64, elements: !1026)
!1026 = !{!1027}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "AssignedResource", scope: !1025, file: !1, line: 509, baseType: !1028, size: 64, align: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "PASSIGNED_RESOURCE", file: !1, line: 398, baseType: !289)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "SubAllocateFrom", scope: !979, file: !1, line: 531, baseType: !1030, size: 256, align: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_SubAllocateFrom_33", file: !1, line: 511, size: 256, align: 64, elements: !1031)
!1031 = !{!1032, !1033, !1035, !1036}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !1030, file: !1, line: 512, baseType: !330, size: 8, align: 8)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !1030, file: !1, line: 513, baseType: !1034, size: 24, align: 8, offset: 8)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 24, align: 8, elements: !768)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "AssignedResource", scope: !1030, file: !1, line: 514, baseType: !1028, size: 64, align: 64, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "Transformation", scope: !1030, file: !1, line: 515, baseType: !987, size: 128, align: 64, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ConfigData", scope: !979, file: !1, line: 532, baseType: !1038, size: 192, align: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_ConfigData_34", file: !1, line: 517, size: 192, align: 64, elements: !1039)
!1039 = !{!1040, !1041, !1042}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "Priority", scope: !1038, file: !1, line: 518, baseType: !286, size: 64, align: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved1", scope: !1038, file: !1, line: 519, baseType: !286, size: 64, align: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved2", scope: !1038, file: !1, line: 520, baseType: !286, size: 64, align: 64, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ReadWriteConfig", scope: !699, file: !1, line: 1293, baseType: !1044, size: 256, align: 32)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_ReadWriteConfig_74", file: !1, line: 1227, size: 256, align: 32, elements: !1045)
!1045 = !{!1046, !1047, !1048, !1049}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "WhichSpace", scope: !1044, file: !1, line: 1228, baseType: !286, size: 64, align: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "Buffer", scope: !1044, file: !1, line: 1229, baseType: !289, size: 64, align: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "Offset", scope: !1044, file: !1, line: 1230, baseType: !286, size: 64, align: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !1044, file: !1, line: 1231, baseType: !286, size: 64, align: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "SetLock", scope: !699, file: !1, line: 1294, baseType: !1051, size: 8, align: 8)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_SetLock_75", file: !1, line: 1233, size: 8, align: 8, elements: !1052)
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "Lock", scope: !1051, file: !1, line: 1234, baseType: !329, size: 8, align: 8)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "QueryId", scope: !699, file: !1, line: 1295, baseType: !1055, size: 32, align: 32)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_QueryId_76", file: !1, line: 1236, size: 32, align: 32, elements: !1056)
!1056 = !{!1057}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "IdType", scope: !1055, file: !1, line: 1237, baseType: !1058, size: 32, align: 32)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUS_QUERY_ID_TYPE", file: !1, line: 1139, baseType: !104)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "QueryDeviceText", scope: !699, file: !1, line: 1296, baseType: !1060, size: 96, align: 32)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_QueryDeviceText_77", file: !1, line: 1239, size: 96, align: 32, elements: !1061)
!1061 = !{!1062, !1064}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceTextType", scope: !1060, file: !1, line: 1240, baseType: !1063, size: 32, align: 32)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "DEVICE_TEXT_TYPE", file: !1, line: 1144, baseType: !111)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "LocaleId", scope: !1060, file: !1, line: 1241, baseType: !1065, size: 64, align: 64, offset: 32)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "LCID", file: !1, line: 36, baseType: !286)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "UsageNotification", scope: !699, file: !1, line: 1297, baseType: !1067, size: 64, align: 32)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_UsageNotification_78", file: !1, line: 1243, size: 64, align: 32, elements: !1068)
!1068 = !{!1069, !1070, !1072}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "InPath", scope: !1067, file: !1, line: 1244, baseType: !329, size: 8, align: 8)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !1067, file: !1, line: 1245, baseType: !1071, size: 24, align: 8, offset: 8)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 24, align: 8, elements: !768)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !1067, file: !1, line: 1246, baseType: !1073, size: 32, align: 32, offset: 32)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "DEVICE_USAGE_NOTIFICATION_TYPE", file: !1, line: 1086, baseType: !115)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "WaitWake", scope: !699, file: !1, line: 1298, baseType: !1075, size: 32, align: 32)
!1075 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_WaitWake_79", file: !1, line: 1248, size: 32, align: 32, elements: !1076)
!1076 = !{!1077}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "PowerState", scope: !1075, file: !1, line: 1249, baseType: !938, size: 32, align: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "PowerSequence", scope: !699, file: !1, line: 1299, baseType: !1079, size: 64, align: 32)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_PowerSequence_80", file: !1, line: 1251, size: 64, align: 32, elements: !1080)
!1080 = !{!1081}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "PowerSequence", scope: !1079, file: !1, line: 1252, baseType: !1082, size: 64, align: 64)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "PPOWER_SEQUENCE", file: !1, line: 1131, baseType: !1083)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64, align: 64)
!1084 = !DICompositeType(tag: DW_TAG_structure_type, name: "_POWER_SEQUENCE", file: !1, line: 1126, size: 192, align: 64, elements: !1085)
!1085 = !{!1086, !1087, !1088}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "SequenceD1", scope: !1084, file: !1, line: 1127, baseType: !286, size: 64, align: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "SequenceD2", scope: !1084, file: !1, line: 1128, baseType: !286, size: 64, align: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "SequenceD3", scope: !1084, file: !1, line: 1129, baseType: !286, size: 64, align: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "Power", scope: !699, file: !1, line: 1300, baseType: !1090, size: 160, align: 32)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Power_81", file: !1, line: 1254, size: 160, align: 32, elements: !1091)
!1091 = !{!1092, !1093, !1095, !1101}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "SystemContext", scope: !1090, file: !1, line: 1255, baseType: !286, size: 64, align: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !1090, file: !1, line: 1256, baseType: !1094, size: 32, align: 32, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "POWER_STATE_TYPE", file: !1, line: 397, baseType: !121)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "State", scope: !1090, file: !1, line: 1257, baseType: !1096, size: 32, align: 32, offset: 96)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "POWER_STATE", file: !1, line: 392, baseType: !1097)
!1097 = !DICompositeType(tag: DW_TAG_union_type, name: "_POWER_STATE", file: !1, line: 388, size: 32, align: 32, elements: !1098)
!1098 = !{!1099, !1100}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "SystemState", scope: !1097, file: !1, line: 389, baseType: !938, size: 32, align: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceState", scope: !1097, file: !1, line: 390, baseType: !934, size: 32, align: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ShutdownType", scope: !1090, file: !1, line: 1258, baseType: !1102, size: 32, align: 32, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "POWER_ACTION", file: !1, line: 378, baseType: !125)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "StartDevice", scope: !699, file: !1, line: 1301, baseType: !1104, size: 128, align: 32)
!1104 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_StartDevice_82", file: !1, line: 1260, size: 128, align: 32, elements: !1105)
!1105 = !{!1106, !1180}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "AllocatedResources", scope: !1104, file: !1, line: 1261, baseType: !1107, size: 64, align: 64)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCM_RESOURCE_LIST", file: !1, line: 470, baseType: !1108)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64, align: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CM_RESOURCE_LIST", file: !1, line: 466, size: 576, align: 64, elements: !1110)
!1110 = !{!1111, !1112}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "Count", scope: !1109, file: !1, line: 467, baseType: !286, size: 64, align: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "List", scope: !1109, file: !1, line: 468, baseType: !1113, size: 512, align: 64, offset: 64)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1114, size: 512, align: 64, elements: !778)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "CM_FULL_RESOURCE_DESCRIPTOR", file: !1, line: 465, baseType: !1115)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CM_FULL_RESOURCE_DESCRIPTOR", file: !1, line: 460, size: 512, align: 64, elements: !1116)
!1116 = !{!1117, !1118, !1119}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceType", scope: !1115, file: !1, line: 461, baseType: !953, size: 32, align: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "BusNumber", scope: !1115, file: !1, line: 462, baseType: !286, size: 64, align: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "PartialResourceList", scope: !1115, file: !1, line: 463, baseType: !1120, size: 384, align: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "CM_PARTIAL_RESOURCE_LIST", file: !1, line: 459, baseType: !1121)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CM_PARTIAL_RESOURCE_LIST", file: !1, line: 453, size: 384, align: 64, elements: !1122)
!1122 = !{!1123, !1124, !1125, !1126}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "Version", scope: !1121, file: !1, line: 454, baseType: !273, size: 16, align: 16)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "Revision", scope: !1121, file: !1, line: 455, baseType: !273, size: 16, align: 16, offset: 16)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "Count", scope: !1121, file: !1, line: 456, baseType: !286, size: 64, align: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "PartialDescriptors", scope: !1121, file: !1, line: 457, baseType: !1127, size: 224, align: 32, offset: 128)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1128, size: 224, align: 32, elements: !778)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "CM_PARTIAL_RESOURCE_DESCRIPTOR", file: !1, line: 451, baseType: !1129)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CM_PARTIAL_RESOURCE_DESCRIPTOR", file: !1, line: 445, size: 224, align: 32, elements: !1130)
!1130 = !{!1131, !1132, !1133, !1134}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !1129, file: !1, line: 446, baseType: !330, size: 8, align: 8)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ShareDisposition", scope: !1129, file: !1, line: 447, baseType: !330, size: 8, align: 8, offset: 8)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !1129, file: !1, line: 448, baseType: !273, size: 16, align: 16, offset: 16)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1129, file: !1, line: 449, baseType: !1135, size: 192, align: 32, offset: 32)
!1135 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion_u_15", file: !1, line: 435, size: 192, align: 32, elements: !1136)
!1136 = !{!1137, !1142, !1147, !1153, !1158, !1164, !1168, !1174}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "Generic", scope: !1135, file: !1, line: 436, baseType: !1138, size: 192, align: 32)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Generic_16", file: !1, line: 400, size: 192, align: 32, elements: !1139)
!1139 = !{!1140, !1141}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "Start", scope: !1138, file: !1, line: 401, baseType: !987, size: 128, align: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !1138, file: !1, line: 402, baseType: !286, size: 64, align: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "Port", scope: !1135, file: !1, line: 437, baseType: !1143, size: 192, align: 32)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Port_17", file: !1, line: 404, size: 192, align: 32, elements: !1144)
!1144 = !{!1145, !1146}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "Start", scope: !1143, file: !1, line: 405, baseType: !987, size: 128, align: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !1143, file: !1, line: 406, baseType: !286, size: 64, align: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "Interrupt", scope: !1135, file: !1, line: 438, baseType: !1148, size: 192, align: 32)
!1148 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Interrupt_18", file: !1, line: 408, size: 192, align: 32, elements: !1149)
!1149 = !{!1150, !1151, !1152}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "Level", scope: !1148, file: !1, line: 409, baseType: !286, size: 64, align: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "Vector", scope: !1148, file: !1, line: 410, baseType: !286, size: 64, align: 64, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "Affinity", scope: !1148, file: !1, line: 411, baseType: !286, size: 64, align: 64, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "Memory", scope: !1135, file: !1, line: 439, baseType: !1154, size: 192, align: 32)
!1154 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Memory_19", file: !1, line: 413, size: 192, align: 32, elements: !1155)
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "Start", scope: !1154, file: !1, line: 414, baseType: !987, size: 128, align: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !1154, file: !1, line: 415, baseType: !286, size: 64, align: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "Dma", scope: !1135, file: !1, line: 440, baseType: !1159, size: 192, align: 32)
!1159 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Dma_20", file: !1, line: 417, size: 192, align: 32, elements: !1160)
!1160 = !{!1161, !1162, !1163}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "Channel", scope: !1159, file: !1, line: 418, baseType: !286, size: 64, align: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "Port", scope: !1159, file: !1, line: 419, baseType: !286, size: 64, align: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved1", scope: !1159, file: !1, line: 420, baseType: !286, size: 64, align: 64, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "DevicePrivate", scope: !1135, file: !1, line: 441, baseType: !1165, size: 192, align: 32)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_DevicePrivate_21", file: !1, line: 422, size: 192, align: 32, elements: !1166)
!1166 = !{!1167}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !1165, file: !1, line: 423, baseType: !957, size: 192, align: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "BusNumber", scope: !1135, file: !1, line: 442, baseType: !1169, size: 192, align: 32)
!1169 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_BusNumber_22", file: !1, line: 425, size: 192, align: 32, elements: !1170)
!1170 = !{!1171, !1172, !1173}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "Start", scope: !1169, file: !1, line: 426, baseType: !286, size: 64, align: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !1169, file: !1, line: 427, baseType: !286, size: 64, align: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !1169, file: !1, line: 428, baseType: !286, size: 64, align: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceSpecificData", scope: !1135, file: !1, line: 443, baseType: !1175, size: 192, align: 32)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_DeviceSpecificData_23", file: !1, line: 430, size: 192, align: 32, elements: !1176)
!1176 = !{!1177, !1178, !1179}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "DataSize", scope: !1175, file: !1, line: 431, baseType: !286, size: 64, align: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved1", scope: !1175, file: !1, line: 432, baseType: !286, size: 64, align: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved2", scope: !1175, file: !1, line: 433, baseType: !286, size: 64, align: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "AllocatedResourcesTranslated", scope: !1104, file: !1, line: 1262, baseType: !1107, size: 64, align: 64, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "WMI", scope: !699, file: !1, line: 1302, baseType: !1182, size: 256, align: 32)
!1182 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_WMI_83", file: !1, line: 1264, size: 256, align: 32, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1187}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ProviderId", scope: !1182, file: !1, line: 1265, baseType: !439, size: 64, align: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "DataPath", scope: !1182, file: !1, line: 1266, baseType: !289, size: 64, align: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "BufferSize", scope: !1182, file: !1, line: 1267, baseType: !286, size: 64, align: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "Buffer", scope: !1182, file: !1, line: 1268, baseType: !289, size: 64, align: 64, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "Others", scope: !699, file: !1, line: 1303, baseType: !1189, size: 256, align: 32)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_Others_84", file: !1, line: 1270, size: 256, align: 32, elements: !1190)
!1190 = !{!1191, !1192, !1193, !1194}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "Argument1", scope: !1189, file: !1, line: 1271, baseType: !289, size: 64, align: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "Argument2", scope: !1189, file: !1, line: 1272, baseType: !289, size: 64, align: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "Argument3", scope: !1189, file: !1, line: 1273, baseType: !289, size: 64, align: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "Argument4", scope: !1189, file: !1, line: 1274, baseType: !289, size: 64, align: 64, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceObject", scope: !692, file: !1, line: 1311, baseType: !265, size: 64, align: 64, offset: 288)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "FileObject", scope: !692, file: !1, line: 1312, baseType: !813, size: 64, align: 64, offset: 352)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "CompletionRoutine", scope: !692, file: !1, line: 1313, baseType: !1198, size: 64, align: 64, offset: 416)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64, align: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!302, !265, !1201, !289}
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "PIRP", file: !1, line: 1071, baseType: !605)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "Context", scope: !692, file: !1, line: 1314, baseType: !289, size: 64, align: 64, offset: 480)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "PacketType", scope: !688, file: !1, line: 1029, baseType: !286, size: 64, align: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "OriginalFileObject", scope: !657, file: !1, line: 1040, baseType: !813, size: 64, align: 64, offset: 576)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "Apc", scope: !654, file: !1, line: 1044, baseType: !1206, size: 768, align: 64)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "KAPC", file: !1, line: 139, baseType: !1207)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "_KAPC", file: !1, line: 122, size: 768, align: 64, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212, !1215, !1216, !1227, !1231, !1232, !1233, !1234, !1235, !1236, !1237}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !1207, file: !1, line: 123, baseType: !270, size: 16, align: 16)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !1207, file: !1, line: 124, baseType: !270, size: 16, align: 16, offset: 16)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "Spare0", scope: !1207, file: !1, line: 125, baseType: !286, size: 64, align: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "Thread", scope: !1207, file: !1, line: 126, baseType: !1213, size: 64, align: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64, align: 64)
!1214 = !DICompositeType(tag: DW_TAG_structure_type, name: "_KTHREAD", file: !1, line: 108, flags: DIFlagFwdDecl)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "ApcListEntry", scope: !1207, file: !1, line: 127, baseType: !413, size: 128, align: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "KernelRoutine", scope: !1207, file: !1, line: 128, baseType: !1217, size: 64, align: 64, offset: 320)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64, align: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !1220, !1221, !1226, !1226, !1226}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64, align: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64, align: 64)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "PKNORMAL_ROUTINE", file: !1, line: 121, baseType: !1223)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64, align: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !289, !289, !289}
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "RundownRoutine", scope: !1207, file: !1, line: 130, baseType: !1228, size: 64, align: 64, offset: 384)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64, align: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !1220}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "NormalRoutine", scope: !1207, file: !1, line: 131, baseType: !1223, size: 64, align: 64, offset: 448)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "NormalContext", scope: !1207, file: !1, line: 132, baseType: !289, size: 64, align: 64, offset: 512)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "SystemArgument1", scope: !1207, file: !1, line: 133, baseType: !289, size: 64, align: 64, offset: 576)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "SystemArgument2", scope: !1207, file: !1, line: 134, baseType: !289, size: 64, align: 64, offset: 640)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ApcStateIndex", scope: !1207, file: !1, line: 135, baseType: !623, size: 8, align: 8, offset: 704)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ApcMode", scope: !1207, file: !1, line: 136, baseType: !622, size: 8, align: 8, offset: 712)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "Inserted", scope: !1207, file: !1, line: 137, baseType: !329, size: 8, align: 8, offset: 720)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "CompletionKey", scope: !654, file: !1, line: 1045, baseType: !289, size: 64, align: 64)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFILE_NETWORK_OPEN_INFORMATION", file: !1, line: 290, baseType: !507)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ReleaseForModWrite", scope: !322, file: !1, line: 856, baseType: !1241, size: 64, align: 64, offset: 1600)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64, align: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!302, !332, !522, !266}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "AcquireForCcFlush", scope: !322, file: !1, line: 858, baseType: !1245, size: 64, align: 64, offset: 1664)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64, align: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!302, !332, !266}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ReleaseForCcFlush", scope: !322, file: !1, line: 859, baseType: !1245, size: 64, align: 64, offset: 1728)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "DriverInit", scope: !280, file: !1, line: 956, baseType: !1250, size: 64, align: 64, offset: 704)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64, align: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!302, !279, !317}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "DriverStartIo", scope: !280, file: !1, line: 957, baseType: !649, size: 64, align: 64, offset: 768)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "DriverUnload", scope: !280, file: !1, line: 958, baseType: !1255, size: 64, align: 64, offset: 832)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64, align: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !279}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "MajorFunction", scope: !280, file: !1, line: 959, baseType: !1259, size: 1792, align: 64, offset: 896)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1260, size: 1792, align: 64, elements: !1264)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "PDRIVER_DISPATCH", file: !1, line: 790, baseType: !1261)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64, align: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!302, !266, !605}
!1264 = !{!1265}
!1265 = !DISubrange(count: 28)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "NextDevice", scope: !267, file: !1, line: 908, baseType: !266, size: 64, align: 64, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "AttachedDevice", scope: !267, file: !1, line: 909, baseType: !266, size: 64, align: 64, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "CurrentIrp", scope: !267, file: !1, line: 910, baseType: !605, size: 64, align: 64, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "Timer", scope: !267, file: !1, line: 911, baseType: !1270, size: 64, align: 64, offset: 384)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "PIO_TIMER", file: !1, line: 115, baseType: !1271)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64, align: 64)
!1272 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_TIMER", file: !1, line: 114, flags: DIFlagFwdDecl)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !267, file: !1, line: 912, baseType: !286, size: 64, align: 64, offset: 448)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "Characteristics", scope: !267, file: !1, line: 913, baseType: !286, size: 64, align: 64, offset: 512)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "Vpb", scope: !267, file: !1, line: 914, baseType: !339, size: 64, align: 64, offset: 576)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceExtension", scope: !267, file: !1, line: 915, baseType: !289, size: 64, align: 64, offset: 640)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceType", scope: !267, file: !1, line: 916, baseType: !286, size: 64, align: 64, offset: 704)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "StackSize", scope: !267, file: !1, line: 917, baseType: !623, size: 8, align: 8, offset: 768)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "Queue", scope: !267, file: !1, line: 918, baseType: !1280, size: 640, align: 64, offset: 832)
!1280 = !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion_Queue_43", file: !1, line: 898, size: 640, align: 64, elements: !1281)
!1281 = !{!1282, !1283}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ListEntry", scope: !1280, file: !1, line: 899, baseType: !413, size: 128, align: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "Wcb", scope: !1280, file: !1, line: 900, baseType: !1284, size: 640, align: 64)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "WAIT_CONTEXT_BLOCK", file: !1, line: 897, baseType: !1285)
!1285 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WAIT_CONTEXT_BLOCK", file: !1, line: 887, size: 640, align: 64, elements: !1286)
!1286 = !{!1287, !1288, !1293, !1294, !1295, !1296, !1297}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "WaitQueueEntry", scope: !1285, file: !1, line: 888, baseType: !663, size: 256, align: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceRoutine", scope: !1285, file: !1, line: 889, baseType: !1289, size: 64, align: 64, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64, align: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!1292, !266, !605, !289, !289}
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "IO_ALLOCATION_ACTION", file: !1, line: 867, baseType: !135)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceContext", scope: !1285, file: !1, line: 891, baseType: !289, size: 64, align: 64, offset: 320)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfMapRegisters", scope: !1285, file: !1, line: 892, baseType: !286, size: 64, align: 64, offset: 384)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceObject", scope: !1285, file: !1, line: 893, baseType: !289, size: 64, align: 64, offset: 448)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "CurrentIrp", scope: !1285, file: !1, line: 894, baseType: !289, size: 64, align: 64, offset: 512)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "BufferChainingDpc", scope: !1285, file: !1, line: 895, baseType: !1298, size: 64, align: 64, offset: 576)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "PKDPC", file: !1, line: 155, baseType: !1299)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64, align: 64)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "_KDPC", file: !1, line: 142, size: 512, align: 64, elements: !1301)
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1310, !1311, !1312, !1313}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !1300, file: !1, line: 143, baseType: !270, size: 16, align: 16)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "Number", scope: !1300, file: !1, line: 144, baseType: !330, size: 8, align: 8, offset: 16)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "Importance", scope: !1300, file: !1, line: 145, baseType: !330, size: 8, align: 8, offset: 24)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "DpcListEntry", scope: !1300, file: !1, line: 146, baseType: !413, size: 128, align: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "DeferredRoutine", scope: !1300, file: !1, line: 147, baseType: !1307, size: 64, align: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64, align: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{null, !1299, !289, !289, !289}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "DeferredContext", scope: !1300, file: !1, line: 149, baseType: !289, size: 64, align: 64, offset: 256)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "SystemArgument1", scope: !1300, file: !1, line: 150, baseType: !289, size: 64, align: 64, offset: 320)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "SystemArgument2", scope: !1300, file: !1, line: 151, baseType: !289, size: 64, align: 64, offset: 384)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "Lock", scope: !1300, file: !1, line: 152, baseType: !1314, size: 64, align: 64, offset: 448)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "PULONG_PTR", file: !1, line: 14, baseType: !1315)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "AlignmentRequirement", scope: !267, file: !1, line: 919, baseType: !286, size: 64, align: 64, offset: 1472)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceQueue", scope: !267, file: !1, line: 920, baseType: !1318, size: 320, align: 64, offset: 1536)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "KDEVICE_QUEUE", file: !1, line: 653, baseType: !1319)
!1319 = !DICompositeType(tag: DW_TAG_structure_type, name: "_KDEVICE_QUEUE", file: !1, line: 646, size: 320, align: 64, elements: !1320)
!1320 = !{!1321, !1322, !1323, !1324, !1325}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !1319, file: !1, line: 647, baseType: !270, size: 16, align: 16)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !1319, file: !1, line: 648, baseType: !270, size: 16, align: 16, offset: 16)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceListHead", scope: !1319, file: !1, line: 649, baseType: !413, size: 128, align: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "Lock", scope: !1319, file: !1, line: 650, baseType: !565, size: 64, align: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "Busy", scope: !1319, file: !1, line: 651, baseType: !329, size: 8, align: 8, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "Dpc", scope: !267, file: !1, line: 921, baseType: !1327, size: 512, align: 64, offset: 1856)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "KDPC", file: !1, line: 154, baseType: !1300)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ActiveThreadCount", scope: !267, file: !1, line: 922, baseType: !286, size: 64, align: 64, offset: 2368)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "SecurityDescriptor", scope: !267, file: !1, line: 923, baseType: !750, size: 64, align: 64, offset: 2432)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceLock", scope: !267, file: !1, line: 924, baseType: !400, size: 256, align: 64, offset: 2496)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "SectorSize", scope: !267, file: !1, line: 925, baseType: !273, size: 16, align: 16, offset: 2752)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "Spare1", scope: !267, file: !1, line: 926, baseType: !273, size: 16, align: 16, offset: 2768)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceObjectExtension", scope: !267, file: !1, line: 927, baseType: !1334, size: 64, align: 64, offset: 2816)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64, align: 64)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DEVOBJ_EXTENSION", file: !1, line: 932, size: 128, align: 64, elements: !1336)
!1336 = !{!1337, !1338, !1339}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !1335, file: !1, line: 933, baseType: !270, size: 16, align: 16)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "Size", scope: !1335, file: !1, line: 934, baseType: !273, size: 16, align: 16, offset: 16)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceObject", scope: !1335, file: !1, line: 935, baseType: !265, size: 64, align: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !267, file: !1, line: 928, baseType: !289, size: 64, align: 64, offset: 2880)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "TargetDeviceObject", scope: !262, file: !1, line: 1446, baseType: !265, size: 64, align: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "PhysicalDeviceObject", scope: !262, file: !1, line: 1447, baseType: !265, size: 64, align: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "DiskNumber", scope: !262, file: !1, line: 1448, baseType: !286, size: 64, align: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "StorageManagerName", scope: !262, file: !1, line: 1449, baseType: !1345, size: 128, align: 16, offset: 256)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 128, align: 16, elements: !884)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "Processors", scope: !262, file: !1, line: 1450, baseType: !286, size: 64, align: 64, offset: 384)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "DiskCounters", scope: !262, file: !1, line: 1451, baseType: !1348, size: 64, align: 64, offset: 448)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "PDISK_PERFORMANCE", file: !1, line: 1360, baseType: !1349)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64, align: 64)
!1350 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DISK_PERFORMANCE", file: !1, line: 1345, size: 1216, align: 64, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "BytesRead", scope: !1350, file: !1, line: 1346, baseType: !380, size: 128, align: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "BytesWritten", scope: !1350, file: !1, line: 1347, baseType: !380, size: 128, align: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ReadTime", scope: !1350, file: !1, line: 1348, baseType: !380, size: 128, align: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "WriteTime", scope: !1350, file: !1, line: 1349, baseType: !380, size: 128, align: 64, offset: 384)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "IdleTime", scope: !1350, file: !1, line: 1350, baseType: !380, size: 128, align: 64, offset: 512)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ReadCount", scope: !1350, file: !1, line: 1351, baseType: !286, size: 64, align: 64, offset: 640)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "WriteCount", scope: !1350, file: !1, line: 1352, baseType: !286, size: 64, align: 64, offset: 704)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "QueueDepth", scope: !1350, file: !1, line: 1353, baseType: !286, size: 64, align: 64, offset: 768)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "SplitCount", scope: !1350, file: !1, line: 1354, baseType: !286, size: 64, align: 64, offset: 832)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "QueryTime", scope: !1350, file: !1, line: 1355, baseType: !380, size: 128, align: 64, offset: 896)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "StorageDeviceNumber", scope: !1350, file: !1, line: 1356, baseType: !286, size: 64, align: 64, offset: 1024)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "StorageManagerName", scope: !1350, file: !1, line: 1357, baseType: !1345, size: 128, align: 16, offset: 1088)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "LastIdleClock", scope: !262, file: !1, line: 1452, baseType: !380, size: 128, align: 64, offset: 512)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "QueueDepth", scope: !262, file: !1, line: 1453, baseType: !276, size: 64, align: 64, offset: 640)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "CountersEnabled", scope: !262, file: !1, line: 1454, baseType: !276, size: 64, align: 64, offset: 704)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "PagingPathCountEvent", scope: !262, file: !1, line: 1455, baseType: !400, size: 256, align: 64, offset: 768)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "PagingPathCount", scope: !262, file: !1, line: 1456, baseType: !286, size: 64, align: 64, offset: 1024)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "PhysicalDeviceName", scope: !262, file: !1, line: 1457, baseType: !305, size: 128, align: 64, offset: 1088)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "PhysicalDeviceNameBuffer", scope: !262, file: !1, line: 1458, baseType: !1371, size: 1024, align: 16, offset: 1216)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 1024, align: 16, elements: !1372)
!1372 = !{!1373}
!1373 = !DISubrange(count: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "WmilibContext", scope: !262, file: !1, line: 1459, baseType: !1375, size: 512, align: 64, offset: 2240)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "WMILIB_CONTEXT", file: !1, line: 1434, baseType: !1376)
!1376 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WMILIB_CONTEXT", file: !1, line: 1414, size: 512, align: 64, elements: !1377)
!1377 = !{!1378, !1379, !1388, !1396, !1402, !1406, !1410, !1414}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "GuidCount", scope: !1376, file: !1, line: 1415, baseType: !286, size: 64, align: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "GuidList", scope: !1376, file: !1, line: 1416, baseType: !1380, size: 64, align: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "PWMIGUIDREGINFO", file: !1, line: 1408, baseType: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64, align: 64)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_WMIGUIDREGINFO_130", file: !1, line: 1402, size: 192, align: 64, elements: !1383)
!1383 = !{!1384, !1386, !1387}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "Guid", scope: !1382, file: !1, line: 1403, baseType: !1385, size: 64, align: 64)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "LPCGUID", file: !1, line: 105, baseType: !874)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "InstanceCount", scope: !1382, file: !1, line: 1404, baseType: !286, size: 64, align: 64, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !1382, file: !1, line: 1405, baseType: !286, size: 64, align: 64, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "QueryWmiRegInfo", scope: !1376, file: !1, line: 1417, baseType: !1389, size: 64, align: 64, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64, align: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!302, !265, !1392, !317, !1394, !317, !1395}
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "PULONG", file: !1, line: 30, baseType: !1393)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "QueryWmiDataBlock", scope: !1376, file: !1, line: 1420, baseType: !1397, size: 64, align: 64, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64, align: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!302, !265, !1201, !286, !286, !286, !1392, !286, !1400}
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "PUCHAR", file: !1, line: 29, baseType: !1401)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "SetWmiDataBlock", scope: !1376, file: !1, line: 1423, baseType: !1403, size: 64, align: 64, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64, align: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!302, !265, !1201, !286, !286, !286, !1400}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "SetWmiDataItem", scope: !1376, file: !1, line: 1425, baseType: !1407, size: 64, align: 64, offset: 320)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64, align: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!302, !265, !1201, !286, !286, !286, !286, !1400}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ExecuteWmiMethod", scope: !1376, file: !1, line: 1428, baseType: !1411, size: 64, align: 64, offset: 384)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64, align: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!302, !265, !1201, !286, !286, !286, !286, !286, !1400}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "WmiFunctionControl", scope: !1376, file: !1, line: 1431, baseType: !1415, size: 64, align: 64, offset: 448)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64, align: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!302, !265, !1201, !286, !1418, !329}
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "WMIENABLEDISABLECONTROL", file: !1, line: 1413, baseType: !140)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64, align: 64)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "DISK_PERFORMANCE", file: !1, line: 1359, baseType: !1350)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!1422 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64, align: 64)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "IO_STACK_LOCATION", file: !1, line: 1316, baseType: !692)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64, align: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_ERROR_LOG_PACKET", file: !1, line: 325, size: 640, align: 64, elements: !1427)
!1427 = !{!1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "MajorFunctionCode", scope: !1426, file: !1, line: 326, baseType: !330, size: 8, align: 8)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "RetryCount", scope: !1426, file: !1, line: 327, baseType: !330, size: 8, align: 8, offset: 8)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "DumpDataSize", scope: !1426, file: !1, line: 328, baseType: !273, size: 16, align: 16, offset: 16)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "NumberOfStrings", scope: !1426, file: !1, line: 329, baseType: !273, size: 16, align: 16, offset: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "StringOffset", scope: !1426, file: !1, line: 330, baseType: !273, size: 16, align: 16, offset: 48)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "EventCategory", scope: !1426, file: !1, line: 331, baseType: !273, size: 16, align: 16, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ErrorCode", scope: !1426, file: !1, line: 332, baseType: !302, size: 64, align: 64, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "UniqueErrorValue", scope: !1426, file: !1, line: 333, baseType: !286, size: 64, align: 64, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "FinalStatus", scope: !1426, file: !1, line: 334, baseType: !302, size: 64, align: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "SequenceNumber", scope: !1426, file: !1, line: 335, baseType: !286, size: 64, align: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "IoControlCode", scope: !1426, file: !1, line: 336, baseType: !286, size: 64, align: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceOffset", scope: !1426, file: !1, line: 337, baseType: !380, size: 128, align: 64, offset: 448)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "DumpData", scope: !1426, file: !1, line: 338, baseType: !1441, size: 64, align: 64, offset: 576)
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 64, align: 64, elements: !778)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64, align: 64)
!1443 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WMI_DISK_PERFORMANCE", file: !1, line: 1386, size: 832, align: 64, elements: !1444)
!1444 = !{!1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "BytesRead", scope: !1443, file: !1, line: 1387, baseType: !394, size: 64, align: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "BytesWritten", scope: !1443, file: !1, line: 1388, baseType: !394, size: 64, align: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "ReadTime", scope: !1443, file: !1, line: 1389, baseType: !394, size: 64, align: 64, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "WriteTime", scope: !1443, file: !1, line: 1390, baseType: !394, size: 64, align: 64, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "IdleTime", scope: !1443, file: !1, line: 1391, baseType: !394, size: 64, align: 64, offset: 256)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "ReadCount", scope: !1443, file: !1, line: 1392, baseType: !286, size: 64, align: 64, offset: 320)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "WriteCount", scope: !1443, file: !1, line: 1393, baseType: !286, size: 64, align: 64, offset: 384)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "QueueDepth", scope: !1443, file: !1, line: 1394, baseType: !286, size: 64, align: 64, offset: 448)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "SplitCount", scope: !1443, file: !1, line: 1395, baseType: !286, size: 64, align: 64, offset: 512)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "QueryTime", scope: !1443, file: !1, line: 1396, baseType: !394, size: 64, align: 64, offset: 576)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "StorageDeviceNumber", scope: !1443, file: !1, line: 1397, baseType: !286, size: 64, align: 64, offset: 640)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "StorageManagerName", scope: !1443, file: !1, line: 1398, baseType: !1457, size: 128, align: 16, offset: 704)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 128, align: 16, elements: !884)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64, align: 64)
!1459 = !{!1460, !1464, !1467, !1468, !1472, !1475, !1478, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1496, !1499, !1502, !1505, !1506, !1507, !1510, !1511, !1514, !1517, !1530, !1531, !1536, !1537, !1543, !1544, !1547, !1550, !1553, !1556, !1559, !1562, !1565, !1568, !1571, !1572, !1575, !1578, !1596, !1619, !1622, !1625, !1628, !1631, !1632, !1633, !1636, !1639, !1642, !1647, !1651, !1654, !1658, !1661, !1664, !1668, !1671, !1672, !1677, !1680, !1681, !1682, !1694, !1695, !1696, !1697, !1720, !1723, !1735, !1740, !1743, !1749, !1752, !1758, !1761, !1778, !1781}
!1460 = !DISubprogram(name: "KeGetCurrentProcessorNumber", scope: !1, file: !1, line: 1518, type: !1461, isLocal: false, isDefinition: true, scopeLine: 1519, flags: DIFlagPrototyped, isOptimized: false, function: i64 ()* @KeGetCurrentProcessorNumber, variables: !1463)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!286}
!1463 = !{}
!1464 = !DISubprogram(name: "errorFn", scope: !1, file: !1, line: 1972, type: !1465, isLocal: false, isDefinition: true, scopeLine: 1973, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @errorFn, variables: !1463)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{null}
!1467 = !DISubprogram(name: "_BLAST_init", scope: !1, file: !1, line: 1996, type: !1465, isLocal: false, isDefinition: true, scopeLine: 1997, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @_BLAST_init, variables: !1463)
!1468 = !DISubprogram(name: "DriverEntry", scope: !1, file: !1, line: 2060, type: !1469, isLocal: false, isDefinition: true, scopeLine: 2061, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DRIVER_OBJECT*, %struct._UNICODE_STRING*)* @DriverEntry, variables: !1463)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!302, !1471, !317}
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "PDRIVER_OBJECT", file: !1, line: 962, baseType: !279)
!1472 = !DISubprogram(name: "DiskPerfSyncFilterWithTarget", scope: !1, file: !1, line: 2093, type: !1473, isLocal: false, isDefinition: true, scopeLine: 2094, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT*)* @DiskPerfSyncFilterWithTarget, variables: !1463)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{null, !265, !265}
!1475 = !DISubprogram(name: "DiskPerfAddDevice", scope: !1, file: !1, line: 2104, type: !1476, isLocal: false, isDefinition: true, scopeLine: 2105, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DRIVER_OBJECT*, %struct._DEVICE_OBJECT*)* @DiskPerfAddDevice, variables: !1463)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!302, !1471, !265}
!1478 = !DISubprogram(name: "DiskPerfDispatchPnp", scope: !1, file: !1, line: 2175, type: !1479, isLocal: false, isDefinition: true, scopeLine: 2176, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfDispatchPnp, variables: !1463)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!302, !265, !1201}
!1481 = !DISubprogram(name: "DiskPerfIrpCompletion", scope: !1, file: !1, line: 2215, type: !1199, isLocal: false, isDefinition: true, scopeLine: 2216, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* @DiskPerfIrpCompletion, variables: !1463)
!1482 = !DISubprogram(name: "DiskPerfStartDevice", scope: !1, file: !1, line: 2226, type: !1479, isLocal: false, isDefinition: true, scopeLine: 2227, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfStartDevice, variables: !1463)
!1483 = !DISubprogram(name: "DiskPerfRemoveDevice", scope: !1, file: !1, line: 2243, type: !1479, isLocal: false, isDefinition: true, scopeLine: 2244, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfRemoveDevice, variables: !1463)
!1484 = !DISubprogram(name: "DiskPerfSendToNextDriver", scope: !1, file: !1, line: 2265, type: !1479, isLocal: false, isDefinition: true, scopeLine: 2266, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfSendToNextDriver, variables: !1463)
!1485 = !DISubprogram(name: "DiskPerfDispatchPower", scope: !1, file: !1, line: 2286, type: !1479, isLocal: false, isDefinition: true, scopeLine: 2287, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfDispatchPower, variables: !1463)
!1486 = !DISubprogram(name: "DiskPerfForwardIrpSynchronous", scope: !1, file: !1, line: 2310, type: !1479, isLocal: false, isDefinition: true, scopeLine: 2311, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfForwardIrpSynchronous, variables: !1463)
!1487 = !DISubprogram(name: "DiskPerfCreate", scope: !1, file: !1, line: 2363, type: !1479, isLocal: false, isDefinition: true, scopeLine: 2364, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfCreate, variables: !1463)
!1488 = !DISubprogram(name: "DiskPerfReadWrite", scope: !1, file: !1, line: 2375, type: !1479, isLocal: false, isDefinition: true, scopeLine: 2376, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfReadWrite, variables: !1463)
!1489 = !DISubprogram(name: "DiskPerfIoCompletion", scope: !1, file: !1, line: 2464, type: !1199, isLocal: false, isDefinition: true, scopeLine: 2465, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)* @DiskPerfIoCompletion, variables: !1463)
!1490 = !DISubprogram(name: "DiskPerfDeviceControl", scope: !1, file: !1, line: 2532, type: !1479, isLocal: false, isDefinition: true, scopeLine: 2533, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfDeviceControl, variables: !1463)
!1491 = !DISubprogram(name: "DiskPerfWmi", scope: !1, file: !1, line: 2621, type: !1479, isLocal: false, isDefinition: true, scopeLine: 2622, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfWmi, variables: !1463)
!1492 = !DISubprogram(name: "DiskPerfShutdownFlush", scope: !1, file: !1, line: 2674, type: !1479, isLocal: false, isDefinition: true, scopeLine: 2675, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @DiskPerfShutdownFlush, variables: !1463)
!1493 = !DISubprogram(name: "DiskPerfUnload", scope: !1, file: !1, line: 2688, type: !1494, isLocal: false, isDefinition: true, scopeLine: 2689, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._DRIVER_OBJECT*)* @DiskPerfUnload, variables: !1463)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{null, !1471}
!1496 = !DISubprogram(name: "DiskPerfRegisterDevice", scope: !1, file: !1, line: 2695, type: !1497, isLocal: false, isDefinition: true, scopeLine: 2696, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*)* @DiskPerfRegisterDevice, variables: !1463)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!302, !265}
!1499 = !DISubprogram(name: "DiskPerfLogError", scope: !1, file: !1, line: 2908, type: !1500, isLocal: false, isDefinition: true, scopeLine: 2910, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._DEVICE_OBJECT*, i64, i64, i64)* @DiskPerfLogError, variables: !1463)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{null, !265, !286, !302, !302}
!1502 = !DISubprogram(name: "DiskperfQueryWmiRegInfo", scope: !1, file: !1, line: 2933, type: !1503, isLocal: false, isDefinition: true, scopeLine: 2936, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, i64*, %struct._UNICODE_STRING*, %struct._UNICODE_STRING**, %struct._UNICODE_STRING*, %struct._DEVICE_OBJECT**)* @DiskperfQueryWmiRegInfo, variables: !1463)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!302, !265, !1393, !317, !1394, !317, !1395}
!1505 = !DISubprogram(name: "DiskperfQueryWmiDataBlock", scope: !1, file: !1, line: 2959, type: !1398, isLocal: false, isDefinition: true, scopeLine: 2962, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i64, i64, i64, i64*, i64, i8*)* @DiskperfQueryWmiDataBlock, variables: !1463)
!1506 = !DISubprogram(name: "DiskperfWmiFunctionControl", scope: !1, file: !1, line: 3046, type: !1416, isLocal: false, isDefinition: true, scopeLine: 3048, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i64, i32, i8)* @DiskperfWmiFunctionControl, variables: !1463)
!1507 = !DISubprogram(name: "DiskPerfAddCounters", scope: !1, file: !1, line: 3100, type: !1508, isLocal: false, isDefinition: true, scopeLine: 3102, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._DISK_PERFORMANCE*, %struct._DISK_PERFORMANCE*, i64, i64)* @DiskPerfAddCounters, variables: !1463)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{null, !1348, !1348, !380}
!1510 = !DISubprogram(name: "stub_driver_init", scope: !1, file: !1, line: 3145, type: !1465, isLocal: false, isDefinition: true, scopeLine: 3146, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stub_driver_init, variables: !1463)
!1511 = !DISubprogram(name: "main", scope: !1, file: !1, line: 3159, type: !1512, isLocal: false, isDefinition: true, scopeLine: 3160, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @main, variables: !1463)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!1422}
!1514 = !DISubprogram(name: "malloc", scope: !1, file: !1, line: 3330, type: !1515, isLocal: false, isDefinition: true, scopeLine: 3331, flags: DIFlagPrototyped, isOptimized: false, function: i8* (i32)* @malloc, variables: !1463)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!1458, !1422}
!1517 = !DISubprogram(name: "ExAcquireFastMutex", scope: !1, file: !1, line: 3342, type: !1518, isLocal: false, isDefinition: true, scopeLine: 3343, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._FAST_MUTEX*)* @ExAcquireFastMutex, variables: !1463)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{null, !1520}
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFAST_MUTEX", file: !1, line: 707, baseType: !1521)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64, align: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "_FAST_MUTEX", file: !1, line: 700, size: 512, align: 64, elements: !1523)
!1523 = !{!1524, !1525, !1527, !1528, !1529}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "Count", scope: !1522, file: !1, line: 701, baseType: !276, size: 64, align: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "Owner", scope: !1522, file: !1, line: 702, baseType: !1526, size: 64, align: 64, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "PKTHREAD", file: !1, line: 109, baseType: !1213)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "Contention", scope: !1522, file: !1, line: 703, baseType: !286, size: 64, align: 64, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "Event", scope: !1522, file: !1, line: 704, baseType: !400, size: 256, align: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "OldIrql", scope: !1522, file: !1, line: 705, baseType: !286, size: 64, align: 64, offset: 448)
!1530 = !DISubprogram(name: "ExReleaseFastMutex", scope: !1, file: !1, line: 3350, type: !1518, isLocal: false, isDefinition: true, scopeLine: 3351, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._FAST_MUTEX*)* @ExReleaseFastMutex, variables: !1463)
!1531 = !DISubprogram(name: "ExAllocatePoolWithTag", scope: !1, file: !1, line: 3360, type: !1532, isLocal: false, isDefinition: true, scopeLine: 3362, flags: DIFlagPrototyped, isOptimized: false, function: i8* (i32, i64, i64)* @ExAllocatePoolWithTag, variables: !1463)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!289, !1534, !1535, !286}
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "POOL_TYPE", file: !1, line: 699, baseType: !150)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIZE_T", file: !1, line: 15, baseType: !439)
!1536 = !DISubprogram(name: "ExFreePool", scope: !1, file: !1, line: 3374, type: !898, isLocal: false, isDefinition: true, scopeLine: 3375, flags: DIFlagPrototyped, isOptimized: false, function: void (i8*)* @ExFreePool, variables: !1463)
!1537 = !DISubprogram(name: "ExfInterlockedInsertHeadList", scope: !1, file: !1, line: 3384, type: !1538, isLocal: false, isDefinition: true, scopeLine: 3387, flags: DIFlagPrototyped, isOptimized: false, function: %struct._LIST_ENTRY* (%struct._LIST_ENTRY*, %struct._LIST_ENTRY*, i64*)* @ExfInterlockedInsertHeadList, variables: !1463)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!1540, !1540, !1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "PLIST_ENTRY", file: !1, line: 87, baseType: !417)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "PKSPIN_LOCK", file: !1, line: 202, baseType: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64, align: 64)
!1543 = !DISubprogram(name: "ExfInterlockedInsertTailList", scope: !1, file: !1, line: 3396, type: !1538, isLocal: false, isDefinition: true, scopeLine: 3399, flags: DIFlagPrototyped, isOptimized: false, function: %struct._LIST_ENTRY* (%struct._LIST_ENTRY*, %struct._LIST_ENTRY*, i64*)* @ExfInterlockedInsertTailList, variables: !1463)
!1544 = !DISubprogram(name: "ExfInterlockedRemoveHeadList", scope: !1, file: !1, line: 3407, type: !1545, isLocal: false, isDefinition: true, scopeLine: 3409, flags: DIFlagPrototyped, isOptimized: false, function: %struct._LIST_ENTRY* (%struct._LIST_ENTRY*, i64*)* @ExfInterlockedRemoveHeadList, variables: !1463)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!1540, !1540, !1541}
!1547 = !DISubprogram(name: "IoAllocateMdl", scope: !1, file: !1, line: 3418, type: !1548, isLocal: false, isDefinition: true, scopeLine: 3420, flags: DIFlagPrototyped, isOptimized: false, function: %struct._MDL* (i8*, i64, i8, i8, %struct._IRP*)* @IoAllocateMdl, variables: !1463)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!571, !289, !286, !329, !329, !1201}
!1550 = !DISubprogram(name: "IoAttachDeviceToDeviceStack", scope: !1, file: !1, line: 3446, type: !1551, isLocal: false, isDefinition: true, scopeLine: 3447, flags: DIFlagPrototyped, isOptimized: false, function: %struct._DEVICE_OBJECT* (%struct._DEVICE_OBJECT*, %struct._DEVICE_OBJECT*)* @IoAttachDeviceToDeviceStack, variables: !1463)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!265, !265, !265}
!1553 = !DISubprogram(name: "IoBuildAsynchronousFsdRequest", scope: !1, file: !1, line: 3473, type: !1554, isLocal: false, isDefinition: true, scopeLine: 3476, flags: DIFlagPrototyped, isOptimized: false, function: %struct._IRP* (i64, %struct._DEVICE_OBJECT*, i8*, i64, %union._LARGE_INTEGER*, %struct._IO_STATUS_BLOCK*)* @IoBuildAsynchronousFsdRequest, variables: !1463)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!1201, !286, !265, !289, !286, !427, !429}
!1556 = !DISubprogram(name: "IoBuildDeviceIoControlRequest", scope: !1, file: !1, line: 3510, type: !1557, isLocal: false, isDefinition: true, scopeLine: 3514, flags: DIFlagPrototyped, isOptimized: false, function: %struct._IRP* (i64, %struct._DEVICE_OBJECT*, i8*, i64, i8*, i64, i8, %struct._KEVENT*, %struct._IO_STATUS_BLOCK*)* @IoBuildDeviceIoControlRequest, variables: !1463)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!1201, !286, !265, !289, !286, !289, !286, !329, !549, !429}
!1559 = !DISubprogram(name: "IoCreateDevice", scope: !1, file: !1, line: 3544, type: !1560, isLocal: false, isDefinition: true, scopeLine: 3547, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DRIVER_OBJECT*, i64, %struct._UNICODE_STRING*, i64, i64, i8, %struct._DEVICE_OBJECT**)* @IoCreateDevice, variables: !1463)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!302, !1471, !286, !317, !286, !286, !329, !1395}
!1562 = !DISubprogram(name: "IoCreateSymbolicLink", scope: !1, file: !1, line: 3574, type: !1563, isLocal: false, isDefinition: true, scopeLine: 3575, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._UNICODE_STRING*, %struct._UNICODE_STRING*)* @IoCreateSymbolicLink, variables: !1463)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!302, !317, !317}
!1565 = !DISubprogram(name: "IoDeleteDevice", scope: !1, file: !1, line: 3596, type: !1566, isLocal: false, isDefinition: true, scopeLine: 3597, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._DEVICE_OBJECT*)* @IoDeleteDevice, variables: !1463)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{null, !265}
!1568 = !DISubprogram(name: "IoDeleteSymbolicLink", scope: !1, file: !1, line: 3604, type: !1569, isLocal: false, isDefinition: true, scopeLine: 3605, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._UNICODE_STRING*)* @IoDeleteSymbolicLink, variables: !1463)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!302, !317}
!1571 = !DISubprogram(name: "IoDetachDevice", scope: !1, file: !1, line: 3626, type: !1566, isLocal: false, isDefinition: true, scopeLine: 3627, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._DEVICE_OBJECT*)* @IoDetachDevice, variables: !1463)
!1572 = !DISubprogram(name: "IoFreeIrp", scope: !1, file: !1, line: 3634, type: !1573, isLocal: false, isDefinition: true, scopeLine: 3635, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._IRP*)* @IoFreeIrp, variables: !1463)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !1201}
!1575 = !DISubprogram(name: "IoFreeMdl", scope: !1, file: !1, line: 3642, type: !1576, isLocal: false, isDefinition: true, scopeLine: 3643, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._MDL*)* @IoFreeMdl, variables: !1463)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{null, !571}
!1578 = !DISubprogram(name: "IoGetConfigurationInformation", scope: !1, file: !1, line: 3650, type: !1579, isLocal: false, isDefinition: true, scopeLine: 3651, flags: DIFlagPrototyped, isOptimized: false, function: %struct._CONFIGURATION_INFORMATION* ()* @IoGetConfigurationInformation, variables: !1463)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!1581}
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCONFIGURATION_INFORMATION", file: !1, line: 1333, baseType: !1582)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64, align: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIGURATION_INFORMATION", file: !1, line: 1319, size: 640, align: 64, elements: !1584)
!1584 = !{!1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "DiskCount", scope: !1583, file: !1, line: 1320, baseType: !286, size: 64, align: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "FloppyCount", scope: !1583, file: !1, line: 1321, baseType: !286, size: 64, align: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "CdRomCount", scope: !1583, file: !1, line: 1322, baseType: !286, size: 64, align: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "TapeCount", scope: !1583, file: !1, line: 1323, baseType: !286, size: 64, align: 64, offset: 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ScsiPortCount", scope: !1583, file: !1, line: 1324, baseType: !286, size: 64, align: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "SerialCount", scope: !1583, file: !1, line: 1325, baseType: !286, size: 64, align: 64, offset: 320)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "ParallelCount", scope: !1583, file: !1, line: 1326, baseType: !286, size: 64, align: 64, offset: 384)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "AtDiskPrimaryAddressClaimed", scope: !1583, file: !1, line: 1327, baseType: !329, size: 8, align: 8, offset: 448)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "AtDiskSecondaryAddressClaimed", scope: !1583, file: !1, line: 1328, baseType: !329, size: 8, align: 8, offset: 456)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "Version", scope: !1583, file: !1, line: 1329, baseType: !286, size: 64, align: 64, offset: 512)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "MediumChangerCount", scope: !1583, file: !1, line: 1330, baseType: !286, size: 64, align: 64, offset: 576)
!1596 = !DISubprogram(name: "IoQueryDeviceDescription", scope: !1, file: !1, line: 3678, type: !1597, isLocal: false, isDefinition: true, scopeLine: 3692, flags: DIFlagPrototyped, isOptimized: false, function: i64 (i32*, i64*, i32*, i64*, i32*, i64*, i64 (i8*, %struct._UNICODE_STRING*, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**, i32, i64, %struct._KEY_VALUE_FULL_INFORMATION**)*, i8*)* @IoQueryDeviceDescription, variables: !1463)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!302, !1599, !1392, !1601, !1392, !1601, !1392, !1603, !289}
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "PINTERFACE_TYPE", file: !1, line: 324, baseType: !1600)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCONFIGURATION_TYPE", file: !1, line: 605, baseType: !1602)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64, align: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!302, !289, !317, !953, !286, !1606, !1618, !286, !1606, !1618, !286, !1606}
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64, align: 64)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "PKEY_VALUE_FULL_INFORMATION", file: !1, line: 350, baseType: !1608)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64, align: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "_KEY_VALUE_FULL_INFORMATION", file: !1, line: 342, size: 384, align: 64, elements: !1610)
!1610 = !{!1611, !1612, !1613, !1614, !1615, !1616}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "TitleIndex", scope: !1609, file: !1, line: 343, baseType: !286, size: 64, align: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !1609, file: !1, line: 344, baseType: !286, size: 64, align: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "DataOffset", scope: !1609, file: !1, line: 345, baseType: !286, size: 64, align: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "DataLength", scope: !1609, file: !1, line: 346, baseType: !286, size: 64, align: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "NameLength", scope: !1609, file: !1, line: 347, baseType: !286, size: 64, align: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "Name", scope: !1609, file: !1, line: 348, baseType: !1617, size: 16, align: 16, offset: 320)
!1617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 16, align: 16, elements: !778)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIGURATION_TYPE", file: !1, line: 604, baseType: !167)
!1619 = !DISubprogram(name: "IoRegisterDeviceInterface", scope: !1, file: !1, line: 3716, type: !1620, isLocal: false, isDefinition: true, scopeLine: 3720, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._GUID*, %struct._UNICODE_STRING*, %struct._UNICODE_STRING*)* @IoRegisterDeviceInterface, variables: !1463)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!302, !265, !874, !317, !317}
!1622 = !DISubprogram(name: "IoReleaseCancelSpinLock", scope: !1, file: !1, line: 3741, type: !1623, isLocal: false, isDefinition: true, scopeLine: 3742, flags: DIFlagPrototyped, isOptimized: false, function: void (i8)* @IoReleaseCancelSpinLock, variables: !1463)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !631}
!1625 = !DISubprogram(name: "IoSetDeviceInterfaceState", scope: !1, file: !1, line: 3750, type: !1626, isLocal: false, isDefinition: true, scopeLine: 3751, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._UNICODE_STRING*, i8)* @IoSetDeviceInterfaceState, variables: !1463)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!302, !317, !329}
!1628 = !DISubprogram(name: "IoSetHardErrorOrVerifyDevice", scope: !1, file: !1, line: 3772, type: !1629, isLocal: false, isDefinition: true, scopeLine: 3773, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._IRP*, %struct._DEVICE_OBJECT*)* @IoSetHardErrorOrVerifyDevice, variables: !1463)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{null, !1201, !265}
!1631 = !DISubprogram(name: "stubMoreProcessingRequired", scope: !1, file: !1, line: 3779, type: !1465, isLocal: false, isDefinition: true, scopeLine: 3780, flags: DIFlagPrototyped, isOptimized: false, function: void ()* @stubMoreProcessingRequired, variables: !1463)
!1632 = !DISubprogram(name: "IofCallDriver", scope: !1, file: !1, line: 3795, type: !1479, isLocal: false, isDefinition: true, scopeLine: 3797, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @IofCallDriver, variables: !1463)
!1633 = !DISubprogram(name: "IofCompleteRequest", scope: !1, file: !1, line: 3879, type: !1634, isLocal: false, isDefinition: true, scopeLine: 3880, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._IRP*, i8)* @IofCompleteRequest, variables: !1463)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null, !1201, !623}
!1636 = !DISubprogram(name: "KeAcquireSpinLockRaiseToDpc", scope: !1, file: !1, line: 3894, type: !1637, isLocal: false, isDefinition: true, scopeLine: 3895, flags: DIFlagPrototyped, isOptimized: false, function: i8 (i64*)* @KeAcquireSpinLockRaiseToDpc, variables: !1463)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!631, !1541}
!1639 = !DISubprogram(name: "KeDelayExecutionThread", scope: !1, file: !1, line: 3904, type: !1640, isLocal: false, isDefinition: true, scopeLine: 3905, flags: DIFlagPrototyped, isOptimized: false, function: i64 (i8, i8, %union._LARGE_INTEGER*)* @KeDelayExecutionThread, variables: !1463)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!302, !622, !329, !427}
!1642 = !DISubprogram(name: "KeInitializeEvent", scope: !1, file: !1, line: 3927, type: !1643, isLocal: false, isDefinition: true, scopeLine: 3928, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._KEVENT*, i32, i8)* @KeInitializeEvent, variables: !1463)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{null, !1645, !1646, !329}
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "PRKEVENT", file: !1, line: 665, baseType: !550)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVENT_TYPE", file: !1, line: 64, baseType: !210)
!1647 = !DISubprogram(name: "KeInitializeSemaphore", scope: !1, file: !1, line: 3936, type: !1648, isLocal: false, isDefinition: true, scopeLine: 3937, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._KSEMAPHORE*, i64, i64)* @KeInitializeSemaphore, variables: !1463)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{null, !1650, !276, !276}
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "PRKSEMAPHORE", file: !1, line: 671, baseType: !543)
!1651 = !DISubprogram(name: "KeInitializeSpinLock", scope: !1, file: !1, line: 3944, type: !1652, isLocal: false, isDefinition: true, scopeLine: 3945, flags: DIFlagPrototyped, isOptimized: false, function: void (i64*)* @KeInitializeSpinLock, variables: !1463)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{null, !1541}
!1654 = !DISubprogram(name: "KeReleaseSemaphore", scope: !1, file: !1, line: 3953, type: !1655, isLocal: false, isDefinition: true, scopeLine: 3955, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._KSEMAPHORE*, i64, i64, i8)* @KeReleaseSemaphore, variables: !1463)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!276, !1650, !1657, !276, !329}
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "KPRIORITY", file: !1, line: 200, baseType: !276)
!1658 = !DISubprogram(name: "KfReleaseSpinLock", scope: !1, file: !1, line: 3963, type: !1659, isLocal: false, isDefinition: true, scopeLine: 3964, flags: DIFlagPrototyped, isOptimized: false, function: void (i64*, i8)* @KfReleaseSpinLock, variables: !1463)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{null, !1541, !631}
!1661 = !DISubprogram(name: "KeSetEvent", scope: !1, file: !1, line: 3972, type: !1662, isLocal: false, isDefinition: true, scopeLine: 3973, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._KEVENT*, i64, i8)* @KeSetEvent, variables: !1463)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!276, !1645, !1657, !329}
!1664 = !DISubprogram(name: "KeWaitForSingleObject", scope: !1, file: !1, line: 3984, type: !1665, isLocal: false, isDefinition: true, scopeLine: 3986, flags: DIFlagPrototyped, isOptimized: false, function: i64 (i8*, i32, i8, i8, %union._LARGE_INTEGER*)* @KeWaitForSingleObject, variables: !1463)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!302, !289, !1667, !622, !329, !427}
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "KWAIT_REASON", file: !1, line: 636, baseType: !214)
!1668 = !DISubprogram(name: "MmAllocateContiguousMemory", scope: !1, file: !1, line: 4030, type: !1669, isLocal: false, isDefinition: true, scopeLine: 4031, flags: DIFlagPrototyped, isOptimized: false, function: i8* (i64, i64, i64)* @MmAllocateContiguousMemory, variables: !1463)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!289, !1535, !987}
!1671 = !DISubprogram(name: "MmFreeContiguousMemory", scope: !1, file: !1, line: 4058, type: !898, isLocal: false, isDefinition: true, scopeLine: 4059, flags: DIFlagPrototyped, isOptimized: false, function: void (i8*)* @MmFreeContiguousMemory, variables: !1463)
!1672 = !DISubprogram(name: "MmMapLockedPagesSpecifyCache", scope: !1, file: !1, line: 4071, type: !1673, isLocal: false, isDefinition: true, scopeLine: 4074, flags: DIFlagPrototyped, isOptimized: false, function: i8* (%struct._MDL*, i8, i32, i8*, i64, i32)* @MmMapLockedPagesSpecifyCache, variables: !1463)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!289, !571, !622, !1675, !289, !286, !1676}
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "MEMORY_CACHING_TYPE", file: !1, line: 681, baseType: !244)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "MM_PAGE_PRIORITY", file: !1, line: 742, baseType: !253)
!1677 = !DISubprogram(name: "MmPageEntireDriver", scope: !1, file: !1, line: 4081, type: !1678, isLocal: false, isDefinition: true, scopeLine: 4082, flags: DIFlagPrototyped, isOptimized: false, function: i8* (i8*)* @MmPageEntireDriver, variables: !1463)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!289, !289}
!1680 = !DISubprogram(name: "MmResetDriverPaging", scope: !1, file: !1, line: 4089, type: !898, isLocal: false, isDefinition: true, scopeLine: 4090, flags: DIFlagPrototyped, isOptimized: false, function: void (i8*)* @MmResetDriverPaging, variables: !1463)
!1681 = !DISubprogram(name: "MmUnlockPages", scope: !1, file: !1, line: 4097, type: !1576, isLocal: false, isDefinition: true, scopeLine: 4098, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._MDL*)* @MmUnlockPages, variables: !1463)
!1682 = !DISubprogram(name: "ObReferenceObjectByHandle", scope: !1, file: !1, line: 4110, type: !1683, isLocal: false, isDefinition: true, scopeLine: 4112, flags: DIFlagPrototyped, isOptimized: false, function: i64 (i8*, i64, %struct._OBJECT_TYPE*, i8, i8**, %struct._OBJECT_HANDLE_INFORMATION*)* @ObReferenceObjectByHandle, variables: !1463)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!302, !824, !737, !1685, !622, !1226, !1688}
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "POBJECT_TYPE", file: !1, line: 117, baseType: !1686)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64, align: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "_OBJECT_TYPE", file: !1, line: 116, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "POBJECT_HANDLE_INFORMATION", file: !1, line: 1338, baseType: !1689)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64, align: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "_OBJECT_HANDLE_INFORMATION", file: !1, line: 1334, size: 128, align: 64, elements: !1691)
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "HandleAttributes", scope: !1690, file: !1, line: 1335, baseType: !286, size: 64, align: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "GrantedAccess", scope: !1690, file: !1, line: 1336, baseType: !737, size: 64, align: 64, offset: 64)
!1694 = !DISubprogram(name: "ObfDereferenceObject", scope: !1, file: !1, line: 4133, type: !898, isLocal: false, isDefinition: true, scopeLine: 4134, flags: DIFlagPrototyped, isOptimized: false, function: void (i8*)* @ObfDereferenceObject, variables: !1463)
!1695 = !DISubprogram(name: "PoCallDriver", scope: !1, file: !1, line: 4142, type: !1479, isLocal: false, isDefinition: true, scopeLine: 4143, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*)* @PoCallDriver, variables: !1463)
!1696 = !DISubprogram(name: "PoStartNextPowerIrp", scope: !1, file: !1, line: 4228, type: !1573, isLocal: false, isDefinition: true, scopeLine: 4229, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._IRP*)* @PoStartNextPowerIrp, variables: !1463)
!1697 = !DISubprogram(name: "PsCreateSystemThread", scope: !1, file: !1, line: 4242, type: !1698, isLocal: false, isDefinition: true, scopeLine: 4245, flags: DIFlagPrototyped, isOptimized: false, function: i64 (i8**, i64, %struct._OBJECT_ATTRIBUTES*, i8*, %struct._CLIENT_ID*, void (i8*)*, i8*)* @PsCreateSystemThread, variables: !1463)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!302, !1700, !286, !1702, !824, !1713, !897, !289}
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "PHANDLE", file: !1, line: 32, baseType: !1701)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64, align: 64)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "POBJECT_ATTRIBUTES", file: !1, line: 97, baseType: !1703)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64, align: 64)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "OBJECT_ATTRIBUTES", file: !1, line: 96, baseType: !1705)
!1705 = !DICompositeType(tag: DW_TAG_structure_type, name: "_OBJECT_ATTRIBUTES", file: !1, line: 88, size: 384, align: 64, elements: !1706)
!1706 = !{!1707, !1708, !1709, !1710, !1711, !1712}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !1705, file: !1, line: 89, baseType: !286, size: 64, align: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "RootDirectory", scope: !1705, file: !1, line: 90, baseType: !824, size: 64, align: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ObjectName", scope: !1705, file: !1, line: 91, baseType: !317, size: 64, align: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "Attributes", scope: !1705, file: !1, line: 92, baseType: !286, size: 64, align: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "SecurityDescriptor", scope: !1705, file: !1, line: 93, baseType: !289, size: 64, align: 64, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "SecurityQualityOfService", scope: !1705, file: !1, line: 94, baseType: !289, size: 64, align: 64, offset: 320)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCLIENT_ID", file: !1, line: 356, baseType: !1714)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64, align: 64)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "CLIENT_ID", file: !1, line: 355, baseType: !1716)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CLIENT_ID", file: !1, line: 351, size: 128, align: 64, elements: !1717)
!1717 = !{!1718, !1719}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "UniqueProcess", scope: !1716, file: !1, line: 352, baseType: !824, size: 64, align: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "UniqueThread", scope: !1716, file: !1, line: 353, baseType: !824, size: 64, align: 64, offset: 64)
!1720 = !DISubprogram(name: "PsTerminateSystemThread", scope: !1, file: !1, line: 4266, type: !1721, isLocal: false, isDefinition: true, scopeLine: 4267, flags: DIFlagPrototyped, isOptimized: false, function: i64 (i64)* @PsTerminateSystemThread, variables: !1463)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!302, !302}
!1723 = !DISubprogram(name: "RtlAnsiStringToUnicodeString", scope: !1, file: !1, line: 4290, type: !1724, isLocal: false, isDefinition: true, scopeLine: 4293, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._UNICODE_STRING*, %struct._STRING*, i8)* @RtlAnsiStringToUnicodeString, variables: !1463)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!302, !317, !1726, !329}
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "PANSI_STRING", file: !1, line: 73, baseType: !1727)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "PSTRING", file: !1, line: 72, baseType: !1728)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64, align: 64)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRING", file: !1, line: 71, baseType: !1730)
!1730 = !DICompositeType(tag: DW_TAG_structure_type, name: "_STRING", file: !1, line: 66, size: 128, align: 64, elements: !1731)
!1731 = !{!1732, !1733, !1734}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "Length", scope: !1730, file: !1, line: 67, baseType: !273, size: 16, align: 16)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "MaximumLength", scope: !1730, file: !1, line: 68, baseType: !273, size: 16, align: 16, offset: 16)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "Buffer", scope: !1730, file: !1, line: 69, baseType: !681, size: 64, align: 64, offset: 64)
!1735 = !DISubprogram(name: "RtlCompareMemory", scope: !1, file: !1, line: 4316, type: !1736, isLocal: false, isDefinition: true, scopeLine: 4318, flags: DIFlagPrototyped, isOptimized: false, function: i64 (i8*, i8*, i64)* @RtlCompareMemory, variables: !1463)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!1535, !1738, !1738, !1535}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64, align: 64)
!1739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1740 = !DISubprogram(name: "RtlCopyUnicodeString", scope: !1, file: !1, line: 4326, type: !1741, isLocal: false, isDefinition: true, scopeLine: 4328, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._UNICODE_STRING*, %struct._UNICODE_STRING*)* @RtlCopyUnicodeString, variables: !1463)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{null, !317, !317}
!1743 = !DISubprogram(name: "RtlDeleteRegistryValue", scope: !1, file: !1, line: 4337, type: !1744, isLocal: false, isDefinition: true, scopeLine: 4339, flags: DIFlagPrototyped, isOptimized: false, function: i64 (i64, i16*, i16*)* @RtlDeleteRegistryValue, variables: !1463)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!302, !286, !1746, !1746}
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCWSTR", file: !1, line: 23, baseType: !1747)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64, align: 64)
!1748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!1749 = !DISubprogram(name: "RtlFreeUnicodeString", scope: !1, file: !1, line: 4360, type: !1750, isLocal: false, isDefinition: true, scopeLine: 4361, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._UNICODE_STRING*)* @RtlFreeUnicodeString, variables: !1463)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{null, !317}
!1752 = !DISubprogram(name: "RtlInitString", scope: !1, file: !1, line: 4369, type: !1753, isLocal: false, isDefinition: true, scopeLine: 4370, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._STRING*, i8*)* @RtlInitString, variables: !1463)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{null, !1727, !1755}
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCSZ", file: !1, line: 65, baseType: !1756)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64, align: 64)
!1757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!1758 = !DISubprogram(name: "RtlInitUnicodeString", scope: !1, file: !1, line: 4378, type: !1759, isLocal: false, isDefinition: true, scopeLine: 4380, flags: DIFlagPrototyped, isOptimized: false, function: void (%struct._UNICODE_STRING*, i16*)* @RtlInitUnicodeString, variables: !1463)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{null, !317, !1746}
!1761 = !DISubprogram(name: "RtlQueryRegistryValues", scope: !1, file: !1, line: 4391, type: !1762, isLocal: false, isDefinition: true, scopeLine: 4394, flags: DIFlagPrototyped, isOptimized: false, function: i64 (i64, i16*, %struct._RTL_QUERY_REGISTRY_TABLE*, i8*, i8*)* @RtlQueryRegistryValues, variables: !1463)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!302, !286, !1746, !1764, !289, !289}
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "PRTL_QUERY_REGISTRY_TABLE", file: !1, line: 214, baseType: !1765)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64, align: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RTL_QUERY_REGISTRY_TABLE", file: !1, line: 203, size: 448, align: 64, elements: !1767)
!1767 = !{!1768, !1772, !1773, !1774, !1775, !1776, !1777}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "QueryRoutine", scope: !1766, file: !1, line: 204, baseType: !1769, size: 64, align: 64)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64, align: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!302, !311, !286, !289, !286, !289, !289}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !1766, file: !1, line: 207, baseType: !286, size: 64, align: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "Name", scope: !1766, file: !1, line: 208, baseType: !311, size: 64, align: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "EntryContext", scope: !1766, file: !1, line: 209, baseType: !289, size: 64, align: 64, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "DefaultType", scope: !1766, file: !1, line: 210, baseType: !286, size: 64, align: 64, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "DefaultData", scope: !1766, file: !1, line: 211, baseType: !289, size: 64, align: 64, offset: 320)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "DefaultLength", scope: !1766, file: !1, line: 212, baseType: !286, size: 64, align: 64, offset: 384)
!1778 = !DISubprogram(name: "ZwClose", scope: !1, file: !1, line: 4415, type: !1779, isLocal: false, isDefinition: true, scopeLine: 4416, flags: DIFlagPrototyped, isOptimized: false, function: i64 (i8*)* @ZwClose, variables: !1463)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!302, !824}
!1781 = !DISubprogram(name: "WmiSystemControl", scope: !1, file: !1, line: 4436, type: !1782, isLocal: false, isDefinition: true, scopeLine: 4438, flags: DIFlagPrototyped, isOptimized: false, function: i64 (%struct._WMILIB_CONTEXT*, %struct._DEVICE_OBJECT*, %struct._IRP*, i32*)* @WmiSystemControl, variables: !1463)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!302, !1784, !265, !1201, !1786}
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "PWMILIB_CONTEXT", file: !1, line: 1435, baseType: !1785)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64, align: 64)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "PSYSCTL_IRP_DISPOSITION", file: !1, line: 1443, baseType: !1787)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!1788 = !{!1789, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1955, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1979}
!1789 = !DIGlobalVariable(name: "DiskClassGuid", scope: !0, file: !1, line: 1671, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @DiskClassGuid)
!1790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!1791 = !DIGlobalVariable(name: "CdRomClassGuid", scope: !0, file: !1, line: 1672, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @CdRomClassGuid)
!1792 = !DIGlobalVariable(name: "PartitionClassGuid", scope: !0, file: !1, line: 1673, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @PartitionClassGuid)
!1793 = !DIGlobalVariable(name: "TapeClassGuid", scope: !0, file: !1, line: 1674, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @TapeClassGuid)
!1794 = !DIGlobalVariable(name: "WriteOnceDiskClassGuid", scope: !0, file: !1, line: 1675, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @WriteOnceDiskClassGuid)
!1795 = !DIGlobalVariable(name: "VolumeClassGuid", scope: !0, file: !1, line: 1676, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @VolumeClassGuid)
!1796 = !DIGlobalVariable(name: "MediumChangerClassGuid", scope: !0, file: !1, line: 1677, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MediumChangerClassGuid)
!1797 = !DIGlobalVariable(name: "FloppyClassGuid", scope: !0, file: !1, line: 1678, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @FloppyClassGuid)
!1798 = !DIGlobalVariable(name: "CdChangerClassGuid", scope: !0, file: !1, line: 1679, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @CdChangerClassGuid)
!1799 = !DIGlobalVariable(name: "StoragePortClassGuid", scope: !0, file: !1, line: 1680, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @StoragePortClassGuid)
!1800 = !DIGlobalVariable(name: "MOUNTDEV_MOUNTED_DEVICE_GUID", scope: !0, file: !1, line: 1692, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MOUNTDEV_MOUNTED_DEVICE_GUID)
!1801 = !DIGlobalVariable(name: "MSWmi_MofData_GUID", scope: !0, file: !1, line: 1695, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSWmi_MofData_GUID)
!1802 = !DIGlobalVariable(name: "MSWmi_ProviderInfo_GUID", scope: !0, file: !1, line: 1696, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSWmi_ProviderInfo_GUID)
!1803 = !DIGlobalVariable(name: "MSWmi_PnPDeviceId_GUID", scope: !0, file: !1, line: 1697, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSWmi_PnPDeviceId_GUID)
!1804 = !DIGlobalVariable(name: "MSWmi_PnPInstanceNames_GUID", scope: !0, file: !1, line: 1698, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSWmi_PnPInstanceNames_GUID)
!1805 = !DIGlobalVariable(name: "MSSmBios_RawSMBiosTables_GUID", scope: !0, file: !1, line: 1700, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSSmBios_RawSMBiosTables_GUID)
!1806 = !DIGlobalVariable(name: "MSPower_DeviceEnable_GUID", scope: !0, file: !1, line: 1702, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSPower_DeviceEnable_GUID)
!1807 = !DIGlobalVariable(name: "MSPower_DeviceWakeEnable_GUID", scope: !0, file: !1, line: 1704, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSPower_DeviceWakeEnable_GUID)
!1808 = !DIGlobalVariable(name: "MSNdis_NetworkAddress_GUID", scope: !0, file: !1, line: 1706, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_NetworkAddress_GUID)
!1809 = !DIGlobalVariable(name: "MSNdis_NetworkShortAddress_GUID", scope: !0, file: !1, line: 1708, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_NetworkShortAddress_GUID)
!1810 = !DIGlobalVariable(name: "MSNdis_NetworkLinkSpeed_GUID", scope: !0, file: !1, line: 1710, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_NetworkLinkSpeed_GUID)
!1811 = !DIGlobalVariable(name: "MSNdis_EnumerateAdapter_GUID", scope: !0, file: !1, line: 1712, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_EnumerateAdapter_GUID)
!1812 = !DIGlobalVariable(name: "MSNdis_NotifyAdapterRemoval_GUID", scope: !0, file: !1, line: 1714, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_NotifyAdapterRemoval_GUID)
!1813 = !DIGlobalVariable(name: "MSNdis_NotifyAdapterArrival_GUID", scope: !0, file: !1, line: 1716, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_NotifyAdapterArrival_GUID)
!1814 = !DIGlobalVariable(name: "MSNdis_NdisEnumerateVc_GUID", scope: !0, file: !1, line: 1718, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_NdisEnumerateVc_GUID)
!1815 = !DIGlobalVariable(name: "MSNdis_NotifyVcRemoval_GUID", scope: !0, file: !1, line: 1720, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_NotifyVcRemoval_GUID)
!1816 = !DIGlobalVariable(name: "MSNdis_NotifyVcArrival_GUID", scope: !0, file: !1, line: 1722, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_NotifyVcArrival_GUID)
!1817 = !DIGlobalVariable(name: "MSNdis_HardwareStatus_GUID", scope: !0, file: !1, line: 1724, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_HardwareStatus_GUID)
!1818 = !DIGlobalVariable(name: "MSNdis_MediaSupported_GUID", scope: !0, file: !1, line: 1726, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_MediaSupported_GUID)
!1819 = !DIGlobalVariable(name: "MSNdis_MediaInUse_GUID", scope: !0, file: !1, line: 1728, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_MediaInUse_GUID)
!1820 = !DIGlobalVariable(name: "MSNdis_MaximumLookahead_GUID", scope: !0, file: !1, line: 1729, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_MaximumLookahead_GUID)
!1821 = !DIGlobalVariable(name: "MSNdis_MaximumFrameSize_GUID", scope: !0, file: !1, line: 1731, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_MaximumFrameSize_GUID)
!1822 = !DIGlobalVariable(name: "MSNdis_LinkSpeed_GUID", scope: !0, file: !1, line: 1733, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_LinkSpeed_GUID)
!1823 = !DIGlobalVariable(name: "MSNdis_TransmitBufferSpace_GUID", scope: !0, file: !1, line: 1734, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_TransmitBufferSpace_GUID)
!1824 = !DIGlobalVariable(name: "MSNdis_ReceiveBufferSpace_GUID", scope: !0, file: !1, line: 1736, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_ReceiveBufferSpace_GUID)
!1825 = !DIGlobalVariable(name: "MSNdis_TransmitBlockSize_GUID", scope: !0, file: !1, line: 1738, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_TransmitBlockSize_GUID)
!1826 = !DIGlobalVariable(name: "MSNdis_ReceiveBlockSize_GUID", scope: !0, file: !1, line: 1740, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_ReceiveBlockSize_GUID)
!1827 = !DIGlobalVariable(name: "MSNdis_VendorID_GUID", scope: !0, file: !1, line: 1742, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_VendorID_GUID)
!1828 = !DIGlobalVariable(name: "MSNdis_VendorDescription_GUID", scope: !0, file: !1, line: 1743, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_VendorDescription_GUID)
!1829 = !DIGlobalVariable(name: "MSNdis_CurrentPacketFilter_GUID", scope: !0, file: !1, line: 1745, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_CurrentPacketFilter_GUID)
!1830 = !DIGlobalVariable(name: "MSNdis_CurrentLookahead_GUID", scope: !0, file: !1, line: 1747, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_CurrentLookahead_GUID)
!1831 = !DIGlobalVariable(name: "MSNdis_DriverVersion_GUID", scope: !0, file: !1, line: 1749, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_DriverVersion_GUID)
!1832 = !DIGlobalVariable(name: "MSNdis_MaximumTotalSize_GUID", scope: !0, file: !1, line: 1751, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_MaximumTotalSize_GUID)
!1833 = !DIGlobalVariable(name: "MSNdis_MacOptions_GUID", scope: !0, file: !1, line: 1753, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_MacOptions_GUID)
!1834 = !DIGlobalVariable(name: "MSNdis_MediaConnectStatus_GUID", scope: !0, file: !1, line: 1754, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_MediaConnectStatus_GUID)
!1835 = !DIGlobalVariable(name: "MSNdis_MaximumSendPackets_GUID", scope: !0, file: !1, line: 1756, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_MaximumSendPackets_GUID)
!1836 = !DIGlobalVariable(name: "MSNdis_VendorDriverVersion_GUID", scope: !0, file: !1, line: 1758, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_VendorDriverVersion_GUID)
!1837 = !DIGlobalVariable(name: "MSNdis_TransmitsOk_GUID", scope: !0, file: !1, line: 1760, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_TransmitsOk_GUID)
!1838 = !DIGlobalVariable(name: "MSNdis_ReceivesOk_GUID", scope: !0, file: !1, line: 1761, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_ReceivesOk_GUID)
!1839 = !DIGlobalVariable(name: "MSNdis_TransmitsError_GUID", scope: !0, file: !1, line: 1762, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_TransmitsError_GUID)
!1840 = !DIGlobalVariable(name: "MSNdis_ReceiveError_GUID", scope: !0, file: !1, line: 1764, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_ReceiveError_GUID)
!1841 = !DIGlobalVariable(name: "MSNdis_ReceiveNoBuffer_GUID", scope: !0, file: !1, line: 1766, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_ReceiveNoBuffer_GUID)
!1842 = !DIGlobalVariable(name: "MSNdis_CoHardwareStatus_GUID", scope: !0, file: !1, line: 1768, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_CoHardwareStatus_GUID)
!1843 = !DIGlobalVariable(name: "MSNdis_CoMediaSupported_GUID", scope: !0, file: !1, line: 1770, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_CoMediaSupported_GUID)
!1844 = !DIGlobalVariable(name: "MSNdis_CoMediaInUse_GUID", scope: !0, file: !1, line: 1772, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_CoMediaInUse_GUID)
!1845 = !DIGlobalVariable(name: "MSNdis_CoLinkSpeed_GUID", scope: !0, file: !1, line: 1774, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_CoLinkSpeed_GUID)
!1846 = !DIGlobalVariable(name: "MSNdis_CoVendorId_GUID", scope: !0, file: !1, line: 1775, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_CoVendorId_GUID)
!1847 = !DIGlobalVariable(name: "MSNdis_CoVendorDescription_GUID", scope: !0, file: !1, line: 1776, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_CoVendorDescription_GUID)
!1848 = !DIGlobalVariable(name: "MSNdis_CoDriverVersion_GUID", scope: !0, file: !1, line: 1778, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_CoDriverVersion_GUID)
!1849 = !DIGlobalVariable(name: "MSNdis_CoMacOptions_GUID", scope: !0, file: !1, line: 1780, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_CoMacOptions_GUID)
!1850 = !DIGlobalVariable(name: "MSNdis_CoMediaConnectStatus_GUID", scope: !0, file: !1, line: 1782, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_CoMediaConnectStatus_GUID)
!1851 = !DIGlobalVariable(name: "MSNdis_CoVendorDriverVersion_GUID", scope: !0, file: !1, line: 1784, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_CoVendorDriverVersion_GUID)
!1852 = !DIGlobalVariable(name: "MSNdis_CoMinimumLinkSpeed_GUID", scope: !0, file: !1, line: 1786, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_CoMinimumLinkSpeed_GUID)
!1853 = !DIGlobalVariable(name: "MSNdis_CoTransmitPdusOk_GUID", scope: !0, file: !1, line: 1788, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_CoTransmitPdusOk_GUID)
!1854 = !DIGlobalVariable(name: "MSNdis_CoReceivePdusOk_GUID", scope: !0, file: !1, line: 1790, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_CoReceivePdusOk_GUID)
!1855 = !DIGlobalVariable(name: "MSNdis_CoTransmitPduErrors_GUID", scope: !0, file: !1, line: 1792, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_CoTransmitPduErrors_GUID)
!1856 = !DIGlobalVariable(name: "MSNdis_CoReceivePduErrors_GUID", scope: !0, file: !1, line: 1794, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_CoReceivePduErrors_GUID)
!1857 = !DIGlobalVariable(name: "MSNdis_CoReceivePdusNoBuffer_GUID", scope: !0, file: !1, line: 1796, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_CoReceivePdusNoBuffer_GUID)
!1858 = !DIGlobalVariable(name: "MSNdis_AtmSupportedVcRates_GUID", scope: !0, file: !1, line: 1798, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_AtmSupportedVcRates_GUID)
!1859 = !DIGlobalVariable(name: "MSNdis_AtmSupportedServiceCategory_GUID", scope: !0, file: !1, line: 1800, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_AtmSupportedServiceCategory_GUID)
!1860 = !DIGlobalVariable(name: "MSNdis_AtmSupportedAalTypes_GUID", scope: !0, file: !1, line: 1802, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_AtmSupportedAalTypes_GUID)
!1861 = !DIGlobalVariable(name: "MSNdis_AtmHardwareCurrentAddress_GUID", scope: !0, file: !1, line: 1804, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_AtmHardwareCurrentAddress_GUID)
!1862 = !DIGlobalVariable(name: "MSNdis_AtmMaxActiveVcs_GUID", scope: !0, file: !1, line: 1806, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_AtmMaxActiveVcs_GUID)
!1863 = !DIGlobalVariable(name: "MSNdis_AtmMaxActiveVciBits_GUID", scope: !0, file: !1, line: 1808, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_AtmMaxActiveVciBits_GUID)
!1864 = !DIGlobalVariable(name: "MSNdis_AtmMaxActiveVpiBits_GUID", scope: !0, file: !1, line: 1810, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_AtmMaxActiveVpiBits_GUID)
!1865 = !DIGlobalVariable(name: "MSNdis_AtmMaxAal0PacketSize_GUID", scope: !0, file: !1, line: 1812, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_AtmMaxAal0PacketSize_GUID)
!1866 = !DIGlobalVariable(name: "MSNdis_AtmMaxAal1PacketSize_GUID", scope: !0, file: !1, line: 1814, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_AtmMaxAal1PacketSize_GUID)
!1867 = !DIGlobalVariable(name: "MSNdis_AtmMaxAal34PacketSize_GUID", scope: !0, file: !1, line: 1816, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_AtmMaxAal34PacketSize_GUID)
!1868 = !DIGlobalVariable(name: "MSNdis_AtmMaxAal5PacketSize_GUID", scope: !0, file: !1, line: 1818, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_AtmMaxAal5PacketSize_GUID)
!1869 = !DIGlobalVariable(name: "MSNdis_AtmReceiveCellsOk_GUID", scope: !0, file: !1, line: 1820, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_AtmReceiveCellsOk_GUID)
!1870 = !DIGlobalVariable(name: "MSNdis_AtmTransmitCellsOk_GUID", scope: !0, file: !1, line: 1822, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_AtmTransmitCellsOk_GUID)
!1871 = !DIGlobalVariable(name: "MSNdis_AtmReceiveCellsDropped_GUID", scope: !0, file: !1, line: 1824, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_AtmReceiveCellsDropped_GUID)
!1872 = !DIGlobalVariable(name: "MSNdis_EthernetPermanentAddress_GUID", scope: !0, file: !1, line: 1826, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_EthernetPermanentAddress_GUID)
!1873 = !DIGlobalVariable(name: "MSNdis_EthernetCurrentAddress_GUID", scope: !0, file: !1, line: 1828, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_EthernetCurrentAddress_GUID)
!1874 = !DIGlobalVariable(name: "MSNdis_EthernetMulticastList_GUID", scope: !0, file: !1, line: 1830, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_EthernetMulticastList_GUID)
!1875 = !DIGlobalVariable(name: "MSNdis_EthernetMaximumMulticastListSize_GUID", scope: !0, file: !1, line: 1832, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_EthernetMaximumMulticastListSize_GUID)
!1876 = !DIGlobalVariable(name: "MSNdis_EthernetMacOptions_GUID", scope: !0, file: !1, line: 1834, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_EthernetMacOptions_GUID)
!1877 = !DIGlobalVariable(name: "MSNdis_EthernetReceiveErrorAlignment_GUID", scope: !0, file: !1, line: 1836, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_EthernetReceiveErrorAlignment_GUID)
!1878 = !DIGlobalVariable(name: "MSNdis_EthernetOneTransmitCollision_GUID", scope: !0, file: !1, line: 1838, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_EthernetOneTransmitCollision_GUID)
!1879 = !DIGlobalVariable(name: "MSNdis_EthernetMoreTransmitCollisions_GUID", scope: !0, file: !1, line: 1840, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_EthernetMoreTransmitCollisions_GUID)
!1880 = !DIGlobalVariable(name: "MSNdis_TokenRingPermanentAddress_GUID", scope: !0, file: !1, line: 1842, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_TokenRingPermanentAddress_GUID)
!1881 = !DIGlobalVariable(name: "MSNdis_TokenRingCurrentAddress_GUID", scope: !0, file: !1, line: 1844, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_TokenRingCurrentAddress_GUID)
!1882 = !DIGlobalVariable(name: "MSNdis_TokenRingCurrentFunctional_GUID", scope: !0, file: !1, line: 1846, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_TokenRingCurrentFunctional_GUID)
!1883 = !DIGlobalVariable(name: "MSNdis_TokenRingCurrentGroup_GUID", scope: !0, file: !1, line: 1848, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_TokenRingCurrentGroup_GUID)
!1884 = !DIGlobalVariable(name: "MSNdis_TokenRingLastOpenStatus_GUID", scope: !0, file: !1, line: 1850, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_TokenRingLastOpenStatus_GUID)
!1885 = !DIGlobalVariable(name: "MSNdis_TokenRingCurrentRingStatus_GUID", scope: !0, file: !1, line: 1852, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_TokenRingCurrentRingStatus_GUID)
!1886 = !DIGlobalVariable(name: "MSNdis_TokenRingCurrentRingState_GUID", scope: !0, file: !1, line: 1854, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_TokenRingCurrentRingState_GUID)
!1887 = !DIGlobalVariable(name: "MSNdis_TokenRingLineErrors_GUID", scope: !0, file: !1, line: 1856, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_TokenRingLineErrors_GUID)
!1888 = !DIGlobalVariable(name: "MSNdis_TokenRingLostFrames_GUID", scope: !0, file: !1, line: 1858, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_TokenRingLostFrames_GUID)
!1889 = !DIGlobalVariable(name: "MSNdis_FddiLongPermanentAddress_GUID", scope: !0, file: !1, line: 1860, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_FddiLongPermanentAddress_GUID)
!1890 = !DIGlobalVariable(name: "MSNdis_FddiLongCurrentAddress_GUID", scope: !0, file: !1, line: 1862, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_FddiLongCurrentAddress_GUID)
!1891 = !DIGlobalVariable(name: "MSNdis_FddiLongMulticastList_GUID", scope: !0, file: !1, line: 1864, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_FddiLongMulticastList_GUID)
!1892 = !DIGlobalVariable(name: "MSNdis_FddiLongMaximumListSize_GUID", scope: !0, file: !1, line: 1866, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_FddiLongMaximumListSize_GUID)
!1893 = !DIGlobalVariable(name: "MSNdis_FddiShortPermanentAddress_GUID", scope: !0, file: !1, line: 1868, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_FddiShortPermanentAddress_GUID)
!1894 = !DIGlobalVariable(name: "MSNdis_FddiShortCurrentAddress_GUID", scope: !0, file: !1, line: 1870, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_FddiShortCurrentAddress_GUID)
!1895 = !DIGlobalVariable(name: "MSNdis_FddiShortMulticastList_GUID", scope: !0, file: !1, line: 1872, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_FddiShortMulticastList_GUID)
!1896 = !DIGlobalVariable(name: "MSNdis_FddiShortMaximumListSize_GUID", scope: !0, file: !1, line: 1874, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_FddiShortMaximumListSize_GUID)
!1897 = !DIGlobalVariable(name: "MSNdis_FddiAttachmentType_GUID", scope: !0, file: !1, line: 1876, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_FddiAttachmentType_GUID)
!1898 = !DIGlobalVariable(name: "MSNdis_FddiUpstreamNodeLong_GUID", scope: !0, file: !1, line: 1878, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_FddiUpstreamNodeLong_GUID)
!1899 = !DIGlobalVariable(name: "MSNdis_FddiDownstreamNodeLong_GUID", scope: !0, file: !1, line: 1880, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_FddiDownstreamNodeLong_GUID)
!1900 = !DIGlobalVariable(name: "MSNdis_FddiFrameErrors_GUID", scope: !0, file: !1, line: 1882, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_FddiFrameErrors_GUID)
!1901 = !DIGlobalVariable(name: "MSNdis_FddiFramesLost_GUID", scope: !0, file: !1, line: 1884, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_FddiFramesLost_GUID)
!1902 = !DIGlobalVariable(name: "MSNdis_FddiRingManagmentState_GUID", scope: !0, file: !1, line: 1886, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_FddiRingManagmentState_GUID)
!1903 = !DIGlobalVariable(name: "MSNdis_FddiLctFailures_GUID", scope: !0, file: !1, line: 1888, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_FddiLctFailures_GUID)
!1904 = !DIGlobalVariable(name: "MSNdis_FddiLemRejects_GUID", scope: !0, file: !1, line: 1890, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_FddiLemRejects_GUID)
!1905 = !DIGlobalVariable(name: "MSNdis_FddiLConnectionState_GUID", scope: !0, file: !1, line: 1892, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_FddiLConnectionState_GUID)
!1906 = !DIGlobalVariable(name: "MSNdis_StatusResetStart_GUID", scope: !0, file: !1, line: 1894, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_StatusResetStart_GUID)
!1907 = !DIGlobalVariable(name: "MSNdis_StatusResetEnd_GUID", scope: !0, file: !1, line: 1896, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_StatusResetEnd_GUID)
!1908 = !DIGlobalVariable(name: "MSNdis_StatusMediaConnect_GUID", scope: !0, file: !1, line: 1898, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_StatusMediaConnect_GUID)
!1909 = !DIGlobalVariable(name: "MSNdis_StatusMediaDisconnect_GUID", scope: !0, file: !1, line: 1900, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_StatusMediaDisconnect_GUID)
!1910 = !DIGlobalVariable(name: "MSNdis_StatusMediaSpecificIndication_GUID", scope: !0, file: !1, line: 1902, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_StatusMediaSpecificIndication_GUID)
!1911 = !DIGlobalVariable(name: "MSNdis_StatusLinkSpeedChange_GUID", scope: !0, file: !1, line: 1904, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_StatusLinkSpeedChange_GUID)
!1912 = !DIGlobalVariable(name: "MSNdis_StatusProtocolBind_GUID", scope: !0, file: !1, line: 1906, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_StatusProtocolBind_GUID)
!1913 = !DIGlobalVariable(name: "MSNdis_StatusProtocolUnbind_GUID", scope: !0, file: !1, line: 1908, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSNdis_StatusProtocolUnbind_GUID)
!1914 = !DIGlobalVariable(name: "MSKeyboard_PortInformation_GUID", scope: !0, file: !1, line: 1910, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSKeyboard_PortInformation_GUID)
!1915 = !DIGlobalVariable(name: "MSMouse_PortInformation_GUID", scope: !0, file: !1, line: 1912, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSMouse_PortInformation_GUID)
!1916 = !DIGlobalVariable(name: "MSMouse_ClassInformation_GUID", scope: !0, file: !1, line: 1914, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSMouse_ClassInformation_GUID)
!1917 = !DIGlobalVariable(name: "MSKeyboard_ClassInformation_GUID", scope: !0, file: !1, line: 1916, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSKeyboard_ClassInformation_GUID)
!1918 = !DIGlobalVariable(name: "MSAcpi_ThermalZoneTemperature_GUID", scope: !0, file: !1, line: 1918, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSAcpi_ThermalZoneTemperature_GUID)
!1919 = !DIGlobalVariable(name: "MSDiskDriver_Geometry_GUID", scope: !0, file: !1, line: 1920, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSDiskDriver_Geometry_GUID)
!1920 = !DIGlobalVariable(name: "MSDiskDriver_PerformanceData_GUID", scope: !0, file: !1, line: 1922, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSDiskDriver_PerformanceData_GUID)
!1921 = !DIGlobalVariable(name: "MSDiskDriver_Performance_GUID", scope: !0, file: !1, line: 1924, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSDiskDriver_Performance_GUID)
!1922 = !DIGlobalVariable(name: "MSStorageDriver_FailurePredictStatus_GUID", scope: !0, file: !1, line: 1926, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSStorageDriver_FailurePredictStatus_GUID)
!1923 = !DIGlobalVariable(name: "MSStorageDriver_FailurePredictData_GUID", scope: !0, file: !1, line: 1928, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSStorageDriver_FailurePredictData_GUID)
!1924 = !DIGlobalVariable(name: "MSStorageDriver_FailurePredictEvent_GUID", scope: !0, file: !1, line: 1930, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSStorageDriver_FailurePredictEvent_GUID)
!1925 = !DIGlobalVariable(name: "MSStorageDriver_FailurePredictFunction_GUID", scope: !0, file: !1, line: 1932, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSStorageDriver_FailurePredictFunction_GUID)
!1926 = !DIGlobalVariable(name: "MSIde_PortDeviceInfo_GUID", scope: !0, file: !1, line: 1934, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSIde_PortDeviceInfo_GUID)
!1927 = !DIGlobalVariable(name: "MSSerial_PortName_GUID", scope: !0, file: !1, line: 1936, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSSerial_PortName_GUID)
!1928 = !DIGlobalVariable(name: "MSSerial_CommInfo_GUID", scope: !0, file: !1, line: 1937, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSSerial_CommInfo_GUID)
!1929 = !DIGlobalVariable(name: "MSSerial_HardwareConfiguration_GUID", scope: !0, file: !1, line: 1938, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSSerial_HardwareConfiguration_GUID)
!1930 = !DIGlobalVariable(name: "MSSerial_PerformanceInformation_GUID", scope: !0, file: !1, line: 1940, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSSerial_PerformanceInformation_GUID)
!1931 = !DIGlobalVariable(name: "MSSerial_CommProperties_GUID", scope: !0, file: !1, line: 1942, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSSerial_CommProperties_GUID)
!1932 = !DIGlobalVariable(name: "MSParallel_AllocFreeCounts_GUID", scope: !0, file: !1, line: 1944, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSParallel_AllocFreeCounts_GUID)
!1933 = !DIGlobalVariable(name: "MSParallel_DeviceBytesTransferred_GUID", scope: !0, file: !1, line: 1946, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSParallel_DeviceBytesTransferred_GUID)
!1934 = !DIGlobalVariable(name: "MSRedbook_DriverInformationGuid", scope: !0, file: !1, line: 1948, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSRedbook_DriverInformationGuid)
!1935 = !DIGlobalVariable(name: "MSRedbook_PerformanceGuid", scope: !0, file: !1, line: 1950, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @MSRedbook_PerformanceGuid)
!1936 = !DIGlobalVariable(name: "RegisteredGuids_GUID", scope: !0, file: !1, line: 1952, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @RegisteredGuids_GUID)
!1937 = !DIGlobalVariable(name: "DiskPerfGuid", scope: !0, file: !1, line: 1953, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @DiskPerfGuid)
!1938 = !DIGlobalVariable(name: "THERMAL_ZONE_GUID", scope: !0, file: !1, line: 1954, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @THERMAL_ZONE_GUID)
!1939 = !DIGlobalVariable(name: "GlobalLoggerGuid", scope: !0, file: !1, line: 1955, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @GlobalLoggerGuid)
!1940 = !DIGlobalVariable(name: "GenericMessageGuid", scope: !0, file: !1, line: 1956, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @GenericMessageGuid)
!1941 = !DIGlobalVariable(name: "ProcessGuid", scope: !0, file: !1, line: 1957, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @ProcessGuid)
!1942 = !DIGlobalVariable(name: "ThreadGuid", scope: !0, file: !1, line: 1958, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @ThreadGuid)
!1943 = !DIGlobalVariable(name: "HardFaultGuid", scope: !0, file: !1, line: 1959, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @HardFaultGuid)
!1944 = !DIGlobalVariable(name: "PageFaultGuid", scope: !0, file: !1, line: 1960, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @PageFaultGuid)
!1945 = !DIGlobalVariable(name: "DiskIoGuid", scope: !0, file: !1, line: 1961, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @DiskIoGuid)
!1946 = !DIGlobalVariable(name: "FileIoGuid", scope: !0, file: !1, line: 1962, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @FileIoGuid)
!1947 = !DIGlobalVariable(name: "TcpIpGuid", scope: !0, file: !1, line: 1963, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @TcpIpGuid)
!1948 = !DIGlobalVariable(name: "UdpIpGuid", scope: !0, file: !1, line: 1964, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @UdpIpGuid)
!1949 = !DIGlobalVariable(name: "ImageLoadGuid", scope: !0, file: !1, line: 1965, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @ImageLoadGuid)
!1950 = !DIGlobalVariable(name: "RegistryGuid", scope: !0, file: !1, line: 1966, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @RegistryGuid)
!1951 = !DIGlobalVariable(name: "TraceErrorGuid", scope: !0, file: !1, line: 1967, type: !1790, isLocal: false, isDefinition: true, variable: %struct._GUID* @TraceErrorGuid)
!1952 = !DIGlobalVariable(name: "DiskperfGuidList", scope: !0, file: !1, line: 2059, type: !1953, isLocal: false, isDefinition: true, variable: [1 x %struct.__anonstruct_WMIGUIDREGINFO_130]* @DiskperfGuidList)
!1953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1954, size: 192, align: 64, elements: !778)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "WMIGUIDREGINFO", file: !1, line: 1407, baseType: !1382)
!1955 = !DIGlobalVariable(name: "KeNumberProcessors", scope: !0, file: !1, line: 1486, type: !1956, isLocal: false, isDefinition: true, variable: i8** @KeNumberProcessors)
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "PCCHAR", file: !1, line: 35, baseType: !1957)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64, align: 64)
!1958 = !DIGlobalVariable(name: "s", scope: !0, file: !1, line: 1979, type: !1422, isLocal: false, isDefinition: true, variable: i32* @s)
!1959 = !DIGlobalVariable(name: "UNLOADED", scope: !0, file: !1, line: 1980, type: !1422, isLocal: false, isDefinition: true, variable: i32* @UNLOADED)
!1960 = !DIGlobalVariable(name: "NP", scope: !0, file: !1, line: 1981, type: !1422, isLocal: false, isDefinition: true, variable: i32* @NP)
!1961 = !DIGlobalVariable(name: "DC", scope: !0, file: !1, line: 1982, type: !1422, isLocal: false, isDefinition: true, variable: i32* @DC)
!1962 = !DIGlobalVariable(name: "SKIP1", scope: !0, file: !1, line: 1983, type: !1422, isLocal: false, isDefinition: true, variable: i32* @SKIP1)
!1963 = !DIGlobalVariable(name: "SKIP2", scope: !0, file: !1, line: 1984, type: !1422, isLocal: false, isDefinition: true, variable: i32* @SKIP2)
!1964 = !DIGlobalVariable(name: "MPR1", scope: !0, file: !1, line: 1985, type: !1422, isLocal: false, isDefinition: true, variable: i32* @MPR1)
!1965 = !DIGlobalVariable(name: "MPR3", scope: !0, file: !1, line: 1986, type: !1422, isLocal: false, isDefinition: true, variable: i32* @MPR3)
!1966 = !DIGlobalVariable(name: "IPC", scope: !0, file: !1, line: 1987, type: !1422, isLocal: false, isDefinition: true, variable: i32* @IPC)
!1967 = !DIGlobalVariable(name: "pended", scope: !0, file: !1, line: 1988, type: !1422, isLocal: false, isDefinition: true, variable: i32* @pended)
!1968 = !DIGlobalVariable(name: "compFptr", scope: !0, file: !1, line: 1989, type: !1198, isLocal: false, isDefinition: true, variable: i64 (%struct._DEVICE_OBJECT*, %struct._IRP*, i8*)** @compFptr)
!1969 = !DIGlobalVariable(name: "compRegistered", scope: !0, file: !1, line: 1990, type: !1422, isLocal: false, isDefinition: true, variable: i32* @compRegistered)
!1970 = !DIGlobalVariable(name: "lowerDriverReturn", scope: !0, file: !1, line: 1991, type: !1422, isLocal: false, isDefinition: true, variable: i32* @lowerDriverReturn)
!1971 = !DIGlobalVariable(name: "setEventCalled", scope: !0, file: !1, line: 1992, type: !1422, isLocal: false, isDefinition: true, variable: i32* @setEventCalled)
!1972 = !DIGlobalVariable(name: "customIrp", scope: !0, file: !1, line: 1993, type: !1422, isLocal: false, isDefinition: true, variable: i32* @customIrp)
!1973 = !DIGlobalVariable(name: "myStatus", scope: !0, file: !1, line: 1994, type: !1422, isLocal: false, isDefinition: true, variable: i32* @myStatus)
!1974 = !DIGlobalVariable(name: "routine", scope: !0, file: !1, line: 1995, type: !1422, isLocal: false, isDefinition: true, variable: i32* @routine)
!1975 = !DIGlobalVariable(name: "DiskPerfRegistryPath", scope: !0, file: !1, line: 2018, type: !305, isLocal: false, isDefinition: true, variable: %struct._UNICODE_STRING* @DiskPerfRegistryPath)
!1976 = !DIGlobalVariable(name: "pirp", scope: !0, file: !1, line: 3144, type: !1977, isLocal: false, isDefinition: true, variable: %struct._IRP** @pirp)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64, align: 64)
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRP", file: !1, line: 1070, baseType: !606)
!1979 = !DIGlobalVariable(name: "_SLAM_alloc_dummy", scope: !0, file: !1, line: 3329, type: !624, isLocal: false, isDefinition: true, variable: i8* @_SLAM_alloc_dummy)
!1980 = !{i32 2, !"Dwarf Version", i32 2}
!1981 = !{i32 2, !"Debug Info Version", i32 3}
!1982 = !{i32 1, !"PIC Level", i32 2}
!1983 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1984 = !DILocation(line: 1522, column: 3, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 1521, column: 3)
!1986 = !DILocation(line: 1975, column: 3, scope: !1464)
!1987 = !DILocation(line: 1976, column: 10, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1464, file: !1, line: 1975, column: 3)
!1989 = !DILocation(line: 1978, column: 1, scope: !1464)
!1990 = !DILocation(line: 2000, column: 12, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1467, file: !1, line: 1999, column: 3)
!1992 = !DILocation(line: 2001, column: 6, scope: !1991)
!1993 = !DILocation(line: 2002, column: 6, scope: !1991)
!1994 = !DILocation(line: 2003, column: 9, scope: !1991)
!1995 = !DILocation(line: 2004, column: 9, scope: !1991)
!1996 = !DILocation(line: 2005, column: 8, scope: !1991)
!1997 = !DILocation(line: 2006, column: 8, scope: !1991)
!1998 = !DILocation(line: 2007, column: 7, scope: !1991)
!1999 = !DILocation(line: 2008, column: 7, scope: !1991)
!2000 = !DILocation(line: 2008, column: 5, scope: !1991)
!2001 = !DILocation(line: 2009, column: 10, scope: !1991)
!2002 = !DILocation(line: 2010, column: 12, scope: !1991)
!2003 = !DILocation(line: 2011, column: 18, scope: !1991)
!2004 = !DILocation(line: 2012, column: 21, scope: !1991)
!2005 = !DILocation(line: 2013, column: 18, scope: !1991)
!2006 = !DILocation(line: 2014, column: 13, scope: !1991)
!2007 = !DILocation(line: 2015, column: 3, scope: !1991)
!2008 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DriverObject", arg: 1, scope: !1468, file: !1, line: 2060, type: !1471)
!2009 = !DIExpression()
!2010 = !DILocation(line: 2060, column: 37, scope: !1468)
!2011 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "RegistryPath", arg: 2, scope: !1468, file: !1, line: 2060, type: !317)
!2012 = !DILocation(line: 2060, column: 68, scope: !1468)
!2013 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dispatch", scope: !1468, file: !1, line: 2061, type: !2014)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64, align: 64)
!2015 = !DILocation(line: 2061, column: 21, scope: !1468)
!2016 = !DILocation(line: 2061, column: 32, scope: !1468)
!2017 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1468, file: !1, line: 2062, type: !289)
!2018 = !DILocation(line: 2062, column: 9, scope: !1468)
!2019 = !DILocation(line: 2066, column: 55, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !1, line: 2065, column: 3)
!2021 = distinct !DILexicalBlock(scope: !1468, file: !1, line: 2064, column: 3)
!2022 = !DILocation(line: 2066, column: 69, scope: !2020)
!2023 = !DILocation(line: 2066, column: 40, scope: !2020)
!2024 = !DILocation(line: 2066, column: 76, scope: !2020)
!2025 = !DILocation(line: 2066, column: 38, scope: !2020)
!2026 = !DILocation(line: 2067, column: 55, scope: !2020)
!2027 = !DILocation(line: 2067, column: 34, scope: !2020)
!2028 = !DILocation(line: 2067, column: 9, scope: !2020)
!2029 = !DILocation(line: 3367, column: 16, scope: !2030, inlinedAt: !2032)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !1, line: 3366, column: 3)
!2031 = distinct !DILexicalBlock(scope: !1531, file: !1, line: 3365, column: 3)
!2032 = distinct !DILocation(line: 2067, column: 9, scope: !2020)
!2033 = !DILocation(line: 3367, column: 9, scope: !2030, inlinedAt: !2032)
!2034 = !DILocation(line: 3331, column: 28, scope: !1514, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 3367, column: 9, scope: !2030, inlinedAt: !2032)
!2036 = !DILocation(line: 3331, column: 7, scope: !1514, inlinedAt: !2035)
!2037 = !DILocation(line: 3334, column: 7, scope: !2038, inlinedAt: !2035)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !1, line: 3334, column: 7)
!2039 = distinct !DILexicalBlock(scope: !1514, file: !1, line: 3333, column: 3)
!2040 = !DILocation(line: 3334, column: 7, scope: !2039, inlinedAt: !2035)
!2041 = !DILocation(line: 3335, column: 5, scope: !2042, inlinedAt: !2035)
!2042 = distinct !DILexicalBlock(scope: !2038, file: !1, line: 3334, column: 27)
!2043 = !DILocation(line: 3337, column: 5, scope: !2044, inlinedAt: !2035)
!2044 = distinct !DILexicalBlock(scope: !2038, file: !1, line: 3336, column: 10)
!2045 = !DILocation(line: 3340, column: 1, scope: !1514, inlinedAt: !2035)
!2046 = !DILocation(line: 3367, column: 7, scope: !2030, inlinedAt: !2032)
!2047 = !DILocation(line: 3368, column: 7, scope: !2030, inlinedAt: !2032)
!2048 = !DILocation(line: 3368, column: 5, scope: !2030, inlinedAt: !2032)
!2049 = !DILocation(line: 3370, column: 11, scope: !2031, inlinedAt: !2032)
!2050 = !DILocation(line: 3370, column: 3, scope: !2031, inlinedAt: !2032)
!2051 = !DILocation(line: 2067, column: 7, scope: !2020)
!2052 = !DILocation(line: 2068, column: 33, scope: !2020)
!2053 = !DILocation(line: 2068, column: 31, scope: !2020)
!2054 = !DILocation(line: 2070, column: 43, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2021, file: !1, line: 2070, column: 7)
!2056 = !DILocation(line: 2070, column: 7, scope: !2055)
!2057 = !DILocation(line: 2070, column: 50, scope: !2055)
!2058 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 1, scope: !1514, file: !1, line: 3330, type: !1422)
!2059 = !DILocation(line: 3330, column: 18, scope: !1514, inlinedAt: !2035)
!2060 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1514, file: !1, line: 3331, type: !1422)
!2061 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PoolType", arg: 1, scope: !1531, file: !1, line: 3360, type: !1534)
!2062 = !DILocation(line: 3360, column: 39, scope: !1531, inlinedAt: !2032)
!2063 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "NumberOfBytes", arg: 2, scope: !1531, file: !1, line: 3360, type: !1535)
!2064 = !DILocation(line: 3360, column: 57, scope: !1531, inlinedAt: !2032)
!2065 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Tag", arg: 3, scope: !1531, file: !1, line: 3361, type: !286)
!2066 = !DILocation(line: 3361, column: 67, scope: !1531, inlinedAt: !2032)
!2067 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !1531, file: !1, line: 3362, type: !289)
!2068 = !DILocation(line: 3362, column: 9, scope: !1531, inlinedAt: !2032)
!2069 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1531, file: !1, line: 3363, type: !1458)
!2070 = !DILocation(line: 3363, column: 9, scope: !1531, inlinedAt: !2032)
!2071 = !DILocation(line: 2070, column: 7, scope: !2021)
!2072 = !DILocation(line: 2074, column: 3, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2055, file: !1, line: 2070, column: 81)
!2074 = !DILocation(line: 2075, column: 33, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2055, file: !1, line: 2074, column: 10)
!2076 = !DILocation(line: 2076, column: 40, scope: !2075)
!2077 = !DILocation(line: 2078, column: 4, scope: !2021)
!2078 = !DILocation(line: 2078, column: 13, scope: !2021)
!2079 = !DILocation(line: 2079, column: 3, scope: !2021)
!2080 = !DILocation(line: 2079, column: 17, scope: !2021)
!2081 = !DILocation(line: 2079, column: 34, scope: !2021)
!2082 = !DILocation(line: 2080, column: 3, scope: !2021)
!2083 = !DILocation(line: 2080, column: 17, scope: !2021)
!2084 = !DILocation(line: 2080, column: 34, scope: !2021)
!2085 = !DILocation(line: 2081, column: 3, scope: !2021)
!2086 = !DILocation(line: 2081, column: 17, scope: !2021)
!2087 = !DILocation(line: 2081, column: 34, scope: !2021)
!2088 = !DILocation(line: 2082, column: 3, scope: !2021)
!2089 = !DILocation(line: 2082, column: 17, scope: !2021)
!2090 = !DILocation(line: 2082, column: 35, scope: !2021)
!2091 = !DILocation(line: 2083, column: 3, scope: !2021)
!2092 = !DILocation(line: 2083, column: 17, scope: !2021)
!2093 = !DILocation(line: 2083, column: 35, scope: !2021)
!2094 = !DILocation(line: 2084, column: 3, scope: !2021)
!2095 = !DILocation(line: 2084, column: 17, scope: !2021)
!2096 = !DILocation(line: 2084, column: 35, scope: !2021)
!2097 = !DILocation(line: 2085, column: 3, scope: !2021)
!2098 = !DILocation(line: 2085, column: 17, scope: !2021)
!2099 = !DILocation(line: 2085, column: 34, scope: !2021)
!2100 = !DILocation(line: 2086, column: 3, scope: !2021)
!2101 = !DILocation(line: 2086, column: 17, scope: !2021)
!2102 = !DILocation(line: 2086, column: 35, scope: !2021)
!2103 = !DILocation(line: 2087, column: 3, scope: !2021)
!2104 = !DILocation(line: 2087, column: 17, scope: !2021)
!2105 = !DILocation(line: 2087, column: 35, scope: !2021)
!2106 = !DILocation(line: 2088, column: 4, scope: !2021)
!2107 = !DILocation(line: 2088, column: 18, scope: !2021)
!2108 = !DILocation(line: 2088, column: 36, scope: !2021)
!2109 = !DILocation(line: 2088, column: 46, scope: !2021)
!2110 = !DILocation(line: 2089, column: 3, scope: !2021)
!2111 = !DILocation(line: 2089, column: 17, scope: !2021)
!2112 = !DILocation(line: 2089, column: 30, scope: !2021)
!2113 = !DILocation(line: 2090, column: 3, scope: !2021)
!2114 = !DILocation(line: 3360, column: 39, scope: !1531)
!2115 = !DILocation(line: 3360, column: 57, scope: !1531)
!2116 = !DILocation(line: 3361, column: 67, scope: !1531)
!2117 = !DILocation(line: 3362, column: 9, scope: !1531)
!2118 = !DILocation(line: 3363, column: 9, scope: !1531)
!2119 = !DILocation(line: 3367, column: 16, scope: !2030)
!2120 = !DILocation(line: 3367, column: 9, scope: !2030)
!2121 = !DILocation(line: 3331, column: 28, scope: !1514, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 3367, column: 9, scope: !2030)
!2123 = !DILocation(line: 3331, column: 7, scope: !1514, inlinedAt: !2122)
!2124 = !DILocation(line: 3334, column: 7, scope: !2038, inlinedAt: !2122)
!2125 = !DILocation(line: 3334, column: 7, scope: !2039, inlinedAt: !2122)
!2126 = !DILocation(line: 3335, column: 5, scope: !2042, inlinedAt: !2122)
!2127 = !DILocation(line: 3337, column: 5, scope: !2044, inlinedAt: !2122)
!2128 = !DILocation(line: 3340, column: 1, scope: !1514, inlinedAt: !2122)
!2129 = !DILocation(line: 3367, column: 7, scope: !2030)
!2130 = !DILocation(line: 3368, column: 7, scope: !2030)
!2131 = !DILocation(line: 3368, column: 5, scope: !2030)
!2132 = !DILocation(line: 3370, column: 11, scope: !2031)
!2133 = !DILocation(line: 3330, column: 18, scope: !1514, inlinedAt: !2122)
!2134 = !DILocation(line: 3370, column: 3, scope: !2031)
!2135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1484, file: !1, line: 2265, type: !265)
!2136 = !DILocation(line: 2265, column: 50, scope: !1484)
!2137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1484, file: !1, line: 2265, type: !1201)
!2138 = !DILocation(line: 2265, column: 70, scope: !1484)
!2139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !1484, file: !1, line: 2266, type: !2140)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "PDEVICE_EXTENSION", file: !1, line: 1462, baseType: !261)
!2141 = !DILocation(line: 2266, column: 21, scope: !1484)
!2142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1484, file: !1, line: 2267, type: !302)
!2143 = !DILocation(line: 2267, column: 12, scope: !1484)
!2144 = !DILocation(line: 2270, column: 7, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !1, line: 2270, column: 7)
!2146 = distinct !DILexicalBlock(scope: !1484, file: !1, line: 2269, column: 3)
!2147 = !DILocation(line: 2270, column: 12, scope: !2145)
!2148 = !DILocation(line: 2270, column: 9, scope: !2145)
!2149 = !DILocation(line: 2270, column: 7, scope: !2146)
!2150 = !DILocation(line: 2271, column: 9, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2145, file: !1, line: 2270, column: 16)
!2152 = !DILocation(line: 2271, column: 7, scope: !2151)
!2153 = !DILocation(line: 2272, column: 3, scope: !2151)
!2154 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 2274, column: 5, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !1, line: 2273, column: 5)
!2157 = distinct !DILexicalBlock(scope: !2145, file: !1, line: 2272, column: 10)
!2158 = !DILocation(line: 2278, column: 40, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2146, file: !1, line: 2277, column: 3)
!2160 = !DILocation(line: 2278, column: 45, scope: !2159)
!2161 = !DILocation(line: 2278, column: 34, scope: !2159)
!2162 = !DILocation(line: 2278, column: 61, scope: !2159)
!2163 = !DILocation(line: 2278, column: 26, scope: !2159)
!2164 = !DILocation(line: 2278, column: 3, scope: !2159)
!2165 = !DILocation(line: 2278, column: 8, scope: !2159)
!2166 = !DILocation(line: 2278, column: 24, scope: !2159)
!2167 = !DILocation(line: 2279, column: 3, scope: !2159)
!2168 = !DILocation(line: 2279, column: 8, scope: !2159)
!2169 = !DILocation(line: 2279, column: 13, scope: !2159)
!2170 = !DILocation(line: 2279, column: 21, scope: !2159)
!2171 = !DILocation(line: 2279, column: 40, scope: !2159)
!2172 = !DILocation(line: 2279, column: 59, scope: !2159)
!2173 = !DILocation(line: 2279, column: 80, scope: !2159)
!2174 = !DILocation(line: 2280, column: 49, scope: !2159)
!2175 = !DILocation(line: 2280, column: 63, scope: !2159)
!2176 = !DILocation(line: 2280, column: 21, scope: !2159)
!2177 = !DILocation(line: 2280, column: 19, scope: !2159)
!2178 = !DILocation(line: 2281, column: 23, scope: !2159)
!2179 = !DILocation(line: 2281, column: 40, scope: !2159)
!2180 = !DILocation(line: 2281, column: 60, scope: !2159)
!2181 = !DILocation(line: 2281, column: 9, scope: !2159)
!2182 = !DILocation(line: 2281, column: 7, scope: !2159)
!2183 = !DILocation(line: 2283, column: 11, scope: !2146)
!2184 = !DILocation(line: 2283, column: 3, scope: !2146)
!2185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1487, file: !1, line: 2363, type: !265)
!2186 = !DILocation(line: 2363, column: 40, scope: !1487)
!2187 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1487, file: !1, line: 2363, type: !1201)
!2188 = !DILocation(line: 2363, column: 60, scope: !1487)
!2189 = !DILocation(line: 2368, column: 3, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !1, line: 2367, column: 3)
!2191 = distinct !DILexicalBlock(scope: !1487, file: !1, line: 2366, column: 3)
!2192 = !DILocation(line: 2368, column: 8, scope: !2190)
!2193 = !DILocation(line: 2368, column: 17, scope: !2190)
!2194 = !DILocation(line: 2368, column: 35, scope: !2190)
!2195 = !DILocation(line: 2368, column: 42, scope: !2190)
!2196 = !DILocation(line: 2369, column: 12, scope: !2190)
!2197 = !DILocation(line: 2370, column: 22, scope: !2190)
!2198 = !DILocation(line: 2370, column: 3, scope: !2190)
!2199 = !DILocation(line: 3883, column: 7, scope: !2200, inlinedAt: !2202)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !1, line: 3883, column: 7)
!2201 = distinct !DILexicalBlock(scope: !1633, file: !1, line: 3882, column: 3)
!2202 = distinct !DILocation(line: 2370, column: 3, scope: !2190)
!2203 = !DILocation(line: 3883, column: 12, scope: !2200, inlinedAt: !2202)
!2204 = !DILocation(line: 3883, column: 9, scope: !2200, inlinedAt: !2202)
!2205 = !DILocation(line: 3883, column: 7, scope: !2201, inlinedAt: !2202)
!2206 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 3887, column: 5, scope: !2208, inlinedAt: !2202)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !1, line: 3886, column: 5)
!2209 = distinct !DILexicalBlock(scope: !2200, file: !1, line: 3885, column: 10)
!2210 = !DILocation(line: 3884, column: 9, scope: !2211, inlinedAt: !2202)
!2211 = distinct !DILexicalBlock(scope: !2200, file: !1, line: 3883, column: 16)
!2212 = !DILocation(line: 3884, column: 7, scope: !2211, inlinedAt: !2202)
!2213 = !DILocation(line: 3890, column: 3, scope: !2201, inlinedAt: !2202)
!2214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !1633, file: !1, line: 3879, type: !1201)
!2215 = !DILocation(line: 3879, column: 30, scope: !1633, inlinedAt: !2202)
!2216 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PriorityBoost", arg: 2, scope: !1633, file: !1, line: 3879, type: !623)
!2217 = !DILocation(line: 3879, column: 42, scope: !1633, inlinedAt: !2202)
!2218 = !DILocation(line: 2372, column: 3, scope: !2191)
!2219 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1488, file: !1, line: 2375, type: !265)
!2220 = !DILocation(line: 2375, column: 43, scope: !1488)
!2221 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1488, file: !1, line: 2375, type: !1201)
!2222 = !DILocation(line: 2375, column: 63, scope: !1488)
!2223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !1488, file: !1, line: 2376, type: !2140)
!2224 = !DILocation(line: 2376, column: 21, scope: !1488)
!2225 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack", scope: !1488, file: !1, line: 2377, type: !2226)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "PIO_STACK_LOCATION", file: !1, line: 1317, baseType: !691)
!2227 = !DILocation(line: 2377, column: 22, scope: !1488)
!2228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpStack", scope: !1488, file: !1, line: 2378, type: !2226)
!2229 = !DILocation(line: 2378, column: 22, scope: !1488)
!2230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor", scope: !1488, file: !1, line: 2379, type: !286)
!2231 = !DILocation(line: 2379, column: 9, scope: !1488)
!2232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1488, file: !1, line: 2380, type: !286)
!2233 = !DILocation(line: 2380, column: 9, scope: !1488)
!2234 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partitionCounters", scope: !1488, file: !1, line: 2381, type: !1348)
!2235 = !DILocation(line: 2381, column: 21, scope: !1488)
!2236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "queueLen", scope: !1488, file: !1, line: 2382, type: !276)
!2237 = !DILocation(line: 2382, column: 8, scope: !1488)
!2238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeStamp", scope: !1488, file: !1, line: 2383, type: !427)
!2239 = !DILocation(line: 2383, column: 18, scope: !1488)
!2240 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___0", scope: !1488, file: !1, line: 2384, type: !302)
!2241 = !DILocation(line: 2384, column: 12, scope: !1488)
!2242 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !1488, file: !1, line: 2385, type: !2226)
!2243 = !DILocation(line: 2385, column: 22, scope: !1488)
!2244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___1", scope: !1488, file: !1, line: 2386, type: !302)
!2245 = !DILocation(line: 2386, column: 12, scope: !1488)
!2246 = !DILocation(line: 2390, column: 21, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !1, line: 2389, column: 3)
!2248 = distinct !DILexicalBlock(scope: !1488, file: !1, line: 2388, column: 3)
!2249 = !DILocation(line: 2390, column: 35, scope: !2247)
!2250 = !DILocation(line: 2390, column: 19, scope: !2247)
!2251 = !DILocation(line: 2391, column: 21, scope: !2247)
!2252 = !DILocation(line: 2391, column: 26, scope: !2247)
!2253 = !DILocation(line: 2391, column: 31, scope: !2247)
!2254 = !DILocation(line: 2391, column: 39, scope: !2247)
!2255 = !DILocation(line: 2391, column: 58, scope: !2247)
!2256 = !DILocation(line: 2391, column: 77, scope: !2247)
!2257 = !DILocation(line: 2391, column: 19, scope: !2247)
!2258 = !DILocation(line: 2392, column: 18, scope: !2247)
!2259 = !DILocation(line: 2392, column: 23, scope: !2247)
!2260 = !DILocation(line: 2392, column: 28, scope: !2247)
!2261 = !DILocation(line: 2392, column: 36, scope: !2247)
!2262 = !DILocation(line: 2392, column: 55, scope: !2247)
!2263 = !DILocation(line: 2392, column: 74, scope: !2247)
!2264 = !DILocation(line: 2392, column: 95, scope: !2247)
!2265 = !DILocation(line: 2392, column: 16, scope: !2247)
!2266 = !DILocation(line: 2393, column: 7, scope: !2247)
!2267 = !DILocation(line: 2394, column: 15, scope: !2247)
!2268 = !DILocation(line: 2394, column: 13, scope: !2247)
!2269 = !DILocation(line: 2395, column: 21, scope: !2247)
!2270 = !DILocation(line: 2397, column: 22, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2248, file: !1, line: 2397, column: 7)
!2272 = !DILocation(line: 2397, column: 39, scope: !2271)
!2273 = !DILocation(line: 2397, column: 7, scope: !2271)
!2274 = !DILocation(line: 2397, column: 52, scope: !2271)
!2275 = !DILocation(line: 2265, column: 50, scope: !1484, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 2404, column: 15, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !1, line: 2403, column: 5)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !1, line: 2402, column: 47)
!2279 = distinct !DILexicalBlock(scope: !2248, file: !1, line: 2402, column: 7)
!2280 = !DILocation(line: 2265, column: 70, scope: !1484, inlinedAt: !2276)
!2281 = !DILocation(line: 2266, column: 21, scope: !1484, inlinedAt: !2276)
!2282 = !DILocation(line: 2267, column: 12, scope: !1484, inlinedAt: !2276)
!2283 = !DILocation(line: 2265, column: 50, scope: !1484, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 2410, column: 17, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !1, line: 2409, column: 7)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !1, line: 2408, column: 66)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !1, line: 2408, column: 9)
!2288 = distinct !DILexicalBlock(scope: !2279, file: !1, line: 2407, column: 10)
!2289 = !DILocation(line: 2265, column: 70, scope: !1484, inlinedAt: !2284)
!2290 = !DILocation(line: 2266, column: 21, scope: !1484, inlinedAt: !2284)
!2291 = !DILocation(line: 2267, column: 12, scope: !1484, inlinedAt: !2284)
!2292 = !DILocation(line: 2265, column: 50, scope: !1484, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 2416, column: 19, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !1, line: 2415, column: 9)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !1, line: 2414, column: 75)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !1, line: 2414, column: 11)
!2297 = distinct !DILexicalBlock(scope: !2287, file: !1, line: 2413, column: 12)
!2298 = !DILocation(line: 2265, column: 70, scope: !1484, inlinedAt: !2293)
!2299 = !DILocation(line: 2266, column: 21, scope: !1484, inlinedAt: !2293)
!2300 = !DILocation(line: 2267, column: 12, scope: !1484, inlinedAt: !2293)
!2301 = !DILocation(line: 2397, column: 7, scope: !2248)
!2302 = !DILocation(line: 2398, column: 62, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2271, file: !1, line: 2397, column: 83)
!2304 = !DILocation(line: 2398, column: 79, scope: !2303)
!2305 = !DILocation(line: 2398, column: 54, scope: !2303)
!2306 = !DILocation(line: 2398, column: 94, scope: !2303)
!2307 = !DILocation(line: 2398, column: 104, scope: !2303)
!2308 = !DILocation(line: 2398, column: 92, scope: !2303)
!2309 = !DILocation(line: 2398, column: 25, scope: !2303)
!2310 = !DILocation(line: 2398, column: 23, scope: !2303)
!2311 = !DILocation(line: 2399, column: 3, scope: !2303)
!2312 = !DILocation(line: 2402, column: 7, scope: !2279)
!2313 = !DILocation(line: 2402, column: 24, scope: !2279)
!2314 = !DILocation(line: 2402, column: 40, scope: !2279)
!2315 = !DILocation(line: 2402, column: 7, scope: !2248)
!2316 = !DILocation(line: 2404, column: 40, scope: !2277)
!2317 = !DILocation(line: 2404, column: 54, scope: !2277)
!2318 = !DILocation(line: 2404, column: 15, scope: !2277)
!2319 = !DILocation(line: 2270, column: 7, scope: !2145, inlinedAt: !2276)
!2320 = !DILocation(line: 2270, column: 12, scope: !2145, inlinedAt: !2276)
!2321 = !DILocation(line: 2270, column: 9, scope: !2145, inlinedAt: !2276)
!2322 = !DILocation(line: 2270, column: 7, scope: !2146, inlinedAt: !2276)
!2323 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 2274, column: 5, scope: !2156, inlinedAt: !2276)
!2325 = !DILocation(line: 2271, column: 9, scope: !2151, inlinedAt: !2276)
!2326 = !DILocation(line: 2271, column: 7, scope: !2151, inlinedAt: !2276)
!2327 = !DILocation(line: 2278, column: 40, scope: !2159, inlinedAt: !2276)
!2328 = !DILocation(line: 2278, column: 45, scope: !2159, inlinedAt: !2276)
!2329 = !DILocation(line: 2278, column: 34, scope: !2159, inlinedAt: !2276)
!2330 = !DILocation(line: 2278, column: 61, scope: !2159, inlinedAt: !2276)
!2331 = !DILocation(line: 2278, column: 26, scope: !2159, inlinedAt: !2276)
!2332 = !DILocation(line: 2278, column: 3, scope: !2159, inlinedAt: !2276)
!2333 = !DILocation(line: 2278, column: 8, scope: !2159, inlinedAt: !2276)
!2334 = !DILocation(line: 2278, column: 24, scope: !2159, inlinedAt: !2276)
!2335 = !DILocation(line: 2279, column: 3, scope: !2159, inlinedAt: !2276)
!2336 = !DILocation(line: 2279, column: 8, scope: !2159, inlinedAt: !2276)
!2337 = !DILocation(line: 2279, column: 13, scope: !2159, inlinedAt: !2276)
!2338 = !DILocation(line: 2279, column: 21, scope: !2159, inlinedAt: !2276)
!2339 = !DILocation(line: 2279, column: 40, scope: !2159, inlinedAt: !2276)
!2340 = !DILocation(line: 2279, column: 59, scope: !2159, inlinedAt: !2276)
!2341 = !DILocation(line: 2279, column: 80, scope: !2159, inlinedAt: !2276)
!2342 = !DILocation(line: 2280, column: 49, scope: !2159, inlinedAt: !2276)
!2343 = !DILocation(line: 2280, column: 63, scope: !2159, inlinedAt: !2276)
!2344 = !DILocation(line: 2280, column: 21, scope: !2159, inlinedAt: !2276)
!2345 = !DILocation(line: 2280, column: 19, scope: !2159, inlinedAt: !2276)
!2346 = !DILocation(line: 2281, column: 23, scope: !2159, inlinedAt: !2276)
!2347 = !DILocation(line: 2281, column: 40, scope: !2159, inlinedAt: !2276)
!2348 = !DILocation(line: 2281, column: 60, scope: !2159, inlinedAt: !2276)
!2349 = !DILocation(line: 2281, column: 9, scope: !2159, inlinedAt: !2276)
!2350 = !DILocation(line: 2281, column: 7, scope: !2159, inlinedAt: !2276)
!2351 = !DILocation(line: 2283, column: 11, scope: !2146, inlinedAt: !2276)
!2352 = !DILocation(line: 2283, column: 3, scope: !2146, inlinedAt: !2276)
!2353 = !DILocation(line: 2404, column: 13, scope: !2277)
!2354 = !DILocation(line: 2406, column: 13, scope: !2278)
!2355 = !DILocation(line: 2406, column: 5, scope: !2278)
!2356 = !DILocation(line: 2408, column: 15, scope: !2287)
!2357 = !DILocation(line: 2408, column: 32, scope: !2287)
!2358 = !DILocation(line: 2408, column: 9, scope: !2287)
!2359 = !DILocation(line: 2408, column: 60, scope: !2287)
!2360 = !DILocation(line: 2408, column: 9, scope: !2288)
!2361 = !DILocation(line: 2410, column: 42, scope: !2285)
!2362 = !DILocation(line: 2410, column: 56, scope: !2285)
!2363 = !DILocation(line: 2410, column: 17, scope: !2285)
!2364 = !DILocation(line: 2270, column: 7, scope: !2145, inlinedAt: !2284)
!2365 = !DILocation(line: 2270, column: 12, scope: !2145, inlinedAt: !2284)
!2366 = !DILocation(line: 2270, column: 9, scope: !2145, inlinedAt: !2284)
!2367 = !DILocation(line: 2270, column: 7, scope: !2146, inlinedAt: !2284)
!2368 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !2369)
!2369 = distinct !DILocation(line: 2274, column: 5, scope: !2156, inlinedAt: !2284)
!2370 = !DILocation(line: 2271, column: 9, scope: !2151, inlinedAt: !2284)
!2371 = !DILocation(line: 2271, column: 7, scope: !2151, inlinedAt: !2284)
!2372 = !DILocation(line: 2278, column: 40, scope: !2159, inlinedAt: !2284)
!2373 = !DILocation(line: 2278, column: 45, scope: !2159, inlinedAt: !2284)
!2374 = !DILocation(line: 2278, column: 34, scope: !2159, inlinedAt: !2284)
!2375 = !DILocation(line: 2278, column: 61, scope: !2159, inlinedAt: !2284)
!2376 = !DILocation(line: 2278, column: 26, scope: !2159, inlinedAt: !2284)
!2377 = !DILocation(line: 2278, column: 3, scope: !2159, inlinedAt: !2284)
!2378 = !DILocation(line: 2278, column: 8, scope: !2159, inlinedAt: !2284)
!2379 = !DILocation(line: 2278, column: 24, scope: !2159, inlinedAt: !2284)
!2380 = !DILocation(line: 2279, column: 3, scope: !2159, inlinedAt: !2284)
!2381 = !DILocation(line: 2279, column: 8, scope: !2159, inlinedAt: !2284)
!2382 = !DILocation(line: 2279, column: 13, scope: !2159, inlinedAt: !2284)
!2383 = !DILocation(line: 2279, column: 21, scope: !2159, inlinedAt: !2284)
!2384 = !DILocation(line: 2279, column: 40, scope: !2159, inlinedAt: !2284)
!2385 = !DILocation(line: 2279, column: 59, scope: !2159, inlinedAt: !2284)
!2386 = !DILocation(line: 2279, column: 80, scope: !2159, inlinedAt: !2284)
!2387 = !DILocation(line: 2280, column: 49, scope: !2159, inlinedAt: !2284)
!2388 = !DILocation(line: 2280, column: 63, scope: !2159, inlinedAt: !2284)
!2389 = !DILocation(line: 2280, column: 21, scope: !2159, inlinedAt: !2284)
!2390 = !DILocation(line: 2280, column: 19, scope: !2159, inlinedAt: !2284)
!2391 = !DILocation(line: 2281, column: 23, scope: !2159, inlinedAt: !2284)
!2392 = !DILocation(line: 2281, column: 40, scope: !2159, inlinedAt: !2284)
!2393 = !DILocation(line: 2281, column: 60, scope: !2159, inlinedAt: !2284)
!2394 = !DILocation(line: 2281, column: 9, scope: !2159, inlinedAt: !2284)
!2395 = !DILocation(line: 2281, column: 7, scope: !2159, inlinedAt: !2284)
!2396 = !DILocation(line: 2283, column: 11, scope: !2146, inlinedAt: !2284)
!2397 = !DILocation(line: 2283, column: 3, scope: !2146, inlinedAt: !2284)
!2398 = !DILocation(line: 2410, column: 15, scope: !2285)
!2399 = !DILocation(line: 2412, column: 15, scope: !2286)
!2400 = !DILocation(line: 2412, column: 7, scope: !2286)
!2401 = !DILocation(line: 2414, column: 26, scope: !2296)
!2402 = !DILocation(line: 2414, column: 11, scope: !2296)
!2403 = !DILocation(line: 2414, column: 44, scope: !2296)
!2404 = !DILocation(line: 2414, column: 11, scope: !2297)
!2405 = !DILocation(line: 2416, column: 44, scope: !2294)
!2406 = !DILocation(line: 2416, column: 58, scope: !2294)
!2407 = !DILocation(line: 2416, column: 19, scope: !2294)
!2408 = !DILocation(line: 2270, column: 7, scope: !2145, inlinedAt: !2293)
!2409 = !DILocation(line: 2270, column: 12, scope: !2145, inlinedAt: !2293)
!2410 = !DILocation(line: 2270, column: 9, scope: !2145, inlinedAt: !2293)
!2411 = !DILocation(line: 2270, column: 7, scope: !2146, inlinedAt: !2293)
!2412 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 2274, column: 5, scope: !2156, inlinedAt: !2293)
!2414 = !DILocation(line: 2271, column: 9, scope: !2151, inlinedAt: !2293)
!2415 = !DILocation(line: 2271, column: 7, scope: !2151, inlinedAt: !2293)
!2416 = !DILocation(line: 2278, column: 40, scope: !2159, inlinedAt: !2293)
!2417 = !DILocation(line: 2278, column: 45, scope: !2159, inlinedAt: !2293)
!2418 = !DILocation(line: 2278, column: 34, scope: !2159, inlinedAt: !2293)
!2419 = !DILocation(line: 2278, column: 61, scope: !2159, inlinedAt: !2293)
!2420 = !DILocation(line: 2278, column: 26, scope: !2159, inlinedAt: !2293)
!2421 = !DILocation(line: 2278, column: 3, scope: !2159, inlinedAt: !2293)
!2422 = !DILocation(line: 2278, column: 8, scope: !2159, inlinedAt: !2293)
!2423 = !DILocation(line: 2278, column: 24, scope: !2159, inlinedAt: !2293)
!2424 = !DILocation(line: 2279, column: 3, scope: !2159, inlinedAt: !2293)
!2425 = !DILocation(line: 2279, column: 8, scope: !2159, inlinedAt: !2293)
!2426 = !DILocation(line: 2279, column: 13, scope: !2159, inlinedAt: !2293)
!2427 = !DILocation(line: 2279, column: 21, scope: !2159, inlinedAt: !2293)
!2428 = !DILocation(line: 2279, column: 40, scope: !2159, inlinedAt: !2293)
!2429 = !DILocation(line: 2279, column: 59, scope: !2159, inlinedAt: !2293)
!2430 = !DILocation(line: 2279, column: 80, scope: !2159, inlinedAt: !2293)
!2431 = !DILocation(line: 2280, column: 49, scope: !2159, inlinedAt: !2293)
!2432 = !DILocation(line: 2280, column: 63, scope: !2159, inlinedAt: !2293)
!2433 = !DILocation(line: 2280, column: 21, scope: !2159, inlinedAt: !2293)
!2434 = !DILocation(line: 2280, column: 19, scope: !2159, inlinedAt: !2293)
!2435 = !DILocation(line: 2281, column: 23, scope: !2159, inlinedAt: !2293)
!2436 = !DILocation(line: 2281, column: 40, scope: !2159, inlinedAt: !2293)
!2437 = !DILocation(line: 2281, column: 60, scope: !2159, inlinedAt: !2293)
!2438 = !DILocation(line: 2281, column: 9, scope: !2159, inlinedAt: !2293)
!2439 = !DILocation(line: 2281, column: 7, scope: !2159, inlinedAt: !2293)
!2440 = !DILocation(line: 2283, column: 11, scope: !2146, inlinedAt: !2293)
!2441 = !DILocation(line: 2283, column: 3, scope: !2146, inlinedAt: !2293)
!2442 = !DILocation(line: 2416, column: 17, scope: !2294)
!2443 = !DILocation(line: 2418, column: 17, scope: !2295)
!2444 = !DILocation(line: 2418, column: 9, scope: !2295)
!2445 = !DILocation(line: 2425, column: 37, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2248, file: !1, line: 2424, column: 3)
!2447 = !DILocation(line: 2425, column: 54, scope: !2446)
!2448 = !DILocation(line: 2425, column: 14, scope: !2446)
!2449 = !DILocation(line: 2425, column: 12, scope: !2446)
!2450 = !DILocation(line: 2426, column: 4, scope: !2446)
!2451 = !DILocation(line: 2426, column: 20, scope: !2446)
!2452 = !DILocation(line: 2426, column: 19, scope: !2446)
!2453 = !DILocation(line: 2427, column: 35, scope: !2446)
!2454 = !DILocation(line: 2427, column: 52, scope: !2446)
!2455 = !DILocation(line: 2427, column: 63, scope: !2446)
!2456 = !DILocation(line: 2427, column: 15, scope: !2446)
!2457 = !DILocation(line: 2427, column: 13, scope: !2446)
!2458 = !DILocation(line: 2428, column: 4, scope: !2446)
!2459 = !DILocation(line: 2428, column: 16, scope: !2446)
!2460 = !DILocation(line: 2430, column: 7, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2248, file: !1, line: 2430, column: 7)
!2462 = !DILocation(line: 2430, column: 16, scope: !2461)
!2463 = !DILocation(line: 2430, column: 7, scope: !2248)
!2464 = !DILocation(line: 2431, column: 45, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2461, file: !1, line: 2430, column: 23)
!2466 = !DILocation(line: 2431, column: 56, scope: !2465)
!2467 = !DILocation(line: 2431, column: 67, scope: !2465)
!2468 = !DILocation(line: 2431, column: 84, scope: !2465)
!2469 = !DILocation(line: 2431, column: 98, scope: !2465)
!2470 = !DILocation(line: 2431, column: 65, scope: !2465)
!2471 = !DILocation(line: 2431, column: 5, scope: !2465)
!2472 = !DILocation(line: 2431, column: 24, scope: !2465)
!2473 = !DILocation(line: 2431, column: 33, scope: !2465)
!2474 = !DILocation(line: 2431, column: 42, scope: !2465)
!2475 = !DILocation(line: 2432, column: 47, scope: !2465)
!2476 = !DILocation(line: 2432, column: 58, scope: !2465)
!2477 = !DILocation(line: 2432, column: 5, scope: !2465)
!2478 = !DILocation(line: 2432, column: 22, scope: !2465)
!2479 = !DILocation(line: 2432, column: 36, scope: !2465)
!2480 = !DILocation(line: 2432, column: 45, scope: !2465)
!2481 = !DILocation(line: 2433, column: 3, scope: !2465)
!2482 = !DILocation(line: 2436, column: 7, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2248, file: !1, line: 2436, column: 7)
!2484 = !DILocation(line: 2436, column: 12, scope: !2483)
!2485 = !DILocation(line: 2436, column: 9, scope: !2483)
!2486 = !DILocation(line: 2436, column: 7, scope: !2248)
!2487 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 2438, column: 5, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !1, line: 2437, column: 5)
!2490 = distinct !DILexicalBlock(scope: !2483, file: !1, line: 2436, column: 16)
!2491 = !DILocation(line: 2440, column: 3, scope: !2490)
!2492 = !DILocation(line: 2441, column: 9, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !1, line: 2441, column: 9)
!2494 = distinct !DILexicalBlock(scope: !2483, file: !1, line: 2440, column: 10)
!2495 = !DILocation(line: 2441, column: 24, scope: !2493)
!2496 = !DILocation(line: 2441, column: 9, scope: !2494)
!2497 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 2443, column: 7, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !1, line: 2442, column: 7)
!2500 = distinct !DILexicalBlock(scope: !2493, file: !1, line: 2441, column: 30)
!2501 = !DILocation(line: 2445, column: 5, scope: !2500)
!2502 = !DILocation(line: 2446, column: 22, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2493, file: !1, line: 2445, column: 12)
!2504 = !DILocation(line: 2447, column: 16, scope: !2503)
!2505 = !DILocation(line: 2448, column: 15, scope: !2503)
!2506 = !DILocation(line: 2452, column: 11, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2248, file: !1, line: 2451, column: 3)
!2508 = !DILocation(line: 2452, column: 16, scope: !2507)
!2509 = !DILocation(line: 2452, column: 21, scope: !2507)
!2510 = !DILocation(line: 2452, column: 29, scope: !2507)
!2511 = !DILocation(line: 2452, column: 48, scope: !2507)
!2512 = !DILocation(line: 2452, column: 67, scope: !2507)
!2513 = !DILocation(line: 2452, column: 88, scope: !2507)
!2514 = !DILocation(line: 2452, column: 9, scope: !2507)
!2515 = !DILocation(line: 2453, column: 3, scope: !2507)
!2516 = !DILocation(line: 2453, column: 10, scope: !2507)
!2517 = !DILocation(line: 2453, column: 28, scope: !2507)
!2518 = !DILocation(line: 2454, column: 20, scope: !2507)
!2519 = !DILocation(line: 2454, column: 3, scope: !2507)
!2520 = !DILocation(line: 2454, column: 10, scope: !2507)
!2521 = !DILocation(line: 2454, column: 18, scope: !2507)
!2522 = !DILocation(line: 2455, column: 3, scope: !2507)
!2523 = !DILocation(line: 2455, column: 10, scope: !2507)
!2524 = !DILocation(line: 2455, column: 18, scope: !2507)
!2525 = !DILocation(line: 2456, column: 3, scope: !2507)
!2526 = !DILocation(line: 2456, column: 10, scope: !2507)
!2527 = !DILocation(line: 2456, column: 18, scope: !2507)
!2528 = !DILocation(line: 2457, column: 26, scope: !2507)
!2529 = !DILocation(line: 2457, column: 33, scope: !2507)
!2530 = !DILocation(line: 2457, column: 20, scope: !2507)
!2531 = !DILocation(line: 2457, column: 41, scope: !2507)
!2532 = !DILocation(line: 2457, column: 3, scope: !2507)
!2533 = !DILocation(line: 2457, column: 10, scope: !2507)
!2534 = !DILocation(line: 2457, column: 18, scope: !2507)
!2535 = !DILocation(line: 2458, column: 26, scope: !2507)
!2536 = !DILocation(line: 2458, column: 33, scope: !2507)
!2537 = !DILocation(line: 2458, column: 20, scope: !2507)
!2538 = !DILocation(line: 2458, column: 41, scope: !2507)
!2539 = !DILocation(line: 2458, column: 3, scope: !2507)
!2540 = !DILocation(line: 2458, column: 10, scope: !2507)
!2541 = !DILocation(line: 2458, column: 18, scope: !2507)
!2542 = !DILocation(line: 2459, column: 27, scope: !2507)
!2543 = !DILocation(line: 2459, column: 44, scope: !2507)
!2544 = !DILocation(line: 2459, column: 64, scope: !2507)
!2545 = !DILocation(line: 2459, column: 13, scope: !2507)
!2546 = !DILocation(line: 2459, column: 11, scope: !2507)
!2547 = !DILocation(line: 2461, column: 11, scope: !2248)
!2548 = !DILocation(line: 2461, column: 3, scope: !2248)
!2549 = !DILocation(line: 2463, column: 1, scope: !1488)
!2550 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1490, file: !1, line: 2532, type: !265)
!2551 = !DILocation(line: 2532, column: 47, scope: !1490)
!2552 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1490, file: !1, line: 2532, type: !1201)
!2553 = !DILocation(line: 2532, column: 67, scope: !1490)
!2554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !1490, file: !1, line: 2533, type: !2140)
!2555 = !DILocation(line: 2533, column: 21, scope: !1490)
!2556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currentIrpStack", scope: !1490, file: !1, line: 2534, type: !2226)
!2557 = !DILocation(line: 2534, column: 22, scope: !1490)
!2558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !1490, file: !1, line: 2535, type: !302)
!2559 = !DILocation(line: 2535, column: 12, scope: !1490)
!2560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1490, file: !1, line: 2536, type: !286)
!2561 = !DILocation(line: 2536, column: 9, scope: !1490)
!2562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "totalCounters", scope: !1490, file: !1, line: 2537, type: !1348)
!2563 = !DILocation(line: 2537, column: 21, scope: !1490)
!2564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "diskCounters", scope: !1490, file: !1, line: 2538, type: !1348)
!2565 = !DILocation(line: 2538, column: 21, scope: !1490)
!2566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frequency", scope: !1490, file: !1, line: 2539, type: !380)
!2567 = !DILocation(line: 2539, column: 17, scope: !1490)
!2568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "perfctr", scope: !1490, file: !1, line: 2540, type: !380)
!2569 = !DILocation(line: 2540, column: 17, scope: !1490)
!2570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "difference", scope: !1490, file: !1, line: 2541, type: !380)
!2571 = !DILocation(line: 2541, column: 17, scope: !1490)
!2572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1490, file: !1, line: 2542, type: !302)
!2573 = !DILocation(line: 2542, column: 12, scope: !1490)
!2574 = !DILocation(line: 2545, column: 21, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !1490, file: !1, line: 2544, column: 3)
!2576 = !DILocation(line: 2545, column: 35, scope: !2575)
!2577 = !DILocation(line: 2545, column: 19, scope: !2575)
!2578 = !DILocation(line: 2546, column: 21, scope: !2575)
!2579 = !DILocation(line: 2546, column: 26, scope: !2575)
!2580 = !DILocation(line: 2546, column: 31, scope: !2575)
!2581 = !DILocation(line: 2546, column: 39, scope: !2575)
!2582 = !DILocation(line: 2546, column: 58, scope: !2575)
!2583 = !DILocation(line: 2546, column: 77, scope: !2575)
!2584 = !DILocation(line: 2546, column: 19, scope: !2575)
!2585 = !DILocation(line: 2547, column: 7, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2575, file: !1, line: 2547, column: 7)
!2587 = !DILocation(line: 2547, column: 24, scope: !2586)
!2588 = !DILocation(line: 2547, column: 35, scope: !2586)
!2589 = !DILocation(line: 2547, column: 51, scope: !2586)
!2590 = !DILocation(line: 2547, column: 65, scope: !2586)
!2591 = !DILocation(line: 3879, column: 30, scope: !1633, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 2557, column: 9, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !1, line: 2554, column: 9)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !1, line: 2553, column: 70)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !1, line: 2553, column: 11)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !1, line: 2551, column: 12)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !1, line: 2548, column: 9)
!2598 = distinct !DILexicalBlock(scope: !2586, file: !1, line: 2547, column: 100)
!2599 = !DILocation(line: 3879, column: 42, scope: !1633, inlinedAt: !2592)
!2600 = !DILocation(line: 3879, column: 30, scope: !1633, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 2608, column: 5, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2598, file: !1, line: 2605, column: 5)
!2603 = !DILocation(line: 3879, column: 42, scope: !1633, inlinedAt: !2601)
!2604 = !DILocation(line: 2547, column: 7, scope: !2575)
!2605 = !DILocation(line: 2548, column: 9, scope: !2597)
!2606 = !DILocation(line: 2548, column: 26, scope: !2597)
!2607 = !DILocation(line: 2548, column: 37, scope: !2597)
!2608 = !DILocation(line: 2548, column: 53, scope: !2597)
!2609 = !DILocation(line: 2548, column: 72, scope: !2597)
!2610 = !DILocation(line: 2548, column: 9, scope: !2598)
!2611 = !DILocation(line: 2549, column: 14, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2597, file: !1, line: 2548, column: 109)
!2613 = !DILocation(line: 2550, column: 7, scope: !2612)
!2614 = !DILocation(line: 2550, column: 12, scope: !2612)
!2615 = !DILocation(line: 2550, column: 21, scope: !2612)
!2616 = !DILocation(line: 2550, column: 33, scope: !2612)
!2617 = !DILocation(line: 2551, column: 5, scope: !2612)
!2618 = !DILocation(line: 2552, column: 22, scope: !2596)
!2619 = !DILocation(line: 2552, column: 39, scope: !2596)
!2620 = !DILocation(line: 2552, column: 20, scope: !2596)
!2621 = !DILocation(line: 2553, column: 26, scope: !2595)
!2622 = !DILocation(line: 2553, column: 11, scope: !2595)
!2623 = !DILocation(line: 2553, column: 39, scope: !2595)
!2624 = !DILocation(line: 2553, column: 11, scope: !2596)
!2625 = !DILocation(line: 2555, column: 9, scope: !2593)
!2626 = !DILocation(line: 2555, column: 14, scope: !2593)
!2627 = !DILocation(line: 2555, column: 23, scope: !2593)
!2628 = !DILocation(line: 2555, column: 41, scope: !2593)
!2629 = !DILocation(line: 2555, column: 48, scope: !2593)
!2630 = !DILocation(line: 2556, column: 18, scope: !2593)
!2631 = !DILocation(line: 2557, column: 28, scope: !2593)
!2632 = !DILocation(line: 2557, column: 9, scope: !2593)
!2633 = !DILocation(line: 3883, column: 7, scope: !2200, inlinedAt: !2592)
!2634 = !DILocation(line: 3883, column: 12, scope: !2200, inlinedAt: !2592)
!2635 = !DILocation(line: 3883, column: 9, scope: !2200, inlinedAt: !2592)
!2636 = !DILocation(line: 3883, column: 7, scope: !2201, inlinedAt: !2592)
!2637 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 3887, column: 5, scope: !2208, inlinedAt: !2592)
!2639 = !DILocation(line: 3884, column: 9, scope: !2211, inlinedAt: !2592)
!2640 = !DILocation(line: 3884, column: 7, scope: !2211, inlinedAt: !2592)
!2641 = !DILocation(line: 3890, column: 3, scope: !2201, inlinedAt: !2592)
!2642 = !DILocation(line: 2559, column: 9, scope: !2594)
!2643 = !DILocation(line: 2564, column: 51, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2596, file: !1, line: 2563, column: 7)
!2645 = !DILocation(line: 2564, column: 56, scope: !2644)
!2646 = !DILocation(line: 2564, column: 70, scope: !2644)
!2647 = !DILocation(line: 2564, column: 23, scope: !2644)
!2648 = !DILocation(line: 2564, column: 21, scope: !2644)
!2649 = !DILocation(line: 2565, column: 14, scope: !2644)
!2650 = !DILocation(line: 2565, column: 7, scope: !2644)
!2651 = !DILocation(line: 2566, column: 17, scope: !2644)
!2652 = !DILocation(line: 2567, column: 27, scope: !2644)
!2653 = !DILocation(line: 2567, column: 42, scope: !2644)
!2654 = !DILocation(line: 2567, column: 7, scope: !2644)
!2655 = !DILocation(line: 2568, column: 9, scope: !2644)
!2656 = !DILocation(line: 2571, column: 7, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2596, file: !1, line: 2570, column: 7)
!2658 = !DILocation(line: 2571, column: 17, scope: !2657)
!2659 = !DILocation(line: 2573, column: 13, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !1, line: 2573, column: 13)
!2661 = distinct !DILexicalBlock(scope: !2657, file: !1, line: 2571, column: 17)
!2662 = !DILocation(line: 2573, column: 17, scope: !2660)
!2663 = !DILocation(line: 2573, column: 34, scope: !2660)
!2664 = !DILocation(line: 2573, column: 15, scope: !2660)
!2665 = !DILocation(line: 2573, column: 13, scope: !2661)
!2666 = !DILocation(line: 2575, column: 9, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2660, file: !1, line: 2573, column: 46)
!2668 = !DILocation(line: 2576, column: 11, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2660, file: !1, line: 2575, column: 16)
!2670 = !DILocation(line: 2579, column: 29, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2661, file: !1, line: 2578, column: 9)
!2672 = !DILocation(line: 2579, column: 44, scope: !2671)
!2673 = !DILocation(line: 2579, column: 9, scope: !2671)
!2674 = !DILocation(line: 2580, column: 61, scope: !2671)
!2675 = !DILocation(line: 2580, column: 53, scope: !2671)
!2676 = !DILocation(line: 2580, column: 74, scope: !2671)
!2677 = !DILocation(line: 2580, column: 24, scope: !2671)
!2678 = !DILocation(line: 2580, column: 22, scope: !2671)
!2679 = !DILocation(line: 2581, column: 11, scope: !2671)
!2680 = !DILocation(line: 2586, column: 35, scope: !2596)
!2681 = !DILocation(line: 2586, column: 52, scope: !2596)
!2682 = !DILocation(line: 2586, column: 7, scope: !2596)
!2683 = !DILocation(line: 2586, column: 22, scope: !2596)
!2684 = !DILocation(line: 2586, column: 33, scope: !2596)
!2685 = !DILocation(line: 2587, column: 11, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2596, file: !1, line: 2587, column: 11)
!2687 = !DILocation(line: 2587, column: 26, scope: !2686)
!2688 = !DILocation(line: 2587, column: 37, scope: !2686)
!2689 = !DILocation(line: 2587, column: 11, scope: !2596)
!2690 = !DILocation(line: 2588, column: 39, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2686, file: !1, line: 2587, column: 45)
!2692 = !DILocation(line: 2588, column: 50, scope: !2691)
!2693 = !DILocation(line: 2588, column: 67, scope: !2691)
!2694 = !DILocation(line: 2588, column: 81, scope: !2691)
!2695 = !DILocation(line: 2588, column: 48, scope: !2691)
!2696 = !DILocation(line: 2588, column: 20, scope: !2691)
!2697 = !DILocation(line: 2588, column: 29, scope: !2691)
!2698 = !DILocation(line: 2589, column: 24, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2691, file: !1, line: 2589, column: 13)
!2700 = !DILocation(line: 2589, column: 33, scope: !2699)
!2701 = !DILocation(line: 2589, column: 13, scope: !2691)
!2702 = !DILocation(line: 2590, column: 72, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2699, file: !1, line: 2589, column: 40)
!2704 = !DILocation(line: 2590, column: 59, scope: !2703)
!2705 = !DILocation(line: 2590, column: 94, scope: !2703)
!2706 = !DILocation(line: 2590, column: 82, scope: !2703)
!2707 = !DILocation(line: 2590, column: 11, scope: !2703)
!2708 = !DILocation(line: 2590, column: 26, scope: !2703)
!2709 = !DILocation(line: 2590, column: 35, scope: !2703)
!2710 = !DILocation(line: 2590, column: 44, scope: !2703)
!2711 = !DILocation(line: 2591, column: 9, scope: !2703)
!2712 = !DILocation(line: 2594, column: 7, scope: !2691)
!2713 = !DILocation(line: 2598, column: 44, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2596, file: !1, line: 2597, column: 7)
!2715 = !DILocation(line: 2598, column: 61, scope: !2714)
!2716 = !DILocation(line: 2598, column: 7, scope: !2714)
!2717 = !DILocation(line: 2598, column: 22, scope: !2714)
!2718 = !DILocation(line: 2598, column: 42, scope: !2714)
!2719 = !DILocation(line: 2599, column: 16, scope: !2714)
!2720 = !DILocation(line: 2599, column: 31, scope: !2714)
!2721 = !DILocation(line: 2599, column: 14, scope: !2714)
!2722 = !DILocation(line: 2599, column: 56, scope: !2714)
!2723 = !DILocation(line: 2599, column: 73, scope: !2714)
!2724 = !DILocation(line: 2599, column: 54, scope: !2714)
!2725 = !DILocation(line: 2599, column: 7, scope: !2714)
!2726 = !DILocation(line: 2601, column: 14, scope: !2714)
!2727 = !DILocation(line: 2602, column: 7, scope: !2714)
!2728 = !DILocation(line: 2602, column: 12, scope: !2714)
!2729 = !DILocation(line: 2602, column: 21, scope: !2714)
!2730 = !DILocation(line: 2602, column: 33, scope: !2714)
!2731 = !DILocation(line: 2606, column: 46, scope: !2602)
!2732 = !DILocation(line: 2606, column: 5, scope: !2602)
!2733 = !DILocation(line: 2606, column: 10, scope: !2602)
!2734 = !DILocation(line: 2606, column: 19, scope: !2602)
!2735 = !DILocation(line: 2606, column: 37, scope: !2602)
!2736 = !DILocation(line: 2606, column: 44, scope: !2602)
!2737 = !DILocation(line: 2607, column: 16, scope: !2602)
!2738 = !DILocation(line: 2607, column: 14, scope: !2602)
!2739 = !DILocation(line: 2608, column: 24, scope: !2602)
!2740 = !DILocation(line: 2608, column: 5, scope: !2602)
!2741 = !DILocation(line: 3883, column: 7, scope: !2200, inlinedAt: !2601)
!2742 = !DILocation(line: 3883, column: 12, scope: !2200, inlinedAt: !2601)
!2743 = !DILocation(line: 3883, column: 9, scope: !2200, inlinedAt: !2601)
!2744 = !DILocation(line: 3883, column: 7, scope: !2201, inlinedAt: !2601)
!2745 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 3887, column: 5, scope: !2208, inlinedAt: !2601)
!2747 = !DILocation(line: 3884, column: 9, scope: !2211, inlinedAt: !2601)
!2748 = !DILocation(line: 3884, column: 7, scope: !2211, inlinedAt: !2601)
!2749 = !DILocation(line: 3890, column: 3, scope: !2201, inlinedAt: !2601)
!2750 = !DILocation(line: 2610, column: 13, scope: !2598)
!2751 = !DILocation(line: 2610, column: 5, scope: !2598)
!2752 = !DILocation(line: 2613, column: 42, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !1, line: 2612, column: 5)
!2754 = distinct !DILexicalBlock(scope: !2586, file: !1, line: 2611, column: 10)
!2755 = !DILocation(line: 2613, column: 47, scope: !2753)
!2756 = !DILocation(line: 2613, column: 36, scope: !2753)
!2757 = !DILocation(line: 2613, column: 63, scope: !2753)
!2758 = !DILocation(line: 2613, column: 28, scope: !2753)
!2759 = !DILocation(line: 2613, column: 5, scope: !2753)
!2760 = !DILocation(line: 2613, column: 10, scope: !2753)
!2761 = !DILocation(line: 2613, column: 26, scope: !2753)
!2762 = !DILocation(line: 2614, column: 5, scope: !2753)
!2763 = !DILocation(line: 2614, column: 10, scope: !2753)
!2764 = !DILocation(line: 2614, column: 15, scope: !2753)
!2765 = !DILocation(line: 2614, column: 23, scope: !2753)
!2766 = !DILocation(line: 2614, column: 42, scope: !2753)
!2767 = !DILocation(line: 2614, column: 61, scope: !2753)
!2768 = !DILocation(line: 2614, column: 82, scope: !2753)
!2769 = !DILocation(line: 2615, column: 25, scope: !2753)
!2770 = !DILocation(line: 2615, column: 42, scope: !2753)
!2771 = !DILocation(line: 2615, column: 62, scope: !2753)
!2772 = !DILocation(line: 2615, column: 11, scope: !2753)
!2773 = !DILocation(line: 2615, column: 9, scope: !2753)
!2774 = !DILocation(line: 2617, column: 13, scope: !2754)
!2775 = !DILocation(line: 2617, column: 5, scope: !2754)
!2776 = !DILocation(line: 2620, column: 1, scope: !1490)
!2777 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1491, file: !1, line: 2621, type: !265)
!2778 = !DILocation(line: 2621, column: 37, scope: !1491)
!2779 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1491, file: !1, line: 2621, type: !1201)
!2780 = !DILocation(line: 2621, column: 57, scope: !1491)
!2781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !1491, file: !1, line: 2622, type: !2226)
!2782 = !DILocation(line: 2622, column: 22, scope: !1491)
!2783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !1491, file: !1, line: 2623, type: !302)
!2784 = !DILocation(line: 2623, column: 12, scope: !1491)
!2785 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wmilibContext", scope: !1491, file: !1, line: 2624, type: !1784)
!2786 = !DILocation(line: 2624, column: 19, scope: !1491)
!2787 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "disposition", scope: !1491, file: !1, line: 2625, type: !2788)
!2788 = !DIDerivedType(tag: DW_TAG_typedef, name: "SYSCTL_IRP_DISPOSITION", file: !1, line: 1442, baseType: !144)
!2789 = !DILocation(line: 2625, column: 26, scope: !1491)
!2790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !1491, file: !1, line: 2626, type: !2140)
!2791 = !DILocation(line: 2626, column: 21, scope: !1491)
!2792 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1491, file: !1, line: 2627, type: !302)
!2793 = !DILocation(line: 2627, column: 12, scope: !1491)
!2794 = !DILocation(line: 2630, column: 21, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !1491, file: !1, line: 2629, column: 3)
!2796 = !DILocation(line: 2630, column: 35, scope: !2795)
!2797 = !DILocation(line: 2630, column: 19, scope: !2795)
!2798 = !DILocation(line: 2631, column: 21, scope: !2795)
!2799 = !DILocation(line: 2631, column: 38, scope: !2795)
!2800 = !DILocation(line: 2631, column: 17, scope: !2795)
!2801 = !DILocation(line: 2632, column: 7, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2795, file: !1, line: 2632, column: 7)
!2803 = !DILocation(line: 2632, column: 22, scope: !2802)
!2804 = !DILocation(line: 2632, column: 32, scope: !2802)
!2805 = !DILocation(line: 2265, column: 50, scope: !1484, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 2634, column: 11, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !1, line: 2633, column: 5)
!2808 = distinct !DILexicalBlock(scope: !2802, file: !1, line: 2632, column: 40)
!2809 = !DILocation(line: 2265, column: 70, scope: !1484, inlinedAt: !2806)
!2810 = !DILocation(line: 2266, column: 21, scope: !1484, inlinedAt: !2806)
!2811 = !DILocation(line: 2267, column: 12, scope: !1484, inlinedAt: !2806)
!2812 = !DILocation(line: 3879, column: 30, scope: !1633, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 2657, column: 9, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !1, line: 2656, column: 9)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !1, line: 2652, column: 14)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !1, line: 2652, column: 11)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !1, line: 2650, column: 7)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !1, line: 2649, column: 12)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !1, line: 2647, column: 9)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !1, line: 2646, column: 10)
!2821 = distinct !DILexicalBlock(scope: !2795, file: !1, line: 2644, column: 7)
!2822 = !DILocation(line: 3879, column: 42, scope: !1633, inlinedAt: !2813)
!2823 = !DILocation(line: 2265, column: 50, scope: !1484, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 2662, column: 18, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2815, file: !1, line: 2661, column: 9)
!2826 = !DILocation(line: 2265, column: 70, scope: !1484, inlinedAt: !2824)
!2827 = !DILocation(line: 2266, column: 21, scope: !1484, inlinedAt: !2824)
!2828 = !DILocation(line: 2267, column: 12, scope: !1484, inlinedAt: !2824)
!2829 = !DILocation(line: 2632, column: 7, scope: !2795)
!2830 = !DILocation(line: 2634, column: 36, scope: !2807)
!2831 = !DILocation(line: 2634, column: 50, scope: !2807)
!2832 = !DILocation(line: 2634, column: 11, scope: !2807)
!2833 = !DILocation(line: 2270, column: 7, scope: !2145, inlinedAt: !2806)
!2834 = !DILocation(line: 2270, column: 12, scope: !2145, inlinedAt: !2806)
!2835 = !DILocation(line: 2270, column: 9, scope: !2145, inlinedAt: !2806)
!2836 = !DILocation(line: 2270, column: 7, scope: !2146, inlinedAt: !2806)
!2837 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 2274, column: 5, scope: !2156, inlinedAt: !2806)
!2839 = !DILocation(line: 2271, column: 9, scope: !2151, inlinedAt: !2806)
!2840 = !DILocation(line: 2271, column: 7, scope: !2151, inlinedAt: !2806)
!2841 = !DILocation(line: 2278, column: 40, scope: !2159, inlinedAt: !2806)
!2842 = !DILocation(line: 2278, column: 45, scope: !2159, inlinedAt: !2806)
!2843 = !DILocation(line: 2278, column: 34, scope: !2159, inlinedAt: !2806)
!2844 = !DILocation(line: 2278, column: 61, scope: !2159, inlinedAt: !2806)
!2845 = !DILocation(line: 2278, column: 26, scope: !2159, inlinedAt: !2806)
!2846 = !DILocation(line: 2278, column: 3, scope: !2159, inlinedAt: !2806)
!2847 = !DILocation(line: 2278, column: 8, scope: !2159, inlinedAt: !2806)
!2848 = !DILocation(line: 2278, column: 24, scope: !2159, inlinedAt: !2806)
!2849 = !DILocation(line: 2279, column: 3, scope: !2159, inlinedAt: !2806)
!2850 = !DILocation(line: 2279, column: 8, scope: !2159, inlinedAt: !2806)
!2851 = !DILocation(line: 2279, column: 13, scope: !2159, inlinedAt: !2806)
!2852 = !DILocation(line: 2279, column: 21, scope: !2159, inlinedAt: !2806)
!2853 = !DILocation(line: 2279, column: 40, scope: !2159, inlinedAt: !2806)
!2854 = !DILocation(line: 2279, column: 59, scope: !2159, inlinedAt: !2806)
!2855 = !DILocation(line: 2279, column: 80, scope: !2159, inlinedAt: !2806)
!2856 = !DILocation(line: 2280, column: 49, scope: !2159, inlinedAt: !2806)
!2857 = !DILocation(line: 2280, column: 63, scope: !2159, inlinedAt: !2806)
!2858 = !DILocation(line: 2280, column: 21, scope: !2159, inlinedAt: !2806)
!2859 = !DILocation(line: 2280, column: 19, scope: !2159, inlinedAt: !2806)
!2860 = !DILocation(line: 2281, column: 23, scope: !2159, inlinedAt: !2806)
!2861 = !DILocation(line: 2281, column: 40, scope: !2159, inlinedAt: !2806)
!2862 = !DILocation(line: 2281, column: 60, scope: !2159, inlinedAt: !2806)
!2863 = !DILocation(line: 2281, column: 9, scope: !2159, inlinedAt: !2806)
!2864 = !DILocation(line: 2281, column: 7, scope: !2159, inlinedAt: !2806)
!2865 = !DILocation(line: 2283, column: 11, scope: !2146, inlinedAt: !2806)
!2866 = !DILocation(line: 2283, column: 3, scope: !2146, inlinedAt: !2806)
!2867 = !DILocation(line: 2634, column: 9, scope: !2807)
!2868 = !DILocation(line: 2636, column: 13, scope: !2808)
!2869 = !DILocation(line: 2636, column: 5, scope: !2808)
!2870 = !DILocation(line: 2641, column: 11, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2795, file: !1, line: 2640, column: 3)
!2872 = !DILocation(line: 2641, column: 16, scope: !2871)
!2873 = !DILocation(line: 2641, column: 21, scope: !2871)
!2874 = !DILocation(line: 2641, column: 29, scope: !2871)
!2875 = !DILocation(line: 2641, column: 48, scope: !2871)
!2876 = !DILocation(line: 2641, column: 67, scope: !2871)
!2877 = !DILocation(line: 2641, column: 9, scope: !2871)
!2878 = !DILocation(line: 2642, column: 10, scope: !2871)
!2879 = !DILocation(line: 2644, column: 7, scope: !2821)
!2880 = !DILocation(line: 2644, column: 19, scope: !2821)
!2881 = !DILocation(line: 2644, column: 7, scope: !2795)
!2882 = !DILocation(line: 2645, column: 5, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2821, file: !1, line: 2644, column: 25)
!2884 = !DILocation(line: 2647, column: 9, scope: !2819)
!2885 = !DILocation(line: 2647, column: 21, scope: !2819)
!2886 = !DILocation(line: 2647, column: 9, scope: !2820)
!2887 = !DILocation(line: 2648, column: 7, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2819, file: !1, line: 2647, column: 27)
!2889 = !DILocation(line: 2651, column: 7, scope: !2817)
!2890 = !DILocation(line: 2652, column: 11, scope: !2817)
!2891 = !DILocation(line: 2652, column: 14, scope: !2816)
!2892 = !DILocation(line: 2654, column: 9, scope: !2815)
!2893 = !DILocation(line: 2657, column: 28, scope: !2814)
!2894 = !DILocation(line: 2657, column: 9, scope: !2814)
!2895 = !DILocation(line: 3883, column: 7, scope: !2200, inlinedAt: !2813)
!2896 = !DILocation(line: 3883, column: 12, scope: !2200, inlinedAt: !2813)
!2897 = !DILocation(line: 3883, column: 9, scope: !2200, inlinedAt: !2813)
!2898 = !DILocation(line: 3883, column: 7, scope: !2201, inlinedAt: !2813)
!2899 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 3887, column: 5, scope: !2208, inlinedAt: !2813)
!2901 = !DILocation(line: 3884, column: 9, scope: !2211, inlinedAt: !2813)
!2902 = !DILocation(line: 3884, column: 7, scope: !2211, inlinedAt: !2813)
!2903 = !DILocation(line: 3890, column: 3, scope: !2201, inlinedAt: !2813)
!2904 = !DILocation(line: 2659, column: 9, scope: !2815)
!2905 = !DILocation(line: 2662, column: 43, scope: !2825)
!2906 = !DILocation(line: 2662, column: 57, scope: !2825)
!2907 = !DILocation(line: 2662, column: 18, scope: !2825)
!2908 = !DILocation(line: 2270, column: 7, scope: !2145, inlinedAt: !2824)
!2909 = !DILocation(line: 2270, column: 12, scope: !2145, inlinedAt: !2824)
!2910 = !DILocation(line: 2270, column: 9, scope: !2145, inlinedAt: !2824)
!2911 = !DILocation(line: 2270, column: 7, scope: !2146, inlinedAt: !2824)
!2912 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 2274, column: 5, scope: !2156, inlinedAt: !2824)
!2914 = !DILocation(line: 2271, column: 9, scope: !2151, inlinedAt: !2824)
!2915 = !DILocation(line: 2271, column: 7, scope: !2151, inlinedAt: !2824)
!2916 = !DILocation(line: 2278, column: 40, scope: !2159, inlinedAt: !2824)
!2917 = !DILocation(line: 2278, column: 45, scope: !2159, inlinedAt: !2824)
!2918 = !DILocation(line: 2278, column: 34, scope: !2159, inlinedAt: !2824)
!2919 = !DILocation(line: 2278, column: 61, scope: !2159, inlinedAt: !2824)
!2920 = !DILocation(line: 2278, column: 26, scope: !2159, inlinedAt: !2824)
!2921 = !DILocation(line: 2278, column: 3, scope: !2159, inlinedAt: !2824)
!2922 = !DILocation(line: 2278, column: 8, scope: !2159, inlinedAt: !2824)
!2923 = !DILocation(line: 2278, column: 24, scope: !2159, inlinedAt: !2824)
!2924 = !DILocation(line: 2279, column: 3, scope: !2159, inlinedAt: !2824)
!2925 = !DILocation(line: 2279, column: 8, scope: !2159, inlinedAt: !2824)
!2926 = !DILocation(line: 2279, column: 13, scope: !2159, inlinedAt: !2824)
!2927 = !DILocation(line: 2279, column: 21, scope: !2159, inlinedAt: !2824)
!2928 = !DILocation(line: 2279, column: 40, scope: !2159, inlinedAt: !2824)
!2929 = !DILocation(line: 2279, column: 59, scope: !2159, inlinedAt: !2824)
!2930 = !DILocation(line: 2279, column: 80, scope: !2159, inlinedAt: !2824)
!2931 = !DILocation(line: 2280, column: 49, scope: !2159, inlinedAt: !2824)
!2932 = !DILocation(line: 2280, column: 63, scope: !2159, inlinedAt: !2824)
!2933 = !DILocation(line: 2280, column: 21, scope: !2159, inlinedAt: !2824)
!2934 = !DILocation(line: 2280, column: 19, scope: !2159, inlinedAt: !2824)
!2935 = !DILocation(line: 2281, column: 23, scope: !2159, inlinedAt: !2824)
!2936 = !DILocation(line: 2281, column: 40, scope: !2159, inlinedAt: !2824)
!2937 = !DILocation(line: 2281, column: 60, scope: !2159, inlinedAt: !2824)
!2938 = !DILocation(line: 2281, column: 9, scope: !2159, inlinedAt: !2824)
!2939 = !DILocation(line: 2281, column: 7, scope: !2159, inlinedAt: !2824)
!2940 = !DILocation(line: 2283, column: 11, scope: !2146, inlinedAt: !2824)
!2941 = !DILocation(line: 2283, column: 3, scope: !2146, inlinedAt: !2824)
!2942 = !DILocation(line: 2662, column: 16, scope: !2825)
!2943 = !DILocation(line: 2664, column: 9, scope: !2815)
!2944 = !DILocation(line: 2665, column: 14, scope: !2816)
!2945 = !DILocation(line: 2671, column: 11, scope: !2795)
!2946 = !DILocation(line: 2671, column: 3, scope: !2795)
!2947 = !DILocation(line: 2673, column: 1, scope: !1491)
!2948 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1492, file: !1, line: 2674, type: !265)
!2949 = !DILocation(line: 2674, column: 47, scope: !1492)
!2950 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1492, file: !1, line: 2674, type: !1201)
!2951 = !DILocation(line: 2674, column: 67, scope: !1492)
!2952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !1492, file: !1, line: 2675, type: !2140)
!2953 = !DILocation(line: 2675, column: 21, scope: !1492)
!2954 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1492, file: !1, line: 2676, type: !302)
!2955 = !DILocation(line: 2676, column: 12, scope: !1492)
!2956 = !DILocation(line: 2680, column: 21, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !1, line: 2679, column: 3)
!2958 = distinct !DILexicalBlock(scope: !1492, file: !1, line: 2678, column: 3)
!2959 = !DILocation(line: 2680, column: 35, scope: !2957)
!2960 = !DILocation(line: 2680, column: 19, scope: !2957)
!2961 = !DILocation(line: 2681, column: 40, scope: !2957)
!2962 = !DILocation(line: 2681, column: 45, scope: !2957)
!2963 = !DILocation(line: 2681, column: 34, scope: !2957)
!2964 = !DILocation(line: 2681, column: 61, scope: !2957)
!2965 = !DILocation(line: 2681, column: 26, scope: !2957)
!2966 = !DILocation(line: 2681, column: 3, scope: !2957)
!2967 = !DILocation(line: 2681, column: 8, scope: !2957)
!2968 = !DILocation(line: 2681, column: 24, scope: !2957)
!2969 = !DILocation(line: 2682, column: 3, scope: !2957)
!2970 = !DILocation(line: 2682, column: 8, scope: !2957)
!2971 = !DILocation(line: 2682, column: 13, scope: !2957)
!2972 = !DILocation(line: 2682, column: 21, scope: !2957)
!2973 = !DILocation(line: 2682, column: 40, scope: !2957)
!2974 = !DILocation(line: 2682, column: 59, scope: !2957)
!2975 = !DILocation(line: 2682, column: 80, scope: !2957)
!2976 = !DILocation(line: 2683, column: 23, scope: !2957)
!2977 = !DILocation(line: 2683, column: 40, scope: !2957)
!2978 = !DILocation(line: 2683, column: 60, scope: !2957)
!2979 = !DILocation(line: 2683, column: 9, scope: !2957)
!2980 = !DILocation(line: 2683, column: 7, scope: !2957)
!2981 = !DILocation(line: 2685, column: 11, scope: !2958)
!2982 = !DILocation(line: 2685, column: 3, scope: !2958)
!2983 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1478, file: !1, line: 2175, type: !265)
!2984 = !DILocation(line: 2175, column: 45, scope: !1478)
!2985 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1478, file: !1, line: 2175, type: !1201)
!2986 = !DILocation(line: 2175, column: 65, scope: !1478)
!2987 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !1478, file: !1, line: 2176, type: !2226)
!2988 = !DILocation(line: 2176, column: 22, scope: !1478)
!2989 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !1478, file: !1, line: 2177, type: !302)
!2990 = !DILocation(line: 2177, column: 12, scope: !1478)
!2991 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1478, file: !1, line: 2178, type: !302)
!2992 = !DILocation(line: 2178, column: 12, scope: !1478)
!2993 = !DILocation(line: 2181, column: 11, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !1478, file: !1, line: 2180, column: 3)
!2995 = !DILocation(line: 2181, column: 16, scope: !2994)
!2996 = !DILocation(line: 2181, column: 21, scope: !2994)
!2997 = !DILocation(line: 2181, column: 29, scope: !2994)
!2998 = !DILocation(line: 2181, column: 48, scope: !2994)
!2999 = !DILocation(line: 2181, column: 67, scope: !2994)
!3000 = !DILocation(line: 2181, column: 9, scope: !2994)
!3001 = !DILocation(line: 2182, column: 7, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2994, file: !1, line: 2182, column: 7)
!3003 = !DILocation(line: 2182, column: 14, scope: !3002)
!3004 = !DILocation(line: 2182, column: 28, scope: !3002)
!3005 = !DILocation(line: 2265, column: 50, scope: !1484, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 2203, column: 15, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !1, line: 2202, column: 9)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !1, line: 2190, column: 14)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !1, line: 2190, column: 11)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !1, line: 2188, column: 7)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !1, line: 2187, column: 12)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !1, line: 2185, column: 9)
!3013 = distinct !DILexicalBlock(scope: !3002, file: !1, line: 2184, column: 10)
!3014 = !DILocation(line: 2265, column: 70, scope: !1484, inlinedAt: !3006)
!3015 = !DILocation(line: 2266, column: 21, scope: !1484, inlinedAt: !3006)
!3016 = !DILocation(line: 2267, column: 12, scope: !1484, inlinedAt: !3006)
!3017 = !DILocation(line: 2182, column: 7, scope: !2994)
!3018 = !DILocation(line: 2183, column: 5, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3002, file: !1, line: 2182, column: 34)
!3020 = !DILocation(line: 2185, column: 9, scope: !3012)
!3021 = !DILocation(line: 2185, column: 16, scope: !3012)
!3022 = !DILocation(line: 2185, column: 30, scope: !3012)
!3023 = !DILocation(line: 2185, column: 9, scope: !3013)
!3024 = !DILocation(line: 2186, column: 7, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3012, file: !1, line: 2185, column: 36)
!3026 = !DILocation(line: 2189, column: 7, scope: !3010)
!3027 = !DILocation(line: 2190, column: 11, scope: !3010)
!3028 = !DILocation(line: 2190, column: 14, scope: !3009)
!3029 = !DILocation(line: 2193, column: 38, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3008, file: !1, line: 2192, column: 9)
!3031 = !DILocation(line: 2193, column: 52, scope: !3030)
!3032 = !DILocation(line: 2193, column: 18, scope: !3030)
!3033 = !DILocation(line: 2193, column: 16, scope: !3030)
!3034 = !DILocation(line: 2195, column: 9, scope: !3008)
!3035 = !DILocation(line: 2198, column: 39, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3008, file: !1, line: 2197, column: 9)
!3037 = !DILocation(line: 2198, column: 53, scope: !3036)
!3038 = !DILocation(line: 2198, column: 18, scope: !3036)
!3039 = !DILocation(line: 2198, column: 16, scope: !3036)
!3040 = !DILocation(line: 2200, column: 9, scope: !3008)
!3041 = !DILocation(line: 2203, column: 40, scope: !3007)
!3042 = !DILocation(line: 2203, column: 54, scope: !3007)
!3043 = !DILocation(line: 2203, column: 15, scope: !3007)
!3044 = !DILocation(line: 2270, column: 7, scope: !2145, inlinedAt: !3006)
!3045 = !DILocation(line: 2270, column: 12, scope: !2145, inlinedAt: !3006)
!3046 = !DILocation(line: 2270, column: 9, scope: !2145, inlinedAt: !3006)
!3047 = !DILocation(line: 2270, column: 7, scope: !2146, inlinedAt: !3006)
!3048 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 2274, column: 5, scope: !2156, inlinedAt: !3006)
!3050 = !DILocation(line: 2271, column: 9, scope: !2151, inlinedAt: !3006)
!3051 = !DILocation(line: 2271, column: 7, scope: !2151, inlinedAt: !3006)
!3052 = !DILocation(line: 2278, column: 40, scope: !2159, inlinedAt: !3006)
!3053 = !DILocation(line: 2278, column: 45, scope: !2159, inlinedAt: !3006)
!3054 = !DILocation(line: 2278, column: 34, scope: !2159, inlinedAt: !3006)
!3055 = !DILocation(line: 2278, column: 61, scope: !2159, inlinedAt: !3006)
!3056 = !DILocation(line: 2278, column: 26, scope: !2159, inlinedAt: !3006)
!3057 = !DILocation(line: 2278, column: 3, scope: !2159, inlinedAt: !3006)
!3058 = !DILocation(line: 2278, column: 8, scope: !2159, inlinedAt: !3006)
!3059 = !DILocation(line: 2278, column: 24, scope: !2159, inlinedAt: !3006)
!3060 = !DILocation(line: 2279, column: 3, scope: !2159, inlinedAt: !3006)
!3061 = !DILocation(line: 2279, column: 8, scope: !2159, inlinedAt: !3006)
!3062 = !DILocation(line: 2279, column: 13, scope: !2159, inlinedAt: !3006)
!3063 = !DILocation(line: 2279, column: 21, scope: !2159, inlinedAt: !3006)
!3064 = !DILocation(line: 2279, column: 40, scope: !2159, inlinedAt: !3006)
!3065 = !DILocation(line: 2279, column: 59, scope: !2159, inlinedAt: !3006)
!3066 = !DILocation(line: 2279, column: 80, scope: !2159, inlinedAt: !3006)
!3067 = !DILocation(line: 2280, column: 49, scope: !2159, inlinedAt: !3006)
!3068 = !DILocation(line: 2280, column: 63, scope: !2159, inlinedAt: !3006)
!3069 = !DILocation(line: 2280, column: 21, scope: !2159, inlinedAt: !3006)
!3070 = !DILocation(line: 2280, column: 19, scope: !2159, inlinedAt: !3006)
!3071 = !DILocation(line: 2281, column: 23, scope: !2159, inlinedAt: !3006)
!3072 = !DILocation(line: 2281, column: 40, scope: !2159, inlinedAt: !3006)
!3073 = !DILocation(line: 2281, column: 60, scope: !2159, inlinedAt: !3006)
!3074 = !DILocation(line: 2281, column: 9, scope: !2159, inlinedAt: !3006)
!3075 = !DILocation(line: 2281, column: 7, scope: !2159, inlinedAt: !3006)
!3076 = !DILocation(line: 2283, column: 11, scope: !2146, inlinedAt: !3006)
!3077 = !DILocation(line: 2283, column: 3, scope: !2146, inlinedAt: !3006)
!3078 = !DILocation(line: 2203, column: 13, scope: !3007)
!3079 = !DILocation(line: 2205, column: 17, scope: !3008)
!3080 = !DILocation(line: 2205, column: 9, scope: !3008)
!3081 = !DILocation(line: 2206, column: 14, scope: !3009)
!3082 = !DILocation(line: 2212, column: 11, scope: !2994)
!3083 = !DILocation(line: 2212, column: 3, scope: !2994)
!3084 = !DILocation(line: 2214, column: 1, scope: !1478)
!3085 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1485, file: !1, line: 2286, type: !265)
!3086 = !DILocation(line: 2286, column: 47, scope: !1485)
!3087 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1485, file: !1, line: 2286, type: !1201)
!3088 = !DILocation(line: 2286, column: 67, scope: !1485)
!3089 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !1485, file: !1, line: 2287, type: !2140)
!3090 = !DILocation(line: 2287, column: 21, scope: !1485)
!3091 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1485, file: !1, line: 2288, type: !302)
!3092 = !DILocation(line: 2288, column: 12, scope: !1485)
!3093 = !DILocation(line: 2294, column: 7, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !1, line: 2294, column: 7)
!3095 = distinct !DILexicalBlock(scope: !1485, file: !1, line: 2290, column: 3)
!3096 = !DILocation(line: 2294, column: 12, scope: !3094)
!3097 = !DILocation(line: 2294, column: 9, scope: !3094)
!3098 = !DILocation(line: 2294, column: 7, scope: !3095)
!3099 = !DILocation(line: 2295, column: 9, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3094, file: !1, line: 2294, column: 16)
!3101 = !DILocation(line: 2295, column: 7, scope: !3100)
!3102 = !DILocation(line: 2296, column: 3, scope: !3100)
!3103 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 2298, column: 5, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !1, line: 2297, column: 5)
!3106 = distinct !DILexicalBlock(scope: !3094, file: !1, line: 2296, column: 10)
!3107 = !DILocation(line: 2302, column: 40, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3095, file: !1, line: 2301, column: 3)
!3109 = !DILocation(line: 2302, column: 45, scope: !3108)
!3110 = !DILocation(line: 2302, column: 34, scope: !3108)
!3111 = !DILocation(line: 2302, column: 61, scope: !3108)
!3112 = !DILocation(line: 2302, column: 26, scope: !3108)
!3113 = !DILocation(line: 2302, column: 3, scope: !3108)
!3114 = !DILocation(line: 2302, column: 8, scope: !3108)
!3115 = !DILocation(line: 2302, column: 24, scope: !3108)
!3116 = !DILocation(line: 2303, column: 3, scope: !3108)
!3117 = !DILocation(line: 2303, column: 8, scope: !3108)
!3118 = !DILocation(line: 2303, column: 13, scope: !3108)
!3119 = !DILocation(line: 2303, column: 21, scope: !3108)
!3120 = !DILocation(line: 2303, column: 40, scope: !3108)
!3121 = !DILocation(line: 2303, column: 59, scope: !3108)
!3122 = !DILocation(line: 2303, column: 80, scope: !3108)
!3123 = !DILocation(line: 2304, column: 49, scope: !3108)
!3124 = !DILocation(line: 2304, column: 63, scope: !3108)
!3125 = !DILocation(line: 2304, column: 21, scope: !3108)
!3126 = !DILocation(line: 2304, column: 19, scope: !3108)
!3127 = !DILocation(line: 2305, column: 22, scope: !3108)
!3128 = !DILocation(line: 2305, column: 39, scope: !3108)
!3129 = !DILocation(line: 2305, column: 59, scope: !3108)
!3130 = !DILocation(line: 2305, column: 9, scope: !3108)
!3131 = !DILocation(line: 2305, column: 7, scope: !3108)
!3132 = !DILocation(line: 2307, column: 11, scope: !3095)
!3133 = !DILocation(line: 2307, column: 3, scope: !3095)
!3134 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DriverObject", arg: 1, scope: !1475, file: !1, line: 2104, type: !1471)
!3135 = !DILocation(line: 2104, column: 43, scope: !1475)
!3136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PhysicalDeviceObject", arg: 2, scope: !1475, file: !1, line: 2104, type: !265)
!3137 = !DILocation(line: 2104, column: 73, scope: !1475)
!3138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !1475, file: !1, line: 2105, type: !302)
!3139 = !DILocation(line: 2105, column: 12, scope: !1475)
!3140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filterDeviceObject", scope: !1475, file: !1, line: 2106, type: !265)
!3141 = !DILocation(line: 2106, column: 18, scope: !1475)
!3142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !1475, file: !1, line: 2107, type: !2140)
!3143 = !DILocation(line: 2107, column: 21, scope: !1475)
!3144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "registrationFlag", scope: !1475, file: !1, line: 2108, type: !286)
!3145 = !DILocation(line: 2108, column: 9, scope: !1475)
!3146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wmilibContext", scope: !1475, file: !1, line: 2109, type: !1784)
!3147 = !DILocation(line: 2109, column: 19, scope: !1475)
!3148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !1475, file: !1, line: 2110, type: !681)
!3149 = !DILocation(line: 2110, column: 9, scope: !1475)
!3150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffersize", scope: !1475, file: !1, line: 2111, type: !286)
!3151 = !DILocation(line: 2111, column: 9, scope: !1475)
!3152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1475, file: !1, line: 2112, type: !289)
!3153 = !DILocation(line: 2112, column: 9, scope: !1475)
!3154 = !DILocation(line: 2116, column: 20, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !1, line: 2115, column: 3)
!3156 = distinct !DILexicalBlock(scope: !1475, file: !1, line: 2114, column: 3)
!3157 = !DILocation(line: 2117, column: 27, scope: !3155)
!3158 = !DILocation(line: 2117, column: 12, scope: !3155)
!3159 = !DILocation(line: 3547, column: 28, scope: !1559, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 2117, column: 12, scope: !3155)
!3161 = !DILocation(line: 3547, column: 7, scope: !1559, inlinedAt: !3160)
!3162 = !DILocation(line: 3551, column: 7, scope: !3163, inlinedAt: !3160)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !1, line: 3551, column: 7)
!3164 = distinct !DILexicalBlock(scope: !1559, file: !1, line: 3550, column: 3)
!3165 = !DILocation(line: 3551, column: 26, scope: !3163, inlinedAt: !3160)
!3166 = !DILocation(line: 3330, column: 18, scope: !1514, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 3367, column: 9, scope: !2030, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 2132, column: 9, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3156, file: !1, line: 2125, column: 3)
!3170 = !DILocation(line: 3331, column: 7, scope: !1514, inlinedAt: !3167)
!3171 = !DILocation(line: 3360, column: 39, scope: !1531, inlinedAt: !3168)
!3172 = !DILocation(line: 3360, column: 57, scope: !1531, inlinedAt: !3168)
!3173 = !DILocation(line: 3361, column: 67, scope: !1531, inlinedAt: !3168)
!3174 = !DILocation(line: 3362, column: 9, scope: !1531, inlinedAt: !3168)
!3175 = !DILocation(line: 3363, column: 9, scope: !1531, inlinedAt: !3168)
!3176 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SourceDevice", arg: 1, scope: !1550, file: !1, line: 3446, type: !265)
!3177 = !DILocation(line: 3446, column: 59, scope: !1550, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 2147, column: 41, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3156, file: !1, line: 2145, column: 3)
!3180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "TargetDevice", arg: 2, scope: !1550, file: !1, line: 3446, type: !265)
!3181 = !DILocation(line: 3446, column: 89, scope: !1550, inlinedAt: !3178)
!3182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1550, file: !1, line: 3447, type: !1422)
!3183 = !DILocation(line: 3447, column: 7, scope: !1550, inlinedAt: !3178)
!3184 = !DILocation(line: 3551, column: 7, scope: !3164, inlinedAt: !3160)
!3185 = !DILocation(line: 3559, column: 13, scope: !3186, inlinedAt: !3160)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !1, line: 3558, column: 7)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !1, line: 3556, column: 12)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !1, line: 3556, column: 9)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !1, line: 3554, column: 5)
!3190 = distinct !DILexicalBlock(scope: !3163, file: !1, line: 3553, column: 10)
!3191 = !DILocation(line: 3331, column: 28, scope: !1514, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 3559, column: 13, scope: !3186, inlinedAt: !3160)
!3193 = !DILocation(line: 3331, column: 7, scope: !1514, inlinedAt: !3192)
!3194 = !DILocation(line: 3334, column: 7, scope: !2038, inlinedAt: !3192)
!3195 = !DILocation(line: 3334, column: 7, scope: !2039, inlinedAt: !3192)
!3196 = !DILocation(line: 3564, column: 7, scope: !3187, inlinedAt: !3160)
!3197 = !DILocation(line: 3335, column: 5, scope: !2042, inlinedAt: !3192)
!3198 = !DILocation(line: 3337, column: 5, scope: !2044, inlinedAt: !3192)
!3199 = !DILocation(line: 3340, column: 1, scope: !1514, inlinedAt: !3192)
!3200 = !DILocation(line: 3559, column: 11, scope: !3186, inlinedAt: !3160)
!3201 = !DILocation(line: 3560, column: 31, scope: !3186, inlinedAt: !3160)
!3202 = !DILocation(line: 3560, column: 23, scope: !3186, inlinedAt: !3160)
!3203 = !DILocation(line: 3560, column: 8, scope: !3186, inlinedAt: !3160)
!3204 = !DILocation(line: 3560, column: 21, scope: !3186, inlinedAt: !3160)
!3205 = !DILocation(line: 3562, column: 7, scope: !3187, inlinedAt: !3160)
!3206 = !DILocation(line: 3571, column: 1, scope: !1559, inlinedAt: !3160)
!3207 = !DILocation(line: 2117, column: 10, scope: !3155)
!3208 = !DILocation(line: 2120, column: 10, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3156, file: !1, line: 2120, column: 7)
!3210 = !DILocation(line: 2120, column: 17, scope: !3209)
!3211 = !DILocation(line: 3330, column: 18, scope: !1514, inlinedAt: !3192)
!3212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DriverObject", arg: 1, scope: !1559, file: !1, line: 3544, type: !1471)
!3213 = !DILocation(line: 3544, column: 40, scope: !1559, inlinedAt: !3160)
!3214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceExtensionSize", arg: 2, scope: !1559, file: !1, line: 3544, type: !286)
!3215 = !DILocation(line: 3544, column: 61, scope: !1559, inlinedAt: !3160)
!3216 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceName", arg: 3, scope: !1559, file: !1, line: 3545, type: !317)
!3217 = !DILocation(line: 3545, column: 41, scope: !1559, inlinedAt: !3160)
!3218 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceType", arg: 4, scope: !1559, file: !1, line: 3545, type: !286)
!3219 = !DILocation(line: 3545, column: 60, scope: !1559, inlinedAt: !3160)
!3220 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceCharacteristics", arg: 5, scope: !1559, file: !1, line: 3545, type: !286)
!3221 = !DILocation(line: 3545, column: 79, scope: !1559, inlinedAt: !3160)
!3222 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Exclusive", arg: 6, scope: !1559, file: !1, line: 3546, type: !329)
!3223 = !DILocation(line: 3546, column: 33, scope: !1559, inlinedAt: !3160)
!3224 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 7, scope: !1559, file: !1, line: 3546, type: !1395)
!3225 = !DILocation(line: 3546, column: 61, scope: !1559, inlinedAt: !3160)
!3226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1559, file: !1, line: 3547, type: !1422)
!3227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1559, file: !1, line: 3548, type: !1458)
!3228 = !DILocation(line: 3548, column: 9, scope: !1559, inlinedAt: !3160)
!3229 = !DILocation(line: 2120, column: 7, scope: !3156)
!3230 = !DILocation(line: 2121, column: 13, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3209, file: !1, line: 2120, column: 25)
!3232 = !DILocation(line: 2121, column: 5, scope: !3231)
!3233 = !DILocation(line: 2126, column: 3, scope: !3169)
!3234 = !DILocation(line: 2126, column: 23, scope: !3169)
!3235 = !DILocation(line: 2126, column: 29, scope: !3169)
!3236 = !DILocation(line: 2127, column: 49, scope: !3169)
!3237 = !DILocation(line: 2127, column: 69, scope: !3169)
!3238 = !DILocation(line: 2127, column: 21, scope: !3169)
!3239 = !DILocation(line: 2127, column: 19, scope: !3169)
!3240 = !DILocation(line: 2128, column: 10, scope: !3169)
!3241 = !DILocation(line: 2128, column: 3, scope: !3169)
!3242 = !DILocation(line: 2129, column: 3, scope: !3169)
!3243 = !DILocation(line: 2129, column: 20, scope: !3169)
!3244 = !DILocation(line: 2129, column: 36, scope: !3169)
!3245 = !DILocation(line: 2130, column: 50, scope: !3169)
!3246 = !DILocation(line: 2130, column: 49, scope: !3169)
!3247 = !DILocation(line: 2130, column: 33, scope: !3169)
!3248 = !DILocation(line: 2130, column: 3, scope: !3169)
!3249 = !DILocation(line: 2130, column: 20, scope: !3169)
!3250 = !DILocation(line: 2130, column: 31, scope: !3169)
!3251 = !DILocation(line: 2131, column: 74, scope: !3169)
!3252 = !DILocation(line: 2131, column: 91, scope: !3169)
!3253 = !DILocation(line: 2131, column: 72, scope: !3169)
!3254 = !DILocation(line: 2131, column: 14, scope: !3169)
!3255 = !DILocation(line: 2132, column: 34, scope: !3169)
!3256 = !DILocation(line: 2132, column: 9, scope: !3169)
!3257 = !DILocation(line: 3367, column: 16, scope: !2030, inlinedAt: !3168)
!3258 = !DILocation(line: 3367, column: 9, scope: !2030, inlinedAt: !3168)
!3259 = !DILocation(line: 3331, column: 28, scope: !1514, inlinedAt: !3167)
!3260 = !DILocation(line: 3334, column: 7, scope: !2038, inlinedAt: !3167)
!3261 = !DILocation(line: 3334, column: 7, scope: !2039, inlinedAt: !3167)
!3262 = !DILocation(line: 3335, column: 5, scope: !2042, inlinedAt: !3167)
!3263 = !DILocation(line: 3337, column: 5, scope: !2044, inlinedAt: !3167)
!3264 = !DILocation(line: 3340, column: 1, scope: !1514, inlinedAt: !3167)
!3265 = !DILocation(line: 3367, column: 7, scope: !2030, inlinedAt: !3168)
!3266 = !DILocation(line: 3368, column: 7, scope: !2030, inlinedAt: !3168)
!3267 = !DILocation(line: 3368, column: 5, scope: !2030, inlinedAt: !3168)
!3268 = !DILocation(line: 3370, column: 11, scope: !2031, inlinedAt: !3168)
!3269 = !DILocation(line: 3370, column: 3, scope: !2031, inlinedAt: !3168)
!3270 = !DILocation(line: 2132, column: 7, scope: !3169)
!3271 = !DILocation(line: 2133, column: 20, scope: !3169)
!3272 = !DILocation(line: 2133, column: 10, scope: !3169)
!3273 = !DILocation(line: 2135, column: 22, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3156, file: !1, line: 2135, column: 7)
!3275 = !DILocation(line: 2135, column: 7, scope: !3274)
!3276 = !DILocation(line: 2135, column: 29, scope: !3274)
!3277 = !DILocation(line: 2135, column: 7, scope: !3156)
!3278 = !DILocation(line: 2137, column: 12, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3280, file: !1, line: 2136, column: 5)
!3280 = distinct !DILexicalBlock(scope: !3274, file: !1, line: 2135, column: 60)
!3281 = !DILocation(line: 2137, column: 23, scope: !3279)
!3282 = !DILocation(line: 2137, column: 5, scope: !3279)
!3283 = !DILocation(line: 2138, column: 65, scope: !3279)
!3284 = !DILocation(line: 2138, column: 37, scope: !3279)
!3285 = !DILocation(line: 2138, column: 5, scope: !3279)
!3286 = !DILocation(line: 2138, column: 22, scope: !3279)
!3287 = !DILocation(line: 2138, column: 35, scope: !3279)
!3288 = !DILocation(line: 2140, column: 3, scope: !3280)
!3289 = !DILocation(line: 2142, column: 22, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !1, line: 2141, column: 5)
!3291 = distinct !DILexicalBlock(scope: !3274, file: !1, line: 2140, column: 10)
!3292 = !DILocation(line: 2142, column: 5, scope: !3290)
!3293 = !DILocation(line: 2146, column: 43, scope: !3179)
!3294 = !DILocation(line: 2146, column: 3, scope: !3179)
!3295 = !DILocation(line: 2146, column: 20, scope: !3179)
!3296 = !DILocation(line: 2146, column: 41, scope: !3179)
!3297 = !DILocation(line: 2147, column: 69, scope: !3179)
!3298 = !DILocation(line: 2148, column: 69, scope: !3179)
!3299 = !DILocation(line: 2147, column: 41, scope: !3179)
!3300 = !DILocation(line: 3447, column: 28, scope: !1550, inlinedAt: !3178)
!3301 = !DILocation(line: 3450, column: 7, scope: !3302, inlinedAt: !3178)
!3302 = distinct !DILexicalBlock(scope: !3303, file: !1, line: 3450, column: 7)
!3303 = distinct !DILexicalBlock(scope: !1550, file: !1, line: 3449, column: 3)
!3304 = !DILocation(line: 3450, column: 26, scope: !3302, inlinedAt: !3178)
!3305 = !DILocation(line: 3450, column: 7, scope: !3303, inlinedAt: !3178)
!3306 = !DILocation(line: 3457, column: 15, scope: !3307, inlinedAt: !3178)
!3307 = distinct !DILexicalBlock(scope: !3308, file: !1, line: 3455, column: 12)
!3308 = distinct !DILexicalBlock(scope: !3309, file: !1, line: 3455, column: 9)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !1, line: 3453, column: 5)
!3310 = distinct !DILexicalBlock(scope: !3302, file: !1, line: 3452, column: 10)
!3311 = !DILocation(line: 3457, column: 7, scope: !3307, inlinedAt: !3178)
!3312 = !DILocation(line: 3459, column: 7, scope: !3307, inlinedAt: !3178)
!3313 = !DILocation(line: 3466, column: 1, scope: !1550, inlinedAt: !3178)
!3314 = !DILocation(line: 2147, column: 3, scope: !3179)
!3315 = !DILocation(line: 2147, column: 20, scope: !3179)
!3316 = !DILocation(line: 2147, column: 39, scope: !3179)
!3317 = !DILocation(line: 2150, column: 22, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3156, file: !1, line: 2150, column: 7)
!3319 = !DILocation(line: 2150, column: 39, scope: !3318)
!3320 = !DILocation(line: 2150, column: 7, scope: !3318)
!3321 = !DILocation(line: 2150, column: 58, scope: !3318)
!3322 = !DILocation(line: 2150, column: 7, scope: !3156)
!3323 = !DILocation(line: 2154, column: 5, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3318, file: !1, line: 2150, column: 89)
!3325 = !DILocation(line: 2159, column: 35, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3156, file: !1, line: 2158, column: 3)
!3327 = !DILocation(line: 2159, column: 3, scope: !3326)
!3328 = !DILocation(line: 2159, column: 20, scope: !3326)
!3329 = !DILocation(line: 2159, column: 33, scope: !3326)
!3330 = !DILocation(line: 2160, column: 48, scope: !3326)
!3331 = !DILocation(line: 2160, column: 65, scope: !3326)
!3332 = !DILocation(line: 2160, column: 3, scope: !3326)
!3333 = !DILocation(line: 2160, column: 20, scope: !3326)
!3334 = !DILocation(line: 2160, column: 39, scope: !3326)
!3335 = !DILocation(line: 2160, column: 46, scope: !3326)
!3336 = !DILocation(line: 2162, column: 21, scope: !3326)
!3337 = !DILocation(line: 2162, column: 38, scope: !3326)
!3338 = !DILocation(line: 2162, column: 17, scope: !3326)
!3339 = !DILocation(line: 2163, column: 10, scope: !3326)
!3340 = !DILocation(line: 2163, column: 3, scope: !3326)
!3341 = !DILocation(line: 2164, column: 3, scope: !3326)
!3342 = !DILocation(line: 2164, column: 18, scope: !3326)
!3343 = !DILocation(line: 2164, column: 28, scope: !3326)
!3344 = !DILocation(line: 2165, column: 3, scope: !3326)
!3345 = !DILocation(line: 2165, column: 18, scope: !3326)
!3346 = !DILocation(line: 2165, column: 27, scope: !3326)
!3347 = !DILocation(line: 2166, column: 3, scope: !3326)
!3348 = !DILocation(line: 2166, column: 18, scope: !3326)
!3349 = !DILocation(line: 2166, column: 34, scope: !3326)
!3350 = !DILocation(line: 2167, column: 3, scope: !3326)
!3351 = !DILocation(line: 2167, column: 18, scope: !3326)
!3352 = !DILocation(line: 2167, column: 36, scope: !3326)
!3353 = !DILocation(line: 2168, column: 3, scope: !3326)
!3354 = !DILocation(line: 2168, column: 18, scope: !3326)
!3355 = !DILocation(line: 2168, column: 37, scope: !3326)
!3356 = !DILocation(line: 2169, column: 3, scope: !3326)
!3357 = !DILocation(line: 2169, column: 23, scope: !3326)
!3358 = !DILocation(line: 2169, column: 29, scope: !3326)
!3359 = !DILocation(line: 2170, column: 3, scope: !3326)
!3360 = !DILocation(line: 2170, column: 23, scope: !3326)
!3361 = !DILocation(line: 2170, column: 29, scope: !3326)
!3362 = !DILocation(line: 2172, column: 3, scope: !3156)
!3363 = !DILocation(line: 2174, column: 1, scope: !1475)
!3364 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DriverObject", arg: 1, scope: !1493, file: !1, line: 2688, type: !1471)
!3365 = !DILocation(line: 2688, column: 36, scope: !1493)
!3366 = !DILocation(line: 2692, column: 3, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !1493, file: !1, line: 2691, column: 3)
!3368 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "FilterDevice", arg: 1, scope: !1472, file: !1, line: 2093, type: !265)
!3369 = !DILocation(line: 2093, column: 50, scope: !1472)
!3370 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "TargetDevice", arg: 2, scope: !1472, file: !1, line: 2093, type: !265)
!3371 = !DILocation(line: 2093, column: 80, scope: !1472)
!3372 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "propFlags", scope: !1472, file: !1, line: 2094, type: !286)
!3373 = !DILocation(line: 2094, column: 9, scope: !1472)
!3374 = !DILocation(line: 2097, column: 13, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !1472, file: !1, line: 2096, column: 3)
!3376 = !DILocation(line: 2098, column: 26, scope: !3375)
!3377 = !DILocation(line: 2098, column: 3, scope: !3375)
!3378 = !DILocation(line: 2098, column: 17, scope: !3375)
!3379 = !DILocation(line: 2098, column: 23, scope: !3375)
!3380 = !DILocation(line: 2099, column: 15, scope: !3375)
!3381 = !DILocation(line: 2099, column: 29, scope: !3375)
!3382 = !DILocation(line: 2099, column: 45, scope: !3375)
!3383 = !DILocation(line: 2099, column: 13, scope: !3375)
!3384 = !DILocation(line: 2100, column: 36, scope: !3375)
!3385 = !DILocation(line: 2100, column: 3, scope: !3375)
!3386 = !DILocation(line: 2100, column: 17, scope: !3375)
!3387 = !DILocation(line: 2100, column: 33, scope: !3375)
!3388 = !DILocation(line: 2101, column: 3, scope: !3375)
!3389 = !DILocation(line: 3544, column: 40, scope: !1559)
!3390 = !DILocation(line: 3544, column: 61, scope: !1559)
!3391 = !DILocation(line: 3545, column: 41, scope: !1559)
!3392 = !DILocation(line: 3545, column: 60, scope: !1559)
!3393 = !DILocation(line: 3545, column: 79, scope: !1559)
!3394 = !DILocation(line: 3546, column: 33, scope: !1559)
!3395 = !DILocation(line: 3546, column: 61, scope: !1559)
!3396 = !DILocation(line: 3547, column: 7, scope: !1559)
!3397 = !DILocation(line: 3547, column: 28, scope: !1559)
!3398 = !DILocation(line: 3548, column: 9, scope: !1559)
!3399 = !DILocation(line: 3551, column: 7, scope: !3163)
!3400 = !DILocation(line: 3551, column: 26, scope: !3163)
!3401 = !DILocation(line: 3330, column: 18, scope: !1514, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 3559, column: 13, scope: !3186)
!3403 = !DILocation(line: 3331, column: 7, scope: !1514, inlinedAt: !3402)
!3404 = !DILocation(line: 3551, column: 7, scope: !3164)
!3405 = !DILocation(line: 3552, column: 5, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3163, file: !1, line: 3551, column: 32)
!3407 = !DILocation(line: 3555, column: 5, scope: !3189)
!3408 = !DILocation(line: 3556, column: 9, scope: !3189)
!3409 = !DILocation(line: 3556, column: 12, scope: !3188)
!3410 = !DILocation(line: 3559, column: 13, scope: !3186)
!3411 = !DILocation(line: 3331, column: 28, scope: !1514, inlinedAt: !3402)
!3412 = !DILocation(line: 3334, column: 7, scope: !2038, inlinedAt: !3402)
!3413 = !DILocation(line: 3334, column: 7, scope: !2039, inlinedAt: !3402)
!3414 = !DILocation(line: 3335, column: 5, scope: !2042, inlinedAt: !3402)
!3415 = !DILocation(line: 3337, column: 5, scope: !2044, inlinedAt: !3402)
!3416 = !DILocation(line: 3340, column: 1, scope: !1514, inlinedAt: !3402)
!3417 = !DILocation(line: 3559, column: 11, scope: !3186)
!3418 = !DILocation(line: 3560, column: 31, scope: !3186)
!3419 = !DILocation(line: 3560, column: 23, scope: !3186)
!3420 = !DILocation(line: 3560, column: 8, scope: !3186)
!3421 = !DILocation(line: 3560, column: 21, scope: !3186)
!3422 = !DILocation(line: 3562, column: 7, scope: !3187)
!3423 = !DILocation(line: 3564, column: 7, scope: !3187)
!3424 = !DILocation(line: 3565, column: 12, scope: !3188)
!3425 = !DILocation(line: 3571, column: 1, scope: !1559)
!3426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1499, file: !1, line: 2908, type: !265)
!3427 = !DILocation(line: 2908, column: 38, scope: !1499)
!3428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "UniqueId", arg: 2, scope: !1499, file: !1, line: 2908, type: !286)
!3429 = !DILocation(line: 2908, column: 59, scope: !1499)
!3430 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ErrorCode", arg: 3, scope: !1499, file: !1, line: 2908, type: !302)
!3431 = !DILocation(line: 2908, column: 79, scope: !1499)
!3432 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Status", arg: 4, scope: !1499, file: !1, line: 2909, type: !302)
!3433 = !DILocation(line: 2909, column: 32, scope: !1499)
!3434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errorLogEntry", scope: !1499, file: !1, line: 2910, type: !3435)
!3435 = !DIDerivedType(tag: DW_TAG_typedef, name: "PIO_ERROR_LOG_PACKET", file: !1, line: 341, baseType: !1425)
!3436 = !DILocation(line: 2910, column: 24, scope: !1499)
!3437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1499, file: !1, line: 2911, type: !289)
!3438 = !DILocation(line: 2911, column: 9, scope: !1499)
!3439 = !DILocation(line: 2915, column: 33, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !1, line: 2914, column: 3)
!3441 = distinct !DILexicalBlock(scope: !1499, file: !1, line: 2913, column: 3)
!3442 = !DILocation(line: 2915, column: 9, scope: !3440)
!3443 = !DILocation(line: 2915, column: 7, scope: !3440)
!3444 = !DILocation(line: 2916, column: 50, scope: !3440)
!3445 = !DILocation(line: 2916, column: 19, scope: !3440)
!3446 = !DILocation(line: 2916, column: 17, scope: !3440)
!3447 = !DILocation(line: 2918, column: 22, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3441, file: !1, line: 2918, column: 7)
!3449 = !DILocation(line: 2918, column: 7, scope: !3448)
!3450 = !DILocation(line: 2918, column: 36, scope: !3448)
!3451 = !DILocation(line: 2918, column: 7, scope: !3441)
!3452 = !DILocation(line: 2920, column: 32, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3454, file: !1, line: 2919, column: 5)
!3454 = distinct !DILexicalBlock(scope: !3448, file: !1, line: 2918, column: 67)
!3455 = !DILocation(line: 2920, column: 5, scope: !3453)
!3456 = !DILocation(line: 2920, column: 20, scope: !3453)
!3457 = !DILocation(line: 2920, column: 30, scope: !3453)
!3458 = !DILocation(line: 2921, column: 39, scope: !3453)
!3459 = !DILocation(line: 2921, column: 5, scope: !3453)
!3460 = !DILocation(line: 2921, column: 20, scope: !3453)
!3461 = !DILocation(line: 2921, column: 37, scope: !3453)
!3462 = !DILocation(line: 2922, column: 34, scope: !3453)
!3463 = !DILocation(line: 2922, column: 5, scope: !3453)
!3464 = !DILocation(line: 2922, column: 20, scope: !3453)
!3465 = !DILocation(line: 2922, column: 32, scope: !3453)
!3466 = !DILocation(line: 2923, column: 14, scope: !3453)
!3467 = !DILocation(line: 2923, column: 29, scope: !3453)
!3468 = !DILocation(line: 2923, column: 12, scope: !3453)
!3469 = !DILocation(line: 2923, column: 42, scope: !3453)
!3470 = !DILocation(line: 2923, column: 5, scope: !3453)
!3471 = !DILocation(line: 2924, column: 5, scope: !3453)
!3472 = !DILocation(line: 2924, column: 20, scope: !3453)
!3473 = !DILocation(line: 2924, column: 33, scope: !3453)
!3474 = !DILocation(line: 2925, column: 26, scope: !3453)
!3475 = !DILocation(line: 2925, column: 5, scope: !3453)
!3476 = !DILocation(line: 2927, column: 3, scope: !3454)
!3477 = !DILocation(line: 2930, column: 3, scope: !3441)
!3478 = !DILocation(line: 3446, column: 59, scope: !1550)
!3479 = !DILocation(line: 3446, column: 89, scope: !1550)
!3480 = !DILocation(line: 3447, column: 7, scope: !1550)
!3481 = !DILocation(line: 3447, column: 28, scope: !1550)
!3482 = !DILocation(line: 3450, column: 7, scope: !3302)
!3483 = !DILocation(line: 3450, column: 26, scope: !3302)
!3484 = !DILocation(line: 3450, column: 7, scope: !3303)
!3485 = !DILocation(line: 3451, column: 5, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3302, file: !1, line: 3450, column: 32)
!3487 = !DILocation(line: 3454, column: 5, scope: !3309)
!3488 = !DILocation(line: 3455, column: 9, scope: !3309)
!3489 = !DILocation(line: 3455, column: 12, scope: !3308)
!3490 = !DILocation(line: 3457, column: 15, scope: !3307)
!3491 = !DILocation(line: 3457, column: 7, scope: !3307)
!3492 = !DILocation(line: 3459, column: 7, scope: !3307)
!3493 = !DILocation(line: 3460, column: 12, scope: !3308)
!3494 = !DILocation(line: 3466, column: 1, scope: !1550)
!3495 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1502, file: !1, line: 2933, type: !265)
!3496 = !DILocation(line: 2933, column: 49, scope: !1502)
!3497 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "RegFlags", arg: 2, scope: !1502, file: !1, line: 2933, type: !1393)
!3498 = !DILocation(line: 2933, column: 71, scope: !1502)
!3499 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InstanceName", arg: 3, scope: !1502, file: !1, line: 2933, type: !317)
!3500 = !DILocation(line: 2933, column: 98, scope: !1502)
!3501 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "RegistryPath", arg: 4, scope: !1502, file: !1, line: 2934, type: !1394)
!3502 = !DILocation(line: 2934, column: 51, scope: !1502)
!3503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "MofResourceName", arg: 5, scope: !1502, file: !1, line: 2934, type: !317)
!3504 = !DILocation(line: 2934, column: 82, scope: !1502)
!3505 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Pdo", arg: 6, scope: !1502, file: !1, line: 2935, type: !1395)
!3506 = !DILocation(line: 2935, column: 50, scope: !1502)
!3507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !1502, file: !1, line: 2936, type: !273)
!3508 = !DILocation(line: 2936, column: 10, scope: !1502)
!3509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !1502, file: !1, line: 2937, type: !302)
!3510 = !DILocation(line: 2937, column: 12, scope: !1502)
!3511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !1502, file: !1, line: 2938, type: !2140)
!3512 = !DILocation(line: 2938, column: 21, scope: !1502)
!3513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1502, file: !1, line: 2939, type: !289)
!3514 = !DILocation(line: 2939, column: 9, scope: !1502)
!3515 = !DILocation(line: 2943, column: 21, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !1, line: 2942, column: 3)
!3517 = distinct !DILexicalBlock(scope: !1502, file: !1, line: 2941, column: 3)
!3518 = !DILocation(line: 2943, column: 35, scope: !3516)
!3519 = !DILocation(line: 2943, column: 19, scope: !3516)
!3520 = !DILocation(line: 2944, column: 25, scope: !3516)
!3521 = !DILocation(line: 2944, column: 42, scope: !3516)
!3522 = !DILocation(line: 2944, column: 61, scope: !3516)
!3523 = !DILocation(line: 2944, column: 10, scope: !3516)
!3524 = !DILocation(line: 2944, column: 68, scope: !3516)
!3525 = !DILocation(line: 2944, column: 8, scope: !3516)
!3526 = !DILocation(line: 2945, column: 34, scope: !3516)
!3527 = !DILocation(line: 2945, column: 9, scope: !3516)
!3528 = !DILocation(line: 3367, column: 16, scope: !2030, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 2945, column: 9, scope: !3516)
!3530 = !DILocation(line: 3367, column: 9, scope: !2030, inlinedAt: !3529)
!3531 = !DILocation(line: 3331, column: 28, scope: !1514, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 3367, column: 9, scope: !2030, inlinedAt: !3529)
!3533 = !DILocation(line: 3331, column: 7, scope: !1514, inlinedAt: !3532)
!3534 = !DILocation(line: 3334, column: 7, scope: !2038, inlinedAt: !3532)
!3535 = !DILocation(line: 3334, column: 7, scope: !2039, inlinedAt: !3532)
!3536 = !DILocation(line: 3335, column: 5, scope: !2042, inlinedAt: !3532)
!3537 = !DILocation(line: 3337, column: 5, scope: !2044, inlinedAt: !3532)
!3538 = !DILocation(line: 3340, column: 1, scope: !1514, inlinedAt: !3532)
!3539 = !DILocation(line: 3367, column: 7, scope: !2030, inlinedAt: !3529)
!3540 = !DILocation(line: 3368, column: 7, scope: !2030, inlinedAt: !3529)
!3541 = !DILocation(line: 3368, column: 5, scope: !2030, inlinedAt: !3529)
!3542 = !DILocation(line: 3370, column: 11, scope: !2031, inlinedAt: !3529)
!3543 = !DILocation(line: 3370, column: 3, scope: !2031, inlinedAt: !3529)
!3544 = !DILocation(line: 2945, column: 7, scope: !3516)
!3545 = !DILocation(line: 2946, column: 26, scope: !3516)
!3546 = !DILocation(line: 2946, column: 3, scope: !3516)
!3547 = !DILocation(line: 2946, column: 17, scope: !3516)
!3548 = !DILocation(line: 2946, column: 24, scope: !3516)
!3549 = !DILocation(line: 2948, column: 22, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3517, file: !1, line: 2948, column: 7)
!3551 = !DILocation(line: 2948, column: 36, scope: !3550)
!3552 = !DILocation(line: 2948, column: 7, scope: !3550)
!3553 = !DILocation(line: 2948, column: 43, scope: !3550)
!3554 = !DILocation(line: 3330, column: 18, scope: !1514, inlinedAt: !3532)
!3555 = !DILocation(line: 3360, column: 39, scope: !1531, inlinedAt: !3529)
!3556 = !DILocation(line: 3360, column: 57, scope: !1531, inlinedAt: !3529)
!3557 = !DILocation(line: 3361, column: 67, scope: !1531, inlinedAt: !3529)
!3558 = !DILocation(line: 3362, column: 9, scope: !1531, inlinedAt: !3529)
!3559 = !DILocation(line: 3363, column: 9, scope: !1531, inlinedAt: !3529)
!3560 = !DILocation(line: 2948, column: 7, scope: !3517)
!3561 = !DILocation(line: 2949, column: 6, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3550, file: !1, line: 2948, column: 74)
!3563 = !DILocation(line: 2949, column: 19, scope: !3562)
!3564 = !DILocation(line: 2950, column: 6, scope: !3562)
!3565 = !DILocation(line: 2950, column: 15, scope: !3562)
!3566 = !DILocation(line: 2951, column: 12, scope: !3562)
!3567 = !DILocation(line: 2951, column: 29, scope: !3562)
!3568 = !DILocation(line: 2951, column: 6, scope: !3562)
!3569 = !DILocation(line: 2951, column: 10, scope: !3562)
!3570 = !DILocation(line: 2952, column: 12, scope: !3562)
!3571 = !DILocation(line: 2953, column: 3, scope: !3562)
!3572 = !DILocation(line: 2954, column: 12, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3550, file: !1, line: 2953, column: 10)
!3574 = !DILocation(line: 2956, column: 11, scope: !3517)
!3575 = !DILocation(line: 2956, column: 3, scope: !3517)
!3576 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1505, file: !1, line: 2959, type: !265)
!3577 = !DILocation(line: 2959, column: 51, scope: !1505)
!3578 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1505, file: !1, line: 2959, type: !1201)
!3579 = !DILocation(line: 2959, column: 71, scope: !1505)
!3580 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GuidIndex", arg: 3, scope: !1505, file: !1, line: 2959, type: !286)
!3581 = !DILocation(line: 2959, column: 83, scope: !1505)
!3582 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InstanceIndex", arg: 4, scope: !1505, file: !1, line: 2960, type: !286)
!3583 = !DILocation(line: 2960, column: 42, scope: !1505)
!3584 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InstanceCount", arg: 5, scope: !1505, file: !1, line: 2960, type: !286)
!3585 = !DILocation(line: 2960, column: 64, scope: !1505)
!3586 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InstanceLengthArray", arg: 6, scope: !1505, file: !1, line: 2960, type: !1392)
!3587 = !DILocation(line: 2960, column: 87, scope: !1505)
!3588 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BufferAvail", arg: 7, scope: !1505, file: !1, line: 2961, type: !286)
!3589 = !DILocation(line: 2961, column: 42, scope: !1505)
!3590 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Buffer", arg: 8, scope: !1505, file: !1, line: 2961, type: !1400)
!3591 = !DILocation(line: 2961, column: 63, scope: !1505)
!3592 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !1505, file: !1, line: 2962, type: !302)
!3593 = !DILocation(line: 2962, column: 12, scope: !1505)
!3594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !1505, file: !1, line: 2963, type: !2140)
!3595 = !DILocation(line: 2963, column: 21, scope: !1505)
!3596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeNeeded", scope: !1505, file: !1, line: 2964, type: !286)
!3597 = !DILocation(line: 2964, column: 9, scope: !1505)
!3598 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "totalCounters", scope: !1505, file: !1, line: 2965, type: !1348)
!3599 = !DILocation(line: 2965, column: 21, scope: !1505)
!3600 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "diskCounters", scope: !1505, file: !1, line: 2966, type: !1348)
!3601 = !DILocation(line: 2966, column: 21, scope: !1505)
!3602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "diskPerformance", scope: !1505, file: !1, line: 2967, type: !3603)
!3603 = !DIDerivedType(tag: DW_TAG_typedef, name: "PWMI_DISK_PERFORMANCE", file: !1, line: 1401, baseType: !1442)
!3604 = !DILocation(line: 2967, column: 25, scope: !1505)
!3605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceNameSize", scope: !1505, file: !1, line: 2968, type: !286)
!3606 = !DILocation(line: 2968, column: 9, scope: !1505)
!3607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "diskNamePtr", scope: !1505, file: !1, line: 2969, type: !3608)
!3608 = !DIDerivedType(tag: DW_TAG_typedef, name: "PWCHAR", file: !1, line: 21, baseType: !312)
!3609 = !DILocation(line: 2969, column: 10, scope: !1505)
!3610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1505, file: !1, line: 2970, type: !286)
!3611 = !DILocation(line: 2970, column: 9, scope: !1505)
!3612 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "perfctr", scope: !1505, file: !1, line: 2971, type: !380)
!3613 = !DILocation(line: 2971, column: 17, scope: !1505)
!3614 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frequency", scope: !1505, file: !1, line: 2972, type: !380)
!3615 = !DILocation(line: 2972, column: 17, scope: !1505)
!3616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "difference", scope: !1505, file: !1, line: 2973, type: !380)
!3617 = !DILocation(line: 2973, column: 17, scope: !1505)
!3618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1505, file: !1, line: 2974, type: !3608)
!3619 = !DILocation(line: 2974, column: 10, scope: !1505)
!3620 = !DILocation(line: 2977, column: 21, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !1505, file: !1, line: 2976, column: 3)
!3622 = !DILocation(line: 2977, column: 35, scope: !3621)
!3623 = !DILocation(line: 2977, column: 19, scope: !3621)
!3624 = !DILocation(line: 2978, column: 7, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3621, file: !1, line: 2978, column: 7)
!3626 = !DILocation(line: 2978, column: 17, scope: !3625)
!3627 = !DILocation(line: 2978, column: 7, scope: !3621)
!3628 = !DILocation(line: 2979, column: 37, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3625, file: !1, line: 2978, column: 25)
!3630 = !DILocation(line: 2979, column: 54, scope: !3629)
!3631 = !DILocation(line: 2979, column: 73, scope: !3629)
!3632 = !DILocation(line: 2979, column: 22, scope: !3629)
!3633 = !DILocation(line: 2979, column: 80, scope: !3629)
!3634 = !DILocation(line: 2979, column: 20, scope: !3629)
!3635 = !DILocation(line: 2980, column: 81, scope: !3629)
!3636 = !DILocation(line: 2980, column: 79, scope: !3629)
!3637 = !DILocation(line: 2980, column: 16, scope: !3629)
!3638 = !DILocation(line: 2981, column: 20, scope: !3629)
!3639 = !DILocation(line: 2981, column: 37, scope: !3629)
!3640 = !DILocation(line: 2981, column: 18, scope: !3629)
!3641 = !DILocation(line: 2982, column: 24, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3629, file: !1, line: 2982, column: 9)
!3643 = !DILocation(line: 2982, column: 9, scope: !3642)
!3644 = !DILocation(line: 2982, column: 37, scope: !3642)
!3645 = !DILocation(line: 2982, column: 9, scope: !3629)
!3646 = !DILocation(line: 2983, column: 14, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3642, file: !1, line: 2982, column: 68)
!3648 = !DILocation(line: 2984, column: 5, scope: !3647)
!3649 = !DILocation(line: 2985, column: 11, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3651, file: !1, line: 2985, column: 11)
!3651 = distinct !DILexicalBlock(scope: !3642, file: !1, line: 2984, column: 12)
!3652 = !DILocation(line: 2985, column: 26, scope: !3650)
!3653 = !DILocation(line: 2985, column: 23, scope: !3650)
!3654 = !DILocation(line: 2985, column: 11, scope: !3651)
!3655 = !DILocation(line: 2987, column: 16, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3657, file: !1, line: 2986, column: 9)
!3657 = distinct !DILexicalBlock(scope: !3650, file: !1, line: 2985, column: 38)
!3658 = !DILocation(line: 2987, column: 9, scope: !3656)
!3659 = !DILocation(line: 2988, column: 59, scope: !3656)
!3660 = !DILocation(line: 2988, column: 27, scope: !3656)
!3661 = !DILocation(line: 2988, column: 25, scope: !3656)
!3662 = !DILocation(line: 2989, column: 53, scope: !3656)
!3663 = !DILocation(line: 2989, column: 25, scope: !3656)
!3664 = !DILocation(line: 2989, column: 23, scope: !3656)
!3665 = !DILocation(line: 2990, column: 29, scope: !3656)
!3666 = !DILocation(line: 2990, column: 44, scope: !3656)
!3667 = !DILocation(line: 2990, column: 9, scope: !3656)
!3668 = !DILocation(line: 2991, column: 19, scope: !3656)
!3669 = !DILocation(line: 2992, column: 11, scope: !3656)
!3670 = !DILocation(line: 2995, column: 9, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3657, file: !1, line: 2994, column: 9)
!3672 = !DILocation(line: 2995, column: 19, scope: !3671)
!3673 = !DILocation(line: 2997, column: 15, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !1, line: 2997, column: 15)
!3675 = distinct !DILexicalBlock(scope: !3671, file: !1, line: 2995, column: 19)
!3676 = !DILocation(line: 2997, column: 19, scope: !3674)
!3677 = !DILocation(line: 2997, column: 36, scope: !3674)
!3678 = !DILocation(line: 2997, column: 17, scope: !3674)
!3679 = !DILocation(line: 2997, column: 15, scope: !3675)
!3680 = !DILocation(line: 2999, column: 11, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3674, file: !1, line: 2997, column: 48)
!3682 = !DILocation(line: 3000, column: 13, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3674, file: !1, line: 2999, column: 18)
!3684 = !DILocation(line: 3003, column: 31, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3675, file: !1, line: 3002, column: 11)
!3686 = !DILocation(line: 3003, column: 46, scope: !3685)
!3687 = !DILocation(line: 3003, column: 11, scope: !3685)
!3688 = !DILocation(line: 3004, column: 63, scope: !3685)
!3689 = !DILocation(line: 3004, column: 55, scope: !3685)
!3690 = !DILocation(line: 3004, column: 76, scope: !3685)
!3691 = !DILocation(line: 3004, column: 26, scope: !3685)
!3692 = !DILocation(line: 3004, column: 24, scope: !3685)
!3693 = !DILocation(line: 3005, column: 13, scope: !3685)
!3694 = !DILocation(line: 3010, column: 37, scope: !3657)
!3695 = !DILocation(line: 3010, column: 54, scope: !3657)
!3696 = !DILocation(line: 3010, column: 9, scope: !3657)
!3697 = !DILocation(line: 3010, column: 24, scope: !3657)
!3698 = !DILocation(line: 3010, column: 35, scope: !3657)
!3699 = !DILocation(line: 3011, column: 13, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3657, file: !1, line: 3011, column: 13)
!3701 = !DILocation(line: 3011, column: 28, scope: !3700)
!3702 = !DILocation(line: 3011, column: 39, scope: !3700)
!3703 = !DILocation(line: 3011, column: 13, scope: !3657)
!3704 = !DILocation(line: 3012, column: 41, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3700, file: !1, line: 3011, column: 47)
!3706 = !DILocation(line: 3012, column: 52, scope: !3705)
!3707 = !DILocation(line: 3012, column: 69, scope: !3705)
!3708 = !DILocation(line: 3012, column: 83, scope: !3705)
!3709 = !DILocation(line: 3012, column: 50, scope: !3705)
!3710 = !DILocation(line: 3012, column: 22, scope: !3705)
!3711 = !DILocation(line: 3012, column: 31, scope: !3705)
!3712 = !DILocation(line: 3013, column: 25, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3705, file: !1, line: 3013, column: 15)
!3714 = !DILocation(line: 3013, column: 34, scope: !3713)
!3715 = !DILocation(line: 3013, column: 15, scope: !3705)
!3716 = !DILocation(line: 3014, column: 74, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3713, file: !1, line: 3013, column: 41)
!3718 = !DILocation(line: 3014, column: 61, scope: !3717)
!3719 = !DILocation(line: 3014, column: 96, scope: !3717)
!3720 = !DILocation(line: 3014, column: 84, scope: !3717)
!3721 = !DILocation(line: 3014, column: 13, scope: !3717)
!3722 = !DILocation(line: 3014, column: 28, scope: !3717)
!3723 = !DILocation(line: 3014, column: 37, scope: !3717)
!3724 = !DILocation(line: 3014, column: 46, scope: !3717)
!3725 = !DILocation(line: 3015, column: 11, scope: !3717)
!3726 = !DILocation(line: 3018, column: 9, scope: !3705)
!3727 = !DILocation(line: 3022, column: 46, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3657, file: !1, line: 3021, column: 9)
!3729 = !DILocation(line: 3022, column: 63, scope: !3728)
!3730 = !DILocation(line: 3022, column: 9, scope: !3728)
!3731 = !DILocation(line: 3022, column: 24, scope: !3728)
!3732 = !DILocation(line: 3022, column: 44, scope: !3728)
!3733 = !DILocation(line: 3023, column: 18, scope: !3728)
!3734 = !DILocation(line: 3023, column: 33, scope: !3728)
!3735 = !DILocation(line: 3023, column: 16, scope: !3728)
!3736 = !DILocation(line: 3023, column: 58, scope: !3728)
!3737 = !DILocation(line: 3023, column: 75, scope: !3728)
!3738 = !DILocation(line: 3023, column: 56, scope: !3728)
!3739 = !DILocation(line: 3023, column: 9, scope: !3728)
!3740 = !DILocation(line: 3025, column: 33, scope: !3728)
!3741 = !DILocation(line: 3025, column: 40, scope: !3728)
!3742 = !DILocation(line: 3025, column: 23, scope: !3728)
!3743 = !DILocation(line: 3025, column: 21, scope: !3728)
!3744 = !DILocation(line: 3026, column: 15, scope: !3728)
!3745 = !DILocation(line: 3026, column: 13, scope: !3728)
!3746 = !DILocation(line: 3027, column: 21, scope: !3728)
!3747 = !DILocation(line: 3028, column: 16, scope: !3728)
!3748 = !DILocation(line: 3028, column: 33, scope: !3728)
!3749 = !DILocation(line: 3028, column: 52, scope: !3728)
!3750 = !DILocation(line: 3028, column: 10, scope: !3728)
!3751 = !DILocation(line: 3028, column: 14, scope: !3728)
!3752 = !DILocation(line: 3029, column: 16, scope: !3728)
!3753 = !DILocation(line: 3029, column: 29, scope: !3728)
!3754 = !DILocation(line: 3029, column: 46, scope: !3728)
!3755 = !DILocation(line: 3029, column: 65, scope: !3728)
!3756 = !DILocation(line: 3029, column: 73, scope: !3728)
!3757 = !DILocation(line: 3029, column: 90, scope: !3728)
!3758 = !DILocation(line: 3029, column: 109, scope: !3728)
!3759 = !DILocation(line: 3029, column: 9, scope: !3728)
!3760 = !DILocation(line: 3030, column: 32, scope: !3728)
!3761 = !DILocation(line: 3030, column: 10, scope: !3728)
!3762 = !DILocation(line: 3030, column: 30, scope: !3728)
!3763 = !DILocation(line: 3031, column: 16, scope: !3728)
!3764 = !DILocation(line: 3033, column: 7, scope: !3657)
!3765 = !DILocation(line: 3034, column: 16, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3650, file: !1, line: 3033, column: 14)
!3767 = !DILocation(line: 3037, column: 3, scope: !3629)
!3768 = !DILocation(line: 3038, column: 12, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3625, file: !1, line: 3037, column: 10)
!3770 = !DILocation(line: 3041, column: 31, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3621, file: !1, line: 3040, column: 3)
!3772 = !DILocation(line: 3041, column: 45, scope: !3771)
!3773 = !DILocation(line: 3041, column: 50, scope: !3771)
!3774 = !DILocation(line: 3041, column: 58, scope: !3771)
!3775 = !DILocation(line: 3041, column: 12, scope: !3771)
!3776 = !DILocation(line: 3041, column: 10, scope: !3771)
!3777 = !DILocation(line: 3043, column: 11, scope: !3621)
!3778 = !DILocation(line: 3043, column: 3, scope: !3621)
!3779 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1506, file: !1, line: 3046, type: !265)
!3780 = !DILocation(line: 3046, column: 52, scope: !1506)
!3781 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1506, file: !1, line: 3046, type: !1201)
!3782 = !DILocation(line: 3046, column: 72, scope: !1506)
!3783 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GuidIndex", arg: 3, scope: !1506, file: !1, line: 3046, type: !286)
!3784 = !DILocation(line: 3046, column: 84, scope: !1506)
!3785 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Function", arg: 4, scope: !1506, file: !1, line: 3047, type: !1418)
!3786 = !DILocation(line: 3047, column: 61, scope: !1506)
!3787 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Enable", arg: 5, scope: !1506, file: !1, line: 3047, type: !329)
!3788 = !DILocation(line: 3047, column: 80, scope: !1506)
!3789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !1506, file: !1, line: 3048, type: !302)
!3790 = !DILocation(line: 3048, column: 12, scope: !1506)
!3791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !1506, file: !1, line: 3049, type: !2140)
!3792 = !DILocation(line: 3049, column: 21, scope: !1506)
!3793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1506, file: !1, line: 3050, type: !276)
!3794 = !DILocation(line: 3050, column: 8, scope: !1506)
!3795 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___0", scope: !1506, file: !1, line: 3051, type: !276)
!3796 = !DILocation(line: 3051, column: 8, scope: !1506)
!3797 = !DILocation(line: 3054, column: 21, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !1506, file: !1, line: 3053, column: 3)
!3799 = !DILocation(line: 3054, column: 35, scope: !3798)
!3800 = !DILocation(line: 3054, column: 19, scope: !3798)
!3801 = !DILocation(line: 3055, column: 7, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3798, file: !1, line: 3055, column: 7)
!3803 = !DILocation(line: 3055, column: 17, scope: !3802)
!3804 = !DILocation(line: 3055, column: 7, scope: !3798)
!3805 = !DILocation(line: 3056, column: 15, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3807, file: !1, line: 3056, column: 9)
!3807 = distinct !DILexicalBlock(scope: !3802, file: !1, line: 3055, column: 25)
!3808 = !DILocation(line: 3056, column: 24, scope: !3806)
!3809 = !DILocation(line: 3056, column: 9, scope: !3807)
!3810 = !DILocation(line: 3057, column: 11, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3812, file: !1, line: 3057, column: 11)
!3812 = distinct !DILexicalBlock(scope: !3806, file: !1, line: 3056, column: 30)
!3813 = !DILocation(line: 3057, column: 11, scope: !3812)
!3814 = !DILocation(line: 3059, column: 38, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3816, file: !1, line: 3058, column: 9)
!3816 = distinct !DILexicalBlock(scope: !3811, file: !1, line: 3057, column: 19)
!3817 = !DILocation(line: 3059, column: 55, scope: !3815)
!3818 = !DILocation(line: 3059, column: 15, scope: !3815)
!3819 = !DILocation(line: 3059, column: 13, scope: !3815)
!3820 = !DILocation(line: 3061, column: 13, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3816, file: !1, line: 3061, column: 13)
!3822 = !DILocation(line: 3061, column: 17, scope: !3821)
!3823 = !DILocation(line: 3061, column: 13, scope: !3816)
!3824 = !DILocation(line: 3062, column: 30, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3826, file: !1, line: 3062, column: 15)
!3826 = distinct !DILexicalBlock(scope: !3821, file: !1, line: 3061, column: 24)
!3827 = !DILocation(line: 3062, column: 47, scope: !3825)
!3828 = !DILocation(line: 3062, column: 15, scope: !3825)
!3829 = !DILocation(line: 3062, column: 60, scope: !3825)
!3830 = !DILocation(line: 3062, column: 15, scope: !3826)
!3831 = !DILocation(line: 3064, column: 20, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3833, file: !1, line: 3063, column: 13)
!3833 = distinct !DILexicalBlock(scope: !3825, file: !1, line: 3062, column: 91)
!3834 = !DILocation(line: 3064, column: 37, scope: !3832)
!3835 = !DILocation(line: 3064, column: 112, scope: !3832)
!3836 = !DILocation(line: 3064, column: 129, scope: !3832)
!3837 = !DILocation(line: 3064, column: 110, scope: !3832)
!3838 = !DILocation(line: 3064, column: 54, scope: !3832)
!3839 = !DILocation(line: 3064, column: 13, scope: !3832)
!3840 = !DILocation(line: 3066, column: 11, scope: !3833)
!3841 = !DILocation(line: 3070, column: 11, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3826, file: !1, line: 3069, column: 11)
!3843 = !DILocation(line: 3070, column: 28, scope: !3842)
!3844 = !DILocation(line: 3070, column: 44, scope: !3842)
!3845 = !DILocation(line: 3071, column: 11, scope: !3842)
!3846 = !DILocation(line: 3071, column: 28, scope: !3842)
!3847 = !DILocation(line: 3071, column: 39, scope: !3842)
!3848 = !DILocation(line: 3073, column: 9, scope: !3826)
!3849 = !DILocation(line: 3076, column: 7, scope: !3816)
!3850 = !DILocation(line: 3078, column: 42, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3852, file: !1, line: 3077, column: 9)
!3852 = distinct !DILexicalBlock(scope: !3811, file: !1, line: 3076, column: 14)
!3853 = !DILocation(line: 3078, column: 59, scope: !3851)
!3854 = !DILocation(line: 3078, column: 19, scope: !3851)
!3855 = !DILocation(line: 3078, column: 17, scope: !3851)
!3856 = !DILocation(line: 3080, column: 13, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3852, file: !1, line: 3080, column: 13)
!3858 = !DILocation(line: 3080, column: 21, scope: !3857)
!3859 = !DILocation(line: 3080, column: 13, scope: !3852)
!3860 = !DILocation(line: 3081, column: 11, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3857, file: !1, line: 3080, column: 28)
!3862 = !DILocation(line: 3081, column: 28, scope: !3861)
!3863 = !DILocation(line: 3081, column: 44, scope: !3861)
!3864 = !DILocation(line: 3082, column: 11, scope: !3861)
!3865 = !DILocation(line: 3082, column: 28, scope: !3861)
!3866 = !DILocation(line: 3082, column: 39, scope: !3861)
!3867 = !DILocation(line: 3083, column: 9, scope: !3861)
!3868 = !DILocation(line: 3087, column: 5, scope: !3812)
!3869 = !DILocation(line: 3090, column: 12, scope: !3807)
!3870 = !DILocation(line: 3091, column: 3, scope: !3807)
!3871 = !DILocation(line: 3092, column: 12, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3802, file: !1, line: 3091, column: 10)
!3873 = !DILocation(line: 3095, column: 31, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3798, file: !1, line: 3094, column: 3)
!3875 = !DILocation(line: 3095, column: 45, scope: !3874)
!3876 = !DILocation(line: 3095, column: 50, scope: !3874)
!3877 = !DILocation(line: 3095, column: 12, scope: !3874)
!3878 = !DILocation(line: 3095, column: 10, scope: !3874)
!3879 = !DILocation(line: 3097, column: 11, scope: !3798)
!3880 = !DILocation(line: 3097, column: 3, scope: !3798)
!3881 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1482, file: !1, line: 2226, type: !265)
!3882 = !DILocation(line: 2226, column: 45, scope: !1482)
!3883 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1482, file: !1, line: 2226, type: !1201)
!3884 = !DILocation(line: 2226, column: 65, scope: !1482)
!3885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !1482, file: !1, line: 2227, type: !2140)
!3886 = !DILocation(line: 2227, column: 21, scope: !1482)
!3887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !1482, file: !1, line: 2228, type: !302)
!3888 = !DILocation(line: 2228, column: 12, scope: !1482)
!3889 = !DILocation(line: 2232, column: 49, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !1, line: 2231, column: 3)
!3891 = distinct !DILexicalBlock(scope: !1482, file: !1, line: 2230, column: 3)
!3892 = !DILocation(line: 2232, column: 63, scope: !3890)
!3893 = !DILocation(line: 2232, column: 21, scope: !3890)
!3894 = !DILocation(line: 2232, column: 19, scope: !3890)
!3895 = !DILocation(line: 2233, column: 42, scope: !3890)
!3896 = !DILocation(line: 2233, column: 56, scope: !3890)
!3897 = !DILocation(line: 2233, column: 12, scope: !3890)
!3898 = !DILocation(line: 2233, column: 10, scope: !3890)
!3899 = !DILocation(line: 2234, column: 32, scope: !3890)
!3900 = !DILocation(line: 2234, column: 46, scope: !3890)
!3901 = !DILocation(line: 2234, column: 63, scope: !3890)
!3902 = !DILocation(line: 2234, column: 3, scope: !3890)
!3903 = !DILocation(line: 2097, column: 13, scope: !3375, inlinedAt: !3904)
!3904 = distinct !DILocation(line: 2234, column: 3, scope: !3890)
!3905 = !DILocation(line: 2098, column: 26, scope: !3375, inlinedAt: !3904)
!3906 = !DILocation(line: 2098, column: 3, scope: !3375, inlinedAt: !3904)
!3907 = !DILocation(line: 2098, column: 17, scope: !3375, inlinedAt: !3904)
!3908 = !DILocation(line: 2098, column: 23, scope: !3375, inlinedAt: !3904)
!3909 = !DILocation(line: 2099, column: 15, scope: !3375, inlinedAt: !3904)
!3910 = !DILocation(line: 2099, column: 29, scope: !3375, inlinedAt: !3904)
!3911 = !DILocation(line: 2099, column: 45, scope: !3375, inlinedAt: !3904)
!3912 = !DILocation(line: 2099, column: 13, scope: !3375, inlinedAt: !3904)
!3913 = !DILocation(line: 2100, column: 36, scope: !3375, inlinedAt: !3904)
!3914 = !DILocation(line: 2100, column: 3, scope: !3375, inlinedAt: !3904)
!3915 = !DILocation(line: 2100, column: 17, scope: !3375, inlinedAt: !3904)
!3916 = !DILocation(line: 2100, column: 33, scope: !3375, inlinedAt: !3904)
!3917 = !DILocation(line: 2101, column: 3, scope: !3375, inlinedAt: !3904)
!3918 = !DILocation(line: 2235, column: 26, scope: !3890)
!3919 = !DILocation(line: 2235, column: 3, scope: !3890)
!3920 = !DILocation(line: 2236, column: 44, scope: !3890)
!3921 = !DILocation(line: 2236, column: 3, scope: !3890)
!3922 = !DILocation(line: 2236, column: 8, scope: !3890)
!3923 = !DILocation(line: 2236, column: 17, scope: !3890)
!3924 = !DILocation(line: 2236, column: 35, scope: !3890)
!3925 = !DILocation(line: 2236, column: 42, scope: !3890)
!3926 = !DILocation(line: 2237, column: 14, scope: !3890)
!3927 = !DILocation(line: 2237, column: 12, scope: !3890)
!3928 = !DILocation(line: 2238, column: 22, scope: !3890)
!3929 = !DILocation(line: 2238, column: 3, scope: !3890)
!3930 = !DILocation(line: 3883, column: 7, scope: !2200, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 2238, column: 3, scope: !3890)
!3932 = !DILocation(line: 3883, column: 12, scope: !2200, inlinedAt: !3931)
!3933 = !DILocation(line: 3883, column: 9, scope: !2200, inlinedAt: !3931)
!3934 = !DILocation(line: 3883, column: 7, scope: !2201, inlinedAt: !3931)
!3935 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 3887, column: 5, scope: !2208, inlinedAt: !3931)
!3937 = !DILocation(line: 3884, column: 9, scope: !2211, inlinedAt: !3931)
!3938 = !DILocation(line: 3884, column: 7, scope: !2211, inlinedAt: !3931)
!3939 = !DILocation(line: 3890, column: 3, scope: !2201, inlinedAt: !3931)
!3940 = !DILocation(line: 2240, column: 11, scope: !3891)
!3941 = !DILocation(line: 2093, column: 50, scope: !1472, inlinedAt: !3904)
!3942 = !DILocation(line: 2093, column: 80, scope: !1472, inlinedAt: !3904)
!3943 = !DILocation(line: 2094, column: 9, scope: !1472, inlinedAt: !3904)
!3944 = !DILocation(line: 3879, column: 30, scope: !1633, inlinedAt: !3931)
!3945 = !DILocation(line: 3879, column: 42, scope: !1633, inlinedAt: !3931)
!3946 = !DILocation(line: 2240, column: 3, scope: !3891)
!3947 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1483, file: !1, line: 2243, type: !265)
!3948 = !DILocation(line: 2243, column: 46, scope: !1483)
!3949 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1483, file: !1, line: 2243, type: !1201)
!3950 = !DILocation(line: 2243, column: 66, scope: !1483)
!3951 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !1483, file: !1, line: 2244, type: !302)
!3952 = !DILocation(line: 2244, column: 12, scope: !1483)
!3953 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !1483, file: !1, line: 2245, type: !2140)
!3954 = !DILocation(line: 2245, column: 21, scope: !1483)
!3955 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wmilibContext", scope: !1483, file: !1, line: 2246, type: !1784)
!3956 = !DILocation(line: 2246, column: 19, scope: !1483)
!3957 = !DILocation(line: 2250, column: 49, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3959, file: !1, line: 2249, column: 3)
!3959 = distinct !DILexicalBlock(scope: !1483, file: !1, line: 2248, column: 3)
!3960 = !DILocation(line: 2250, column: 63, scope: !3958)
!3961 = !DILocation(line: 2250, column: 21, scope: !3958)
!3962 = !DILocation(line: 2250, column: 19, scope: !3958)
!3963 = !DILocation(line: 2251, column: 28, scope: !3958)
!3964 = !DILocation(line: 2251, column: 3, scope: !3958)
!3965 = !DILocation(line: 2252, column: 21, scope: !3958)
!3966 = !DILocation(line: 2252, column: 38, scope: !3958)
!3967 = !DILocation(line: 2252, column: 17, scope: !3958)
!3968 = !DILocation(line: 2253, column: 34, scope: !3958)
!3969 = !DILocation(line: 2253, column: 49, scope: !3958)
!3970 = !DILocation(line: 2253, column: 3, scope: !3958)
!3971 = !DILocation(line: 2254, column: 10, scope: !3958)
!3972 = !DILocation(line: 2254, column: 3, scope: !3958)
!3973 = !DILocation(line: 2255, column: 42, scope: !3958)
!3974 = !DILocation(line: 2255, column: 56, scope: !3958)
!3975 = !DILocation(line: 2255, column: 12, scope: !3958)
!3976 = !DILocation(line: 2255, column: 10, scope: !3958)
!3977 = !DILocation(line: 2258, column: 44, scope: !3958)
!3978 = !DILocation(line: 2258, column: 3, scope: !3958)
!3979 = !DILocation(line: 2258, column: 8, scope: !3958)
!3980 = !DILocation(line: 2258, column: 17, scope: !3958)
!3981 = !DILocation(line: 2258, column: 35, scope: !3958)
!3982 = !DILocation(line: 2258, column: 42, scope: !3958)
!3983 = !DILocation(line: 2259, column: 14, scope: !3958)
!3984 = !DILocation(line: 2259, column: 12, scope: !3958)
!3985 = !DILocation(line: 2260, column: 22, scope: !3958)
!3986 = !DILocation(line: 2260, column: 3, scope: !3958)
!3987 = !DILocation(line: 3883, column: 7, scope: !2200, inlinedAt: !3988)
!3988 = distinct !DILocation(line: 2260, column: 3, scope: !3958)
!3989 = !DILocation(line: 3883, column: 12, scope: !2200, inlinedAt: !3988)
!3990 = !DILocation(line: 3883, column: 9, scope: !2200, inlinedAt: !3988)
!3991 = !DILocation(line: 3883, column: 7, scope: !2201, inlinedAt: !3988)
!3992 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !3993)
!3993 = distinct !DILocation(line: 3887, column: 5, scope: !2208, inlinedAt: !3988)
!3994 = !DILocation(line: 3884, column: 9, scope: !2211, inlinedAt: !3988)
!3995 = !DILocation(line: 3884, column: 7, scope: !2211, inlinedAt: !3988)
!3996 = !DILocation(line: 3890, column: 3, scope: !2201, inlinedAt: !3988)
!3997 = !DILocation(line: 2262, column: 11, scope: !3959)
!3998 = !DILocation(line: 3879, column: 30, scope: !1633, inlinedAt: !3988)
!3999 = !DILocation(line: 3879, column: 42, scope: !1633, inlinedAt: !3988)
!4000 = !DILocation(line: 2262, column: 3, scope: !3959)
!4001 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1481, file: !1, line: 2215, type: !265)
!4002 = !DILocation(line: 2215, column: 47, scope: !1481)
!4003 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1481, file: !1, line: 2215, type: !1201)
!4004 = !DILocation(line: 2215, column: 67, scope: !1481)
!4005 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 3, scope: !1481, file: !1, line: 2215, type: !289)
!4006 = !DILocation(line: 2215, column: 79, scope: !1481)
!4007 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Event", scope: !1481, file: !1, line: 2216, type: !549)
!4008 = !DILocation(line: 2216, column: 11, scope: !1481)
!4009 = !DILocation(line: 2220, column: 29, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4011, file: !1, line: 2219, column: 3)
!4011 = distinct !DILexicalBlock(scope: !1481, file: !1, line: 2218, column: 3)
!4012 = !DILocation(line: 2220, column: 11, scope: !4010)
!4013 = !DILocation(line: 2220, column: 9, scope: !4010)
!4014 = !DILocation(line: 2221, column: 14, scope: !4010)
!4015 = !DILocation(line: 2221, column: 3, scope: !4010)
!4016 = !DILocation(line: 3973, column: 12, scope: !1661, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 2221, column: 3, scope: !4010)
!4018 = !DILocation(line: 3973, column: 8, scope: !1661, inlinedAt: !4017)
!4019 = !DILocation(line: 3976, column: 18, scope: !4020, inlinedAt: !4017)
!4020 = distinct !DILexicalBlock(scope: !1661, file: !1, line: 3975, column: 3)
!4021 = !DILocation(line: 3977, column: 11, scope: !4020, inlinedAt: !4017)
!4022 = !DILocation(line: 3977, column: 3, scope: !4020, inlinedAt: !4017)
!4023 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 1, scope: !1661, file: !1, line: 3972, type: !1645)
!4024 = !DILocation(line: 3972, column: 26, scope: !1661, inlinedAt: !4017)
!4025 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Increment", arg: 2, scope: !1661, file: !1, line: 3972, type: !1657)
!4026 = !DILocation(line: 3972, column: 44, scope: !1661, inlinedAt: !4017)
!4027 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Wait", arg: 3, scope: !1661, file: !1, line: 3972, type: !329)
!4028 = !DILocation(line: 3972, column: 64, scope: !1661, inlinedAt: !4017)
!4029 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !1661, file: !1, line: 3973, type: !276)
!4030 = !DILocation(line: 2223, column: 3, scope: !4011)
!4031 = !DILocation(line: 3972, column: 26, scope: !1661)
!4032 = !DILocation(line: 3972, column: 44, scope: !1661)
!4033 = !DILocation(line: 3972, column: 64, scope: !1661)
!4034 = !DILocation(line: 3973, column: 8, scope: !1661)
!4035 = !DILocation(line: 3973, column: 12, scope: !1661)
!4036 = !DILocation(line: 3976, column: 18, scope: !4020)
!4037 = !DILocation(line: 3977, column: 11, scope: !4020)
!4038 = !DILocation(line: 3977, column: 3, scope: !4020)
!4039 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1486, file: !1, line: 2310, type: !265)
!4040 = !DILocation(line: 2310, column: 55, scope: !1486)
!4041 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1486, file: !1, line: 2310, type: !1201)
!4042 = !DILocation(line: 2310, column: 75, scope: !1486)
!4043 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !1486, file: !1, line: 2311, type: !2140)
!4044 = !DILocation(line: 2311, column: 21, scope: !1486)
!4045 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !1486, file: !1, line: 2312, type: !400)
!4046 = !DILocation(line: 2312, column: 10, scope: !1486)
!4047 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !1486, file: !1, line: 2313, type: !302)
!4048 = !DILocation(line: 2313, column: 12, scope: !1486)
!4049 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp", scope: !1486, file: !1, line: 2314, type: !2226)
!4050 = !DILocation(line: 2314, column: 22, scope: !1486)
!4051 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextIrpSp", scope: !1486, file: !1, line: 2315, type: !2226)
!4052 = !DILocation(line: 2315, column: 22, scope: !1486)
!4053 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpSp___0", scope: !1486, file: !1, line: 2316, type: !2226)
!4054 = !DILocation(line: 2316, column: 22, scope: !1486)
!4055 = !DILocation(line: 2321, column: 49, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4057, file: !1, line: 2319, column: 3)
!4057 = distinct !DILexicalBlock(scope: !1486, file: !1, line: 2318, column: 3)
!4058 = !DILocation(line: 2321, column: 63, scope: !4056)
!4059 = !DILocation(line: 2321, column: 21, scope: !4056)
!4060 = !DILocation(line: 2321, column: 19, scope: !4056)
!4061 = !DILocation(line: 2322, column: 11, scope: !4056)
!4062 = !DILocation(line: 2322, column: 16, scope: !4056)
!4063 = !DILocation(line: 2322, column: 21, scope: !4056)
!4064 = !DILocation(line: 2322, column: 29, scope: !4056)
!4065 = !DILocation(line: 2322, column: 48, scope: !4056)
!4066 = !DILocation(line: 2322, column: 67, scope: !4056)
!4067 = !DILocation(line: 2322, column: 9, scope: !4056)
!4068 = !DILocation(line: 2323, column: 15, scope: !4056)
!4069 = !DILocation(line: 2323, column: 20, scope: !4056)
!4070 = !DILocation(line: 2323, column: 25, scope: !4056)
!4071 = !DILocation(line: 2323, column: 33, scope: !4056)
!4072 = !DILocation(line: 2323, column: 52, scope: !4056)
!4073 = !DILocation(line: 2323, column: 71, scope: !4056)
!4074 = !DILocation(line: 2323, column: 92, scope: !4056)
!4075 = !DILocation(line: 2323, column: 13, scope: !4056)
!4076 = !DILocation(line: 2324, column: 10, scope: !4056)
!4077 = !DILocation(line: 2324, column: 21, scope: !4056)
!4078 = !DILocation(line: 2324, column: 3, scope: !4056)
!4079 = !DILocation(line: 2325, column: 3, scope: !4056)
!4080 = !DILocation(line: 2325, column: 14, scope: !4056)
!4081 = !DILocation(line: 2325, column: 22, scope: !4056)
!4082 = !DILocation(line: 2327, column: 7, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4057, file: !1, line: 2327, column: 7)
!4084 = !DILocation(line: 2327, column: 12, scope: !4083)
!4085 = !DILocation(line: 2327, column: 9, scope: !4083)
!4086 = !DILocation(line: 2327, column: 7, scope: !4057)
!4087 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !4088)
!4088 = distinct !DILocation(line: 2329, column: 5, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4090, file: !1, line: 2328, column: 5)
!4090 = distinct !DILexicalBlock(scope: !4083, file: !1, line: 2327, column: 16)
!4091 = !DILocation(line: 2331, column: 3, scope: !4090)
!4092 = !DILocation(line: 2332, column: 9, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4094, file: !1, line: 2332, column: 9)
!4094 = distinct !DILexicalBlock(scope: !4083, file: !1, line: 2331, column: 10)
!4095 = !DILocation(line: 2332, column: 24, scope: !4093)
!4096 = !DILocation(line: 2332, column: 9, scope: !4094)
!4097 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !4098)
!4098 = distinct !DILocation(line: 2334, column: 7, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4100, file: !1, line: 2333, column: 7)
!4100 = distinct !DILexicalBlock(scope: !4093, file: !1, line: 2332, column: 30)
!4101 = !DILocation(line: 2336, column: 5, scope: !4100)
!4102 = !DILocation(line: 2337, column: 22, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4093, file: !1, line: 2336, column: 12)
!4104 = !DILocation(line: 2338, column: 16, scope: !4103)
!4105 = !DILocation(line: 2339, column: 15, scope: !4103)
!4106 = !DILocation(line: 2343, column: 15, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4057, file: !1, line: 2342, column: 3)
!4108 = !DILocation(line: 2343, column: 20, scope: !4107)
!4109 = !DILocation(line: 2343, column: 25, scope: !4107)
!4110 = !DILocation(line: 2343, column: 33, scope: !4107)
!4111 = !DILocation(line: 2343, column: 52, scope: !4107)
!4112 = !DILocation(line: 2343, column: 71, scope: !4107)
!4113 = !DILocation(line: 2343, column: 92, scope: !4107)
!4114 = !DILocation(line: 2343, column: 13, scope: !4107)
!4115 = !DILocation(line: 2344, column: 3, scope: !4107)
!4116 = !DILocation(line: 2344, column: 14, scope: !4107)
!4117 = !DILocation(line: 2344, column: 32, scope: !4107)
!4118 = !DILocation(line: 2345, column: 24, scope: !4107)
!4119 = !DILocation(line: 2345, column: 3, scope: !4107)
!4120 = !DILocation(line: 2345, column: 14, scope: !4107)
!4121 = !DILocation(line: 2345, column: 22, scope: !4107)
!4122 = !DILocation(line: 2346, column: 3, scope: !4107)
!4123 = !DILocation(line: 2346, column: 14, scope: !4107)
!4124 = !DILocation(line: 2346, column: 22, scope: !4107)
!4125 = !DILocation(line: 2347, column: 3, scope: !4107)
!4126 = !DILocation(line: 2347, column: 14, scope: !4107)
!4127 = !DILocation(line: 2347, column: 22, scope: !4107)
!4128 = !DILocation(line: 2348, column: 30, scope: !4107)
!4129 = !DILocation(line: 2348, column: 41, scope: !4107)
!4130 = !DILocation(line: 2348, column: 24, scope: !4107)
!4131 = !DILocation(line: 2348, column: 49, scope: !4107)
!4132 = !DILocation(line: 2348, column: 3, scope: !4107)
!4133 = !DILocation(line: 2348, column: 14, scope: !4107)
!4134 = !DILocation(line: 2348, column: 22, scope: !4107)
!4135 = !DILocation(line: 2349, column: 30, scope: !4107)
!4136 = !DILocation(line: 2349, column: 41, scope: !4107)
!4137 = !DILocation(line: 2349, column: 24, scope: !4107)
!4138 = !DILocation(line: 2349, column: 49, scope: !4107)
!4139 = !DILocation(line: 2349, column: 3, scope: !4107)
!4140 = !DILocation(line: 2349, column: 14, scope: !4107)
!4141 = !DILocation(line: 2349, column: 22, scope: !4107)
!4142 = !DILocation(line: 2350, column: 26, scope: !4107)
!4143 = !DILocation(line: 2350, column: 43, scope: !4107)
!4144 = !DILocation(line: 2350, column: 63, scope: !4107)
!4145 = !DILocation(line: 2350, column: 12, scope: !4107)
!4146 = !DILocation(line: 2350, column: 10, scope: !4107)
!4147 = !DILocation(line: 2352, column: 7, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4057, file: !1, line: 2352, column: 7)
!4149 = !DILocation(line: 2352, column: 14, scope: !4148)
!4150 = !DILocation(line: 2352, column: 7, scope: !4057)
!4151 = !DILocation(line: 2354, column: 27, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4153, file: !1, line: 2353, column: 5)
!4153 = distinct !DILexicalBlock(scope: !4148, file: !1, line: 2352, column: 23)
!4154 = !DILocation(line: 2354, column: 5, scope: !4152)
!4155 = !DILocation(line: 2355, column: 14, scope: !4152)
!4156 = !DILocation(line: 2355, column: 12, scope: !4152)
!4157 = !DILocation(line: 2357, column: 3, scope: !4153)
!4158 = !DILocation(line: 2360, column: 11, scope: !4057)
!4159 = !DILocation(line: 2360, column: 3, scope: !4057)
!4160 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1496, file: !1, line: 2695, type: !265)
!4161 = !DILocation(line: 2695, column: 48, scope: !1496)
!4162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !1496, file: !1, line: 2696, type: !302)
!4163 = !DILocation(line: 2696, column: 12, scope: !1496)
!4164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ioStatus", scope: !1496, file: !1, line: 2697, type: !620)
!4165 = !DILocation(line: 2697, column: 19, scope: !1496)
!4166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "event", scope: !1496, file: !1, line: 2698, type: !400)
!4167 = !DILocation(line: 2698, column: 10, scope: !1496)
!4168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !1496, file: !1, line: 2699, type: !2140)
!4169 = !DILocation(line: 2699, column: 21, scope: !1496)
!4170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !1496, file: !1, line: 2700, type: !1201)
!4171 = !DILocation(line: 2700, column: 8, scope: !1496)
!4172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "number", scope: !1496, file: !1, line: 2701, type: !4173)
!4173 = !DIDerivedType(tag: DW_TAG_typedef, name: "STORAGE_DEVICE_NUMBER", file: !1, line: 1344, baseType: !4174)
!4174 = !DICompositeType(tag: DW_TAG_structure_type, name: "_STORAGE_DEVICE_NUMBER", file: !1, line: 1339, size: 192, align: 64, elements: !4175)
!4175 = !{!4176, !4177, !4178}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceType", scope: !4174, file: !1, line: 1340, baseType: !286, size: 64, align: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceNumber", scope: !4174, file: !1, line: 1341, baseType: !286, size: 64, align: 64, offset: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "PartitionNumber", scope: !4174, file: !1, line: 1342, baseType: !286, size: 64, align: 64, offset: 128)
!4179 = !DILocation(line: 2701, column: 25, scope: !1496)
!4180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "registrationFlag", scope: !1496, file: !1, line: 2702, type: !286)
!4181 = !DILocation(line: 2702, column: 9, scope: !1496)
!4182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outputSize", scope: !1496, file: !1, line: 2703, type: !286)
!4183 = !DILocation(line: 2703, column: 9, scope: !1496)
!4184 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "output", scope: !1496, file: !1, line: 2704, type: !4185)
!4185 = !DIDerivedType(tag: DW_TAG_typedef, name: "PMOUNTDEV_NAME", file: !1, line: 1385, baseType: !4186)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64, align: 64)
!4187 = !DICompositeType(tag: DW_TAG_structure_type, name: "_MOUNTDEV_NAME", file: !1, line: 1380, size: 32, align: 16, elements: !4188)
!4188 = !{!4189, !4190}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "NameLength", scope: !4187, file: !1, line: 1381, baseType: !273, size: 16, align: 16)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "Name", scope: !4187, file: !1, line: 1382, baseType: !1617, size: 16, align: 16, offset: 16)
!4191 = !DILocation(line: 2704, column: 18, scope: !1496)
!4192 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volumeNumber", scope: !1496, file: !1, line: 2705, type: !4193)
!4193 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOLUME_NUMBER", file: !1, line: 1379, baseType: !4194)
!4194 = !DICompositeType(tag: DW_TAG_structure_type, name: "_VOLUME_NUMBER", file: !1, line: 1375, size: 192, align: 64, elements: !4195)
!4195 = !{!4196, !4197}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "VolumeNumber", scope: !4194, file: !1, line: 1376, baseType: !286, size: 64, align: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "VolumeManagerName", scope: !4194, file: !1, line: 1377, baseType: !1345, size: 128, align: 16, offset: 64)
!4198 = !DILocation(line: 2705, column: 17, scope: !1496)
!4199 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1496, file: !1, line: 2706, type: !289)
!4200 = !DILocation(line: 2706, column: 9, scope: !1496)
!4201 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___0", scope: !1496, file: !1, line: 2707, type: !289)
!4202 = !DILocation(line: 2707, column: 9, scope: !1496)
!4203 = !DILocation(line: 2711, column: 20, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !1, line: 2710, column: 3)
!4205 = distinct !DILexicalBlock(scope: !1496, file: !1, line: 2709, column: 3)
!4206 = !DILocation(line: 2712, column: 21, scope: !4204)
!4207 = !DILocation(line: 2712, column: 35, scope: !4204)
!4208 = !DILocation(line: 2712, column: 19, scope: !4204)
!4209 = !DILocation(line: 2714, column: 65, scope: !4204)
!4210 = !DILocation(line: 2714, column: 82, scope: !4204)
!4211 = !DILocation(line: 2715, column: 53, scope: !4204)
!4212 = !DILocation(line: 2714, column: 9, scope: !4204)
!4213 = !DILocation(line: 2714, column: 7, scope: !4204)
!4214 = !DILocation(line: 2718, column: 9, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4205, file: !1, line: 2718, column: 7)
!4216 = !DILocation(line: 3330, column: 18, scope: !1514, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 3367, column: 9, scope: !2030, inlinedAt: !4218)
!4218 = distinct !DILocation(line: 2749, column: 11, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4220, file: !1, line: 2747, column: 5)
!4220 = distinct !DILexicalBlock(scope: !4221, file: !1, line: 2746, column: 10)
!4221 = distinct !DILexicalBlock(scope: !4205, file: !1, line: 2737, column: 7)
!4222 = !DILocation(line: 3331, column: 7, scope: !1514, inlinedAt: !4217)
!4223 = !DILocation(line: 3360, column: 39, scope: !1531, inlinedAt: !4218)
!4224 = !DILocation(line: 3360, column: 57, scope: !1531, inlinedAt: !4218)
!4225 = !DILocation(line: 3361, column: 67, scope: !1531, inlinedAt: !4218)
!4226 = !DILocation(line: 3362, column: 9, scope: !1531, inlinedAt: !4218)
!4227 = !DILocation(line: 3363, column: 9, scope: !1531, inlinedAt: !4218)
!4228 = !DILocation(line: 3330, column: 18, scope: !1514, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 3367, column: 9, scope: !2030, inlinedAt: !4230)
!4230 = distinct !DILocation(line: 2790, column: 17, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4232, file: !1, line: 2787, column: 7)
!4232 = distinct !DILexicalBlock(scope: !4233, file: !1, line: 2786, column: 33)
!4233 = distinct !DILexicalBlock(scope: !4220, file: !1, line: 2786, column: 9)
!4234 = !DILocation(line: 3331, column: 7, scope: !1514, inlinedAt: !4229)
!4235 = !DILocation(line: 3360, column: 39, scope: !1531, inlinedAt: !4230)
!4236 = !DILocation(line: 3360, column: 57, scope: !1531, inlinedAt: !4230)
!4237 = !DILocation(line: 3361, column: 67, scope: !1531, inlinedAt: !4230)
!4238 = !DILocation(line: 3362, column: 9, scope: !1531, inlinedAt: !4230)
!4239 = !DILocation(line: 3363, column: 9, scope: !1531, inlinedAt: !4230)
!4240 = !DILocation(line: 2718, column: 7, scope: !4205)
!4241 = !DILocation(line: 2720, column: 22, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4243, file: !1, line: 2719, column: 5)
!4243 = distinct !DILexicalBlock(scope: !4215, file: !1, line: 2718, column: 14)
!4244 = !DILocation(line: 2720, column: 5, scope: !4242)
!4245 = !DILocation(line: 2722, column: 5, scope: !4243)
!4246 = !DILocation(line: 2727, column: 26, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4205, file: !1, line: 2726, column: 3)
!4248 = !DILocation(line: 2727, column: 43, scope: !4247)
!4249 = !DILocation(line: 2727, column: 63, scope: !4247)
!4250 = !DILocation(line: 2727, column: 12, scope: !4247)
!4251 = !DILocation(line: 2727, column: 10, scope: !4247)
!4252 = !DILocation(line: 2729, column: 7, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4205, file: !1, line: 2729, column: 7)
!4254 = !DILocation(line: 2729, column: 14, scope: !4253)
!4255 = !DILocation(line: 2729, column: 7, scope: !4205)
!4256 = !DILocation(line: 2731, column: 27, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4258, file: !1, line: 2730, column: 5)
!4258 = distinct !DILexicalBlock(scope: !4253, file: !1, line: 2729, column: 23)
!4259 = !DILocation(line: 2731, column: 5, scope: !4257)
!4260 = !DILocation(line: 2732, column: 23, scope: !4257)
!4261 = !DILocation(line: 2732, column: 41, scope: !4257)
!4262 = !DILocation(line: 2732, column: 12, scope: !4257)
!4263 = !DILocation(line: 2734, column: 3, scope: !4258)
!4264 = !DILocation(line: 2737, column: 7, scope: !4221)
!4265 = !DILocation(line: 2737, column: 14, scope: !4221)
!4266 = !DILocation(line: 2737, column: 7, scope: !4205)
!4267 = !DILocation(line: 2739, column: 42, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4269, file: !1, line: 2738, column: 5)
!4269 = distinct !DILexicalBlock(scope: !4221, file: !1, line: 2737, column: 21)
!4270 = !DILocation(line: 2739, column: 5, scope: !4268)
!4271 = !DILocation(line: 2739, column: 22, scope: !4268)
!4272 = !DILocation(line: 2739, column: 33, scope: !4268)
!4273 = !DILocation(line: 2740, column: 14, scope: !4268)
!4274 = !DILocation(line: 2740, column: 31, scope: !4268)
!4275 = !DILocation(line: 2741, column: 21, scope: !4268)
!4276 = !DILocation(line: 2741, column: 42, scope: !4268)
!4277 = !DILocation(line: 2740, column: 5, scope: !4268)
!4278 = !DILocation(line: 2743, column: 14, scope: !4268)
!4279 = !DILocation(line: 2743, column: 31, scope: !4268)
!4280 = !DILocation(line: 2743, column: 12, scope: !4268)
!4281 = !DILocation(line: 2743, column: 5, scope: !4268)
!4282 = !DILocation(line: 2746, column: 3, scope: !4269)
!4283 = !DILocation(line: 2748, column: 16, scope: !4219)
!4284 = !DILocation(line: 2749, column: 36, scope: !4219)
!4285 = !DILocation(line: 2749, column: 11, scope: !4219)
!4286 = !DILocation(line: 3367, column: 16, scope: !2030, inlinedAt: !4218)
!4287 = !DILocation(line: 3367, column: 9, scope: !2030, inlinedAt: !4218)
!4288 = !DILocation(line: 3331, column: 28, scope: !1514, inlinedAt: !4217)
!4289 = !DILocation(line: 3334, column: 7, scope: !2038, inlinedAt: !4217)
!4290 = !DILocation(line: 3334, column: 7, scope: !2039, inlinedAt: !4217)
!4291 = !DILocation(line: 3335, column: 5, scope: !2042, inlinedAt: !4217)
!4292 = !DILocation(line: 3337, column: 5, scope: !2044, inlinedAt: !4217)
!4293 = !DILocation(line: 3340, column: 1, scope: !1514, inlinedAt: !4217)
!4294 = !DILocation(line: 3367, column: 7, scope: !2030, inlinedAt: !4218)
!4295 = !DILocation(line: 3368, column: 7, scope: !2030, inlinedAt: !4218)
!4296 = !DILocation(line: 3368, column: 5, scope: !2030, inlinedAt: !4218)
!4297 = !DILocation(line: 3370, column: 11, scope: !2031, inlinedAt: !4218)
!4298 = !DILocation(line: 3370, column: 3, scope: !2031, inlinedAt: !4218)
!4299 = !DILocation(line: 2749, column: 9, scope: !4219)
!4300 = !DILocation(line: 2750, column: 14, scope: !4219)
!4301 = !DILocation(line: 2750, column: 12, scope: !4219)
!4302 = !DILocation(line: 2752, column: 11, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4220, file: !1, line: 2752, column: 9)
!4304 = !DILocation(line: 2752, column: 9, scope: !4220)
!4305 = !DILocation(line: 2754, column: 24, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4307, file: !1, line: 2753, column: 7)
!4307 = distinct !DILexicalBlock(scope: !4303, file: !1, line: 2752, column: 19)
!4308 = !DILocation(line: 2754, column: 7, scope: !4306)
!4309 = !DILocation(line: 2756, column: 7, scope: !4307)
!4310 = !DILocation(line: 2762, column: 82, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4220, file: !1, line: 2760, column: 5)
!4312 = !DILocation(line: 2762, column: 99, scope: !4311)
!4313 = !DILocation(line: 2763, column: 55, scope: !4311)
!4314 = !DILocation(line: 2763, column: 63, scope: !4311)
!4315 = !DILocation(line: 2762, column: 11, scope: !4311)
!4316 = !DILocation(line: 2762, column: 9, scope: !4311)
!4317 = !DILocation(line: 2766, column: 11, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4220, file: !1, line: 2766, column: 9)
!4319 = !DILocation(line: 2766, column: 9, scope: !4220)
!4320 = !DILocation(line: 2769, column: 24, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4322, file: !1, line: 2767, column: 7)
!4322 = distinct !DILexicalBlock(scope: !4318, file: !1, line: 2766, column: 16)
!4323 = !DILocation(line: 2769, column: 7, scope: !4321)
!4324 = !DILocation(line: 2771, column: 7, scope: !4322)
!4325 = !DILocation(line: 2776, column: 28, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4220, file: !1, line: 2775, column: 5)
!4327 = !DILocation(line: 2776, column: 45, scope: !4326)
!4328 = !DILocation(line: 2776, column: 65, scope: !4326)
!4329 = !DILocation(line: 2776, column: 14, scope: !4326)
!4330 = !DILocation(line: 2776, column: 12, scope: !4326)
!4331 = !DILocation(line: 2778, column: 9, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4220, file: !1, line: 2778, column: 9)
!4333 = !DILocation(line: 2778, column: 16, scope: !4332)
!4334 = !DILocation(line: 2778, column: 9, scope: !4220)
!4335 = !DILocation(line: 2780, column: 29, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4337, file: !1, line: 2779, column: 7)
!4337 = distinct !DILexicalBlock(scope: !4332, file: !1, line: 2778, column: 25)
!4338 = !DILocation(line: 2780, column: 7, scope: !4336)
!4339 = !DILocation(line: 2781, column: 25, scope: !4336)
!4340 = !DILocation(line: 2781, column: 43, scope: !4336)
!4341 = !DILocation(line: 2781, column: 14, scope: !4336)
!4342 = !DILocation(line: 2783, column: 5, scope: !4337)
!4343 = !DILocation(line: 2786, column: 9, scope: !4233)
!4344 = !DILocation(line: 2786, column: 16, scope: !4233)
!4345 = !DILocation(line: 2786, column: 9, scope: !4220)
!4346 = !DILocation(line: 2788, column: 60, scope: !4231)
!4347 = !DILocation(line: 2788, column: 68, scope: !4231)
!4348 = !DILocation(line: 2788, column: 45, scope: !4231)
!4349 = !DILocation(line: 2788, column: 43, scope: !4231)
!4350 = !DILocation(line: 2788, column: 18, scope: !4231)
!4351 = !DILocation(line: 2790, column: 42, scope: !4231)
!4352 = !DILocation(line: 2790, column: 17, scope: !4231)
!4353 = !DILocation(line: 3367, column: 16, scope: !2030, inlinedAt: !4230)
!4354 = !DILocation(line: 3367, column: 9, scope: !2030, inlinedAt: !4230)
!4355 = !DILocation(line: 3331, column: 28, scope: !1514, inlinedAt: !4229)
!4356 = !DILocation(line: 3334, column: 7, scope: !2038, inlinedAt: !4229)
!4357 = !DILocation(line: 3334, column: 7, scope: !2039, inlinedAt: !4229)
!4358 = !DILocation(line: 3335, column: 5, scope: !2042, inlinedAt: !4229)
!4359 = !DILocation(line: 3337, column: 5, scope: !2044, inlinedAt: !4229)
!4360 = !DILocation(line: 3340, column: 1, scope: !1514, inlinedAt: !4229)
!4361 = !DILocation(line: 3367, column: 7, scope: !2030, inlinedAt: !4230)
!4362 = !DILocation(line: 3368, column: 7, scope: !2030, inlinedAt: !4230)
!4363 = !DILocation(line: 3368, column: 5, scope: !2030, inlinedAt: !4230)
!4364 = !DILocation(line: 3370, column: 11, scope: !2031, inlinedAt: !4230)
!4365 = !DILocation(line: 3370, column: 3, scope: !2031, inlinedAt: !4230)
!4366 = !DILocation(line: 2790, column: 15, scope: !4231)
!4367 = !DILocation(line: 2791, column: 16, scope: !4231)
!4368 = !DILocation(line: 2791, column: 14, scope: !4231)
!4369 = !DILocation(line: 2793, column: 13, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4232, file: !1, line: 2793, column: 11)
!4371 = !DILocation(line: 2793, column: 11, scope: !4232)
!4372 = !DILocation(line: 2795, column: 26, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4374, file: !1, line: 2794, column: 9)
!4374 = distinct !DILexicalBlock(scope: !4370, file: !1, line: 2793, column: 21)
!4375 = !DILocation(line: 2795, column: 9, scope: !4373)
!4376 = !DILocation(line: 2797, column: 9, scope: !4374)
!4377 = !DILocation(line: 2804, column: 43, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4232, file: !1, line: 2801, column: 7)
!4379 = !DILocation(line: 2804, column: 60, scope: !4378)
!4380 = !DILocation(line: 2805, column: 46, scope: !4378)
!4381 = !DILocation(line: 2805, column: 54, scope: !4378)
!4382 = !DILocation(line: 2803, column: 13, scope: !4378)
!4383 = !DILocation(line: 2803, column: 11, scope: !4378)
!4384 = !DILocation(line: 2807, column: 13, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4232, file: !1, line: 2807, column: 11)
!4386 = !DILocation(line: 2807, column: 11, scope: !4232)
!4387 = !DILocation(line: 2810, column: 26, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4389, file: !1, line: 2808, column: 9)
!4389 = distinct !DILexicalBlock(scope: !4385, file: !1, line: 2807, column: 18)
!4390 = !DILocation(line: 2810, column: 9, scope: !4388)
!4391 = !DILocation(line: 2812, column: 9, scope: !4389)
!4392 = !DILocation(line: 2817, column: 30, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4232, file: !1, line: 2816, column: 7)
!4394 = !DILocation(line: 2817, column: 47, scope: !4393)
!4395 = !DILocation(line: 2817, column: 67, scope: !4393)
!4396 = !DILocation(line: 2817, column: 16, scope: !4393)
!4397 = !DILocation(line: 2817, column: 14, scope: !4393)
!4398 = !DILocation(line: 2819, column: 11, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4232, file: !1, line: 2819, column: 11)
!4400 = !DILocation(line: 2819, column: 18, scope: !4399)
!4401 = !DILocation(line: 2819, column: 11, scope: !4232)
!4402 = !DILocation(line: 2821, column: 31, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4404, file: !1, line: 2820, column: 9)
!4404 = distinct !DILexicalBlock(scope: !4399, file: !1, line: 2819, column: 27)
!4405 = !DILocation(line: 2821, column: 9, scope: !4403)
!4406 = !DILocation(line: 2822, column: 27, scope: !4403)
!4407 = !DILocation(line: 2822, column: 45, scope: !4403)
!4408 = !DILocation(line: 2822, column: 16, scope: !4403)
!4409 = !DILocation(line: 2824, column: 7, scope: !4404)
!4410 = !DILocation(line: 2827, column: 5, scope: !4232)
!4411 = !DILocation(line: 2830, column: 12, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4220, file: !1, line: 2830, column: 9)
!4413 = !DILocation(line: 2830, column: 19, scope: !4412)
!4414 = !DILocation(line: 2830, column: 9, scope: !4220)
!4415 = !DILocation(line: 2833, column: 24, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4417, file: !1, line: 2831, column: 7)
!4417 = distinct !DILexicalBlock(scope: !4412, file: !1, line: 2830, column: 27)
!4418 = !DILocation(line: 2833, column: 7, scope: !4416)
!4419 = !DILocation(line: 2835, column: 15, scope: !4417)
!4420 = !DILocation(line: 2835, column: 7, scope: !4417)
!4421 = !DILocation(line: 2840, column: 5, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4220, file: !1, line: 2839, column: 5)
!4423 = !DILocation(line: 2840, column: 22, scope: !4422)
!4424 = !DILocation(line: 2840, column: 33, scope: !4422)
!4425 = !DILocation(line: 2841, column: 50, scope: !4422)
!4426 = !DILocation(line: 2841, column: 58, scope: !4422)
!4427 = !DILocation(line: 2841, column: 5, scope: !4422)
!4428 = !DILocation(line: 2841, column: 22, scope: !4422)
!4429 = !DILocation(line: 2841, column: 41, scope: !4422)
!4430 = !DILocation(line: 2841, column: 48, scope: !4422)
!4431 = !DILocation(line: 2842, column: 72, scope: !4422)
!4432 = !DILocation(line: 2842, column: 80, scope: !4422)
!4433 = !DILocation(line: 2842, column: 57, scope: !4422)
!4434 = !DILocation(line: 2842, column: 91, scope: !4422)
!4435 = !DILocation(line: 2842, column: 5, scope: !4422)
!4436 = !DILocation(line: 2842, column: 22, scope: !4422)
!4437 = !DILocation(line: 2842, column: 41, scope: !4422)
!4438 = !DILocation(line: 2842, column: 55, scope: !4422)
!4439 = !DILocation(line: 2843, column: 12, scope: !4422)
!4440 = !DILocation(line: 2843, column: 29, scope: !4422)
!4441 = !DILocation(line: 2843, column: 48, scope: !4422)
!4442 = !DILocation(line: 2843, column: 56, scope: !4422)
!4443 = !DILocation(line: 2843, column: 64, scope: !4422)
!4444 = !DILocation(line: 2843, column: 70, scope: !4422)
!4445 = !DILocation(line: 2843, column: 78, scope: !4422)
!4446 = !DILocation(line: 2843, column: 5, scope: !4422)
!4447 = !DILocation(line: 2844, column: 7, scope: !4422)
!4448 = !DILocation(line: 2844, column: 24, scope: !4422)
!4449 = !DILocation(line: 2844, column: 43, scope: !4422)
!4450 = !DILocation(line: 2844, column: 67, scope: !4422)
!4451 = !DILocation(line: 2844, column: 84, scope: !4422)
!4452 = !DILocation(line: 2844, column: 103, scope: !4422)
!4453 = !DILocation(line: 2844, column: 52, scope: !4422)
!4454 = !DILocation(line: 2844, column: 110, scope: !4422)
!4455 = !DILocation(line: 2844, column: 50, scope: !4422)
!4456 = !DILocation(line: 2844, column: 128, scope: !4422)
!4457 = !DILocation(line: 2846, column: 16, scope: !4422)
!4458 = !DILocation(line: 2847, column: 12, scope: !4422)
!4459 = !DILocation(line: 2847, column: 5, scope: !4422)
!4460 = !DILocation(line: 2849, column: 82, scope: !4422)
!4461 = !DILocation(line: 2849, column: 99, scope: !4422)
!4462 = !DILocation(line: 2850, column: 55, scope: !4422)
!4463 = !DILocation(line: 2849, column: 11, scope: !4422)
!4464 = !DILocation(line: 2849, column: 9, scope: !4422)
!4465 = !DILocation(line: 2853, column: 11, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4220, file: !1, line: 2853, column: 9)
!4467 = !DILocation(line: 2853, column: 9, scope: !4220)
!4468 = !DILocation(line: 2855, column: 24, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4470, file: !1, line: 2854, column: 7)
!4470 = distinct !DILexicalBlock(scope: !4466, file: !1, line: 2853, column: 16)
!4471 = !DILocation(line: 2855, column: 7, scope: !4469)
!4472 = !DILocation(line: 2857, column: 7, scope: !4470)
!4473 = !DILocation(line: 2862, column: 28, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4220, file: !1, line: 2861, column: 5)
!4475 = !DILocation(line: 2862, column: 45, scope: !4474)
!4476 = !DILocation(line: 2862, column: 65, scope: !4474)
!4477 = !DILocation(line: 2862, column: 14, scope: !4474)
!4478 = !DILocation(line: 2862, column: 12, scope: !4474)
!4479 = !DILocation(line: 2864, column: 9, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4220, file: !1, line: 2864, column: 9)
!4481 = !DILocation(line: 2864, column: 16, scope: !4480)
!4482 = !DILocation(line: 2864, column: 9, scope: !4220)
!4483 = !DILocation(line: 2866, column: 29, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4485, file: !1, line: 2865, column: 7)
!4485 = distinct !DILexicalBlock(scope: !4480, file: !1, line: 2864, column: 25)
!4486 = !DILocation(line: 2866, column: 7, scope: !4484)
!4487 = !DILocation(line: 2867, column: 25, scope: !4484)
!4488 = !DILocation(line: 2867, column: 43, scope: !4484)
!4489 = !DILocation(line: 2867, column: 14, scope: !4484)
!4490 = !DILocation(line: 2869, column: 5, scope: !4485)
!4491 = !DILocation(line: 2872, column: 12, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4220, file: !1, line: 2872, column: 9)
!4493 = !DILocation(line: 2872, column: 19, scope: !4492)
!4494 = !DILocation(line: 2872, column: 9, scope: !4220)
!4495 = !DILocation(line: 2873, column: 7, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4492, file: !1, line: 2872, column: 27)
!4497 = !DILocation(line: 2875, column: 30, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !1, line: 2875, column: 11)
!4499 = distinct !DILexicalBlock(scope: !4492, file: !1, line: 2874, column: 12)
!4500 = !DILocation(line: 2875, column: 17, scope: !4498)
!4501 = !DILocation(line: 2875, column: 11, scope: !4498)
!4502 = !DILocation(line: 2875, column: 51, scope: !4498)
!4503 = !DILocation(line: 2875, column: 11, scope: !4499)
!4504 = !DILocation(line: 2875, column: 57, scope: !4498)
!4505 = !DILocation(line: 2878, column: 18, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4507, file: !1, line: 2877, column: 9)
!4507 = distinct !DILexicalBlock(scope: !4498, file: !1, line: 2875, column: 57)
!4508 = !DILocation(line: 2878, column: 35, scope: !4506)
!4509 = !DILocation(line: 2878, column: 16, scope: !4506)
!4510 = !DILocation(line: 2878, column: 9, scope: !4506)
!4511 = !DILocation(line: 2881, column: 13, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4507, file: !1, line: 2881, column: 13)
!4513 = !DILocation(line: 2881, column: 20, scope: !4512)
!4514 = !DILocation(line: 2881, column: 13, scope: !4507)
!4515 = !DILocation(line: 2882, column: 54, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4512, file: !1, line: 2881, column: 27)
!4517 = !DILocation(line: 2882, column: 11, scope: !4516)
!4518 = !DILocation(line: 2882, column: 28, scope: !4516)
!4519 = !DILocation(line: 2882, column: 39, scope: !4516)
!4520 = !DILocation(line: 2883, column: 9, scope: !4516)
!4521 = !DILocation(line: 2886, column: 7, scope: !4507)
!4522 = !DILocation(line: 2888, column: 18, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4524, file: !1, line: 2887, column: 9)
!4524 = distinct !DILexicalBlock(scope: !4498, file: !1, line: 2886, column: 14)
!4525 = !DILocation(line: 2888, column: 35, scope: !4523)
!4526 = !DILocation(line: 2888, column: 16, scope: !4523)
!4527 = !DILocation(line: 2888, column: 73, scope: !4523)
!4528 = !DILocation(line: 2888, column: 60, scope: !4523)
!4529 = !DILocation(line: 2888, column: 58, scope: !4523)
!4530 = !DILocation(line: 2888, column: 9, scope: !4523)
!4531 = !DILocation(line: 2890, column: 52, scope: !4523)
!4532 = !DILocation(line: 2890, column: 9, scope: !4523)
!4533 = !DILocation(line: 2890, column: 26, scope: !4523)
!4534 = !DILocation(line: 2890, column: 37, scope: !4523)
!4535 = !DILocation(line: 2896, column: 37, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4205, file: !1, line: 2895, column: 3)
!4537 = !DILocation(line: 2896, column: 57, scope: !4536)
!4538 = !DILocation(line: 2896, column: 55, scope: !4536)
!4539 = !DILocation(line: 2896, column: 12, scope: !4536)
!4540 = !DILocation(line: 2896, column: 10, scope: !4536)
!4541 = !DILocation(line: 2898, column: 10, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4205, file: !1, line: 2898, column: 7)
!4543 = !DILocation(line: 2898, column: 17, scope: !4542)
!4544 = !DILocation(line: 2898, column: 7, scope: !4205)
!4545 = !DILocation(line: 2900, column: 22, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4547, file: !1, line: 2899, column: 5)
!4547 = distinct !DILexicalBlock(scope: !4542, file: !1, line: 2898, column: 25)
!4548 = !DILocation(line: 2900, column: 5, scope: !4546)
!4549 = !DILocation(line: 2902, column: 3, scope: !4547)
!4550 = !DILocation(line: 2905, column: 11, scope: !4205)
!4551 = !DILocation(line: 2905, column: 3, scope: !4205)
!4552 = !DILocation(line: 2907, column: 1, scope: !1496)
!4553 = !DILocation(line: 3879, column: 30, scope: !1633)
!4554 = !DILocation(line: 3879, column: 42, scope: !1633)
!4555 = !DILocation(line: 3883, column: 7, scope: !2200)
!4556 = !DILocation(line: 3883, column: 12, scope: !2200)
!4557 = !DILocation(line: 3883, column: 9, scope: !2200)
!4558 = !DILocation(line: 3883, column: 7, scope: !2201)
!4559 = !DILocation(line: 3884, column: 9, scope: !2211)
!4560 = !DILocation(line: 3884, column: 7, scope: !2211)
!4561 = !DILocation(line: 3885, column: 3, scope: !2211)
!4562 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 3887, column: 5, scope: !2208)
!4564 = !DILocation(line: 3890, column: 3, scope: !2201)
!4565 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1632, file: !1, line: 3795, type: !265)
!4566 = !DILocation(line: 3795, column: 39, scope: !1632)
!4567 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1632, file: !1, line: 3796, type: !1201)
!4568 = !DILocation(line: 3796, column: 62, scope: !1632)
!4569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1632, file: !1, line: 3797, type: !1422)
!4570 = !DILocation(line: 3797, column: 7, scope: !1632)
!4571 = !DILocation(line: 3797, column: 28, scope: !1632)
!4572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal2", scope: !1632, file: !1, line: 3798, type: !302)
!4573 = !DILocation(line: 3798, column: 12, scope: !1632)
!4574 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus", scope: !1632, file: !1, line: 3799, type: !1422)
!4575 = !DILocation(line: 3799, column: 7, scope: !1632)
!4576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !1632, file: !1, line: 3800, type: !289)
!4577 = !DILocation(line: 3800, column: 9, scope: !1632)
!4578 = !DILocation(line: 3800, column: 20, scope: !1632)
!4579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1632, file: !1, line: 3801, type: !302)
!4580 = !DILocation(line: 3801, column: 12, scope: !1632)
!4581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___0", scope: !1632, file: !1, line: 3802, type: !302)
!4582 = !DILocation(line: 3802, column: 12, scope: !1632)
!4583 = !DILocation(line: 3805, column: 7, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4585, file: !1, line: 3805, column: 7)
!4585 = distinct !DILexicalBlock(scope: !1632, file: !1, line: 3804, column: 3)
!4586 = !DILocation(line: 3972, column: 26, scope: !1661, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 2221, column: 3, scope: !4010, inlinedAt: !4588)
!4588 = distinct !DILocation(line: 3808, column: 13, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4590, file: !1, line: 3807, column: 7)
!4590 = distinct !DILexicalBlock(scope: !4591, file: !1, line: 3806, column: 23)
!4591 = distinct !DILexicalBlock(scope: !4592, file: !1, line: 3806, column: 9)
!4592 = distinct !DILexicalBlock(scope: !4584, file: !1, line: 3805, column: 23)
!4593 = !DILocation(line: 3972, column: 44, scope: !1661, inlinedAt: !4587)
!4594 = !DILocation(line: 3972, column: 64, scope: !1661, inlinedAt: !4587)
!4595 = !DILocation(line: 3973, column: 8, scope: !1661, inlinedAt: !4587)
!4596 = !DILocation(line: 2215, column: 47, scope: !1481, inlinedAt: !4588)
!4597 = !DILocation(line: 2215, column: 67, scope: !1481, inlinedAt: !4588)
!4598 = !DILocation(line: 2215, column: 79, scope: !1481, inlinedAt: !4588)
!4599 = !DILocation(line: 2216, column: 11, scope: !1481, inlinedAt: !4588)
!4600 = !DILocation(line: 3805, column: 7, scope: !4585)
!4601 = !DILocation(line: 3806, column: 9, scope: !4591)
!4602 = !DILocation(line: 3806, column: 17, scope: !4591)
!4603 = !DILocation(line: 3806, column: 9, scope: !4592)
!4604 = !DILocation(line: 3808, column: 35, scope: !4589)
!4605 = !DILocation(line: 3808, column: 49, scope: !4589)
!4606 = !DILocation(line: 3808, column: 54, scope: !4589)
!4607 = !DILocation(line: 3808, column: 13, scope: !4589)
!4608 = !DILocation(line: 2220, column: 29, scope: !4010, inlinedAt: !4588)
!4609 = !DILocation(line: 2220, column: 11, scope: !4010, inlinedAt: !4588)
!4610 = !DILocation(line: 2220, column: 9, scope: !4010, inlinedAt: !4588)
!4611 = !DILocation(line: 2221, column: 14, scope: !4010, inlinedAt: !4588)
!4612 = !DILocation(line: 2221, column: 3, scope: !4010, inlinedAt: !4588)
!4613 = !DILocation(line: 3973, column: 12, scope: !1661, inlinedAt: !4587)
!4614 = !DILocation(line: 3976, column: 18, scope: !4020, inlinedAt: !4587)
!4615 = !DILocation(line: 3977, column: 11, scope: !4020, inlinedAt: !4587)
!4616 = !DILocation(line: 3977, column: 3, scope: !4020, inlinedAt: !4587)
!4617 = !DILocation(line: 2223, column: 3, scope: !4011, inlinedAt: !4588)
!4618 = !DILocation(line: 3808, column: 11, scope: !4589)
!4619 = !DILocation(line: 3809, column: 23, scope: !4589)
!4620 = !DILocation(line: 3809, column: 21, scope: !4589)
!4621 = !DILocation(line: 3811, column: 5, scope: !4590)
!4622 = !DILocation(line: 3813, column: 38, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4624, file: !1, line: 3812, column: 7)
!4624 = distinct !DILexicalBlock(scope: !4591, file: !1, line: 3811, column: 12)
!4625 = !DILocation(line: 3813, column: 52, scope: !4623)
!4626 = !DILocation(line: 3813, column: 57, scope: !4623)
!4627 = !DILocation(line: 3813, column: 17, scope: !4623)
!4628 = !DILocation(line: 3813, column: 15, scope: !4623)
!4629 = !DILocation(line: 3814, column: 23, scope: !4623)
!4630 = !DILocation(line: 3814, column: 21, scope: !4623)
!4631 = !DILocation(line: 3817, column: 16, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4592, file: !1, line: 3817, column: 9)
!4633 = !DILocation(line: 3817, column: 9, scope: !4632)
!4634 = !DILocation(line: 3817, column: 30, scope: !4632)
!4635 = !DILocation(line: 3817, column: 9, scope: !4592)
!4636 = !DILocation(line: 3783, column: 7, scope: !4637, inlinedAt: !4639)
!4637 = distinct !DILexicalBlock(scope: !4638, file: !1, line: 3783, column: 7)
!4638 = distinct !DILexicalBlock(scope: !1631, file: !1, line: 3782, column: 3)
!4639 = distinct !DILocation(line: 3819, column: 7, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4641, file: !1, line: 3818, column: 7)
!4641 = distinct !DILexicalBlock(scope: !4632, file: !1, line: 3817, column: 47)
!4642 = !DILocation(line: 3783, column: 12, scope: !4637, inlinedAt: !4639)
!4643 = !DILocation(line: 3783, column: 9, scope: !4637, inlinedAt: !4639)
!4644 = !DILocation(line: 3783, column: 7, scope: !4638, inlinedAt: !4639)
!4645 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !4646)
!4646 = distinct !DILocation(line: 3787, column: 5, scope: !4647, inlinedAt: !4639)
!4647 = distinct !DILexicalBlock(scope: !4648, file: !1, line: 3786, column: 5)
!4648 = distinct !DILexicalBlock(scope: !4637, file: !1, line: 3785, column: 10)
!4649 = !DILocation(line: 3784, column: 9, scope: !4650, inlinedAt: !4639)
!4650 = distinct !DILexicalBlock(scope: !4637, file: !1, line: 3783, column: 16)
!4651 = !DILocation(line: 3784, column: 7, scope: !4650, inlinedAt: !4639)
!4652 = !DILocation(line: 3821, column: 5, scope: !4641)
!4653 = !DILocation(line: 3824, column: 3, scope: !4592)
!4654 = !DILocation(line: 3827, column: 7, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4585, file: !1, line: 3827, column: 7)
!4656 = !DILocation(line: 3827, column: 26, scope: !4655)
!4657 = !DILocation(line: 3827, column: 7, scope: !4585)
!4658 = !DILocation(line: 3828, column: 5, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4655, file: !1, line: 3827, column: 32)
!4660 = !DILocation(line: 3830, column: 9, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4662, file: !1, line: 3830, column: 9)
!4662 = distinct !DILexicalBlock(scope: !4655, file: !1, line: 3829, column: 10)
!4663 = !DILocation(line: 3830, column: 28, scope: !4661)
!4664 = !DILocation(line: 3830, column: 9, scope: !4662)
!4665 = !DILocation(line: 3831, column: 7, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4661, file: !1, line: 3830, column: 34)
!4667 = !DILocation(line: 3834, column: 7, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4669, file: !1, line: 3833, column: 7)
!4669 = distinct !DILexicalBlock(scope: !4661, file: !1, line: 3832, column: 12)
!4670 = !DILocation(line: 3835, column: 11, scope: !4668)
!4671 = !DILocation(line: 3835, column: 14, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4668, file: !1, line: 3835, column: 11)
!4673 = !DILocation(line: 3837, column: 20, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4672, file: !1, line: 3835, column: 14)
!4675 = !DILocation(line: 3838, column: 9, scope: !4674)
!4676 = !DILocation(line: 3840, column: 20, scope: !4674)
!4677 = !DILocation(line: 3841, column: 9, scope: !4674)
!4678 = !DILocation(line: 3843, column: 20, scope: !4674)
!4679 = !DILocation(line: 3844, column: 9, scope: !4674)
!4680 = !DILocation(line: 3845, column: 14, scope: !4672)
!4681 = !DILocation(line: 3851, column: 7, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4585, file: !1, line: 3851, column: 7)
!4683 = !DILocation(line: 3851, column: 12, scope: !4682)
!4684 = !DILocation(line: 3851, column: 9, scope: !4682)
!4685 = !DILocation(line: 3851, column: 7, scope: !4585)
!4686 = !DILocation(line: 3852, column: 9, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4682, file: !1, line: 3851, column: 16)
!4688 = !DILocation(line: 3852, column: 7, scope: !4687)
!4689 = !DILocation(line: 3853, column: 25, scope: !4687)
!4690 = !DILocation(line: 3853, column: 23, scope: !4687)
!4691 = !DILocation(line: 3854, column: 3, scope: !4687)
!4692 = !DILocation(line: 3855, column: 9, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4694, file: !1, line: 3855, column: 9)
!4694 = distinct !DILexicalBlock(scope: !4682, file: !1, line: 3854, column: 10)
!4695 = !DILocation(line: 3855, column: 14, scope: !4693)
!4696 = !DILocation(line: 3855, column: 11, scope: !4693)
!4697 = !DILocation(line: 3855, column: 9, scope: !4694)
!4698 = !DILocation(line: 3856, column: 11, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4700, file: !1, line: 3856, column: 11)
!4700 = distinct !DILexicalBlock(scope: !4693, file: !1, line: 3855, column: 20)
!4701 = !DILocation(line: 3856, column: 22, scope: !4699)
!4702 = !DILocation(line: 3856, column: 11, scope: !4700)
!4703 = !DILocation(line: 3857, column: 13, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4699, file: !1, line: 3856, column: 31)
!4705 = !DILocation(line: 3857, column: 11, scope: !4704)
!4706 = !DILocation(line: 3858, column: 29, scope: !4704)
!4707 = !DILocation(line: 3858, column: 27, scope: !4704)
!4708 = !DILocation(line: 3859, column: 7, scope: !4704)
!4709 = !DILocation(line: 3860, column: 13, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4699, file: !1, line: 3859, column: 14)
!4711 = !DILocation(line: 3860, column: 11, scope: !4710)
!4712 = !DILocation(line: 3861, column: 29, scope: !4710)
!4713 = !DILocation(line: 3861, column: 27, scope: !4710)
!4714 = !DILocation(line: 3863, column: 5, scope: !4700)
!4715 = !DILocation(line: 3864, column: 11, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4717, file: !1, line: 3864, column: 11)
!4717 = distinct !DILexicalBlock(scope: !4693, file: !1, line: 3863, column: 12)
!4718 = !DILocation(line: 3864, column: 16, scope: !4716)
!4719 = !DILocation(line: 3864, column: 13, scope: !4716)
!4720 = !DILocation(line: 3864, column: 11, scope: !4717)
!4721 = !DILocation(line: 3865, column: 13, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4716, file: !1, line: 3864, column: 23)
!4723 = !DILocation(line: 3865, column: 11, scope: !4722)
!4724 = !DILocation(line: 3866, column: 29, scope: !4722)
!4725 = !DILocation(line: 3866, column: 27, scope: !4722)
!4726 = !DILocation(line: 3867, column: 7, scope: !4722)
!4727 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !4728)
!4728 = distinct !DILocation(line: 3869, column: 9, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4730, file: !1, line: 3868, column: 9)
!4730 = distinct !DILexicalBlock(scope: !4716, file: !1, line: 3867, column: 14)
!4731 = !DILocation(line: 3874, column: 11, scope: !4585)
!4732 = !DILocation(line: 3874, column: 3, scope: !4585)
!4733 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1695, file: !1, line: 4142, type: !265)
!4734 = !DILocation(line: 4142, column: 38, scope: !1695)
!4735 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1695, file: !1, line: 4142, type: !1201)
!4736 = !DILocation(line: 4142, column: 58, scope: !1695)
!4737 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1695, file: !1, line: 4143, type: !1422)
!4738 = !DILocation(line: 4143, column: 7, scope: !1695)
!4739 = !DILocation(line: 4143, column: 28, scope: !1695)
!4740 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compRetStatus", scope: !1695, file: !1, line: 4144, type: !1422)
!4741 = !DILocation(line: 4144, column: 7, scope: !1695)
!4742 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "returnVal", scope: !1695, file: !1, line: 4145, type: !302)
!4743 = !DILocation(line: 4145, column: 12, scope: !1695)
!4744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lcontext", scope: !1695, file: !1, line: 4146, type: !289)
!4745 = !DILocation(line: 4146, column: 9, scope: !1695)
!4746 = !DILocation(line: 4146, column: 20, scope: !1695)
!4747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1695, file: !1, line: 4147, type: !302)
!4748 = !DILocation(line: 4147, column: 12, scope: !1695)
!4749 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp___0", scope: !1695, file: !1, line: 4148, type: !302)
!4750 = !DILocation(line: 4148, column: 12, scope: !1695)
!4751 = !DILocation(line: 4151, column: 7, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4753, file: !1, line: 4151, column: 7)
!4753 = distinct !DILexicalBlock(scope: !1695, file: !1, line: 4150, column: 3)
!4754 = !DILocation(line: 3972, column: 26, scope: !1661, inlinedAt: !4755)
!4755 = distinct !DILocation(line: 2221, column: 3, scope: !4010, inlinedAt: !4756)
!4756 = distinct !DILocation(line: 4154, column: 13, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4758, file: !1, line: 4153, column: 7)
!4758 = distinct !DILexicalBlock(scope: !4759, file: !1, line: 4152, column: 23)
!4759 = distinct !DILexicalBlock(scope: !4760, file: !1, line: 4152, column: 9)
!4760 = distinct !DILexicalBlock(scope: !4752, file: !1, line: 4151, column: 23)
!4761 = !DILocation(line: 3972, column: 44, scope: !1661, inlinedAt: !4755)
!4762 = !DILocation(line: 3972, column: 64, scope: !1661, inlinedAt: !4755)
!4763 = !DILocation(line: 3973, column: 8, scope: !1661, inlinedAt: !4755)
!4764 = !DILocation(line: 2215, column: 47, scope: !1481, inlinedAt: !4756)
!4765 = !DILocation(line: 2215, column: 67, scope: !1481, inlinedAt: !4756)
!4766 = !DILocation(line: 2215, column: 79, scope: !1481, inlinedAt: !4756)
!4767 = !DILocation(line: 2216, column: 11, scope: !1481, inlinedAt: !4756)
!4768 = !DILocation(line: 4151, column: 7, scope: !4753)
!4769 = !DILocation(line: 4152, column: 9, scope: !4759)
!4770 = !DILocation(line: 4152, column: 17, scope: !4759)
!4771 = !DILocation(line: 4152, column: 9, scope: !4760)
!4772 = !DILocation(line: 4154, column: 35, scope: !4757)
!4773 = !DILocation(line: 4154, column: 49, scope: !4757)
!4774 = !DILocation(line: 4154, column: 54, scope: !4757)
!4775 = !DILocation(line: 4154, column: 13, scope: !4757)
!4776 = !DILocation(line: 2220, column: 29, scope: !4010, inlinedAt: !4756)
!4777 = !DILocation(line: 2220, column: 11, scope: !4010, inlinedAt: !4756)
!4778 = !DILocation(line: 2220, column: 9, scope: !4010, inlinedAt: !4756)
!4779 = !DILocation(line: 2221, column: 14, scope: !4010, inlinedAt: !4756)
!4780 = !DILocation(line: 2221, column: 3, scope: !4010, inlinedAt: !4756)
!4781 = !DILocation(line: 3973, column: 12, scope: !1661, inlinedAt: !4755)
!4782 = !DILocation(line: 3976, column: 18, scope: !4020, inlinedAt: !4755)
!4783 = !DILocation(line: 3977, column: 11, scope: !4020, inlinedAt: !4755)
!4784 = !DILocation(line: 3977, column: 3, scope: !4020, inlinedAt: !4755)
!4785 = !DILocation(line: 2223, column: 3, scope: !4011, inlinedAt: !4756)
!4786 = !DILocation(line: 4154, column: 11, scope: !4757)
!4787 = !DILocation(line: 4155, column: 23, scope: !4757)
!4788 = !DILocation(line: 4155, column: 21, scope: !4757)
!4789 = !DILocation(line: 4157, column: 5, scope: !4758)
!4790 = !DILocation(line: 4158, column: 11, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4792, file: !1, line: 4158, column: 11)
!4792 = distinct !DILexicalBlock(scope: !4759, file: !1, line: 4157, column: 12)
!4793 = !DILocation(line: 4158, column: 19, scope: !4791)
!4794 = !DILocation(line: 4158, column: 11, scope: !4792)
!4795 = !DILocation(line: 4160, column: 40, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4797, file: !1, line: 4159, column: 9)
!4797 = distinct !DILexicalBlock(scope: !4791, file: !1, line: 4158, column: 25)
!4798 = !DILocation(line: 4160, column: 54, scope: !4796)
!4799 = !DILocation(line: 4160, column: 59, scope: !4796)
!4800 = !DILocation(line: 4160, column: 19, scope: !4796)
!4801 = !DILocation(line: 4160, column: 17, scope: !4796)
!4802 = !DILocation(line: 4161, column: 25, scope: !4796)
!4803 = !DILocation(line: 4161, column: 23, scope: !4796)
!4804 = !DILocation(line: 4163, column: 7, scope: !4797)
!4805 = !DILocation(line: 4167, column: 16, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4760, file: !1, line: 4167, column: 9)
!4807 = !DILocation(line: 4167, column: 9, scope: !4806)
!4808 = !DILocation(line: 4167, column: 30, scope: !4806)
!4809 = !DILocation(line: 4167, column: 9, scope: !4760)
!4810 = !DILocation(line: 3783, column: 7, scope: !4637, inlinedAt: !4811)
!4811 = distinct !DILocation(line: 4169, column: 7, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4813, file: !1, line: 4168, column: 7)
!4813 = distinct !DILexicalBlock(scope: !4806, file: !1, line: 4167, column: 47)
!4814 = !DILocation(line: 3783, column: 12, scope: !4637, inlinedAt: !4811)
!4815 = !DILocation(line: 3783, column: 9, scope: !4637, inlinedAt: !4811)
!4816 = !DILocation(line: 3783, column: 7, scope: !4638, inlinedAt: !4811)
!4817 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !4818)
!4818 = distinct !DILocation(line: 3787, column: 5, scope: !4647, inlinedAt: !4811)
!4819 = !DILocation(line: 3784, column: 9, scope: !4650, inlinedAt: !4811)
!4820 = !DILocation(line: 3784, column: 7, scope: !4650, inlinedAt: !4811)
!4821 = !DILocation(line: 4171, column: 5, scope: !4813)
!4822 = !DILocation(line: 4174, column: 3, scope: !4760)
!4823 = !DILocation(line: 4177, column: 7, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4753, file: !1, line: 4177, column: 7)
!4825 = !DILocation(line: 4177, column: 26, scope: !4824)
!4826 = !DILocation(line: 4177, column: 7, scope: !4753)
!4827 = !DILocation(line: 4178, column: 5, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4824, file: !1, line: 4177, column: 32)
!4829 = !DILocation(line: 4180, column: 9, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4831, file: !1, line: 4180, column: 9)
!4831 = distinct !DILexicalBlock(scope: !4824, file: !1, line: 4179, column: 10)
!4832 = !DILocation(line: 4180, column: 28, scope: !4830)
!4833 = !DILocation(line: 4180, column: 9, scope: !4831)
!4834 = !DILocation(line: 4181, column: 7, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4830, file: !1, line: 4180, column: 34)
!4836 = !DILocation(line: 4184, column: 7, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4838, file: !1, line: 4183, column: 7)
!4838 = distinct !DILexicalBlock(scope: !4830, file: !1, line: 4182, column: 12)
!4839 = !DILocation(line: 4185, column: 11, scope: !4837)
!4840 = !DILocation(line: 4185, column: 14, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4837, file: !1, line: 4185, column: 11)
!4842 = !DILocation(line: 4187, column: 19, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4841, file: !1, line: 4185, column: 14)
!4844 = !DILocation(line: 4188, column: 9, scope: !4843)
!4845 = !DILocation(line: 4190, column: 19, scope: !4843)
!4846 = !DILocation(line: 4191, column: 9, scope: !4843)
!4847 = !DILocation(line: 4193, column: 19, scope: !4843)
!4848 = !DILocation(line: 4194, column: 9, scope: !4843)
!4849 = !DILocation(line: 4195, column: 14, scope: !4841)
!4850 = !DILocation(line: 4201, column: 7, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4753, file: !1, line: 4201, column: 7)
!4852 = !DILocation(line: 4201, column: 12, scope: !4851)
!4853 = !DILocation(line: 4201, column: 9, scope: !4851)
!4854 = !DILocation(line: 4201, column: 7, scope: !4753)
!4855 = !DILocation(line: 4202, column: 9, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4851, file: !1, line: 4201, column: 16)
!4857 = !DILocation(line: 4202, column: 7, scope: !4856)
!4858 = !DILocation(line: 4203, column: 25, scope: !4856)
!4859 = !DILocation(line: 4203, column: 23, scope: !4856)
!4860 = !DILocation(line: 4204, column: 3, scope: !4856)
!4861 = !DILocation(line: 4205, column: 9, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4863, file: !1, line: 4205, column: 9)
!4863 = distinct !DILexicalBlock(scope: !4851, file: !1, line: 4204, column: 10)
!4864 = !DILocation(line: 4205, column: 14, scope: !4862)
!4865 = !DILocation(line: 4205, column: 11, scope: !4862)
!4866 = !DILocation(line: 4205, column: 9, scope: !4863)
!4867 = !DILocation(line: 4206, column: 11, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4869, file: !1, line: 4206, column: 11)
!4869 = distinct !DILexicalBlock(scope: !4862, file: !1, line: 4205, column: 20)
!4870 = !DILocation(line: 4206, column: 21, scope: !4868)
!4871 = !DILocation(line: 4206, column: 11, scope: !4869)
!4872 = !DILocation(line: 4207, column: 13, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4868, file: !1, line: 4206, column: 30)
!4874 = !DILocation(line: 4207, column: 11, scope: !4873)
!4875 = !DILocation(line: 4208, column: 29, scope: !4873)
!4876 = !DILocation(line: 4208, column: 27, scope: !4873)
!4877 = !DILocation(line: 4209, column: 7, scope: !4873)
!4878 = !DILocation(line: 4210, column: 13, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4868, file: !1, line: 4209, column: 14)
!4880 = !DILocation(line: 4210, column: 11, scope: !4879)
!4881 = !DILocation(line: 4211, column: 29, scope: !4879)
!4882 = !DILocation(line: 4211, column: 27, scope: !4879)
!4883 = !DILocation(line: 4213, column: 5, scope: !4869)
!4884 = !DILocation(line: 4214, column: 11, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4886, file: !1, line: 4214, column: 11)
!4886 = distinct !DILexicalBlock(scope: !4862, file: !1, line: 4213, column: 12)
!4887 = !DILocation(line: 4214, column: 16, scope: !4885)
!4888 = !DILocation(line: 4214, column: 13, scope: !4885)
!4889 = !DILocation(line: 4214, column: 11, scope: !4886)
!4890 = !DILocation(line: 4215, column: 13, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4885, file: !1, line: 4214, column: 23)
!4892 = !DILocation(line: 4215, column: 11, scope: !4891)
!4893 = !DILocation(line: 4216, column: 29, scope: !4891)
!4894 = !DILocation(line: 4216, column: 27, scope: !4891)
!4895 = !DILocation(line: 4217, column: 7, scope: !4891)
!4896 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !4897)
!4897 = distinct !DILocation(line: 4219, column: 9, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4899, file: !1, line: 4218, column: 9)
!4899 = distinct !DILexicalBlock(scope: !4885, file: !1, line: 4217, column: 14)
!4900 = !DILocation(line: 4224, column: 11, scope: !4753)
!4901 = !DILocation(line: 4224, column: 3, scope: !4753)
!4902 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 1, scope: !1664, file: !1, line: 3984, type: !289)
!4903 = !DILocation(line: 3984, column: 38, scope: !1664)
!4904 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitReason", arg: 2, scope: !1664, file: !1, line: 3984, type: !1667)
!4905 = !DILocation(line: 3984, column: 60, scope: !1664)
!4906 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitMode", arg: 3, scope: !1664, file: !1, line: 3984, type: !622)
!4907 = !DILocation(line: 3984, column: 89, scope: !1664)
!4908 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Alertable", arg: 4, scope: !1664, file: !1, line: 3985, type: !329)
!4909 = !DILocation(line: 3985, column: 40, scope: !1664)
!4910 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Timeout", arg: 5, scope: !1664, file: !1, line: 3985, type: !427)
!4911 = !DILocation(line: 3985, column: 67, scope: !1664)
!4912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1664, file: !1, line: 3986, type: !1422)
!4913 = !DILocation(line: 3986, column: 7, scope: !1664)
!4914 = !DILocation(line: 3986, column: 28, scope: !1664)
!4915 = !DILocation(line: 3989, column: 7, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4917, file: !1, line: 3989, column: 7)
!4917 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 3988, column: 3)
!4918 = !DILocation(line: 3989, column: 12, scope: !4916)
!4919 = !DILocation(line: 3989, column: 9, scope: !4916)
!4920 = !DILocation(line: 3989, column: 7, scope: !4917)
!4921 = !DILocation(line: 3990, column: 9, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4923, file: !1, line: 3990, column: 9)
!4923 = distinct !DILexicalBlock(scope: !4916, file: !1, line: 3989, column: 18)
!4924 = !DILocation(line: 3990, column: 24, scope: !4922)
!4925 = !DILocation(line: 3990, column: 9, scope: !4923)
!4926 = !DILocation(line: 3991, column: 11, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4922, file: !1, line: 3990, column: 30)
!4928 = !DILocation(line: 3991, column: 9, scope: !4927)
!4929 = !DILocation(line: 3992, column: 22, scope: !4927)
!4930 = !DILocation(line: 3993, column: 5, scope: !4927)
!4931 = !DILocation(line: 3994, column: 7, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4922, file: !1, line: 3993, column: 12)
!4933 = !DILocation(line: 3996, column: 3, scope: !4923)
!4934 = !DILocation(line: 3996, column: 10, scope: !4916)
!4935 = !DILocation(line: 3998, column: 9, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4937, file: !1, line: 3998, column: 9)
!4937 = distinct !DILexicalBlock(scope: !4916, file: !1, line: 3996, column: 10)
!4938 = !DILocation(line: 3998, column: 19, scope: !4936)
!4939 = !DILocation(line: 3998, column: 9, scope: !4937)
!4940 = !DILocation(line: 3999, column: 11, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4936, file: !1, line: 3998, column: 25)
!4942 = !DILocation(line: 3999, column: 9, scope: !4941)
!4943 = !DILocation(line: 4000, column: 17, scope: !4941)
!4944 = !DILocation(line: 4001, column: 5, scope: !4941)
!4945 = !DILocation(line: 4002, column: 11, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4947, file: !1, line: 4002, column: 11)
!4947 = distinct !DILexicalBlock(scope: !4936, file: !1, line: 4001, column: 12)
!4948 = !DILocation(line: 4002, column: 16, scope: !4946)
!4949 = !DILocation(line: 4002, column: 13, scope: !4946)
!4950 = !DILocation(line: 4002, column: 11, scope: !4947)
!4951 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !4952)
!4952 = distinct !DILocation(line: 4004, column: 9, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4954, file: !1, line: 4003, column: 9)
!4954 = distinct !DILexicalBlock(scope: !4946, file: !1, line: 4002, column: 22)
!4955 = !DILocation(line: 4006, column: 7, scope: !4954)
!4956 = !DILocation(line: 4011, column: 7, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4917, file: !1, line: 4011, column: 7)
!4958 = !DILocation(line: 4011, column: 26, scope: !4957)
!4959 = !DILocation(line: 4011, column: 7, scope: !4917)
!4960 = !DILocation(line: 4012, column: 5, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4957, file: !1, line: 4011, column: 32)
!4962 = !DILocation(line: 4015, column: 5, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4964, file: !1, line: 4014, column: 5)
!4964 = distinct !DILexicalBlock(scope: !4957, file: !1, line: 4013, column: 10)
!4965 = !DILocation(line: 4016, column: 9, scope: !4963)
!4966 = !DILocation(line: 4016, column: 12, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4963, file: !1, line: 4016, column: 9)
!4968 = !DILocation(line: 4018, column: 7, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4967, file: !1, line: 4016, column: 12)
!4970 = !DILocation(line: 4020, column: 7, scope: !4969)
!4971 = !DILocation(line: 4021, column: 12, scope: !4967)
!4972 = !DILocation(line: 4027, column: 1, scope: !1664)
!4973 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1489, file: !1, line: 2464, type: !265)
!4974 = !DILocation(line: 2464, column: 46, scope: !1489)
!4975 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 2, scope: !1489, file: !1, line: 2464, type: !1201)
!4976 = !DILocation(line: 2464, column: 66, scope: !1489)
!4977 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 3, scope: !1489, file: !1, line: 2464, type: !289)
!4978 = !DILocation(line: 2464, column: 78, scope: !1489)
!4979 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deviceExtension", scope: !1489, file: !1, line: 2465, type: !2140)
!4980 = !DILocation(line: 2465, column: 21, scope: !1489)
!4981 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irpStack", scope: !1489, file: !1, line: 2466, type: !2226)
!4982 = !DILocation(line: 2466, column: 22, scope: !1489)
!4983 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partitionCounters", scope: !1489, file: !1, line: 2467, type: !1348)
!4984 = !DILocation(line: 2467, column: 21, scope: !1489)
!4985 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeStampComplete", scope: !1489, file: !1, line: 2468, type: !380)
!4986 = !DILocation(line: 2468, column: 17, scope: !1489)
!4987 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "difference", scope: !1489, file: !1, line: 2469, type: !427)
!4988 = !DILocation(line: 2469, column: 18, scope: !1489)
!4989 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "queueLen", scope: !1489, file: !1, line: 2470, type: !276)
!4990 = !DILocation(line: 2470, column: 8, scope: !1489)
!4991 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1489, file: !1, line: 2471, type: !286)
!4992 = !DILocation(line: 2471, column: 9, scope: !1489)
!4993 = !DILocation(line: 2475, column: 21, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4995, file: !1, line: 2474, column: 3)
!4995 = distinct !DILexicalBlock(scope: !1489, file: !1, line: 2473, column: 3)
!4996 = !DILocation(line: 2475, column: 35, scope: !4994)
!4997 = !DILocation(line: 2475, column: 19, scope: !4994)
!4998 = !DILocation(line: 2476, column: 14, scope: !4994)
!4999 = !DILocation(line: 2476, column: 19, scope: !4994)
!5000 = !DILocation(line: 2476, column: 24, scope: !4994)
!5001 = !DILocation(line: 2476, column: 32, scope: !4994)
!5002 = !DILocation(line: 2476, column: 51, scope: !4994)
!5003 = !DILocation(line: 2476, column: 70, scope: !4994)
!5004 = !DILocation(line: 2476, column: 12, scope: !4994)
!5005 = !DILocation(line: 2477, column: 7, scope: !4994)
!5006 = !DILocation(line: 2478, column: 60, scope: !4994)
!5007 = !DILocation(line: 2478, column: 77, scope: !4994)
!5008 = !DILocation(line: 2478, column: 52, scope: !4994)
!5009 = !DILocation(line: 2478, column: 92, scope: !4994)
!5010 = !DILocation(line: 2478, column: 96, scope: !4994)
!5011 = !DILocation(line: 2478, column: 90, scope: !4994)
!5012 = !DILocation(line: 2478, column: 23, scope: !4994)
!5013 = !DILocation(line: 2478, column: 21, scope: !4994)
!5014 = !DILocation(line: 2480, column: 22, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !4995, file: !1, line: 2480, column: 7)
!5016 = !DILocation(line: 2480, column: 7, scope: !5015)
!5017 = !DILocation(line: 2480, column: 40, scope: !5015)
!5018 = !DILocation(line: 2480, column: 7, scope: !4995)
!5019 = !DILocation(line: 2481, column: 5, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5015, file: !1, line: 2480, column: 71)
!5021 = !DILocation(line: 2486, column: 36, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !4995, file: !1, line: 2485, column: 3)
!5023 = !DILocation(line: 2486, column: 46, scope: !5022)
!5024 = !DILocation(line: 2486, column: 57, scope: !5022)
!5025 = !DILocation(line: 2486, column: 16, scope: !5022)
!5026 = !DILocation(line: 2486, column: 14, scope: !5022)
!5027 = !DILocation(line: 2487, column: 23, scope: !5022)
!5028 = !DILocation(line: 2488, column: 44, scope: !5022)
!5029 = !DILocation(line: 2488, column: 55, scope: !5022)
!5030 = !DILocation(line: 2488, column: 67, scope: !5022)
!5031 = !DILocation(line: 2488, column: 53, scope: !5022)
!5032 = !DILocation(line: 2488, column: 3, scope: !5022)
!5033 = !DILocation(line: 2488, column: 15, scope: !5022)
!5034 = !DILocation(line: 2488, column: 24, scope: !5022)
!5035 = !DILocation(line: 2489, column: 37, scope: !5022)
!5036 = !DILocation(line: 2489, column: 54, scope: !5022)
!5037 = !DILocation(line: 2489, column: 14, scope: !5022)
!5038 = !DILocation(line: 2489, column: 12, scope: !5022)
!5039 = !DILocation(line: 2491, column: 7, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !4995, file: !1, line: 2491, column: 7)
!5041 = !DILocation(line: 2491, column: 16, scope: !5040)
!5042 = !DILocation(line: 2491, column: 7, scope: !4995)
!5043 = !DILocation(line: 2493, column: 39, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5045, file: !1, line: 2492, column: 5)
!5045 = distinct !DILexicalBlock(scope: !5040, file: !1, line: 2491, column: 22)
!5046 = !DILocation(line: 2493, column: 56, scope: !5044)
!5047 = !DILocation(line: 2493, column: 16, scope: !5044)
!5048 = !DILocation(line: 2493, column: 14, scope: !5044)
!5049 = !DILocation(line: 2495, column: 3, scope: !5045)
!5050 = !DILocation(line: 2498, column: 7, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !4995, file: !1, line: 2498, column: 7)
!5052 = !DILocation(line: 2498, column: 16, scope: !5051)
!5053 = !DILocation(line: 2498, column: 7, scope: !4995)
!5054 = !DILocation(line: 2499, column: 5, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5051, file: !1, line: 2498, column: 23)
!5056 = !DILocation(line: 2499, column: 22, scope: !5055)
!5057 = !DILocation(line: 2499, column: 38, scope: !5055)
!5058 = !DILocation(line: 2500, column: 3, scope: !5055)
!5059 = !DILocation(line: 2503, column: 13, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !4995, file: !1, line: 2503, column: 7)
!5061 = !DILocation(line: 2503, column: 23, scope: !5060)
!5062 = !DILocation(line: 2503, column: 7, scope: !5060)
!5063 = !DILocation(line: 2503, column: 37, scope: !5060)
!5064 = !DILocation(line: 2503, column: 7, scope: !4995)
!5065 = !DILocation(line: 2504, column: 57, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5060, file: !1, line: 2503, column: 43)
!5067 = !DILocation(line: 2504, column: 62, scope: !5066)
!5068 = !DILocation(line: 2504, column: 71, scope: !5066)
!5069 = !DILocation(line: 2504, column: 5, scope: !5066)
!5070 = !DILocation(line: 2504, column: 24, scope: !5066)
!5071 = !DILocation(line: 2504, column: 34, scope: !5066)
!5072 = !DILocation(line: 2504, column: 43, scope: !5066)
!5073 = !DILocation(line: 2505, column: 5, scope: !5066)
!5074 = !DILocation(line: 2505, column: 24, scope: !5066)
!5075 = !DILocation(line: 2505, column: 34, scope: !5066)
!5076 = !DILocation(line: 2506, column: 45, scope: !5066)
!5077 = !DILocation(line: 2506, column: 57, scope: !5066)
!5078 = !DILocation(line: 2506, column: 5, scope: !5066)
!5079 = !DILocation(line: 2506, column: 24, scope: !5066)
!5080 = !DILocation(line: 2506, column: 33, scope: !5066)
!5081 = !DILocation(line: 2506, column: 42, scope: !5066)
!5082 = !DILocation(line: 2507, column: 3, scope: !5066)
!5083 = !DILocation(line: 2508, column: 60, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5060, file: !1, line: 2507, column: 10)
!5085 = !DILocation(line: 2508, column: 65, scope: !5084)
!5086 = !DILocation(line: 2508, column: 74, scope: !5084)
!5087 = !DILocation(line: 2508, column: 5, scope: !5084)
!5088 = !DILocation(line: 2508, column: 24, scope: !5084)
!5089 = !DILocation(line: 2508, column: 37, scope: !5084)
!5090 = !DILocation(line: 2508, column: 46, scope: !5084)
!5091 = !DILocation(line: 2509, column: 5, scope: !5084)
!5092 = !DILocation(line: 2509, column: 24, scope: !5084)
!5093 = !DILocation(line: 2509, column: 35, scope: !5084)
!5094 = !DILocation(line: 2510, column: 46, scope: !5084)
!5095 = !DILocation(line: 2510, column: 58, scope: !5084)
!5096 = !DILocation(line: 2510, column: 5, scope: !5084)
!5097 = !DILocation(line: 2510, column: 24, scope: !5084)
!5098 = !DILocation(line: 2510, column: 34, scope: !5084)
!5099 = !DILocation(line: 2510, column: 43, scope: !5084)
!5100 = !DILocation(line: 2512, column: 7, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !4995, file: !1, line: 2512, column: 7)
!5102 = !DILocation(line: 2512, column: 12, scope: !5101)
!5103 = !DILocation(line: 2512, column: 18, scope: !5101)
!5104 = !DILocation(line: 2512, column: 7, scope: !4995)
!5105 = !DILocation(line: 2513, column: 5, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5101, file: !1, line: 2512, column: 25)
!5107 = !DILocation(line: 2513, column: 24, scope: !5106)
!5108 = !DILocation(line: 2513, column: 35, scope: !5106)
!5109 = !DILocation(line: 2514, column: 3, scope: !5106)
!5110 = !DILocation(line: 2517, column: 7, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !4995, file: !1, line: 2517, column: 7)
!5112 = !DILocation(line: 2517, column: 12, scope: !5111)
!5113 = !DILocation(line: 2517, column: 7, scope: !4995)
!5114 = !DILocation(line: 2518, column: 9, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5116, file: !1, line: 2518, column: 9)
!5116 = distinct !DILexicalBlock(scope: !5111, file: !1, line: 2517, column: 29)
!5117 = !DILocation(line: 2518, column: 16, scope: !5115)
!5118 = !DILocation(line: 2518, column: 9, scope: !5116)
!5119 = !DILocation(line: 2519, column: 14, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5115, file: !1, line: 2518, column: 22)
!5121 = !DILocation(line: 2520, column: 5, scope: !5120)
!5122 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !5123)
!5123 = distinct !DILocation(line: 2522, column: 7, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5125, file: !1, line: 2521, column: 7)
!5125 = distinct !DILexicalBlock(scope: !5115, file: !1, line: 2520, column: 12)
!5126 = !DILocation(line: 2525, column: 102, scope: !5116)
!5127 = !DILocation(line: 2525, column: 107, scope: !5116)
!5128 = !DILocation(line: 2525, column: 112, scope: !5116)
!5129 = !DILocation(line: 2525, column: 120, scope: !5116)
!5130 = !DILocation(line: 2525, column: 139, scope: !5116)
!5131 = !DILocation(line: 2525, column: 158, scope: !5116)
!5132 = !DILocation(line: 2525, column: 181, scope: !5116)
!5133 = !DILocation(line: 2525, column: 95, scope: !5116)
!5134 = !DILocation(line: 2525, column: 189, scope: !5116)
!5135 = !DILocation(line: 2525, column: 6, scope: !5116)
!5136 = !DILocation(line: 2525, column: 11, scope: !5116)
!5137 = !DILocation(line: 2525, column: 16, scope: !5116)
!5138 = !DILocation(line: 2525, column: 24, scope: !5116)
!5139 = !DILocation(line: 2525, column: 43, scope: !5116)
!5140 = !DILocation(line: 2525, column: 62, scope: !5116)
!5141 = !DILocation(line: 2525, column: 85, scope: !5116)
!5142 = !DILocation(line: 2525, column: 93, scope: !5116)
!5143 = !DILocation(line: 2526, column: 3, scope: !5116)
!5144 = !DILocation(line: 2529, column: 3, scope: !4995)
!5145 = !DILocation(line: 2531, column: 1, scope: !1489)
!5146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "TotalCounters", arg: 1, scope: !1507, file: !1, line: 3100, type: !1348)
!5147 = !DILocation(line: 3100, column: 44, scope: !1507)
!5148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "NewCounters", arg: 2, scope: !1507, file: !1, line: 3100, type: !1348)
!5149 = !DILocation(line: 3100, column: 78, scope: !1507)
!5150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Frequency", arg: 3, scope: !1507, file: !1, line: 3101, type: !380)
!5151 = !DILocation(line: 3101, column: 40, scope: !1507)
!5152 = !DILocation(line: 3105, column: 40, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !1507, file: !1, line: 3104, column: 3)
!5154 = !DILocation(line: 3105, column: 53, scope: !5153)
!5155 = !DILocation(line: 3105, column: 63, scope: !5153)
!5156 = !DILocation(line: 3105, column: 3, scope: !5153)
!5157 = !DILocation(line: 3105, column: 18, scope: !5153)
!5158 = !DILocation(line: 3105, column: 28, scope: !5153)
!5159 = !DILocation(line: 3105, column: 37, scope: !5153)
!5160 = !DILocation(line: 3106, column: 43, scope: !5153)
!5161 = !DILocation(line: 3106, column: 56, scope: !5153)
!5162 = !DILocation(line: 3106, column: 69, scope: !5153)
!5163 = !DILocation(line: 3106, column: 3, scope: !5153)
!5164 = !DILocation(line: 3106, column: 18, scope: !5153)
!5165 = !DILocation(line: 3106, column: 31, scope: !5153)
!5166 = !DILocation(line: 3106, column: 40, scope: !5153)
!5167 = !DILocation(line: 3107, column: 31, scope: !5153)
!5168 = !DILocation(line: 3107, column: 44, scope: !5153)
!5169 = !DILocation(line: 3107, column: 3, scope: !5153)
!5170 = !DILocation(line: 3107, column: 18, scope: !5153)
!5171 = !DILocation(line: 3107, column: 28, scope: !5153)
!5172 = !DILocation(line: 3108, column: 32, scope: !5153)
!5173 = !DILocation(line: 3108, column: 45, scope: !5153)
!5174 = !DILocation(line: 3108, column: 3, scope: !5153)
!5175 = !DILocation(line: 3108, column: 18, scope: !5153)
!5176 = !DILocation(line: 3108, column: 29, scope: !5153)
!5177 = !DILocation(line: 3109, column: 32, scope: !5153)
!5178 = !DILocation(line: 3109, column: 45, scope: !5153)
!5179 = !DILocation(line: 3109, column: 3, scope: !5153)
!5180 = !DILocation(line: 3109, column: 18, scope: !5153)
!5181 = !DILocation(line: 3109, column: 29, scope: !5153)
!5182 = !DILocation(line: 3110, column: 17, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5153, file: !1, line: 3110, column: 7)
!5184 = !DILocation(line: 3110, column: 26, scope: !5183)
!5185 = !DILocation(line: 3110, column: 7, scope: !5153)
!5186 = !DILocation(line: 3111, column: 42, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5183, file: !1, line: 3110, column: 33)
!5188 = !DILocation(line: 3111, column: 55, scope: !5187)
!5189 = !DILocation(line: 3111, column: 64, scope: !5187)
!5190 = !DILocation(line: 3111, column: 73, scope: !5187)
!5191 = !DILocation(line: 3111, column: 99, scope: !5187)
!5192 = !DILocation(line: 3111, column: 87, scope: !5187)
!5193 = !DILocation(line: 3111, column: 5, scope: !5187)
!5194 = !DILocation(line: 3111, column: 20, scope: !5187)
!5195 = !DILocation(line: 3111, column: 29, scope: !5187)
!5196 = !DILocation(line: 3111, column: 38, scope: !5187)
!5197 = !DILocation(line: 3112, column: 43, scope: !5187)
!5198 = !DILocation(line: 3112, column: 56, scope: !5187)
!5199 = !DILocation(line: 3112, column: 66, scope: !5187)
!5200 = !DILocation(line: 3112, column: 75, scope: !5187)
!5201 = !DILocation(line: 3112, column: 101, scope: !5187)
!5202 = !DILocation(line: 3112, column: 89, scope: !5187)
!5203 = !DILocation(line: 3112, column: 5, scope: !5187)
!5204 = !DILocation(line: 3112, column: 20, scope: !5187)
!5205 = !DILocation(line: 3112, column: 30, scope: !5187)
!5206 = !DILocation(line: 3112, column: 39, scope: !5187)
!5207 = !DILocation(line: 3113, column: 42, scope: !5187)
!5208 = !DILocation(line: 3113, column: 55, scope: !5187)
!5209 = !DILocation(line: 3113, column: 64, scope: !5187)
!5210 = !DILocation(line: 3113, column: 73, scope: !5187)
!5211 = !DILocation(line: 3113, column: 99, scope: !5187)
!5212 = !DILocation(line: 3113, column: 87, scope: !5187)
!5213 = !DILocation(line: 3113, column: 5, scope: !5187)
!5214 = !DILocation(line: 3113, column: 20, scope: !5187)
!5215 = !DILocation(line: 3113, column: 29, scope: !5187)
!5216 = !DILocation(line: 3113, column: 38, scope: !5187)
!5217 = !DILocation(line: 3114, column: 3, scope: !5187)
!5218 = !DILocation(line: 3115, column: 41, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5183, file: !1, line: 3114, column: 10)
!5220 = !DILocation(line: 3115, column: 54, scope: !5219)
!5221 = !DILocation(line: 3115, column: 63, scope: !5219)
!5222 = !DILocation(line: 3115, column: 5, scope: !5219)
!5223 = !DILocation(line: 3115, column: 20, scope: !5219)
!5224 = !DILocation(line: 3115, column: 29, scope: !5219)
!5225 = !DILocation(line: 3115, column: 38, scope: !5219)
!5226 = !DILocation(line: 3116, column: 42, scope: !5219)
!5227 = !DILocation(line: 3116, column: 55, scope: !5219)
!5228 = !DILocation(line: 3116, column: 65, scope: !5219)
!5229 = !DILocation(line: 3116, column: 5, scope: !5219)
!5230 = !DILocation(line: 3116, column: 20, scope: !5219)
!5231 = !DILocation(line: 3116, column: 30, scope: !5219)
!5232 = !DILocation(line: 3116, column: 39, scope: !5219)
!5233 = !DILocation(line: 3117, column: 41, scope: !5219)
!5234 = !DILocation(line: 3117, column: 54, scope: !5219)
!5235 = !DILocation(line: 3117, column: 63, scope: !5219)
!5236 = !DILocation(line: 3117, column: 5, scope: !5219)
!5237 = !DILocation(line: 3117, column: 20, scope: !5219)
!5238 = !DILocation(line: 3117, column: 29, scope: !5219)
!5239 = !DILocation(line: 3117, column: 38, scope: !5219)
!5240 = !DILocation(line: 3119, column: 3, scope: !5153)
!5241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IoControlCode", arg: 1, scope: !1556, file: !1, line: 3510, type: !286)
!5242 = !DILocation(line: 3510, column: 42, scope: !1556)
!5243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 2, scope: !1556, file: !1, line: 3510, type: !265)
!5244 = !DILocation(line: 3510, column: 73, scope: !1556)
!5245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputBuffer", arg: 3, scope: !1556, file: !1, line: 3511, type: !289)
!5246 = !DILocation(line: 3511, column: 42, scope: !1556)
!5247 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InputBufferLength", arg: 4, scope: !1556, file: !1, line: 3511, type: !286)
!5248 = !DILocation(line: 3511, column: 62, scope: !1556)
!5249 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "OutputBuffer", arg: 5, scope: !1556, file: !1, line: 3511, type: !289)
!5250 = !DILocation(line: 3511, column: 88, scope: !1556)
!5251 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "OutputBufferLength", arg: 6, scope: !1556, file: !1, line: 3512, type: !286)
!5252 = !DILocation(line: 3512, column: 42, scope: !1556)
!5253 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InternalDeviceIoControl", arg: 7, scope: !1556, file: !1, line: 3512, type: !329)
!5254 = !DILocation(line: 3512, column: 71, scope: !1556)
!5255 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 8, scope: !1556, file: !1, line: 3513, type: !549)
!5256 = !DILocation(line: 3513, column: 44, scope: !1556)
!5257 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IoStatusBlock", arg: 9, scope: !1556, file: !1, line: 3513, type: !429)
!5258 = !DILocation(line: 3513, column: 69, scope: !1556)
!5259 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1556, file: !1, line: 3514, type: !1422)
!5260 = !DILocation(line: 3514, column: 7, scope: !1556)
!5261 = !DILocation(line: 3514, column: 28, scope: !1556)
!5262 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1556, file: !1, line: 3515, type: !1458)
!5263 = !DILocation(line: 3515, column: 9, scope: !1556)
!5264 = !DILocation(line: 3518, column: 13, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !1556, file: !1, line: 3517, column: 3)
!5266 = !DILocation(line: 3519, column: 7, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5265, file: !1, line: 3519, column: 7)
!5268 = !DILocation(line: 3519, column: 26, scope: !5267)
!5269 = !DILocation(line: 3330, column: 18, scope: !1514, inlinedAt: !5270)
!5270 = distinct !DILocation(line: 3527, column: 13, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5272, file: !1, line: 3526, column: 7)
!5272 = distinct !DILexicalBlock(scope: !5273, file: !1, line: 3524, column: 12)
!5273 = distinct !DILexicalBlock(scope: !5274, file: !1, line: 3524, column: 9)
!5274 = distinct !DILexicalBlock(scope: !5275, file: !1, line: 3522, column: 5)
!5275 = distinct !DILexicalBlock(scope: !5267, file: !1, line: 3521, column: 10)
!5276 = !DILocation(line: 3331, column: 7, scope: !1514, inlinedAt: !5270)
!5277 = !DILocation(line: 3519, column: 7, scope: !5265)
!5278 = !DILocation(line: 3520, column: 5, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5267, file: !1, line: 3519, column: 32)
!5280 = !DILocation(line: 3523, column: 5, scope: !5274)
!5281 = !DILocation(line: 3524, column: 9, scope: !5274)
!5282 = !DILocation(line: 3524, column: 12, scope: !5273)
!5283 = !DILocation(line: 3527, column: 13, scope: !5271)
!5284 = !DILocation(line: 3331, column: 28, scope: !1514, inlinedAt: !5270)
!5285 = !DILocation(line: 3334, column: 7, scope: !2038, inlinedAt: !5270)
!5286 = !DILocation(line: 3334, column: 7, scope: !2039, inlinedAt: !5270)
!5287 = !DILocation(line: 3335, column: 5, scope: !2042, inlinedAt: !5270)
!5288 = !DILocation(line: 3337, column: 5, scope: !2044, inlinedAt: !5270)
!5289 = !DILocation(line: 3340, column: 1, scope: !1514, inlinedAt: !5270)
!5290 = !DILocation(line: 3527, column: 11, scope: !5271)
!5291 = !DILocation(line: 3529, column: 23, scope: !5272)
!5292 = !DILocation(line: 3529, column: 14, scope: !5272)
!5293 = !DILocation(line: 3529, column: 7, scope: !5272)
!5294 = !DILocation(line: 3531, column: 7, scope: !5272)
!5295 = !DILocation(line: 3532, column: 12, scope: !5273)
!5296 = !DILocation(line: 3538, column: 1, scope: !1556)
!5297 = !DILocation(line: 3149, column: 7, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !1510, file: !1, line: 3148, column: 3)
!5299 = !DILocation(line: 3149, column: 5, scope: !5298)
!5300 = !DILocation(line: 3150, column: 13, scope: !5298)
!5301 = !DILocation(line: 3151, column: 20, scope: !5298)
!5302 = !DILocation(line: 3151, column: 18, scope: !5298)
!5303 = !DILocation(line: 3152, column: 23, scope: !5298)
!5304 = !DILocation(line: 3152, column: 21, scope: !5298)
!5305 = !DILocation(line: 3153, column: 20, scope: !5298)
!5306 = !DILocation(line: 3153, column: 18, scope: !5298)
!5307 = !DILocation(line: 3154, column: 14, scope: !5298)
!5308 = !DILocation(line: 3154, column: 12, scope: !5298)
!5309 = !DILocation(line: 3155, column: 12, scope: !5298)
!5310 = !DILocation(line: 3155, column: 10, scope: !5298)
!5311 = !DILocation(line: 3156, column: 3, scope: !5298)
!5312 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !1511, file: !1, line: 3160, type: !5313)
!5313 = !DIDerivedType(tag: DW_TAG_typedef, name: "DRIVER_OBJECT", file: !1, line: 961, baseType: !280)
!5314 = !DILocation(line: 3160, column: 17, scope: !1511)
!5315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !1511, file: !1, line: 3161, type: !302)
!5316 = !DILocation(line: 3161, column: 12, scope: !1511)
!5317 = !DILocation(line: 3161, column: 21, scope: !1511)
!5318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "we_should_unload", scope: !1511, file: !1, line: 3162, type: !1422)
!5319 = !DILocation(line: 3162, column: 7, scope: !1511)
!5320 = !DILocation(line: 3162, column: 26, scope: !1511)
!5321 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp", scope: !1511, file: !1, line: 3163, type: !1978)
!5322 = !DILocation(line: 3163, column: 7, scope: !1511)
!5323 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1511, file: !1, line: 3164, type: !1422)
!5324 = !DILocation(line: 3164, column: 7, scope: !1511)
!5325 = !DILocation(line: 3164, column: 28, scope: !1511)
!5326 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irp_choice", scope: !1511, file: !1, line: 3165, type: !1422)
!5327 = !DILocation(line: 3165, column: 7, scope: !1511)
!5328 = !DILocation(line: 3165, column: 20, scope: !1511)
!5329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devobj", scope: !1511, file: !1, line: 3166, type: !5330)
!5330 = !DIDerivedType(tag: DW_TAG_typedef, name: "DEVICE_OBJECT", file: !1, line: 930, baseType: !267)
!5331 = !DILocation(line: 3166, column: 17, scope: !1511)
!5332 = !DILocation(line: 3167, column: 24, scope: !1511)
!5333 = !DILocation(line: 3167, column: 22, scope: !1511)
!5334 = !DILocation(line: 3171, column: 8, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5336, file: !1, line: 3170, column: 3)
!5336 = distinct !DILexicalBlock(scope: !1511, file: !1, line: 3169, column: 3)
!5337 = !DILocation(line: 2000, column: 12, scope: !1991, inlinedAt: !5338)
!5338 = distinct !DILocation(line: 3172, column: 3, scope: !5335)
!5339 = !DILocation(line: 2001, column: 6, scope: !1991, inlinedAt: !5338)
!5340 = !DILocation(line: 2002, column: 6, scope: !1991, inlinedAt: !5338)
!5341 = !DILocation(line: 2003, column: 9, scope: !1991, inlinedAt: !5338)
!5342 = !DILocation(line: 2004, column: 9, scope: !1991, inlinedAt: !5338)
!5343 = !DILocation(line: 2005, column: 8, scope: !1991, inlinedAt: !5338)
!5344 = !DILocation(line: 2006, column: 8, scope: !1991, inlinedAt: !5338)
!5345 = !DILocation(line: 2007, column: 7, scope: !1991, inlinedAt: !5338)
!5346 = !DILocation(line: 2008, column: 7, scope: !1991, inlinedAt: !5338)
!5347 = !DILocation(line: 2008, column: 5, scope: !1991, inlinedAt: !5338)
!5348 = !DILocation(line: 2009, column: 10, scope: !1991, inlinedAt: !5338)
!5349 = !DILocation(line: 2010, column: 12, scope: !1991, inlinedAt: !5338)
!5350 = !DILocation(line: 2011, column: 18, scope: !1991, inlinedAt: !5338)
!5351 = !DILocation(line: 2012, column: 21, scope: !1991, inlinedAt: !5338)
!5352 = !DILocation(line: 2013, column: 18, scope: !1991, inlinedAt: !5338)
!5353 = !DILocation(line: 2014, column: 13, scope: !1991, inlinedAt: !5338)
!5354 = !DILocation(line: 3174, column: 7, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5336, file: !1, line: 3174, column: 7)
!5356 = !DILocation(line: 3174, column: 14, scope: !5355)
!5357 = !DILocation(line: 3879, column: 30, scope: !1633, inlinedAt: !5358)
!5358 = distinct !DILocation(line: 2370, column: 3, scope: !2190, inlinedAt: !5359)
!5359 = distinct !DILocation(line: 3218, column: 26, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5361, file: !1, line: 3217, column: 17)
!5361 = distinct !DILexicalBlock(scope: !5362, file: !1, line: 3215, column: 22)
!5362 = distinct !DILexicalBlock(scope: !5363, file: !1, line: 3215, column: 19)
!5363 = distinct !DILexicalBlock(scope: !5364, file: !1, line: 3213, column: 15)
!5364 = distinct !DILexicalBlock(scope: !5365, file: !1, line: 3212, column: 20)
!5365 = distinct !DILexicalBlock(scope: !5366, file: !1, line: 3210, column: 17)
!5366 = distinct !DILexicalBlock(scope: !5367, file: !1, line: 3209, column: 18)
!5367 = distinct !DILexicalBlock(scope: !5368, file: !1, line: 3207, column: 15)
!5368 = distinct !DILexicalBlock(scope: !5369, file: !1, line: 3206, column: 16)
!5369 = distinct !DILexicalBlock(scope: !5370, file: !1, line: 3204, column: 13)
!5370 = distinct !DILexicalBlock(scope: !5371, file: !1, line: 3203, column: 14)
!5371 = distinct !DILexicalBlock(scope: !5372, file: !1, line: 3201, column: 11)
!5372 = distinct !DILexicalBlock(scope: !5373, file: !1, line: 3200, column: 12)
!5373 = distinct !DILexicalBlock(scope: !5374, file: !1, line: 3198, column: 9)
!5374 = distinct !DILexicalBlock(scope: !5355, file: !1, line: 3174, column: 21)
!5375 = !DILocation(line: 3879, column: 42, scope: !1633, inlinedAt: !5358)
!5376 = !DILocation(line: 2363, column: 40, scope: !1487, inlinedAt: !5359)
!5377 = !DILocation(line: 2363, column: 60, scope: !1487, inlinedAt: !5359)
!5378 = !DILocation(line: 2286, column: 47, scope: !1485, inlinedAt: !5379)
!5379 = distinct !DILocation(line: 3233, column: 26, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5361, file: !1, line: 3232, column: 17)
!5381 = !DILocation(line: 2286, column: 67, scope: !1485, inlinedAt: !5379)
!5382 = !DILocation(line: 2287, column: 21, scope: !1485, inlinedAt: !5379)
!5383 = !DILocation(line: 2288, column: 12, scope: !1485, inlinedAt: !5379)
!5384 = !DILocation(line: 2674, column: 47, scope: !1492, inlinedAt: !5385)
!5385 = distinct !DILocation(line: 3238, column: 26, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5361, file: !1, line: 3237, column: 17)
!5387 = !DILocation(line: 2674, column: 67, scope: !1492, inlinedAt: !5385)
!5388 = !DILocation(line: 2675, column: 21, scope: !1492, inlinedAt: !5385)
!5389 = !DILocation(line: 2676, column: 12, scope: !1492, inlinedAt: !5385)
!5390 = !DILocation(line: 3174, column: 7, scope: !5336)
!5391 = !DILocation(line: 3175, column: 9, scope: !5374)
!5392 = !DILocation(line: 3175, column: 7, scope: !5374)
!5393 = !DILocation(line: 3176, column: 15, scope: !5374)
!5394 = !DILocation(line: 3177, column: 22, scope: !5374)
!5395 = !DILocation(line: 3177, column: 20, scope: !5374)
!5396 = !DILocation(line: 3178, column: 25, scope: !5374)
!5397 = !DILocation(line: 3178, column: 23, scope: !5374)
!5398 = !DILocation(line: 3179, column: 22, scope: !5374)
!5399 = !DILocation(line: 3179, column: 20, scope: !5374)
!5400 = !DILocation(line: 3180, column: 16, scope: !5374)
!5401 = !DILocation(line: 3180, column: 14, scope: !5374)
!5402 = !DILocation(line: 3181, column: 14, scope: !5374)
!5403 = !DILocation(line: 3181, column: 12, scope: !5374)
!5404 = !DILocation(line: 3182, column: 5, scope: !5374)
!5405 = !DILocation(line: 3182, column: 11, scope: !5374)
!5406 = !DILocation(line: 3182, column: 20, scope: !5374)
!5407 = !DILocation(line: 3182, column: 38, scope: !5374)
!5408 = !DILocation(line: 3182, column: 45, scope: !5374)
!5409 = !DILocation(line: 3183, column: 14, scope: !5374)
!5410 = !DILocation(line: 3184, column: 9, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5374, file: !1, line: 3184, column: 9)
!5412 = !DILocation(line: 3184, column: 20, scope: !5411)
!5413 = !DILocation(line: 3184, column: 9, scope: !5374)
!5414 = !DILocation(line: 3185, column: 7, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5411, file: !1, line: 3184, column: 26)
!5416 = !DILocation(line: 3185, column: 13, scope: !5415)
!5417 = !DILocation(line: 3185, column: 22, scope: !5415)
!5418 = !DILocation(line: 3185, column: 40, scope: !5415)
!5419 = !DILocation(line: 3185, column: 47, scope: !5415)
!5420 = !DILocation(line: 3186, column: 16, scope: !5415)
!5421 = !DILocation(line: 3187, column: 5, scope: !5415)
!5422 = !DILocation(line: 3149, column: 7, scope: !5298, inlinedAt: !5423)
!5423 = distinct !DILocation(line: 3191, column: 5, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5374, file: !1, line: 3190, column: 5)
!5425 = !DILocation(line: 3149, column: 5, scope: !5298, inlinedAt: !5423)
!5426 = !DILocation(line: 3150, column: 13, scope: !5298, inlinedAt: !5423)
!5427 = !DILocation(line: 3151, column: 20, scope: !5298, inlinedAt: !5423)
!5428 = !DILocation(line: 3151, column: 18, scope: !5298, inlinedAt: !5423)
!5429 = !DILocation(line: 3152, column: 23, scope: !5298, inlinedAt: !5423)
!5430 = !DILocation(line: 3152, column: 21, scope: !5298, inlinedAt: !5423)
!5431 = !DILocation(line: 3153, column: 20, scope: !5298, inlinedAt: !5423)
!5432 = !DILocation(line: 3153, column: 18, scope: !5298, inlinedAt: !5423)
!5433 = !DILocation(line: 3154, column: 14, scope: !5298, inlinedAt: !5423)
!5434 = !DILocation(line: 3154, column: 12, scope: !5298, inlinedAt: !5423)
!5435 = !DILocation(line: 3155, column: 12, scope: !5298, inlinedAt: !5423)
!5436 = !DILocation(line: 3155, column: 10, scope: !5298, inlinedAt: !5423)
!5437 = !DILocation(line: 3193, column: 12, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5374, file: !1, line: 3193, column: 9)
!5439 = !DILocation(line: 3193, column: 19, scope: !5438)
!5440 = !DILocation(line: 3193, column: 9, scope: !5374)
!5441 = !DILocation(line: 3194, column: 7, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5438, file: !1, line: 3193, column: 27)
!5443 = !DILocation(line: 3198, column: 9, scope: !5373)
!5444 = !DILocation(line: 3198, column: 28, scope: !5373)
!5445 = !DILocation(line: 3198, column: 9, scope: !5374)
!5446 = !DILocation(line: 3199, column: 7, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5373, file: !1, line: 3198, column: 34)
!5448 = !DILocation(line: 3201, column: 11, scope: !5371)
!5449 = !DILocation(line: 3201, column: 30, scope: !5371)
!5450 = !DILocation(line: 3201, column: 11, scope: !5372)
!5451 = !DILocation(line: 3202, column: 9, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5371, file: !1, line: 3201, column: 36)
!5453 = !DILocation(line: 3204, column: 13, scope: !5369)
!5454 = !DILocation(line: 3204, column: 32, scope: !5369)
!5455 = !DILocation(line: 3204, column: 13, scope: !5370)
!5456 = !DILocation(line: 3205, column: 11, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5369, file: !1, line: 3204, column: 38)
!5458 = !DILocation(line: 3207, column: 15, scope: !5367)
!5459 = !DILocation(line: 3207, column: 34, scope: !5367)
!5460 = !DILocation(line: 3207, column: 15, scope: !5368)
!5461 = !DILocation(line: 3208, column: 13, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5367, file: !1, line: 3207, column: 40)
!5463 = !DILocation(line: 3210, column: 17, scope: !5365)
!5464 = !DILocation(line: 3210, column: 36, scope: !5365)
!5465 = !DILocation(line: 3210, column: 17, scope: !5366)
!5466 = !DILocation(line: 3211, column: 15, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5365, file: !1, line: 3210, column: 43)
!5468 = !DILocation(line: 3214, column: 15, scope: !5363)
!5469 = !DILocation(line: 3215, column: 19, scope: !5363)
!5470 = !DILocation(line: 3215, column: 22, scope: !5362)
!5471 = !DILocation(line: 3218, column: 51, scope: !5360)
!5472 = !DILocation(line: 3218, column: 26, scope: !5360)
!5473 = !DILocation(line: 2368, column: 3, scope: !2190, inlinedAt: !5359)
!5474 = !DILocation(line: 2368, column: 8, scope: !2190, inlinedAt: !5359)
!5475 = !DILocation(line: 2368, column: 17, scope: !2190, inlinedAt: !5359)
!5476 = !DILocation(line: 2368, column: 35, scope: !2190, inlinedAt: !5359)
!5477 = !DILocation(line: 2368, column: 42, scope: !2190, inlinedAt: !5359)
!5478 = !DILocation(line: 2369, column: 12, scope: !2190, inlinedAt: !5359)
!5479 = !DILocation(line: 2370, column: 22, scope: !2190, inlinedAt: !5359)
!5480 = !DILocation(line: 2370, column: 3, scope: !2190, inlinedAt: !5359)
!5481 = !DILocation(line: 3883, column: 7, scope: !2200, inlinedAt: !5358)
!5482 = !DILocation(line: 3883, column: 12, scope: !2200, inlinedAt: !5358)
!5483 = !DILocation(line: 3883, column: 9, scope: !2200, inlinedAt: !5358)
!5484 = !DILocation(line: 3883, column: 7, scope: !2201, inlinedAt: !5358)
!5485 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !5486)
!5486 = distinct !DILocation(line: 3887, column: 5, scope: !2208, inlinedAt: !5358)
!5487 = !DILocation(line: 3884, column: 9, scope: !2211, inlinedAt: !5358)
!5488 = !DILocation(line: 3884, column: 7, scope: !2211, inlinedAt: !5358)
!5489 = !DILocation(line: 3890, column: 3, scope: !2201, inlinedAt: !5358)
!5490 = !DILocation(line: 2372, column: 3, scope: !2191, inlinedAt: !5359)
!5491 = !DILocation(line: 3218, column: 24, scope: !5360)
!5492 = !DILocation(line: 3220, column: 17, scope: !5361)
!5493 = !DILocation(line: 3223, column: 58, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5361, file: !1, line: 3222, column: 17)
!5495 = !DILocation(line: 3223, column: 26, scope: !5494)
!5496 = !DILocation(line: 3223, column: 24, scope: !5494)
!5497 = !DILocation(line: 3225, column: 17, scope: !5361)
!5498 = !DILocation(line: 3228, column: 56, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5361, file: !1, line: 3227, column: 17)
!5500 = !DILocation(line: 3228, column: 26, scope: !5499)
!5501 = !DILocation(line: 3228, column: 24, scope: !5499)
!5502 = !DILocation(line: 3230, column: 17, scope: !5361)
!5503 = !DILocation(line: 3233, column: 58, scope: !5380)
!5504 = !DILocation(line: 3233, column: 26, scope: !5380)
!5505 = !DILocation(line: 2294, column: 7, scope: !3094, inlinedAt: !5379)
!5506 = !DILocation(line: 2294, column: 12, scope: !3094, inlinedAt: !5379)
!5507 = !DILocation(line: 2294, column: 9, scope: !3094, inlinedAt: !5379)
!5508 = !DILocation(line: 2294, column: 7, scope: !3095, inlinedAt: !5379)
!5509 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !5510)
!5510 = distinct !DILocation(line: 2298, column: 5, scope: !3105, inlinedAt: !5379)
!5511 = !DILocation(line: 2295, column: 9, scope: !3100, inlinedAt: !5379)
!5512 = !DILocation(line: 2295, column: 7, scope: !3100, inlinedAt: !5379)
!5513 = !DILocation(line: 2302, column: 40, scope: !3108, inlinedAt: !5379)
!5514 = !DILocation(line: 2302, column: 45, scope: !3108, inlinedAt: !5379)
!5515 = !DILocation(line: 2302, column: 34, scope: !3108, inlinedAt: !5379)
!5516 = !DILocation(line: 2302, column: 61, scope: !3108, inlinedAt: !5379)
!5517 = !DILocation(line: 2302, column: 26, scope: !3108, inlinedAt: !5379)
!5518 = !DILocation(line: 2302, column: 3, scope: !3108, inlinedAt: !5379)
!5519 = !DILocation(line: 2302, column: 8, scope: !3108, inlinedAt: !5379)
!5520 = !DILocation(line: 2302, column: 24, scope: !3108, inlinedAt: !5379)
!5521 = !DILocation(line: 2303, column: 3, scope: !3108, inlinedAt: !5379)
!5522 = !DILocation(line: 2303, column: 8, scope: !3108, inlinedAt: !5379)
!5523 = !DILocation(line: 2303, column: 13, scope: !3108, inlinedAt: !5379)
!5524 = !DILocation(line: 2303, column: 21, scope: !3108, inlinedAt: !5379)
!5525 = !DILocation(line: 2303, column: 40, scope: !3108, inlinedAt: !5379)
!5526 = !DILocation(line: 2303, column: 59, scope: !3108, inlinedAt: !5379)
!5527 = !DILocation(line: 2303, column: 80, scope: !3108, inlinedAt: !5379)
!5528 = !DILocation(line: 2304, column: 49, scope: !3108, inlinedAt: !5379)
!5529 = !DILocation(line: 2304, column: 63, scope: !3108, inlinedAt: !5379)
!5530 = !DILocation(line: 2304, column: 21, scope: !3108, inlinedAt: !5379)
!5531 = !DILocation(line: 2304, column: 19, scope: !3108, inlinedAt: !5379)
!5532 = !DILocation(line: 2305, column: 22, scope: !3108, inlinedAt: !5379)
!5533 = !DILocation(line: 2305, column: 39, scope: !3108, inlinedAt: !5379)
!5534 = !DILocation(line: 2305, column: 59, scope: !3108, inlinedAt: !5379)
!5535 = !DILocation(line: 2305, column: 9, scope: !3108, inlinedAt: !5379)
!5536 = !DILocation(line: 2305, column: 7, scope: !3108, inlinedAt: !5379)
!5537 = !DILocation(line: 2307, column: 11, scope: !3095, inlinedAt: !5379)
!5538 = !DILocation(line: 2307, column: 3, scope: !3095, inlinedAt: !5379)
!5539 = !DILocation(line: 3233, column: 24, scope: !5380)
!5540 = !DILocation(line: 3235, column: 17, scope: !5361)
!5541 = !DILocation(line: 3238, column: 58, scope: !5386)
!5542 = !DILocation(line: 3238, column: 26, scope: !5386)
!5543 = !DILocation(line: 2680, column: 21, scope: !2957, inlinedAt: !5385)
!5544 = !DILocation(line: 2680, column: 35, scope: !2957, inlinedAt: !5385)
!5545 = !DILocation(line: 2680, column: 19, scope: !2957, inlinedAt: !5385)
!5546 = !DILocation(line: 2681, column: 40, scope: !2957, inlinedAt: !5385)
!5547 = !DILocation(line: 2681, column: 45, scope: !2957, inlinedAt: !5385)
!5548 = !DILocation(line: 2681, column: 34, scope: !2957, inlinedAt: !5385)
!5549 = !DILocation(line: 2681, column: 61, scope: !2957, inlinedAt: !5385)
!5550 = !DILocation(line: 2681, column: 26, scope: !2957, inlinedAt: !5385)
!5551 = !DILocation(line: 2681, column: 3, scope: !2957, inlinedAt: !5385)
!5552 = !DILocation(line: 2681, column: 8, scope: !2957, inlinedAt: !5385)
!5553 = !DILocation(line: 2681, column: 24, scope: !2957, inlinedAt: !5385)
!5554 = !DILocation(line: 2682, column: 3, scope: !2957, inlinedAt: !5385)
!5555 = !DILocation(line: 2682, column: 8, scope: !2957, inlinedAt: !5385)
!5556 = !DILocation(line: 2682, column: 13, scope: !2957, inlinedAt: !5385)
!5557 = !DILocation(line: 2682, column: 21, scope: !2957, inlinedAt: !5385)
!5558 = !DILocation(line: 2682, column: 40, scope: !2957, inlinedAt: !5385)
!5559 = !DILocation(line: 2682, column: 59, scope: !2957, inlinedAt: !5385)
!5560 = !DILocation(line: 2682, column: 80, scope: !2957, inlinedAt: !5385)
!5561 = !DILocation(line: 2683, column: 23, scope: !2957, inlinedAt: !5385)
!5562 = !DILocation(line: 2683, column: 40, scope: !2957, inlinedAt: !5385)
!5563 = !DILocation(line: 2683, column: 60, scope: !2957, inlinedAt: !5385)
!5564 = !DILocation(line: 2683, column: 9, scope: !2957, inlinedAt: !5385)
!5565 = !DILocation(line: 2683, column: 7, scope: !2957, inlinedAt: !5385)
!5566 = !DILocation(line: 2685, column: 11, scope: !2958, inlinedAt: !5385)
!5567 = !DILocation(line: 2685, column: 3, scope: !2958, inlinedAt: !5385)
!5568 = !DILocation(line: 3238, column: 24, scope: !5386)
!5569 = !DILocation(line: 3240, column: 17, scope: !5361)
!5570 = !DILocation(line: 3242, column: 17, scope: !5361)
!5571 = !DILocation(line: 3243, column: 22, scope: !5362)
!5572 = !DILocation(line: 3252, column: 9, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5374, file: !1, line: 3252, column: 9)
!5574 = !DILocation(line: 3252, column: 9, scope: !5374)
!5575 = !DILocation(line: 3256, column: 5, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5573, file: !1, line: 3252, column: 27)
!5577 = !DILocation(line: 3259, column: 3, scope: !5374)
!5578 = !DILocation(line: 3262, column: 7, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5336, file: !1, line: 3262, column: 7)
!5580 = !DILocation(line: 3262, column: 14, scope: !5579)
!5581 = !DILocation(line: 3262, column: 7, scope: !5336)
!5582 = !DILocation(line: 3263, column: 9, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5584, file: !1, line: 3263, column: 9)
!5584 = distinct !DILexicalBlock(scope: !5579, file: !1, line: 3262, column: 20)
!5585 = !DILocation(line: 3263, column: 14, scope: !5583)
!5586 = !DILocation(line: 3263, column: 11, scope: !5583)
!5587 = !DILocation(line: 3263, column: 9, scope: !5584)
!5588 = !DILocation(line: 3264, column: 11, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5583, file: !1, line: 3263, column: 18)
!5590 = !DILocation(line: 3264, column: 9, scope: !5589)
!5591 = !DILocation(line: 3265, column: 5, scope: !5589)
!5592 = !DILocation(line: 3266, column: 7, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5583, file: !1, line: 3265, column: 12)
!5594 = !DILocation(line: 3268, column: 3, scope: !5584)
!5595 = !DILocation(line: 3268, column: 10, scope: !5579)
!5596 = !DILocation(line: 3270, column: 9, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5598, file: !1, line: 3270, column: 9)
!5598 = distinct !DILexicalBlock(scope: !5579, file: !1, line: 3268, column: 10)
!5599 = !DILocation(line: 3270, column: 16, scope: !5597)
!5600 = !DILocation(line: 3270, column: 9, scope: !5598)
!5601 = !DILocation(line: 3271, column: 11, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5603, file: !1, line: 3271, column: 11)
!5603 = distinct !DILexicalBlock(scope: !5597, file: !1, line: 3270, column: 22)
!5604 = !DILocation(line: 3271, column: 16, scope: !5602)
!5605 = !DILocation(line: 3271, column: 13, scope: !5602)
!5606 = !DILocation(line: 3271, column: 11, scope: !5603)
!5607 = !DILocation(line: 3272, column: 13, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5602, file: !1, line: 3271, column: 22)
!5609 = !DILocation(line: 3272, column: 11, scope: !5608)
!5610 = !DILocation(line: 3273, column: 7, scope: !5608)
!5611 = !DILocation(line: 3274, column: 9, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5602, file: !1, line: 3273, column: 14)
!5613 = !DILocation(line: 3276, column: 5, scope: !5603)
!5614 = !DILocation(line: 3276, column: 12, scope: !5597)
!5615 = !DILocation(line: 3278, column: 11, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5617, file: !1, line: 3278, column: 11)
!5617 = distinct !DILexicalBlock(scope: !5597, file: !1, line: 3276, column: 12)
!5618 = !DILocation(line: 3278, column: 16, scope: !5616)
!5619 = !DILocation(line: 3278, column: 13, scope: !5616)
!5620 = !DILocation(line: 3278, column: 11, scope: !5617)
!5621 = !DILocation(line: 3280, column: 7, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5616, file: !1, line: 3278, column: 26)
!5623 = !DILocation(line: 3281, column: 13, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5625, file: !1, line: 3281, column: 13)
!5625 = distinct !DILexicalBlock(scope: !5616, file: !1, line: 3280, column: 14)
!5626 = !DILocation(line: 3281, column: 20, scope: !5624)
!5627 = !DILocation(line: 3281, column: 13, scope: !5625)
!5628 = !DILocation(line: 3283, column: 9, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5624, file: !1, line: 3281, column: 28)
!5630 = !DILocation(line: 3284, column: 15, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5632, file: !1, line: 3284, column: 15)
!5632 = distinct !DILexicalBlock(scope: !5624, file: !1, line: 3283, column: 16)
!5633 = !DILocation(line: 3284, column: 20, scope: !5631)
!5634 = !DILocation(line: 3284, column: 17, scope: !5631)
!5635 = !DILocation(line: 3284, column: 15, scope: !5632)
!5636 = !DILocation(line: 3285, column: 17, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5638, file: !1, line: 3285, column: 17)
!5638 = distinct !DILexicalBlock(scope: !5631, file: !1, line: 3284, column: 27)
!5639 = !DILocation(line: 3285, column: 22, scope: !5637)
!5640 = !DILocation(line: 3285, column: 19, scope: !5637)
!5641 = !DILocation(line: 3285, column: 17, scope: !5638)
!5642 = !DILocation(line: 3286, column: 19, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5644, file: !1, line: 3286, column: 19)
!5644 = distinct !DILexicalBlock(scope: !5637, file: !1, line: 3285, column: 27)
!5645 = !DILocation(line: 3286, column: 24, scope: !5643)
!5646 = !DILocation(line: 3286, column: 21, scope: !5643)
!5647 = !DILocation(line: 3286, column: 19, scope: !5644)
!5648 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !5649)
!5649 = distinct !DILocation(line: 3288, column: 17, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5651, file: !1, line: 3287, column: 17)
!5651 = distinct !DILexicalBlock(scope: !5643, file: !1, line: 3286, column: 28)
!5652 = !DILocation(line: 3290, column: 15, scope: !5651)
!5653 = !DILocation(line: 3291, column: 17, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5643, file: !1, line: 3290, column: 22)
!5655 = !DILocation(line: 3293, column: 13, scope: !5644)
!5656 = !DILocation(line: 3294, column: 15, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5637, file: !1, line: 3293, column: 20)
!5658 = !DILocation(line: 3296, column: 11, scope: !5638)
!5659 = !DILocation(line: 3296, column: 18, scope: !5631)
!5660 = !DILocation(line: 3298, column: 17, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5662, file: !1, line: 3298, column: 17)
!5662 = distinct !DILexicalBlock(scope: !5631, file: !1, line: 3296, column: 18)
!5663 = !DILocation(line: 3298, column: 24, scope: !5661)
!5664 = !DILocation(line: 3298, column: 17, scope: !5662)
!5665 = !DILocation(line: 3299, column: 19, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5667, file: !1, line: 3299, column: 19)
!5667 = distinct !DILexicalBlock(scope: !5661, file: !1, line: 3298, column: 30)
!5668 = !DILocation(line: 3299, column: 26, scope: !5666)
!5669 = !DILocation(line: 3299, column: 19, scope: !5667)
!5670 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !5671)
!5671 = distinct !DILocation(line: 3301, column: 17, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5673, file: !1, line: 3300, column: 17)
!5673 = distinct !DILexicalBlock(scope: !5666, file: !1, line: 3299, column: 35)
!5674 = !DILocation(line: 3303, column: 15, scope: !5673)
!5675 = !DILocation(line: 3306, column: 13, scope: !5667)
!5676 = !DILocation(line: 3307, column: 19, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5678, file: !1, line: 3307, column: 19)
!5678 = distinct !DILexicalBlock(scope: !5661, file: !1, line: 3306, column: 20)
!5679 = !DILocation(line: 3307, column: 24, scope: !5677)
!5680 = !DILocation(line: 3307, column: 21, scope: !5677)
!5681 = !DILocation(line: 3307, column: 19, scope: !5678)
!5682 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !5683)
!5683 = distinct !DILocation(line: 3309, column: 17, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5685, file: !1, line: 3308, column: 17)
!5685 = distinct !DILexicalBlock(scope: !5677, file: !1, line: 3307, column: 28)
!5686 = !DILocation(line: 3311, column: 15, scope: !5685)
!5687 = !DILocation(line: 3312, column: 21, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5689, file: !1, line: 3312, column: 21)
!5689 = distinct !DILexicalBlock(scope: !5677, file: !1, line: 3311, column: 22)
!5690 = !DILocation(line: 3312, column: 42, scope: !5688)
!5691 = !DILocation(line: 3312, column: 31, scope: !5688)
!5692 = !DILocation(line: 3312, column: 28, scope: !5688)
!5693 = !DILocation(line: 3312, column: 21, scope: !5689)
!5694 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !5695)
!5695 = distinct !DILocation(line: 3314, column: 19, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5697, file: !1, line: 3313, column: 19)
!5697 = distinct !DILexicalBlock(scope: !5688, file: !1, line: 3312, column: 61)
!5698 = !DILocation(line: 3316, column: 17, scope: !5697)
!5699 = !DILocation(line: 3326, column: 11, scope: !5336)
!5700 = !DILocation(line: 3326, column: 10, scope: !5336)
!5701 = !DILocation(line: 3326, column: 3, scope: !5336)
!5702 = !DILocation(line: 3328, column: 1, scope: !1511)
!5703 = !DILocation(line: 3330, column: 18, scope: !1514)
!5704 = !DILocation(line: 3331, column: 7, scope: !1514)
!5705 = !DILocation(line: 3331, column: 28, scope: !1514)
!5706 = !DILocation(line: 3334, column: 7, scope: !2038)
!5707 = !DILocation(line: 3334, column: 7, scope: !2039)
!5708 = !DILocation(line: 3335, column: 5, scope: !2042)
!5709 = !DILocation(line: 3337, column: 5, scope: !2044)
!5710 = !DILocation(line: 3340, column: 1, scope: !1514)
!5711 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "FastMutex", arg: 1, scope: !1517, file: !1, line: 3342, type: !1520)
!5712 = !DILocation(line: 3342, column: 37, scope: !1517)
!5713 = !DILocation(line: 3346, column: 3, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 3345, column: 3)
!5715 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "FastMutex", arg: 1, scope: !1530, file: !1, line: 3350, type: !1520)
!5716 = !DILocation(line: 3350, column: 37, scope: !1530)
!5717 = !DILocation(line: 3354, column: 3, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !1530, file: !1, line: 3353, column: 3)
!5719 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "P", arg: 1, scope: !1536, file: !1, line: 3374, type: !289)
!5720 = !DILocation(line: 3374, column: 23, scope: !1536)
!5721 = !DILocation(line: 3378, column: 3, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !1536, file: !1, line: 3377, column: 3)
!5723 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ListHead", arg: 1, scope: !1537, file: !1, line: 3384, type: !1540)
!5724 = !DILocation(line: 3384, column: 54, scope: !1537)
!5725 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ListEntry", arg: 2, scope: !1537, file: !1, line: 3385, type: !1540)
!5726 = !DILocation(line: 3385, column: 87, scope: !1537)
!5727 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Lock", arg: 3, scope: !1537, file: !1, line: 3386, type: !1541)
!5728 = !DILocation(line: 3386, column: 87, scope: !1537)
!5729 = !DILocation(line: 3390, column: 3, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !1537, file: !1, line: 3389, column: 3)
!5731 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ListHead", arg: 1, scope: !1543, file: !1, line: 3396, type: !1540)
!5732 = !DILocation(line: 3396, column: 54, scope: !1543)
!5733 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ListEntry", arg: 2, scope: !1543, file: !1, line: 3397, type: !1540)
!5734 = !DILocation(line: 3397, column: 87, scope: !1543)
!5735 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Lock", arg: 3, scope: !1543, file: !1, line: 3398, type: !1541)
!5736 = !DILocation(line: 3398, column: 87, scope: !1543)
!5737 = !DILocation(line: 3402, column: 3, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !1543, file: !1, line: 3401, column: 3)
!5739 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ListHead", arg: 1, scope: !1544, file: !1, line: 3407, type: !1540)
!5740 = !DILocation(line: 3407, column: 54, scope: !1544)
!5741 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Lock", arg: 2, scope: !1544, file: !1, line: 3408, type: !1541)
!5742 = !DILocation(line: 3408, column: 87, scope: !1544)
!5743 = !DILocation(line: 3412, column: 3, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !1544, file: !1, line: 3411, column: 3)
!5745 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "VirtualAddress", arg: 1, scope: !1547, file: !1, line: 3418, type: !289)
!5746 = !DILocation(line: 3418, column: 26, scope: !1547)
!5747 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Length", arg: 2, scope: !1547, file: !1, line: 3418, type: !286)
!5748 = !DILocation(line: 3418, column: 49, scope: !1547)
!5749 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SecondaryBuffer", arg: 3, scope: !1547, file: !1, line: 3418, type: !329)
!5750 = !DILocation(line: 3418, column: 66, scope: !1547)
!5751 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ChargeQuota", arg: 4, scope: !1547, file: !1, line: 3419, type: !329)
!5752 = !DILocation(line: 3419, column: 28, scope: !1547)
!5753 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 5, scope: !1547, file: !1, line: 3419, type: !1201)
!5754 = !DILocation(line: 3419, column: 47, scope: !1547)
!5755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1547, file: !1, line: 3420, type: !1422)
!5756 = !DILocation(line: 3420, column: 7, scope: !1547)
!5757 = !DILocation(line: 3420, column: 28, scope: !1547)
!5758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1547, file: !1, line: 3421, type: !1458)
!5759 = !DILocation(line: 3421, column: 9, scope: !1547)
!5760 = !DILocation(line: 3424, column: 7, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5762, file: !1, line: 3424, column: 7)
!5762 = distinct !DILexicalBlock(scope: !1547, file: !1, line: 3423, column: 3)
!5763 = !DILocation(line: 3424, column: 26, scope: !5761)
!5764 = !DILocation(line: 3330, column: 18, scope: !1514, inlinedAt: !5765)
!5765 = distinct !DILocation(line: 3432, column: 13, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5767, file: !1, line: 3431, column: 7)
!5767 = distinct !DILexicalBlock(scope: !5768, file: !1, line: 3429, column: 12)
!5768 = distinct !DILexicalBlock(scope: !5769, file: !1, line: 3429, column: 9)
!5769 = distinct !DILexicalBlock(scope: !5770, file: !1, line: 3427, column: 5)
!5770 = distinct !DILexicalBlock(scope: !5761, file: !1, line: 3426, column: 10)
!5771 = !DILocation(line: 3331, column: 7, scope: !1514, inlinedAt: !5765)
!5772 = !DILocation(line: 3424, column: 7, scope: !5762)
!5773 = !DILocation(line: 3425, column: 5, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !5761, file: !1, line: 3424, column: 32)
!5775 = !DILocation(line: 3428, column: 5, scope: !5769)
!5776 = !DILocation(line: 3429, column: 9, scope: !5769)
!5777 = !DILocation(line: 3429, column: 12, scope: !5768)
!5778 = !DILocation(line: 3432, column: 13, scope: !5766)
!5779 = !DILocation(line: 3331, column: 28, scope: !1514, inlinedAt: !5765)
!5780 = !DILocation(line: 3334, column: 7, scope: !2038, inlinedAt: !5765)
!5781 = !DILocation(line: 3334, column: 7, scope: !2039, inlinedAt: !5765)
!5782 = !DILocation(line: 3335, column: 5, scope: !2042, inlinedAt: !5765)
!5783 = !DILocation(line: 3337, column: 5, scope: !2044, inlinedAt: !5765)
!5784 = !DILocation(line: 3340, column: 1, scope: !1514, inlinedAt: !5765)
!5785 = !DILocation(line: 3432, column: 11, scope: !5766)
!5786 = !DILocation(line: 3434, column: 23, scope: !5767)
!5787 = !DILocation(line: 3434, column: 14, scope: !5767)
!5788 = !DILocation(line: 3434, column: 7, scope: !5767)
!5789 = !DILocation(line: 3436, column: 7, scope: !5767)
!5790 = !DILocation(line: 3437, column: 12, scope: !5768)
!5791 = !DILocation(line: 3443, column: 1, scope: !1547)
!5792 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "MajorFunction", arg: 1, scope: !1553, file: !1, line: 3473, type: !286)
!5793 = !DILocation(line: 3473, column: 42, scope: !1553)
!5794 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 2, scope: !1553, file: !1, line: 3473, type: !265)
!5795 = !DILocation(line: 3473, column: 73, scope: !1553)
!5796 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Buffer", arg: 3, scope: !1553, file: !1, line: 3474, type: !289)
!5797 = !DILocation(line: 3474, column: 42, scope: !1553)
!5798 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Length", arg: 4, scope: !1553, file: !1, line: 3474, type: !286)
!5799 = !DILocation(line: 3474, column: 57, scope: !1553)
!5800 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "StartingOffset", arg: 5, scope: !1553, file: !1, line: 3474, type: !427)
!5801 = !DILocation(line: 3474, column: 81, scope: !1553)
!5802 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IoStatusBlock", arg: 6, scope: !1553, file: !1, line: 3475, type: !429)
!5803 = !DILocation(line: 3475, column: 53, scope: !1553)
!5804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1553, file: !1, line: 3476, type: !1422)
!5805 = !DILocation(line: 3476, column: 7, scope: !1553)
!5806 = !DILocation(line: 3476, column: 28, scope: !1553)
!5807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1553, file: !1, line: 3477, type: !1458)
!5808 = !DILocation(line: 3477, column: 9, scope: !1553)
!5809 = !DILocation(line: 3480, column: 13, scope: !5810)
!5810 = distinct !DILexicalBlock(scope: !1553, file: !1, line: 3479, column: 3)
!5811 = !DILocation(line: 3481, column: 7, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5810, file: !1, line: 3481, column: 7)
!5813 = !DILocation(line: 3481, column: 26, scope: !5812)
!5814 = !DILocation(line: 3330, column: 18, scope: !1514, inlinedAt: !5815)
!5815 = distinct !DILocation(line: 3489, column: 13, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5817, file: !1, line: 3488, column: 7)
!5817 = distinct !DILexicalBlock(scope: !5818, file: !1, line: 3486, column: 12)
!5818 = distinct !DILexicalBlock(scope: !5819, file: !1, line: 3486, column: 9)
!5819 = distinct !DILexicalBlock(scope: !5820, file: !1, line: 3484, column: 5)
!5820 = distinct !DILexicalBlock(scope: !5812, file: !1, line: 3483, column: 10)
!5821 = !DILocation(line: 3331, column: 7, scope: !1514, inlinedAt: !5815)
!5822 = !DILocation(line: 3481, column: 7, scope: !5810)
!5823 = !DILocation(line: 3482, column: 5, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5812, file: !1, line: 3481, column: 32)
!5825 = !DILocation(line: 3485, column: 5, scope: !5819)
!5826 = !DILocation(line: 3486, column: 9, scope: !5819)
!5827 = !DILocation(line: 3486, column: 12, scope: !5818)
!5828 = !DILocation(line: 3489, column: 13, scope: !5816)
!5829 = !DILocation(line: 3331, column: 28, scope: !1514, inlinedAt: !5815)
!5830 = !DILocation(line: 3334, column: 7, scope: !2038, inlinedAt: !5815)
!5831 = !DILocation(line: 3334, column: 7, scope: !2039, inlinedAt: !5815)
!5832 = !DILocation(line: 3335, column: 5, scope: !2042, inlinedAt: !5815)
!5833 = !DILocation(line: 3337, column: 5, scope: !2044, inlinedAt: !5815)
!5834 = !DILocation(line: 3340, column: 1, scope: !1514, inlinedAt: !5815)
!5835 = !DILocation(line: 3489, column: 11, scope: !5816)
!5836 = !DILocation(line: 3491, column: 23, scope: !5817)
!5837 = !DILocation(line: 3491, column: 14, scope: !5817)
!5838 = !DILocation(line: 3491, column: 7, scope: !5817)
!5839 = !DILocation(line: 3493, column: 7, scope: !5817)
!5840 = !DILocation(line: 3494, column: 12, scope: !5818)
!5841 = !DILocation(line: 3500, column: 1, scope: !1553)
!5842 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 1, scope: !1562, file: !1, line: 3574, type: !317)
!5843 = !DILocation(line: 3574, column: 47, scope: !1562)
!5844 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceName", arg: 2, scope: !1562, file: !1, line: 3574, type: !317)
!5845 = !DILocation(line: 3574, column: 82, scope: !1562)
!5846 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1562, file: !1, line: 3575, type: !1422)
!5847 = !DILocation(line: 3575, column: 7, scope: !1562)
!5848 = !DILocation(line: 3575, column: 28, scope: !1562)
!5849 = !DILocation(line: 3578, column: 7, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5851, file: !1, line: 3578, column: 7)
!5851 = distinct !DILexicalBlock(scope: !1562, file: !1, line: 3577, column: 3)
!5852 = !DILocation(line: 3578, column: 26, scope: !5850)
!5853 = !DILocation(line: 3578, column: 7, scope: !5851)
!5854 = !DILocation(line: 3579, column: 5, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5850, file: !1, line: 3578, column: 32)
!5856 = !DILocation(line: 3582, column: 5, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5858, file: !1, line: 3581, column: 5)
!5858 = distinct !DILexicalBlock(scope: !5850, file: !1, line: 3580, column: 10)
!5859 = !DILocation(line: 3583, column: 9, scope: !5857)
!5860 = !DILocation(line: 3583, column: 12, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5857, file: !1, line: 3583, column: 9)
!5862 = !DILocation(line: 3585, column: 7, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5861, file: !1, line: 3583, column: 12)
!5864 = !DILocation(line: 3587, column: 7, scope: !5863)
!5865 = !DILocation(line: 3588, column: 12, scope: !5861)
!5866 = !DILocation(line: 3594, column: 1, scope: !1562)
!5867 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 1, scope: !1565, file: !1, line: 3596, type: !265)
!5868 = !DILocation(line: 3596, column: 36, scope: !1565)
!5869 = !DILocation(line: 3600, column: 3, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !1565, file: !1, line: 3599, column: 3)
!5871 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 1, scope: !1568, file: !1, line: 3604, type: !317)
!5872 = !DILocation(line: 3604, column: 47, scope: !1568)
!5873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1568, file: !1, line: 3605, type: !1422)
!5874 = !DILocation(line: 3605, column: 7, scope: !1568)
!5875 = !DILocation(line: 3605, column: 28, scope: !1568)
!5876 = !DILocation(line: 3608, column: 7, scope: !5877)
!5877 = distinct !DILexicalBlock(scope: !5878, file: !1, line: 3608, column: 7)
!5878 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 3607, column: 3)
!5879 = !DILocation(line: 3608, column: 26, scope: !5877)
!5880 = !DILocation(line: 3608, column: 7, scope: !5878)
!5881 = !DILocation(line: 3609, column: 5, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5877, file: !1, line: 3608, column: 32)
!5883 = !DILocation(line: 3612, column: 5, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5885, file: !1, line: 3611, column: 5)
!5885 = distinct !DILexicalBlock(scope: !5877, file: !1, line: 3610, column: 10)
!5886 = !DILocation(line: 3613, column: 9, scope: !5884)
!5887 = !DILocation(line: 3613, column: 12, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5884, file: !1, line: 3613, column: 9)
!5889 = !DILocation(line: 3615, column: 7, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5888, file: !1, line: 3613, column: 12)
!5891 = !DILocation(line: 3617, column: 7, scope: !5890)
!5892 = !DILocation(line: 3618, column: 12, scope: !5888)
!5893 = !DILocation(line: 3624, column: 1, scope: !1568)
!5894 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "TargetDevice", arg: 1, scope: !1571, file: !1, line: 3626, type: !265)
!5895 = !DILocation(line: 3626, column: 36, scope: !1571)
!5896 = !DILocation(line: 3630, column: 3, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 3629, column: 3)
!5898 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !1572, file: !1, line: 3634, type: !1201)
!5899 = !DILocation(line: 3634, column: 21, scope: !1572)
!5900 = !DILocation(line: 3638, column: 3, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !1572, file: !1, line: 3637, column: 3)
!5902 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Mdl", arg: 1, scope: !1575, file: !1, line: 3642, type: !571)
!5903 = !DILocation(line: 3642, column: 21, scope: !1575)
!5904 = !DILocation(line: 3646, column: 3, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 3645, column: 3)
!5906 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1578, file: !1, line: 3651, type: !1458)
!5907 = !DILocation(line: 3651, column: 9, scope: !1578)
!5908 = !DILocation(line: 3655, column: 9, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5910, file: !1, line: 3654, column: 3)
!5910 = distinct !DILexicalBlock(scope: !1578, file: !1, line: 3653, column: 3)
!5911 = !DILocation(line: 3331, column: 28, scope: !1514, inlinedAt: !5912)
!5912 = distinct !DILocation(line: 3655, column: 9, scope: !5909)
!5913 = !DILocation(line: 3331, column: 7, scope: !1514, inlinedAt: !5912)
!5914 = !DILocation(line: 3334, column: 7, scope: !2038, inlinedAt: !5912)
!5915 = !DILocation(line: 3334, column: 7, scope: !2039, inlinedAt: !5912)
!5916 = !DILocation(line: 3335, column: 5, scope: !2042, inlinedAt: !5912)
!5917 = !DILocation(line: 3337, column: 5, scope: !2044, inlinedAt: !5912)
!5918 = !DILocation(line: 3340, column: 1, scope: !1514, inlinedAt: !5912)
!5919 = !DILocation(line: 3655, column: 7, scope: !5909)
!5920 = !DILocation(line: 3657, column: 19, scope: !5910)
!5921 = !DILocation(line: 3657, column: 10, scope: !5910)
!5922 = !DILocation(line: 3330, column: 18, scope: !1514, inlinedAt: !5912)
!5923 = !DILocation(line: 3657, column: 3, scope: !5910)
!5924 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BusType", arg: 1, scope: !1596, file: !1, line: 3678, type: !1599)
!5925 = !DILocation(line: 3678, column: 51, scope: !1596)
!5926 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BusNumber", arg: 2, scope: !1596, file: !1, line: 3678, type: !1392)
!5927 = !DILocation(line: 3678, column: 68, scope: !1596)
!5928 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ControllerType", arg: 3, scope: !1596, file: !1, line: 3678, type: !1601)
!5929 = !DILocation(line: 3678, column: 100, scope: !1596)
!5930 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ControllerNumber", arg: 4, scope: !1596, file: !1, line: 3679, type: !1392)
!5931 = !DILocation(line: 3679, column: 42, scope: !1596)
!5932 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PeripheralType", arg: 5, scope: !1596, file: !1, line: 3679, type: !1601)
!5933 = !DILocation(line: 3679, column: 81, scope: !1596)
!5934 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PeripheralNumber", arg: 6, scope: !1596, file: !1, line: 3680, type: !1392)
!5935 = !DILocation(line: 3680, column: 42, scope: !1596)
!5936 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "CalloutRoutine", arg: 7, scope: !1596, file: !1, line: 3680, type: !1603)
!5937 = !DILocation(line: 3680, column: 72, scope: !1596)
!5938 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 8, scope: !1596, file: !1, line: 3691, type: !289)
!5939 = !DILocation(line: 3691, column: 41, scope: !1596)
!5940 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1596, file: !1, line: 3692, type: !1422)
!5941 = !DILocation(line: 3692, column: 7, scope: !1596)
!5942 = !DILocation(line: 3692, column: 28, scope: !1596)
!5943 = !DILocation(line: 3695, column: 7, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5945, file: !1, line: 3695, column: 7)
!5945 = distinct !DILexicalBlock(scope: !1596, file: !1, line: 3694, column: 3)
!5946 = !DILocation(line: 3695, column: 26, scope: !5944)
!5947 = !DILocation(line: 3695, column: 7, scope: !5945)
!5948 = !DILocation(line: 3696, column: 5, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5944, file: !1, line: 3695, column: 32)
!5950 = !DILocation(line: 3699, column: 5, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5952, file: !1, line: 3698, column: 5)
!5952 = distinct !DILexicalBlock(scope: !5944, file: !1, line: 3697, column: 10)
!5953 = !DILocation(line: 3700, column: 9, scope: !5951)
!5954 = !DILocation(line: 3700, column: 12, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5951, file: !1, line: 3700, column: 9)
!5956 = !DILocation(line: 3702, column: 7, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5955, file: !1, line: 3700, column: 12)
!5958 = !DILocation(line: 3704, column: 7, scope: !5957)
!5959 = !DILocation(line: 3705, column: 12, scope: !5955)
!5960 = !DILocation(line: 3711, column: 1, scope: !1596)
!5961 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PhysicalDeviceObject", arg: 1, scope: !1619, file: !1, line: 3716, type: !265)
!5962 = !DILocation(line: 3716, column: 51, scope: !1619)
!5963 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "InterfaceClassGuid", arg: 2, scope: !1619, file: !1, line: 3717, type: !874)
!5964 = !DILocation(line: 3717, column: 82, scope: !1619)
!5965 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ReferenceString", arg: 3, scope: !1619, file: !1, line: 3718, type: !317)
!5966 = !DILocation(line: 3718, column: 84, scope: !1619)
!5967 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 4, scope: !1619, file: !1, line: 3719, type: !317)
!5968 = !DILocation(line: 3719, column: 84, scope: !1619)
!5969 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1619, file: !1, line: 3720, type: !1422)
!5970 = !DILocation(line: 3720, column: 7, scope: !1619)
!5971 = !DILocation(line: 3720, column: 28, scope: !1619)
!5972 = !DILocation(line: 3723, column: 7, scope: !5973)
!5973 = distinct !DILexicalBlock(scope: !5974, file: !1, line: 3723, column: 7)
!5974 = distinct !DILexicalBlock(scope: !1619, file: !1, line: 3722, column: 3)
!5975 = !DILocation(line: 3723, column: 26, scope: !5973)
!5976 = !DILocation(line: 3723, column: 7, scope: !5974)
!5977 = !DILocation(line: 3724, column: 5, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5973, file: !1, line: 3723, column: 32)
!5979 = !DILocation(line: 3727, column: 5, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5981, file: !1, line: 3726, column: 5)
!5981 = distinct !DILexicalBlock(scope: !5973, file: !1, line: 3725, column: 10)
!5982 = !DILocation(line: 3728, column: 9, scope: !5980)
!5983 = !DILocation(line: 3728, column: 12, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !5980, file: !1, line: 3728, column: 9)
!5985 = !DILocation(line: 3730, column: 7, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5984, file: !1, line: 3728, column: 12)
!5987 = !DILocation(line: 3732, column: 7, scope: !5986)
!5988 = !DILocation(line: 3733, column: 12, scope: !5984)
!5989 = !DILocation(line: 3739, column: 1, scope: !1619)
!5990 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irql", arg: 1, scope: !1622, file: !1, line: 3741, type: !631)
!5991 = !DILocation(line: 3741, column: 36, scope: !1622)
!5992 = !DILocation(line: 3745, column: 3, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !1622, file: !1, line: 3744, column: 3)
!5994 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SymbolicLinkName", arg: 1, scope: !1625, file: !1, line: 3750, type: !317)
!5995 = !DILocation(line: 3750, column: 52, scope: !1625)
!5996 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Enable", arg: 2, scope: !1625, file: !1, line: 3750, type: !329)
!5997 = !DILocation(line: 3750, column: 79, scope: !1625)
!5998 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1625, file: !1, line: 3751, type: !1422)
!5999 = !DILocation(line: 3751, column: 7, scope: !1625)
!6000 = !DILocation(line: 3751, column: 28, scope: !1625)
!6001 = !DILocation(line: 3754, column: 7, scope: !6002)
!6002 = distinct !DILexicalBlock(scope: !6003, file: !1, line: 3754, column: 7)
!6003 = distinct !DILexicalBlock(scope: !1625, file: !1, line: 3753, column: 3)
!6004 = !DILocation(line: 3754, column: 26, scope: !6002)
!6005 = !DILocation(line: 3754, column: 7, scope: !6003)
!6006 = !DILocation(line: 3755, column: 5, scope: !6007)
!6007 = distinct !DILexicalBlock(scope: !6002, file: !1, line: 3754, column: 32)
!6008 = !DILocation(line: 3758, column: 5, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !6010, file: !1, line: 3757, column: 5)
!6010 = distinct !DILexicalBlock(scope: !6002, file: !1, line: 3756, column: 10)
!6011 = !DILocation(line: 3759, column: 9, scope: !6009)
!6012 = !DILocation(line: 3759, column: 12, scope: !6013)
!6013 = distinct !DILexicalBlock(scope: !6009, file: !1, line: 3759, column: 9)
!6014 = !DILocation(line: 3761, column: 7, scope: !6015)
!6015 = distinct !DILexicalBlock(scope: !6013, file: !1, line: 3759, column: 12)
!6016 = !DILocation(line: 3763, column: 7, scope: !6015)
!6017 = !DILocation(line: 3764, column: 12, scope: !6013)
!6018 = !DILocation(line: 3770, column: 1, scope: !1625)
!6019 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !1628, file: !1, line: 3772, type: !1201)
!6020 = !DILocation(line: 3772, column: 40, scope: !1628)
!6021 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 2, scope: !1628, file: !1, line: 3772, type: !265)
!6022 = !DILocation(line: 3772, column: 61, scope: !1628)
!6023 = !DILocation(line: 3776, column: 3, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !1628, file: !1, line: 3775, column: 3)
!6025 = !DILocation(line: 3783, column: 7, scope: !4637)
!6026 = !DILocation(line: 3783, column: 12, scope: !4637)
!6027 = !DILocation(line: 3783, column: 9, scope: !4637)
!6028 = !DILocation(line: 3783, column: 7, scope: !4638)
!6029 = !DILocation(line: 3784, column: 9, scope: !4650)
!6030 = !DILocation(line: 3784, column: 7, scope: !4650)
!6031 = !DILocation(line: 3785, column: 3, scope: !4650)
!6032 = !DILocation(line: 1976, column: 10, scope: !1988, inlinedAt: !6033)
!6033 = distinct !DILocation(line: 3787, column: 5, scope: !4647)
!6034 = !DILocation(line: 3790, column: 3, scope: !4638)
!6035 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SpinLock", arg: 1, scope: !1636, file: !1, line: 3894, type: !1541)
!6036 = !DILocation(line: 3894, column: 47, scope: !1636)
!6037 = !DILocation(line: 3898, column: 3, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !1636, file: !1, line: 3897, column: 3)
!6039 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WaitMode", arg: 1, scope: !1639, file: !1, line: 3904, type: !622)
!6040 = !DILocation(line: 3904, column: 49, scope: !1639)
!6041 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Alertable", arg: 2, scope: !1639, file: !1, line: 3904, type: !329)
!6042 = !DILocation(line: 3904, column: 68, scope: !1639)
!6043 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Interval", arg: 3, scope: !1639, file: !1, line: 3904, type: !427)
!6044 = !DILocation(line: 3904, column: 95, scope: !1639)
!6045 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1639, file: !1, line: 3905, type: !1422)
!6046 = !DILocation(line: 3905, column: 7, scope: !1639)
!6047 = !DILocation(line: 3905, column: 28, scope: !1639)
!6048 = !DILocation(line: 3908, column: 7, scope: !6049)
!6049 = distinct !DILexicalBlock(scope: !6050, file: !1, line: 3908, column: 7)
!6050 = distinct !DILexicalBlock(scope: !1639, file: !1, line: 3907, column: 3)
!6051 = !DILocation(line: 3908, column: 26, scope: !6049)
!6052 = !DILocation(line: 3908, column: 7, scope: !6050)
!6053 = !DILocation(line: 3909, column: 5, scope: !6054)
!6054 = distinct !DILexicalBlock(scope: !6049, file: !1, line: 3908, column: 32)
!6055 = !DILocation(line: 3912, column: 5, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6057, file: !1, line: 3911, column: 5)
!6057 = distinct !DILexicalBlock(scope: !6049, file: !1, line: 3910, column: 10)
!6058 = !DILocation(line: 3913, column: 9, scope: !6056)
!6059 = !DILocation(line: 3913, column: 12, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6056, file: !1, line: 3913, column: 9)
!6061 = !DILocation(line: 3915, column: 7, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !6060, file: !1, line: 3913, column: 12)
!6063 = !DILocation(line: 3917, column: 7, scope: !6062)
!6064 = !DILocation(line: 3918, column: 12, scope: !6060)
!6065 = !DILocation(line: 3924, column: 1, scope: !1639)
!6066 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Event", arg: 1, scope: !1642, file: !1, line: 3927, type: !1645)
!6067 = !DILocation(line: 3927, column: 33, scope: !1642)
!6068 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Type", arg: 2, scope: !1642, file: !1, line: 3927, type: !1646)
!6069 = !DILocation(line: 3927, column: 52, scope: !1642)
!6070 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "State", arg: 3, scope: !1642, file: !1, line: 3927, type: !329)
!6071 = !DILocation(line: 3927, column: 67, scope: !1642)
!6072 = !DILocation(line: 3931, column: 3, scope: !6073)
!6073 = distinct !DILexicalBlock(scope: !1642, file: !1, line: 3930, column: 3)
!6074 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Semaphore", arg: 1, scope: !1647, file: !1, line: 3936, type: !1650)
!6075 = !DILocation(line: 3936, column: 41, scope: !1647)
!6076 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Count", arg: 2, scope: !1647, file: !1, line: 3936, type: !276)
!6077 = !DILocation(line: 3936, column: 58, scope: !1647)
!6078 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Limit", arg: 3, scope: !1647, file: !1, line: 3936, type: !276)
!6079 = !DILocation(line: 3936, column: 71, scope: !1647)
!6080 = !DILocation(line: 3940, column: 3, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !1647, file: !1, line: 3939, column: 3)
!6082 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SpinLock", arg: 1, scope: !1651, file: !1, line: 3944, type: !1541)
!6083 = !DILocation(line: 3944, column: 39, scope: !1651)
!6084 = !DILocation(line: 3948, column: 3, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !1651, file: !1, line: 3947, column: 3)
!6086 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Semaphore", arg: 1, scope: !1654, file: !1, line: 3953, type: !1650)
!6087 = !DILocation(line: 3953, column: 38, scope: !1654)
!6088 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Increment", arg: 2, scope: !1654, file: !1, line: 3953, type: !1657)
!6089 = !DILocation(line: 3953, column: 60, scope: !1654)
!6090 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Adjustment", arg: 3, scope: !1654, file: !1, line: 3953, type: !276)
!6091 = !DILocation(line: 3953, column: 77, scope: !1654)
!6092 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Wait", arg: 4, scope: !1654, file: !1, line: 3954, type: !329)
!6093 = !DILocation(line: 3954, column: 33, scope: !1654)
!6094 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !1654, file: !1, line: 3955, type: !276)
!6095 = !DILocation(line: 3955, column: 8, scope: !1654)
!6096 = !DILocation(line: 3955, column: 12, scope: !1654)
!6097 = !DILocation(line: 3958, column: 11, scope: !6098)
!6098 = distinct !DILexicalBlock(scope: !1654, file: !1, line: 3957, column: 3)
!6099 = !DILocation(line: 3958, column: 3, scope: !6098)
!6100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SpinLock", arg: 1, scope: !1658, file: !1, line: 3963, type: !1541)
!6101 = !DILocation(line: 3963, column: 36, scope: !1658)
!6102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "NewIrql", arg: 2, scope: !1658, file: !1, line: 3963, type: !631)
!6103 = !DILocation(line: 3963, column: 53, scope: !1658)
!6104 = !DILocation(line: 3967, column: 3, scope: !6105)
!6105 = distinct !DILexicalBlock(scope: !1658, file: !1, line: 3966, column: 3)
!6106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "NumberOfBytes", arg: 1, scope: !1668, file: !1, line: 4030, type: !1535)
!6107 = !DILocation(line: 4030, column: 41, scope: !1668)
!6108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "HighestAcceptableAddress", arg: 2, scope: !1668, file: !1, line: 4030, type: !987)
!6109 = !DILocation(line: 4030, column: 74, scope: !1668)
!6110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1668, file: !1, line: 4031, type: !1422)
!6111 = !DILocation(line: 4031, column: 7, scope: !1668)
!6112 = !DILocation(line: 4031, column: 28, scope: !1668)
!6113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1668, file: !1, line: 4032, type: !1458)
!6114 = !DILocation(line: 4032, column: 9, scope: !1668)
!6115 = !DILocation(line: 4035, column: 7, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6117, file: !1, line: 4035, column: 7)
!6117 = distinct !DILexicalBlock(scope: !1668, file: !1, line: 4034, column: 3)
!6118 = !DILocation(line: 4035, column: 26, scope: !6116)
!6119 = !DILocation(line: 3330, column: 18, scope: !1514, inlinedAt: !6120)
!6120 = distinct !DILocation(line: 4044, column: 15, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6122, file: !1, line: 4043, column: 9)
!6122 = distinct !DILexicalBlock(scope: !6123, file: !1, line: 4041, column: 14)
!6123 = distinct !DILexicalBlock(scope: !6124, file: !1, line: 4041, column: 11)
!6124 = distinct !DILexicalBlock(scope: !6125, file: !1, line: 4040, column: 12)
!6125 = distinct !DILexicalBlock(scope: !6126, file: !1, line: 4038, column: 9)
!6126 = distinct !DILexicalBlock(scope: !6116, file: !1, line: 4037, column: 10)
!6127 = !DILocation(line: 3331, column: 7, scope: !1514, inlinedAt: !6120)
!6128 = !DILocation(line: 4035, column: 7, scope: !6117)
!6129 = !DILocation(line: 4036, column: 5, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6116, file: !1, line: 4035, column: 32)
!6131 = !DILocation(line: 4038, column: 9, scope: !6125)
!6132 = !DILocation(line: 4038, column: 28, scope: !6125)
!6133 = !DILocation(line: 4038, column: 9, scope: !6126)
!6134 = !DILocation(line: 4039, column: 7, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6125, file: !1, line: 4038, column: 34)
!6136 = !DILocation(line: 4041, column: 11, scope: !6124)
!6137 = !DILocation(line: 4041, column: 14, scope: !6123)
!6138 = !DILocation(line: 4044, column: 22, scope: !6121)
!6139 = !DILocation(line: 4044, column: 15, scope: !6121)
!6140 = !DILocation(line: 3331, column: 28, scope: !1514, inlinedAt: !6120)
!6141 = !DILocation(line: 3334, column: 7, scope: !2038, inlinedAt: !6120)
!6142 = !DILocation(line: 3334, column: 7, scope: !2039, inlinedAt: !6120)
!6143 = !DILocation(line: 3335, column: 5, scope: !2042, inlinedAt: !6120)
!6144 = !DILocation(line: 3337, column: 5, scope: !2044, inlinedAt: !6120)
!6145 = !DILocation(line: 3340, column: 1, scope: !1514, inlinedAt: !6120)
!6146 = !DILocation(line: 4044, column: 13, scope: !6121)
!6147 = !DILocation(line: 4046, column: 17, scope: !6122)
!6148 = !DILocation(line: 4046, column: 9, scope: !6122)
!6149 = !DILocation(line: 4048, column: 9, scope: !6122)
!6150 = !DILocation(line: 4049, column: 14, scope: !6123)
!6151 = !DILocation(line: 4054, column: 3, scope: !6117)
!6152 = !DILocation(line: 4056, column: 1, scope: !1668)
!6153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BaseAddress", arg: 1, scope: !1671, file: !1, line: 4058, type: !289)
!6154 = !DILocation(line: 4058, column: 35, scope: !1671)
!6155 = !DILocation(line: 4062, column: 3, scope: !6156)
!6156 = distinct !DILexicalBlock(scope: !1671, file: !1, line: 4061, column: 3)
!6157 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "MemoryDescriptorList", arg: 1, scope: !1672, file: !1, line: 4071, type: !571)
!6158 = !DILocation(line: 4071, column: 41, scope: !1672)
!6159 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "AccessMode", arg: 2, scope: !1672, file: !1, line: 4071, type: !622)
!6160 = !DILocation(line: 4071, column: 80, scope: !1672)
!6161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "CacheType", arg: 3, scope: !1672, file: !1, line: 4072, type: !1675)
!6162 = !DILocation(line: 4072, column: 56, scope: !1672)
!6163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BaseAddress", arg: 4, scope: !1672, file: !1, line: 4072, type: !289)
!6164 = !DILocation(line: 4072, column: 74, scope: !1672)
!6165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BugCheckOnFailure", arg: 5, scope: !1672, file: !1, line: 4073, type: !286)
!6166 = !DILocation(line: 4073, column: 42, scope: !1672)
!6167 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Priority", arg: 6, scope: !1672, file: !1, line: 4073, type: !1676)
!6168 = !DILocation(line: 4073, column: 79, scope: !1672)
!6169 = !DILocation(line: 4077, column: 3, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !1672, file: !1, line: 4076, column: 3)
!6171 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "AddressWithinSection", arg: 1, scope: !1677, file: !1, line: 4081, type: !289)
!6172 = !DILocation(line: 4081, column: 32, scope: !1677)
!6173 = !DILocation(line: 4085, column: 3, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !1677, file: !1, line: 4084, column: 3)
!6175 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "AddressWithinSection", arg: 1, scope: !1680, file: !1, line: 4089, type: !289)
!6176 = !DILocation(line: 4089, column: 32, scope: !1680)
!6177 = !DILocation(line: 4093, column: 3, scope: !6178)
!6178 = distinct !DILexicalBlock(scope: !1680, file: !1, line: 4092, column: 3)
!6179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "MemoryDescriptorList", arg: 1, scope: !1681, file: !1, line: 4097, type: !571)
!6180 = !DILocation(line: 4097, column: 25, scope: !1681)
!6181 = !DILocation(line: 4101, column: 3, scope: !6182)
!6182 = distinct !DILexicalBlock(scope: !1681, file: !1, line: 4100, column: 3)
!6183 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Handle", arg: 1, scope: !1682, file: !1, line: 4110, type: !824)
!6184 = !DILocation(line: 4110, column: 43, scope: !1682)
!6185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DesiredAccess", arg: 2, scope: !1682, file: !1, line: 4110, type: !737)
!6186 = !DILocation(line: 4110, column: 64, scope: !1682)
!6187 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ObjectType", arg: 3, scope: !1682, file: !1, line: 4110, type: !1685)
!6188 = !DILocation(line: 4110, column: 93, scope: !1682)
!6189 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "AccessMode", arg: 4, scope: !1682, file: !1, line: 4111, type: !622)
!6190 = !DILocation(line: 4111, column: 52, scope: !1682)
!6191 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 5, scope: !1682, file: !1, line: 4111, type: !1226)
!6192 = !DILocation(line: 4111, column: 72, scope: !1682)
!6193 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "HandleInformation", arg: 6, scope: !1682, file: !1, line: 4111, type: !1688)
!6194 = !DILocation(line: 4111, column: 108, scope: !1682)
!6195 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1682, file: !1, line: 4112, type: !1422)
!6196 = !DILocation(line: 4112, column: 7, scope: !1682)
!6197 = !DILocation(line: 4112, column: 28, scope: !1682)
!6198 = !DILocation(line: 4115, column: 7, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6200, file: !1, line: 4115, column: 7)
!6200 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 4114, column: 3)
!6201 = !DILocation(line: 4115, column: 26, scope: !6199)
!6202 = !DILocation(line: 4115, column: 7, scope: !6200)
!6203 = !DILocation(line: 4116, column: 5, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6199, file: !1, line: 4115, column: 32)
!6205 = !DILocation(line: 4119, column: 5, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6207, file: !1, line: 4118, column: 5)
!6207 = distinct !DILexicalBlock(scope: !6199, file: !1, line: 4117, column: 10)
!6208 = !DILocation(line: 4120, column: 9, scope: !6206)
!6209 = !DILocation(line: 4120, column: 12, scope: !6210)
!6210 = distinct !DILexicalBlock(scope: !6206, file: !1, line: 4120, column: 9)
!6211 = !DILocation(line: 4122, column: 7, scope: !6212)
!6212 = distinct !DILexicalBlock(scope: !6210, file: !1, line: 4120, column: 12)
!6213 = !DILocation(line: 4124, column: 7, scope: !6212)
!6214 = !DILocation(line: 4125, column: 12, scope: !6210)
!6215 = !DILocation(line: 4131, column: 1, scope: !1682)
!6216 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Object", arg: 1, scope: !1694, file: !1, line: 4133, type: !289)
!6217 = !DILocation(line: 4133, column: 33, scope: !1694)
!6218 = !DILocation(line: 4137, column: 3, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !1694, file: !1, line: 4136, column: 3)
!6220 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 1, scope: !1696, file: !1, line: 4228, type: !1201)
!6221 = !DILocation(line: 4228, column: 31, scope: !1696)
!6222 = !DILocation(line: 4232, column: 3, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !1696, file: !1, line: 4231, column: 3)
!6224 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ThreadHandle", arg: 1, scope: !1697, file: !1, line: 4242, type: !1700)
!6225 = !DILocation(line: 4242, column: 39, scope: !1697)
!6226 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DesiredAccess", arg: 2, scope: !1697, file: !1, line: 4242, type: !286)
!6227 = !DILocation(line: 4242, column: 60, scope: !1697)
!6228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ObjectAttributes", arg: 3, scope: !1697, file: !1, line: 4242, type: !1702)
!6229 = !DILocation(line: 4242, column: 95, scope: !1697)
!6230 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ProcessHandle", arg: 4, scope: !1697, file: !1, line: 4243, type: !824)
!6231 = !DILocation(line: 4243, column: 38, scope: !1697)
!6232 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ClientId", arg: 5, scope: !1697, file: !1, line: 4243, type: !1713)
!6233 = !DILocation(line: 4243, column: 65, scope: !1697)
!6234 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "StartRoutine", arg: 6, scope: !1697, file: !1, line: 4243, type: !897)
!6235 = !DILocation(line: 4243, column: 83, scope: !1697)
!6236 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "StartContext", arg: 7, scope: !1697, file: !1, line: 4244, type: !289)
!6237 = !DILocation(line: 4244, column: 37, scope: !1697)
!6238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1697, file: !1, line: 4245, type: !1422)
!6239 = !DILocation(line: 4245, column: 7, scope: !1697)
!6240 = !DILocation(line: 4245, column: 28, scope: !1697)
!6241 = !DILocation(line: 4248, column: 7, scope: !6242)
!6242 = distinct !DILexicalBlock(scope: !6243, file: !1, line: 4248, column: 7)
!6243 = distinct !DILexicalBlock(scope: !1697, file: !1, line: 4247, column: 3)
!6244 = !DILocation(line: 4248, column: 26, scope: !6242)
!6245 = !DILocation(line: 4248, column: 7, scope: !6243)
!6246 = !DILocation(line: 4249, column: 5, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6242, file: !1, line: 4248, column: 32)
!6248 = !DILocation(line: 4252, column: 5, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6250, file: !1, line: 4251, column: 5)
!6250 = distinct !DILexicalBlock(scope: !6242, file: !1, line: 4250, column: 10)
!6251 = !DILocation(line: 4253, column: 9, scope: !6249)
!6252 = !DILocation(line: 4253, column: 12, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6249, file: !1, line: 4253, column: 9)
!6254 = !DILocation(line: 4255, column: 7, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6253, file: !1, line: 4253, column: 12)
!6256 = !DILocation(line: 4257, column: 7, scope: !6255)
!6257 = !DILocation(line: 4258, column: 12, scope: !6253)
!6258 = !DILocation(line: 4264, column: 1, scope: !1697)
!6259 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ExitStatus", arg: 1, scope: !1720, file: !1, line: 4266, type: !302)
!6260 = !DILocation(line: 4266, column: 43, scope: !1720)
!6261 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1720, file: !1, line: 4267, type: !1422)
!6262 = !DILocation(line: 4267, column: 7, scope: !1720)
!6263 = !DILocation(line: 4267, column: 28, scope: !1720)
!6264 = !DILocation(line: 4270, column: 7, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6266, file: !1, line: 4270, column: 7)
!6266 = distinct !DILexicalBlock(scope: !1720, file: !1, line: 4269, column: 3)
!6267 = !DILocation(line: 4270, column: 26, scope: !6265)
!6268 = !DILocation(line: 4270, column: 7, scope: !6266)
!6269 = !DILocation(line: 4271, column: 5, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6265, file: !1, line: 4270, column: 32)
!6271 = !DILocation(line: 4274, column: 5, scope: !6272)
!6272 = distinct !DILexicalBlock(scope: !6273, file: !1, line: 4273, column: 5)
!6273 = distinct !DILexicalBlock(scope: !6265, file: !1, line: 4272, column: 10)
!6274 = !DILocation(line: 4275, column: 9, scope: !6272)
!6275 = !DILocation(line: 4275, column: 12, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6272, file: !1, line: 4275, column: 9)
!6277 = !DILocation(line: 4277, column: 7, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6276, file: !1, line: 4275, column: 12)
!6279 = !DILocation(line: 4279, column: 7, scope: !6278)
!6280 = !DILocation(line: 4280, column: 12, scope: !6276)
!6281 = !DILocation(line: 4286, column: 1, scope: !1720)
!6282 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DestinationString", arg: 1, scope: !1723, file: !1, line: 4290, type: !317)
!6283 = !DILocation(line: 4290, column: 55, scope: !1723)
!6284 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SourceString", arg: 2, scope: !1723, file: !1, line: 4291, type: !1726)
!6285 = !DILocation(line: 4291, column: 84, scope: !1723)
!6286 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "AllocateDestinationString", arg: 3, scope: !1723, file: !1, line: 4292, type: !329)
!6287 = !DILocation(line: 4292, column: 79, scope: !1723)
!6288 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1723, file: !1, line: 4293, type: !1422)
!6289 = !DILocation(line: 4293, column: 7, scope: !1723)
!6290 = !DILocation(line: 4293, column: 28, scope: !1723)
!6291 = !DILocation(line: 4296, column: 7, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6293, file: !1, line: 4296, column: 7)
!6293 = distinct !DILexicalBlock(scope: !1723, file: !1, line: 4295, column: 3)
!6294 = !DILocation(line: 4296, column: 26, scope: !6292)
!6295 = !DILocation(line: 4296, column: 7, scope: !6293)
!6296 = !DILocation(line: 4297, column: 5, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6292, file: !1, line: 4296, column: 32)
!6298 = !DILocation(line: 4300, column: 5, scope: !6299)
!6299 = distinct !DILexicalBlock(scope: !6300, file: !1, line: 4299, column: 5)
!6300 = distinct !DILexicalBlock(scope: !6292, file: !1, line: 4298, column: 10)
!6301 = !DILocation(line: 4301, column: 9, scope: !6299)
!6302 = !DILocation(line: 4301, column: 12, scope: !6303)
!6303 = distinct !DILexicalBlock(scope: !6299, file: !1, line: 4301, column: 9)
!6304 = !DILocation(line: 4303, column: 7, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !6303, file: !1, line: 4301, column: 12)
!6306 = !DILocation(line: 4305, column: 7, scope: !6305)
!6307 = !DILocation(line: 4306, column: 12, scope: !6303)
!6308 = !DILocation(line: 4312, column: 1, scope: !1723)
!6309 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Source1", arg: 1, scope: !1735, file: !1, line: 4316, type: !1738)
!6310 = !DILocation(line: 4316, column: 39, scope: !1735)
!6311 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Source2", arg: 2, scope: !1735, file: !1, line: 4316, type: !1738)
!6312 = !DILocation(line: 4316, column: 63, scope: !1735)
!6313 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Length", arg: 3, scope: !1735, file: !1, line: 4317, type: !1535)
!6314 = !DILocation(line: 4317, column: 64, scope: !1735)
!6315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !1735, file: !1, line: 4318, type: !1535)
!6316 = !DILocation(line: 4318, column: 10, scope: !1735)
!6317 = !DILocation(line: 4318, column: 14, scope: !1735)
!6318 = !DILocation(line: 4321, column: 11, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !1735, file: !1, line: 4320, column: 3)
!6320 = !DILocation(line: 4321, column: 3, scope: !6319)
!6321 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DestinationString", arg: 1, scope: !1740, file: !1, line: 4326, type: !317)
!6322 = !DILocation(line: 4326, column: 43, scope: !1740)
!6323 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SourceString", arg: 2, scope: !1740, file: !1, line: 4327, type: !317)
!6324 = !DILocation(line: 4327, column: 75, scope: !1740)
!6325 = !DILocation(line: 4331, column: 3, scope: !6326)
!6326 = distinct !DILexicalBlock(scope: !1740, file: !1, line: 4330, column: 3)
!6327 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "RelativeTo", arg: 1, scope: !1743, file: !1, line: 4337, type: !286)
!6328 = !DILocation(line: 4337, column: 39, scope: !1743)
!6329 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Path", arg: 2, scope: !1743, file: !1, line: 4338, type: !1746)
!6330 = !DILocation(line: 4338, column: 72, scope: !1743)
!6331 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ValueName", arg: 3, scope: !1743, file: !1, line: 4338, type: !1746)
!6332 = !DILocation(line: 4338, column: 86, scope: !1743)
!6333 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1743, file: !1, line: 4339, type: !1422)
!6334 = !DILocation(line: 4339, column: 7, scope: !1743)
!6335 = !DILocation(line: 4339, column: 28, scope: !1743)
!6336 = !DILocation(line: 4342, column: 7, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6338, file: !1, line: 4342, column: 7)
!6338 = distinct !DILexicalBlock(scope: !1743, file: !1, line: 4341, column: 3)
!6339 = !DILocation(line: 4342, column: 26, scope: !6337)
!6340 = !DILocation(line: 4342, column: 7, scope: !6338)
!6341 = !DILocation(line: 4343, column: 5, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6337, file: !1, line: 4342, column: 32)
!6343 = !DILocation(line: 4346, column: 5, scope: !6344)
!6344 = distinct !DILexicalBlock(scope: !6345, file: !1, line: 4345, column: 5)
!6345 = distinct !DILexicalBlock(scope: !6337, file: !1, line: 4344, column: 10)
!6346 = !DILocation(line: 4347, column: 9, scope: !6344)
!6347 = !DILocation(line: 4347, column: 12, scope: !6348)
!6348 = distinct !DILexicalBlock(scope: !6344, file: !1, line: 4347, column: 9)
!6349 = !DILocation(line: 4349, column: 7, scope: !6350)
!6350 = distinct !DILexicalBlock(scope: !6348, file: !1, line: 4347, column: 12)
!6351 = !DILocation(line: 4351, column: 7, scope: !6350)
!6352 = !DILocation(line: 4352, column: 12, scope: !6348)
!6353 = !DILocation(line: 4358, column: 1, scope: !1743)
!6354 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "UnicodeString", arg: 1, scope: !1749, file: !1, line: 4360, type: !317)
!6355 = !DILocation(line: 4360, column: 43, scope: !1749)
!6356 = !DILocation(line: 4364, column: 3, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !1749, file: !1, line: 4363, column: 3)
!6358 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DestinationString", arg: 1, scope: !1752, file: !1, line: 4369, type: !1727)
!6359 = !DILocation(line: 4369, column: 28, scope: !1752)
!6360 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SourceString", arg: 2, scope: !1752, file: !1, line: 4369, type: !1755)
!6361 = !DILocation(line: 4369, column: 53, scope: !1752)
!6362 = !DILocation(line: 4373, column: 3, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !1752, file: !1, line: 4372, column: 3)
!6364 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DestinationString", arg: 1, scope: !1758, file: !1, line: 4378, type: !317)
!6365 = !DILocation(line: 4378, column: 43, scope: !1758)
!6366 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SourceString", arg: 2, scope: !1758, file: !1, line: 4379, type: !1746)
!6367 = !DILocation(line: 4379, column: 66, scope: !1758)
!6368 = !DILocation(line: 4383, column: 3, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !1758, file: !1, line: 4382, column: 3)
!6370 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "RelativeTo", arg: 1, scope: !1761, file: !1, line: 4391, type: !286)
!6371 = !DILocation(line: 4391, column: 39, scope: !1761)
!6372 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Path", arg: 2, scope: !1761, file: !1, line: 4392, type: !1746)
!6373 = !DILocation(line: 4392, column: 72, scope: !1761)
!6374 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "QueryTable", arg: 3, scope: !1761, file: !1, line: 4392, type: !1764)
!6375 = !DILocation(line: 4392, column: 105, scope: !1761)
!6376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Context", arg: 4, scope: !1761, file: !1, line: 4393, type: !289)
!6377 = !DILocation(line: 4393, column: 71, scope: !1761)
!6378 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Environment", arg: 5, scope: !1761, file: !1, line: 4393, type: !289)
!6379 = !DILocation(line: 4393, column: 87, scope: !1761)
!6380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1761, file: !1, line: 4394, type: !1422)
!6381 = !DILocation(line: 4394, column: 7, scope: !1761)
!6382 = !DILocation(line: 4394, column: 28, scope: !1761)
!6383 = !DILocation(line: 4397, column: 7, scope: !6384)
!6384 = distinct !DILexicalBlock(scope: !6385, file: !1, line: 4397, column: 7)
!6385 = distinct !DILexicalBlock(scope: !1761, file: !1, line: 4396, column: 3)
!6386 = !DILocation(line: 4397, column: 26, scope: !6384)
!6387 = !DILocation(line: 4397, column: 7, scope: !6385)
!6388 = !DILocation(line: 4398, column: 5, scope: !6389)
!6389 = distinct !DILexicalBlock(scope: !6384, file: !1, line: 4397, column: 32)
!6390 = !DILocation(line: 4401, column: 5, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6392, file: !1, line: 4400, column: 5)
!6392 = distinct !DILexicalBlock(scope: !6384, file: !1, line: 4399, column: 10)
!6393 = !DILocation(line: 4402, column: 9, scope: !6391)
!6394 = !DILocation(line: 4402, column: 12, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6391, file: !1, line: 4402, column: 9)
!6396 = !DILocation(line: 4404, column: 7, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6395, file: !1, line: 4402, column: 12)
!6398 = !DILocation(line: 4406, column: 7, scope: !6397)
!6399 = !DILocation(line: 4407, column: 12, scope: !6395)
!6400 = !DILocation(line: 4413, column: 1, scope: !1761)
!6401 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Handle", arg: 1, scope: !1778, file: !1, line: 4415, type: !824)
!6402 = !DILocation(line: 4415, column: 25, scope: !1778)
!6403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__BLAST_NONDET___0", scope: !1778, file: !1, line: 4416, type: !1422)
!6404 = !DILocation(line: 4416, column: 7, scope: !1778)
!6405 = !DILocation(line: 4416, column: 28, scope: !1778)
!6406 = !DILocation(line: 4419, column: 7, scope: !6407)
!6407 = distinct !DILexicalBlock(scope: !6408, file: !1, line: 4419, column: 7)
!6408 = distinct !DILexicalBlock(scope: !1778, file: !1, line: 4418, column: 3)
!6409 = !DILocation(line: 4419, column: 26, scope: !6407)
!6410 = !DILocation(line: 4419, column: 7, scope: !6408)
!6411 = !DILocation(line: 4420, column: 5, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6407, file: !1, line: 4419, column: 32)
!6413 = !DILocation(line: 4423, column: 5, scope: !6414)
!6414 = distinct !DILexicalBlock(scope: !6415, file: !1, line: 4422, column: 5)
!6415 = distinct !DILexicalBlock(scope: !6407, file: !1, line: 4421, column: 10)
!6416 = !DILocation(line: 4424, column: 9, scope: !6414)
!6417 = !DILocation(line: 4424, column: 12, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6414, file: !1, line: 4424, column: 9)
!6419 = !DILocation(line: 4426, column: 7, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !6418, file: !1, line: 4424, column: 12)
!6421 = !DILocation(line: 4428, column: 7, scope: !6420)
!6422 = !DILocation(line: 4429, column: 12, scope: !6418)
!6423 = !DILocation(line: 4435, column: 1, scope: !1778)
!6424 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WmiLibInfo", arg: 1, scope: !1781, file: !1, line: 4436, type: !1784)
!6425 = !DILocation(line: 4436, column: 43, scope: !1781)
!6426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "DeviceObject", arg: 2, scope: !1781, file: !1, line: 4436, type: !265)
!6427 = !DILocation(line: 4436, column: 71, scope: !1781)
!6428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Irp", arg: 3, scope: !1781, file: !1, line: 4437, type: !1201)
!6429 = !DILocation(line: 4437, column: 32, scope: !1781)
!6430 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "IrpDisposition", arg: 4, scope: !1781, file: !1, line: 4437, type: !1786)
!6431 = !DILocation(line: 4437, column: 62, scope: !1781)
!6432 = !DILocation(line: 4441, column: 3, scope: !6433)
!6433 = distinct !DILexicalBlock(scope: !1781, file: !1, line: 4440, column: 3)
