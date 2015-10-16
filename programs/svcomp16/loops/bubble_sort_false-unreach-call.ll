; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.node = type { i32, %struct.list_head, %struct.list_head }

@gl_list = global %struct.list_head { %struct.list_head* @gl_list, %struct.list_head* @gl_list }, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %next.i = alloca %struct.list_head*, align 8
  %__cil_tmp2.i = alloca %struct.list_head*, align 8
  %__cil_tmp3.i = alloca i32, align 4
  %__cil_tmp4.i = alloca i32, align 4
  %__cil_tmp5.i = alloca %struct.list_head*, align 8
  %__cil_tmp6.i = alloca %struct.node*, align 8
  %__cil_tmp7.i = alloca i32, align 4
  %__cil_tmp8.i = alloca i32, align 4
  %__cil_tmp9.i = alloca %struct.list_head*, align 8
  %__cil_tmp10.i = alloca i64, align 8
  %__cil_tmp11.i = alloca i8*, align 8
  %__cil_tmp12.i = alloca i8*, align 8
  %__cil_tmp13.i = alloca %struct.node*, align 8
  %__cil_tmp14.i = alloca i8*, align 8
  %head.addr.i8.i.i = alloca %struct.list_head*, align 8
  %entry1.i9.i.i = alloca %struct.node*, align 8
  %__cil_tmp3.i10.i.i = alloca %struct.node*, align 8
  %__cil_tmp4.i11.i.i = alloca i32, align 4
  %__cil_tmp5.i12.i.i = alloca i32, align 4
  %__cil_tmp6.i13.i.i = alloca %struct.list_head*, align 8
  %__cil_tmp7.i14.i.i = alloca i64, align 8
  %__cil_tmp8.i15.i.i = alloca i8*, align 8
  %__cil_tmp9.i16.i.i = alloca i8*, align 8
  %new.addr.i.i.i.i.i = alloca %struct.list_head*, align 8
  %prev.addr.i.i.i.i.i = alloca %struct.list_head*, align 8
  %next.addr.i.i.i.i.i = alloca %struct.list_head*, align 8
  %__cil_tmp4.i.i.i.i.i = alloca i32, align 4
  %__cil_tmp5.i.i.i.i.i = alloca i32, align 4
  %__cil_tmp6.i.i.i.i.i = alloca i32, align 4
  %__cil_tmp7.i.i.i.i.i = alloca i32, align 4
  %new.addr.i.i.i.i1 = alloca %struct.list_head*, align 8
  %head.addr.i.i.i.i = alloca %struct.list_head*, align 8
  %__cil_tmp3.i1.i.i.i = alloca %struct.list_head*, align 8
  %prev.addr.i.i.i.i2 = alloca %struct.list_head*, align 8
  %next.addr.i.i.i.i3 = alloca %struct.list_head*, align 8
  %__cil_tmp3.i.i.i.i = alloca i32, align 4
  %__cil_tmp4.i.i.i.i4 = alloca i32, align 4
  %list.addr.i.i.i = alloca %struct.list_head*, align 8
  %head.addr.i1.i.i = alloca %struct.list_head*, align 8
  %__cil_tmp3.i2.i.i = alloca i32, align 4
  %__cil_tmp4.i3.i.i = alloca i32, align 4
  %__cil_tmp5.i4.i.i = alloca %struct.list_head*, align 8
  %__cil_tmp6.i5.i.i = alloca %struct.list_head*, align 8
  %head.addr.i.i.i5 = alloca %struct.list_head*, align 8
  %entry1.i.i.i = alloca %struct.node*, align 8
  %__cil_tmp3.i.i.i6 = alloca %struct.node*, align 8
  %__cil_tmp4.i.i.i = alloca i32, align 4
  %__cil_tmp5.i.i.i = alloca i32, align 4
  %__cil_tmp6.i.i.i = alloca %struct.list_head*, align 8
  %__cil_tmp7.i.i.i = alloca i64, align 8
  %__cil_tmp8.i.i.i = alloca i8*, align 8
  %__cil_tmp9.i.i.i = alloca i8*, align 8
  %any_change.i.i = alloca i8, align 1
  %pos0.i.i = alloca %struct.list_head*, align 8
  %pos1.i.i = alloca %struct.list_head*, align 8
  %val0.i.i = alloca i32, align 4
  %tmp.i.i7 = alloca i32, align 4
  %val1.i.i = alloca i32, align 4
  %tmp___0.i.i = alloca i32, align 4
  %__cil_tmp8.i.i8 = alloca %struct.list_head*, align 8
  %__cil_tmp9.i.i9 = alloca i32, align 4
  %__cil_tmp10.i.i10 = alloca i32, align 4
  %tmp.i11 = alloca i8, align 1
  %new.addr.i.i.i.i = alloca %struct.list_head*, align 8
  %prev.addr.i.i.i.i = alloca %struct.list_head*, align 8
  %next.addr.i.i.i.i = alloca %struct.list_head*, align 8
  %__cil_tmp4.i.i.i.i = alloca i32, align 4
  %__cil_tmp5.i.i.i.i = alloca i32, align 4
  %__cil_tmp6.i.i.i.i = alloca i32, align 4
  %__cil_tmp7.i.i.i.i = alloca i32, align 4
  %new.addr.i.i.i = alloca %struct.list_head*, align 8
  %head.addr.i.i.i = alloca %struct.list_head*, align 8
  %__cil_tmp3.i.i.i = alloca %struct.list_head*, align 8
  %value.addr.i.i = alloca i32, align 4
  %node.i.i = alloca %struct.node*, align 8
  %tmp.i.i = alloca i8*, align 8
  %__cil_tmp4.i.i = alloca i32, align 4
  %__cil_tmp5.i.i = alloca i32, align 4
  %__cil_tmp6.i.i = alloca i32, align 4
  %__cil_tmp7.i.i = alloca %struct.list_head*, align 8
  %__cil_tmp8.i.i = alloca i32, align 4
  %__cil_tmp9.i.i = alloca i32, align 4
  %__cil_tmp10.i.i = alloca i32, align 4
  %__cil_tmp11.i.i = alloca i32, align 4
  %__cil_tmp12.i.i = alloca i32, align 4
  %__cil_tmp13.i.i = alloca i32, align 4
  %__cil_tmp14.i.i = alloca i32, align 4
  %__cil_tmp15.i.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %tmp___0.i = alloca i32, align 4
  %retval = alloca i32, align 4
  %__cil_tmp1 = alloca %struct.list_head*, align 8
  %__cil_tmp2 = alloca %struct.list_head*, align 8
  store i32 0, i32* %retval
  %0 = bitcast i32* %tmp.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0)
  %1 = bitcast i32* %tmp___0.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1)
  br label %while.body.i

while.body.i:                                     ; preds = %if.then.i, %entry
  %call.i = call i32 @__VERIFIER_nondet_int() #5
  store i32 %call.i, i32* %tmp.i, align 4
  %2 = load i32, i32* %tmp.i, align 4
  %3 = bitcast i32* %value.addr.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #5
  %4 = bitcast %struct.node** %node.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #5
  %5 = bitcast i8** %tmp.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #5
  %6 = bitcast i32* %__cil_tmp4.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #5
  %7 = bitcast i32* %__cil_tmp5.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #5
  %8 = bitcast i32* %__cil_tmp6.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #5
  %9 = bitcast %struct.list_head** %__cil_tmp7.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #5
  %10 = bitcast i32* %__cil_tmp8.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #5
  %11 = bitcast i32* %__cil_tmp9.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #5
  %12 = bitcast i32* %__cil_tmp10.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #5
  %13 = bitcast i32* %__cil_tmp11.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #5
  %14 = bitcast i32* %__cil_tmp12.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #5
  %15 = bitcast i32* %__cil_tmp13.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #5
  %16 = bitcast i32* %__cil_tmp14.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #5
  %17 = bitcast i32* %__cil_tmp15.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #5
  store i32 %2, i32* %value.addr.i.i, align 4
  store i32 20, i32* %__cil_tmp4.i.i, align 4
  %18 = load i32, i32* %__cil_tmp4.i.i, align 4
  %call.i.i = call noalias i8* @malloc(i32 %18) #5
  store i8* %call.i.i, i8** %tmp.i.i, align 8
  %19 = load i8*, i8** %tmp.i.i, align 8
  %20 = bitcast i8* %19 to %struct.node*
  store %struct.node* %20, %struct.node** %node.i.i, align 8
  %21 = load %struct.node*, %struct.node** %node.i.i, align 8
  %tobool.i.i = icmp ne %struct.node* %21, null
  br i1 %tobool.i.i, label %gl_insert.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @abort() #6
  unreachable

gl_insert.exit.i:                                 ; preds = %while.body.i
  %22 = load i32, i32* %value.addr.i.i, align 4
  %23 = load %struct.node*, %struct.node** %node.i.i, align 8
  %24 = bitcast %struct.node* %23 to i32*
  store i32 %22, i32* %24, align 4
  %25 = load %struct.node*, %struct.node** %node.i.i, align 8
  %26 = ptrtoint %struct.node* %25 to i32
  store i32 %26, i32* %__cil_tmp5.i.i, align 4
  %27 = load i32, i32* %__cil_tmp5.i.i, align 4
  %add.i.i = add i32 %27, 4
  store i32 %add.i.i, i32* %__cil_tmp6.i.i, align 4
  %28 = load i32, i32* %__cil_tmp6.i.i, align 4
  %conv.i.i = zext i32 %28 to i64
  %29 = inttoptr i64 %conv.i.i to %struct.list_head*
  store %struct.list_head* %29, %struct.list_head** %__cil_tmp7.i.i, align 8
  %30 = load %struct.list_head*, %struct.list_head** %__cil_tmp7.i.i, align 8
  %31 = bitcast %struct.list_head** %new.addr.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #5
  %32 = bitcast %struct.list_head** %head.addr.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #5
  %33 = bitcast %struct.list_head** %__cil_tmp3.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #5
  store %struct.list_head* %30, %struct.list_head** %new.addr.i.i.i, align 8
  store %struct.list_head* @gl_list, %struct.list_head** %head.addr.i.i.i, align 8
  %34 = load %struct.list_head*, %struct.list_head** %head.addr.i.i.i, align 8
  %35 = bitcast %struct.list_head* %34 to %struct.list_head**
  %36 = load %struct.list_head*, %struct.list_head** %35, align 8
  store %struct.list_head* %36, %struct.list_head** %__cil_tmp3.i.i.i, align 8
  %37 = load %struct.list_head*, %struct.list_head** %new.addr.i.i.i, align 8
  %38 = load %struct.list_head*, %struct.list_head** %head.addr.i.i.i, align 8
  %39 = load %struct.list_head*, %struct.list_head** %__cil_tmp3.i.i.i, align 8
  %40 = bitcast %struct.list_head** %new.addr.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #5
  %41 = bitcast %struct.list_head** %prev.addr.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #5
  %42 = bitcast %struct.list_head** %next.addr.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #5
  %43 = bitcast i32* %__cil_tmp4.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #5
  %44 = bitcast i32* %__cil_tmp5.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #5
  %45 = bitcast i32* %__cil_tmp6.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #5
  %46 = bitcast i32* %__cil_tmp7.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #5
  store %struct.list_head* %37, %struct.list_head** %new.addr.i.i.i.i, align 8
  store %struct.list_head* %38, %struct.list_head** %prev.addr.i.i.i.i, align 8
  store %struct.list_head* %39, %struct.list_head** %next.addr.i.i.i.i, align 8
  %47 = load %struct.list_head*, %struct.list_head** %next.addr.i.i.i.i, align 8
  %48 = ptrtoint %struct.list_head* %47 to i32
  store i32 %48, i32* %__cil_tmp4.i.i.i.i, align 4
  %49 = load i32, i32* %__cil_tmp4.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %49, 4
  store i32 %add.i.i.i.i, i32* %__cil_tmp5.i.i.i.i, align 4
  %50 = load %struct.list_head*, %struct.list_head** %new.addr.i.i.i.i, align 8
  %51 = load i32, i32* %__cil_tmp5.i.i.i.i, align 4
  %conv.i.i.i.i = zext i32 %51 to i64
  %52 = inttoptr i64 %conv.i.i.i.i to %struct.list_head**
  store %struct.list_head* %50, %struct.list_head** %52, align 8
  %53 = load %struct.list_head*, %struct.list_head** %next.addr.i.i.i.i, align 8
  %54 = load %struct.list_head*, %struct.list_head** %new.addr.i.i.i.i, align 8
  %55 = bitcast %struct.list_head* %54 to %struct.list_head**
  store %struct.list_head* %53, %struct.list_head** %55, align 8
  %56 = load %struct.list_head*, %struct.list_head** %new.addr.i.i.i.i, align 8
  %57 = ptrtoint %struct.list_head* %56 to i32
  store i32 %57, i32* %__cil_tmp6.i.i.i.i, align 4
  %58 = load i32, i32* %__cil_tmp6.i.i.i.i, align 4
  %add1.i.i.i.i = add i32 %58, 4
  store i32 %add1.i.i.i.i, i32* %__cil_tmp7.i.i.i.i, align 4
  %59 = load %struct.list_head*, %struct.list_head** %prev.addr.i.i.i.i, align 8
  %60 = load i32, i32* %__cil_tmp7.i.i.i.i, align 4
  %conv2.i.i.i.i = zext i32 %60 to i64
  %61 = inttoptr i64 %conv2.i.i.i.i to %struct.list_head**
  store %struct.list_head* %59, %struct.list_head** %61, align 8
  %62 = load %struct.list_head*, %struct.list_head** %new.addr.i.i.i.i, align 8
  %63 = load %struct.list_head*, %struct.list_head** %prev.addr.i.i.i.i, align 8
  %64 = bitcast %struct.list_head* %63 to %struct.list_head**
  store %struct.list_head* %62, %struct.list_head** %64, align 8
  %65 = bitcast %struct.list_head** %new.addr.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #5
  %66 = bitcast %struct.list_head** %prev.addr.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #5
  %67 = bitcast %struct.list_head** %next.addr.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #5
  %68 = bitcast i32* %__cil_tmp4.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #5
  %69 = bitcast i32* %__cil_tmp5.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #5
  %70 = bitcast i32* %__cil_tmp6.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #5
  %71 = bitcast i32* %__cil_tmp7.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #5
  %72 = bitcast %struct.list_head** %new.addr.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #5
  %73 = bitcast %struct.list_head** %head.addr.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #5
  %74 = bitcast %struct.list_head** %__cil_tmp3.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #5
  %75 = load %struct.node*, %struct.node** %node.i.i, align 8
  %76 = ptrtoint %struct.node* %75 to i32
  store i32 %76, i32* %__cil_tmp8.i.i, align 4
  %77 = load i32, i32* %__cil_tmp8.i.i, align 4
  %add13.i.i = add i32 %77, 12
  store i32 %add13.i.i, i32* %__cil_tmp9.i.i, align 4
  %78 = load %struct.node*, %struct.node** %node.i.i, align 8
  %79 = ptrtoint %struct.node* %78 to i32
  store i32 %79, i32* %__cil_tmp10.i.i, align 4
  %80 = load i32, i32* %__cil_tmp10.i.i, align 4
  %add14.i.i = add i32 %80, 12
  store i32 %add14.i.i, i32* %__cil_tmp11.i.i, align 4
  %81 = load i32, i32* %__cil_tmp11.i.i, align 4
  %conv15.i.i = zext i32 %81 to i64
  %82 = inttoptr i64 %conv15.i.i to %struct.list_head*
  %83 = load i32, i32* %__cil_tmp9.i.i, align 4
  %conv16.i.i = zext i32 %83 to i64
  %84 = inttoptr i64 %conv16.i.i to %struct.list_head**
  store %struct.list_head* %82, %struct.list_head** %84, align 8
  %85 = load %struct.node*, %struct.node** %node.i.i, align 8
  %86 = ptrtoint %struct.node* %85 to i32
  store i32 %86, i32* %__cil_tmp12.i.i, align 4
  %87 = load i32, i32* %__cil_tmp12.i.i, align 4
  %add17.i.i = add i32 %87, 12
  store i32 %add17.i.i, i32* %__cil_tmp13.i.i, align 4
  %88 = load %struct.node*, %struct.node** %node.i.i, align 8
  %89 = ptrtoint %struct.node* %88 to i32
  store i32 %89, i32* %__cil_tmp14.i.i, align 4
  %90 = load i32, i32* %__cil_tmp14.i.i, align 4
  %add18.i.i = add i32 %90, 12
  store i32 %add18.i.i, i32* %__cil_tmp15.i.i, align 4
  %91 = load i32, i32* %__cil_tmp15.i.i, align 4
  %conv19.i.i = zext i32 %91 to i64
  %92 = inttoptr i64 %conv19.i.i to %struct.list_head*
  %93 = load i32, i32* %__cil_tmp13.i.i, align 4
  %conv20.i.i = zext i32 %93 to i64
  %94 = inttoptr i64 %conv20.i.i to %struct.list_head**
  store %struct.list_head* %92, %struct.list_head** %94, align 8
  %95 = bitcast i32* %value.addr.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #5
  %96 = bitcast %struct.node** %node.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #5
  %97 = bitcast i8** %tmp.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #5
  %98 = bitcast i32* %__cil_tmp4.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #5
  %99 = bitcast i32* %__cil_tmp5.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #5
  %100 = bitcast i32* %__cil_tmp6.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #5
  %101 = bitcast %struct.list_head** %__cil_tmp7.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #5
  %102 = bitcast i32* %__cil_tmp8.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #5
  %103 = bitcast i32* %__cil_tmp9.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #5
  %104 = bitcast i32* %__cil_tmp10.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #5
  %105 = bitcast i32* %__cil_tmp11.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #5
  %106 = bitcast i32* %__cil_tmp12.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #5
  %107 = bitcast i32* %__cil_tmp13.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #5
  %108 = bitcast i32* %__cil_tmp14.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #5
  %109 = bitcast i32* %__cil_tmp15.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #5
  %call2.i = call i32 @__VERIFIER_nondet_int() #5
  store i32 %call2.i, i32* %tmp___0.i, align 4
  %110 = load i32, i32* %tmp___0.i, align 4
  %tobool.i = icmp ne i32 %110, 0
  br i1 %tobool.i, label %if.then.i, label %gl_read.exit

if.then.i:                                        ; preds = %gl_insert.exit.i
  br label %while.body.i

gl_read.exit:                                     ; preds = %gl_insert.exit.i
  %111 = bitcast i32* %tmp.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111)
  %112 = bitcast i32* %tmp___0.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112)
  store %struct.list_head* @gl_list, %struct.list_head** %__cil_tmp1, align 8
  %113 = load %struct.list_head*, %struct.list_head** %__cil_tmp1, align 8
  call void @inspect(%struct.list_head* %113)
  call void @llvm.lifetime.start(i64 1, i8* %tmp.i11)
  br label %while.body.i12

while.body.i12:                                   ; preds = %if.then.i18, %gl_read.exit
  call void @llvm.lifetime.start(i64 1, i8* %any_change.i.i) #5
  %114 = bitcast %struct.list_head** %pos0.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %114) #5
  %115 = bitcast %struct.list_head** %pos1.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %115) #5
  %116 = bitcast i32* %val0.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %116) #5
  %117 = bitcast i32* %tmp.i.i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %117) #5
  %118 = bitcast i32* %val1.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #5
  %119 = bitcast i32* %tmp___0.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %119) #5
  %120 = bitcast %struct.list_head** %__cil_tmp8.i.i8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %120) #5
  %121 = bitcast i32* %__cil_tmp9.i.i9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %121) #5
  %122 = bitcast i32* %__cil_tmp10.i.i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #5
  store i8 0, i8* %any_change.i.i, align 1
  store %struct.list_head* @gl_list, %struct.list_head** %__cil_tmp8.i.i8, align 8
  %123 = load %struct.list_head*, %struct.list_head** %__cil_tmp8.i.i8, align 8
  %124 = bitcast %struct.list_head* %123 to %struct.list_head**
  %125 = load %struct.list_head*, %struct.list_head** %124, align 8
  store %struct.list_head* %125, %struct.list_head** %pos0.i.i, align 8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.else9.i.i, %while.body.i12
  br label %while_21_continue.i.i

while_21_continue.i.i:                            ; preds = %if.then8.i.i, %while.body.i.i
  %126 = load %struct.list_head*, %struct.list_head** %pos0.i.i, align 8
  %127 = bitcast %struct.list_head* %126 to %struct.list_head**
  %128 = load %struct.list_head*, %struct.list_head** %127, align 8
  store %struct.list_head* %128, %struct.list_head** %pos1.i.i, align 8
  %129 = load %struct.list_head*, %struct.list_head** %pos1.i.i, align 8
  %130 = ptrtoint %struct.list_head* %129 to i32
  store i32 %130, i32* %__cil_tmp9.i.i9, align 4
  store i32 ptrtoint (%struct.list_head* @gl_list to i32), i32* %__cil_tmp10.i.i10, align 4
  %131 = load i32, i32* %__cil_tmp10.i.i10, align 4
  %132 = load i32, i32* %__cil_tmp9.i.i9, align 4
  %cmp.i.i = icmp ne i32 %131, %132
  br i1 %cmp.i.i, label %if.then.i.i13, label %gl_sort_pass.exit.i

if.then.i.i13:                                    ; preds = %while_21_continue.i.i
  %133 = load %struct.list_head*, %struct.list_head** %pos0.i.i, align 8
  %134 = bitcast %struct.list_head** %head.addr.i.i.i5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #5
  %135 = bitcast %struct.node** %entry1.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %135) #5
  %136 = bitcast %struct.node** %__cil_tmp3.i.i.i6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %136) #5
  %137 = bitcast i32* %__cil_tmp4.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %137) #5
  %138 = bitcast i32* %__cil_tmp5.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %138) #5
  %139 = bitcast %struct.list_head** %__cil_tmp6.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %139) #5
  %140 = bitcast i64* %__cil_tmp7.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %140) #5
  %141 = bitcast i8** %__cil_tmp8.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %141) #5
  %142 = bitcast i8** %__cil_tmp9.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %142) #5
  store %struct.list_head* %133, %struct.list_head** %head.addr.i.i.i5, align 8
  store %struct.node* null, %struct.node** %__cil_tmp3.i.i.i6, align 8
  %143 = load %struct.node*, %struct.node** %__cil_tmp3.i.i.i6, align 8
  %144 = ptrtoint %struct.node* %143 to i32
  store i32 %144, i32* %__cil_tmp4.i.i.i, align 4
  %145 = load i32, i32* %__cil_tmp4.i.i.i, align 4
  %add.i.i.i = add i32 %145, 4
  store i32 %add.i.i.i, i32* %__cil_tmp5.i.i.i, align 4
  %146 = load i32, i32* %__cil_tmp5.i.i.i, align 4
  %conv.i.i.i = zext i32 %146 to i64
  %147 = inttoptr i64 %conv.i.i.i to %struct.list_head*
  store %struct.list_head* %147, %struct.list_head** %__cil_tmp6.i.i.i, align 8
  %148 = load %struct.list_head*, %struct.list_head** %__cil_tmp6.i.i.i, align 8
  %149 = ptrtoint %struct.list_head* %148 to i64
  store i64 %149, i64* %__cil_tmp7.i.i.i, align 8
  %150 = load %struct.list_head*, %struct.list_head** %head.addr.i.i.i5, align 8
  %151 = bitcast %struct.list_head* %150 to i8*
  store i8* %151, i8** %__cil_tmp8.i.i.i, align 8
  %152 = load i8*, i8** %__cil_tmp8.i.i.i, align 8
  %153 = load i64, i64* %__cil_tmp7.i.i.i, align 8
  %idx.neg.i.i.i = sub i64 0, %153
  %add.ptr.i.i.i = getelementptr inbounds i8, i8* %152, i64 %idx.neg.i.i.i
  store i8* %add.ptr.i.i.i, i8** %__cil_tmp9.i.i.i, align 8
  %154 = load i8*, i8** %__cil_tmp9.i.i.i, align 8
  %155 = bitcast i8* %154 to %struct.node*
  store %struct.node* %155, %struct.node** %entry1.i.i.i, align 8
  %156 = load %struct.node*, %struct.node** %entry1.i.i.i, align 8
  %157 = bitcast %struct.node* %156 to i32*
  %158 = load i32, i32* %157, align 4
  %159 = bitcast %struct.list_head** %head.addr.i.i.i5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #5
  %160 = bitcast %struct.node** %entry1.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #5
  %161 = bitcast %struct.node** %__cil_tmp3.i.i.i6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #5
  %162 = bitcast i32* %__cil_tmp4.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #5
  %163 = bitcast i32* %__cil_tmp5.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #5
  %164 = bitcast %struct.list_head** %__cil_tmp6.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #5
  %165 = bitcast i64* %__cil_tmp7.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #5
  %166 = bitcast i8** %__cil_tmp8.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #5
  %167 = bitcast i8** %__cil_tmp9.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #5
  store i32 %158, i32* %tmp.i.i7, align 4
  %168 = load i32, i32* %tmp.i.i7, align 4
  store i32 %168, i32* %val0.i.i, align 4
  %169 = load %struct.list_head*, %struct.list_head** %pos1.i.i, align 8
  %170 = bitcast %struct.list_head** %head.addr.i8.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #5
  %171 = bitcast %struct.node** %entry1.i9.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %171) #5
  %172 = bitcast %struct.node** %__cil_tmp3.i10.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %172) #5
  %173 = bitcast i32* %__cil_tmp4.i11.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %173) #5
  %174 = bitcast i32* %__cil_tmp5.i12.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %174) #5
  %175 = bitcast %struct.list_head** %__cil_tmp6.i13.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %175) #5
  %176 = bitcast i64* %__cil_tmp7.i14.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %176) #5
  %177 = bitcast i8** %__cil_tmp8.i15.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %177) #5
  %178 = bitcast i8** %__cil_tmp9.i16.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %178) #5
  store %struct.list_head* %169, %struct.list_head** %head.addr.i8.i.i, align 8
  store %struct.node* null, %struct.node** %__cil_tmp3.i10.i.i, align 8
  %179 = load %struct.node*, %struct.node** %__cil_tmp3.i10.i.i, align 8
  %180 = ptrtoint %struct.node* %179 to i32
  store i32 %180, i32* %__cil_tmp4.i11.i.i, align 4
  %181 = load i32, i32* %__cil_tmp4.i11.i.i, align 4
  %add.i17.i.i = add i32 %181, 4
  store i32 %add.i17.i.i, i32* %__cil_tmp5.i12.i.i, align 4
  %182 = load i32, i32* %__cil_tmp5.i12.i.i, align 4
  %conv.i18.i.i = zext i32 %182 to i64
  %183 = inttoptr i64 %conv.i18.i.i to %struct.list_head*
  store %struct.list_head* %183, %struct.list_head** %__cil_tmp6.i13.i.i, align 8
  %184 = load %struct.list_head*, %struct.list_head** %__cil_tmp6.i13.i.i, align 8
  %185 = ptrtoint %struct.list_head* %184 to i64
  store i64 %185, i64* %__cil_tmp7.i14.i.i, align 8
  %186 = load %struct.list_head*, %struct.list_head** %head.addr.i8.i.i, align 8
  %187 = bitcast %struct.list_head* %186 to i8*
  store i8* %187, i8** %__cil_tmp8.i15.i.i, align 8
  %188 = load i8*, i8** %__cil_tmp8.i15.i.i, align 8
  %189 = load i64, i64* %__cil_tmp7.i14.i.i, align 8
  %idx.neg.i19.i.i = sub i64 0, %189
  %add.ptr.i20.i.i = getelementptr inbounds i8, i8* %188, i64 %idx.neg.i19.i.i
  store i8* %add.ptr.i20.i.i, i8** %__cil_tmp9.i16.i.i, align 8
  %190 = load i8*, i8** %__cil_tmp9.i16.i.i, align 8
  %191 = bitcast i8* %190 to %struct.node*
  store %struct.node* %191, %struct.node** %entry1.i9.i.i, align 8
  %192 = load %struct.node*, %struct.node** %entry1.i9.i.i, align 8
  %193 = bitcast %struct.node* %192 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = bitcast %struct.list_head** %head.addr.i8.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #5
  %196 = bitcast %struct.node** %entry1.i9.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #5
  %197 = bitcast %struct.node** %__cil_tmp3.i10.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #5
  %198 = bitcast i32* %__cil_tmp4.i11.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #5
  %199 = bitcast i32* %__cil_tmp5.i12.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #5
  %200 = bitcast %struct.list_head** %__cil_tmp6.i13.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #5
  %201 = bitcast i64* %__cil_tmp7.i14.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #5
  %202 = bitcast i8** %__cil_tmp8.i15.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #5
  %203 = bitcast i8** %__cil_tmp9.i16.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #5
  store i32 %194, i32* %tmp___0.i.i, align 4
  %204 = load i32, i32* %tmp___0.i.i, align 4
  store i32 %204, i32* %val1.i.i, align 4
  %205 = load i32, i32* %val0.i.i, align 4
  %206 = load i32, i32* %val1.i.i, align 4
  %cmp7.i.i = icmp sle i32 %205, %206
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.else9.i.i

if.then8.i.i:                                     ; preds = %if.then.i.i13
  %207 = load %struct.list_head*, %struct.list_head** %pos1.i.i, align 8
  store %struct.list_head* %207, %struct.list_head** %pos0.i.i, align 8
  br label %while_21_continue.i.i

if.else9.i.i:                                     ; preds = %if.then.i.i13
  store i8 1, i8* %any_change.i.i, align 1
  %208 = load %struct.list_head*, %struct.list_head** %pos0.i.i, align 8
  %209 = load %struct.list_head*, %struct.list_head** %pos1.i.i, align 8
  %210 = bitcast %struct.list_head** %list.addr.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %210) #5
  %211 = bitcast %struct.list_head** %head.addr.i1.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %211) #5
  %212 = bitcast i32* %__cil_tmp3.i2.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %212) #5
  %213 = bitcast i32* %__cil_tmp4.i3.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %213) #5
  %214 = bitcast %struct.list_head** %__cil_tmp5.i4.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %214) #5
  %215 = bitcast %struct.list_head** %__cil_tmp6.i5.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %215) #5
  store %struct.list_head* %208, %struct.list_head** %list.addr.i.i.i, align 8
  store %struct.list_head* %209, %struct.list_head** %head.addr.i1.i.i, align 8
  %216 = load %struct.list_head*, %struct.list_head** %list.addr.i.i.i, align 8
  %217 = ptrtoint %struct.list_head* %216 to i32
  store i32 %217, i32* %__cil_tmp3.i2.i.i, align 4
  %218 = load i32, i32* %__cil_tmp3.i2.i.i, align 4
  %add.i6.i.i = add i32 %218, 4
  store i32 %add.i6.i.i, i32* %__cil_tmp4.i3.i.i, align 4
  %219 = load i32, i32* %__cil_tmp4.i3.i.i, align 4
  %conv.i7.i.i = zext i32 %219 to i64
  %220 = inttoptr i64 %conv.i7.i.i to %struct.list_head**
  %221 = load %struct.list_head*, %struct.list_head** %220, align 8
  store %struct.list_head* %221, %struct.list_head** %__cil_tmp5.i4.i.i, align 8
  %222 = load %struct.list_head*, %struct.list_head** %list.addr.i.i.i, align 8
  %223 = bitcast %struct.list_head* %222 to %struct.list_head**
  %224 = load %struct.list_head*, %struct.list_head** %223, align 8
  store %struct.list_head* %224, %struct.list_head** %__cil_tmp6.i5.i.i, align 8
  %225 = load %struct.list_head*, %struct.list_head** %__cil_tmp5.i4.i.i, align 8
  %226 = load %struct.list_head*, %struct.list_head** %__cil_tmp6.i5.i.i, align 8
  %227 = bitcast %struct.list_head** %prev.addr.i.i.i.i2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %227) #5
  %228 = bitcast %struct.list_head** %next.addr.i.i.i.i3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %228) #5
  %229 = bitcast i32* %__cil_tmp3.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %229) #5
  %230 = bitcast i32* %__cil_tmp4.i.i.i.i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %230) #5
  store %struct.list_head* %225, %struct.list_head** %prev.addr.i.i.i.i2, align 8
  store %struct.list_head* %226, %struct.list_head** %next.addr.i.i.i.i3, align 8
  %231 = load %struct.list_head*, %struct.list_head** %next.addr.i.i.i.i3, align 8
  %232 = ptrtoint %struct.list_head* %231 to i32
  store i32 %232, i32* %__cil_tmp3.i.i.i.i, align 4
  %233 = load i32, i32* %__cil_tmp3.i.i.i.i, align 4
  %add.i.i.i.i14 = add i32 %233, 4
  store i32 %add.i.i.i.i14, i32* %__cil_tmp4.i.i.i.i4, align 4
  %234 = load %struct.list_head*, %struct.list_head** %prev.addr.i.i.i.i2, align 8
  %235 = load i32, i32* %__cil_tmp4.i.i.i.i4, align 4
  %conv.i.i.i.i15 = zext i32 %235 to i64
  %236 = inttoptr i64 %conv.i.i.i.i15 to %struct.list_head**
  store %struct.list_head* %234, %struct.list_head** %236, align 8
  %237 = load %struct.list_head*, %struct.list_head** %next.addr.i.i.i.i3, align 8
  %238 = load %struct.list_head*, %struct.list_head** %prev.addr.i.i.i.i2, align 8
  %239 = bitcast %struct.list_head* %238 to %struct.list_head**
  store %struct.list_head* %237, %struct.list_head** %239, align 8
  %240 = bitcast %struct.list_head** %prev.addr.i.i.i.i2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %240) #5
  %241 = bitcast %struct.list_head** %next.addr.i.i.i.i3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %241) #5
  %242 = bitcast i32* %__cil_tmp3.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #5
  %243 = bitcast i32* %__cil_tmp4.i.i.i.i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #5
  %244 = load %struct.list_head*, %struct.list_head** %list.addr.i.i.i, align 8
  %245 = load %struct.list_head*, %struct.list_head** %head.addr.i1.i.i, align 8
  %246 = bitcast %struct.list_head** %new.addr.i.i.i.i1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %246) #5
  %247 = bitcast %struct.list_head** %head.addr.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %247) #5
  %248 = bitcast %struct.list_head** %__cil_tmp3.i1.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %248) #5
  store %struct.list_head* %244, %struct.list_head** %new.addr.i.i.i.i1, align 8
  store %struct.list_head* %245, %struct.list_head** %head.addr.i.i.i.i, align 8
  %249 = load %struct.list_head*, %struct.list_head** %head.addr.i.i.i.i, align 8
  %250 = bitcast %struct.list_head* %249 to %struct.list_head**
  %251 = load %struct.list_head*, %struct.list_head** %250, align 8
  store %struct.list_head* %251, %struct.list_head** %__cil_tmp3.i1.i.i.i, align 8
  %252 = load %struct.list_head*, %struct.list_head** %new.addr.i.i.i.i1, align 8
  %253 = load %struct.list_head*, %struct.list_head** %head.addr.i.i.i.i, align 8
  %254 = load %struct.list_head*, %struct.list_head** %__cil_tmp3.i1.i.i.i, align 8
  %255 = bitcast %struct.list_head** %new.addr.i.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %255) #5
  %256 = bitcast %struct.list_head** %prev.addr.i.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %256) #5
  %257 = bitcast %struct.list_head** %next.addr.i.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %257) #5
  %258 = bitcast i32* %__cil_tmp4.i.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %258) #5
  %259 = bitcast i32* %__cil_tmp5.i.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %259) #5
  %260 = bitcast i32* %__cil_tmp6.i.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %260) #5
  %261 = bitcast i32* %__cil_tmp7.i.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %261) #5
  store %struct.list_head* %252, %struct.list_head** %new.addr.i.i.i.i.i, align 8
  store %struct.list_head* %253, %struct.list_head** %prev.addr.i.i.i.i.i, align 8
  store %struct.list_head* %254, %struct.list_head** %next.addr.i.i.i.i.i, align 8
  %262 = load %struct.list_head*, %struct.list_head** %next.addr.i.i.i.i.i, align 8
  %263 = ptrtoint %struct.list_head* %262 to i32
  store i32 %263, i32* %__cil_tmp4.i.i.i.i.i, align 4
  %264 = load i32, i32* %__cil_tmp4.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %264, 4
  store i32 %add.i.i.i.i.i, i32* %__cil_tmp5.i.i.i.i.i, align 4
  %265 = load %struct.list_head*, %struct.list_head** %new.addr.i.i.i.i.i, align 8
  %266 = load i32, i32* %__cil_tmp5.i.i.i.i.i, align 4
  %conv.i.i.i.i.i = zext i32 %266 to i64
  %267 = inttoptr i64 %conv.i.i.i.i.i to %struct.list_head**
  store %struct.list_head* %265, %struct.list_head** %267, align 8
  %268 = load %struct.list_head*, %struct.list_head** %next.addr.i.i.i.i.i, align 8
  %269 = load %struct.list_head*, %struct.list_head** %new.addr.i.i.i.i.i, align 8
  %270 = bitcast %struct.list_head* %269 to %struct.list_head**
  store %struct.list_head* %268, %struct.list_head** %270, align 8
  %271 = load %struct.list_head*, %struct.list_head** %new.addr.i.i.i.i.i, align 8
  %272 = ptrtoint %struct.list_head* %271 to i32
  store i32 %272, i32* %__cil_tmp6.i.i.i.i.i, align 4
  %273 = load i32, i32* %__cil_tmp6.i.i.i.i.i, align 4
  %add1.i.i.i.i.i = add i32 %273, 4
  store i32 %add1.i.i.i.i.i, i32* %__cil_tmp7.i.i.i.i.i, align 4
  %274 = load %struct.list_head*, %struct.list_head** %prev.addr.i.i.i.i.i, align 8
  %275 = load i32, i32* %__cil_tmp7.i.i.i.i.i, align 4
  %conv2.i.i.i.i.i = zext i32 %275 to i64
  %276 = inttoptr i64 %conv2.i.i.i.i.i to %struct.list_head**
  store %struct.list_head* %274, %struct.list_head** %276, align 8
  %277 = load %struct.list_head*, %struct.list_head** %new.addr.i.i.i.i.i, align 8
  %278 = load %struct.list_head*, %struct.list_head** %prev.addr.i.i.i.i.i, align 8
  %279 = bitcast %struct.list_head* %278 to %struct.list_head**
  store %struct.list_head* %277, %struct.list_head** %279, align 8
  %280 = bitcast %struct.list_head** %new.addr.i.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %280) #5
  %281 = bitcast %struct.list_head** %prev.addr.i.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %281) #5
  %282 = bitcast %struct.list_head** %next.addr.i.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %282) #5
  %283 = bitcast i32* %__cil_tmp4.i.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #5
  %284 = bitcast i32* %__cil_tmp5.i.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #5
  %285 = bitcast i32* %__cil_tmp6.i.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %285) #5
  %286 = bitcast i32* %__cil_tmp7.i.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %286) #5
  %287 = bitcast %struct.list_head** %new.addr.i.i.i.i1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %287) #5
  %288 = bitcast %struct.list_head** %head.addr.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %288) #5
  %289 = bitcast %struct.list_head** %__cil_tmp3.i1.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %289) #5
  %290 = bitcast %struct.list_head** %list.addr.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %290) #5
  %291 = bitcast %struct.list_head** %head.addr.i1.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %291) #5
  %292 = bitcast i32* %__cil_tmp3.i2.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #5
  %293 = bitcast i32* %__cil_tmp4.i3.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #5
  %294 = bitcast %struct.list_head** %__cil_tmp5.i4.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %294) #5
  %295 = bitcast %struct.list_head** %__cil_tmp6.i5.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %295) #5
  br label %while.body.i.i

gl_sort_pass.exit.i:                              ; preds = %while_21_continue.i.i
  %296 = load i8, i8* %any_change.i.i, align 1
  %tobool.i.i16 = trunc i8 %296 to i1
  call void @llvm.lifetime.end(i64 1, i8* %any_change.i.i) #5
  %297 = bitcast %struct.list_head** %pos0.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %297) #5
  %298 = bitcast %struct.list_head** %pos1.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %298) #5
  %299 = bitcast i32* %val0.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #5
  %300 = bitcast i32* %tmp.i.i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #5
  %301 = bitcast i32* %val1.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #5
  %302 = bitcast i32* %tmp___0.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #5
  %303 = bitcast %struct.list_head** %__cil_tmp8.i.i8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %303) #5
  %304 = bitcast i32* %__cil_tmp9.i.i9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #5
  %305 = bitcast i32* %__cil_tmp10.i.i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #5
  %frombool.i = zext i1 %tobool.i.i16 to i8
  store i8 %frombool.i, i8* %tmp.i11, align 1
  %306 = load i8, i8* %tmp.i11, align 1
  %tobool.i17 = trunc i8 %306 to i1
  br i1 %tobool.i17, label %if.then.i18, label %gl_sort.exit

if.then.i18:                                      ; preds = %gl_sort_pass.exit.i
  br label %while.body.i12

gl_sort.exit:                                     ; preds = %gl_sort_pass.exit.i
  call void @llvm.lifetime.end(i64 1, i8* %tmp.i11)
  store %struct.list_head* @gl_list, %struct.list_head** %__cil_tmp2, align 8
  %307 = load %struct.list_head*, %struct.list_head** %__cil_tmp2, align 8
  call void @inspect(%struct.list_head* %307)
  %308 = bitcast %struct.list_head** %next.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %308)
  %309 = bitcast %struct.list_head** %__cil_tmp2.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %309)
  %310 = bitcast i32* %__cil_tmp3.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %310)
  %311 = bitcast i32* %__cil_tmp4.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %311)
  %312 = bitcast %struct.list_head** %__cil_tmp5.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %312)
  %313 = bitcast %struct.node** %__cil_tmp6.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %313)
  %314 = bitcast i32* %__cil_tmp7.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %314)
  %315 = bitcast i32* %__cil_tmp8.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %315)
  %316 = bitcast %struct.list_head** %__cil_tmp9.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %316)
  %317 = bitcast i64* %__cil_tmp10.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %317)
  %318 = bitcast i8** %__cil_tmp11.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %318)
  %319 = bitcast i8** %__cil_tmp12.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %319)
  %320 = bitcast %struct.node** %__cil_tmp13.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %320)
  %321 = bitcast i8** %__cil_tmp14.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %321)
  br label %while.body.i19

while.body.i19:                                   ; preds = %if.then.i20, %gl_sort.exit
  store %struct.list_head* @gl_list, %struct.list_head** %__cil_tmp2.i, align 8
  %322 = load %struct.list_head*, %struct.list_head** %__cil_tmp2.i, align 8
  %323 = bitcast %struct.list_head* %322 to %struct.list_head**
  %324 = load %struct.list_head*, %struct.list_head** %323, align 8
  store %struct.list_head* %324, %struct.list_head** %next.i, align 8
  %325 = load %struct.list_head*, %struct.list_head** %next.i, align 8
  %326 = ptrtoint %struct.list_head* %325 to i32
  store i32 %326, i32* %__cil_tmp3.i, align 4
  store i32 ptrtoint (%struct.list_head* @gl_list to i32), i32* %__cil_tmp4.i, align 4
  %327 = load i32, i32* %__cil_tmp4.i, align 4
  %328 = load i32, i32* %__cil_tmp3.i, align 4
  %cmp.i = icmp ne i32 %327, %328
  br i1 %cmp.i, label %if.then.i20, label %gl_destroy.exit

if.then.i20:                                      ; preds = %while.body.i19
  store %struct.list_head* @gl_list, %struct.list_head** %__cil_tmp5.i, align 8
  %329 = load %struct.list_head*, %struct.list_head** %next.i, align 8
  %330 = bitcast %struct.list_head* %329 to %struct.list_head**
  %331 = load %struct.list_head*, %struct.list_head** %330, align 8
  %332 = load %struct.list_head*, %struct.list_head** %__cil_tmp5.i, align 8
  %333 = bitcast %struct.list_head* %332 to %struct.list_head**
  store %struct.list_head* %331, %struct.list_head** %333, align 8
  store %struct.node* null, %struct.node** %__cil_tmp6.i, align 8
  %334 = load %struct.node*, %struct.node** %__cil_tmp6.i, align 8
  %335 = ptrtoint %struct.node* %334 to i32
  store i32 %335, i32* %__cil_tmp7.i, align 4
  %336 = load i32, i32* %__cil_tmp7.i, align 4
  %add.i = add i32 %336, 4
  store i32 %add.i, i32* %__cil_tmp8.i, align 4
  %337 = load i32, i32* %__cil_tmp8.i, align 4
  %conv.i = zext i32 %337 to i64
  %338 = inttoptr i64 %conv.i to %struct.list_head*
  store %struct.list_head* %338, %struct.list_head** %__cil_tmp9.i, align 8
  %339 = load %struct.list_head*, %struct.list_head** %__cil_tmp9.i, align 8
  %340 = ptrtoint %struct.list_head* %339 to i64
  store i64 %340, i64* %__cil_tmp10.i, align 8
  %341 = load %struct.list_head*, %struct.list_head** %next.i, align 8
  %342 = bitcast %struct.list_head* %341 to i8*
  store i8* %342, i8** %__cil_tmp11.i, align 8
  %343 = load i8*, i8** %__cil_tmp11.i, align 8
  %344 = load i64, i64* %__cil_tmp10.i, align 8
  %idx.neg.i = sub i64 0, %344
  %add.ptr.i = getelementptr inbounds i8, i8* %343, i64 %idx.neg.i
  store i8* %add.ptr.i, i8** %__cil_tmp12.i, align 8
  %345 = load i8*, i8** %__cil_tmp12.i, align 8
  %346 = bitcast i8* %345 to %struct.node*
  store %struct.node* %346, %struct.node** %__cil_tmp13.i, align 8
  %347 = load %struct.node*, %struct.node** %__cil_tmp13.i, align 8
  %348 = bitcast %struct.node* %347 to i8*
  store i8* %348, i8** %__cil_tmp14.i, align 8
  %349 = load i8*, i8** %__cil_tmp14.i, align 8
  call void @free(i8* %349) #5
  br label %while.body.i19

gl_destroy.exit:                                  ; preds = %while.body.i19
  %350 = bitcast %struct.list_head** %next.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %350)
  %351 = bitcast %struct.list_head** %__cil_tmp2.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %351)
  %352 = bitcast i32* %__cil_tmp3.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %352)
  %353 = bitcast i32* %__cil_tmp4.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %353)
  %354 = bitcast %struct.list_head** %__cil_tmp5.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %354)
  %355 = bitcast %struct.node** %__cil_tmp6.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %355)
  %356 = bitcast i32* %__cil_tmp7.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %356)
  %357 = bitcast i32* %__cil_tmp8.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %357)
  %358 = bitcast %struct.list_head** %__cil_tmp9.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %358)
  %359 = bitcast i64* %__cil_tmp10.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %359)
  %360 = bitcast i8** %__cil_tmp11.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %360)
  %361 = bitcast i8** %__cil_tmp12.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %361)
  %362 = bitcast %struct.node** %__cil_tmp13.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %362)
  %363 = bitcast i8** %__cil_tmp14.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %363)
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal void @inspect(%struct.list_head* %head) #0 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %node = alloca %struct.node*, align 8
  %__cil_tmp3 = alloca i32, align 4
  %__cil_tmp4 = alloca %struct.list_head*, align 8
  %__cil_tmp5 = alloca i32, align 4
  %__cil_tmp6 = alloca i32, align 4
  %__cil_tmp7 = alloca i32, align 4
  %__cil_tmp8 = alloca i32, align 4
  %__cil_tmp9 = alloca i32, align 4
  %__cil_tmp10 = alloca %struct.list_head*, align 8
  %__cil_tmp11 = alloca i32, align 4
  %__cil_tmp12 = alloca i32, align 4
  %__cil_tmp13 = alloca i32, align 4
  %__cil_tmp14 = alloca i32, align 4
  %__cil_tmp15 = alloca %struct.list_head*, align 8
  %__cil_tmp16 = alloca i32, align 4
  %__cil_tmp17 = alloca %struct.list_head*, align 8
  %__cil_tmp18 = alloca i32, align 4
  %__cil_tmp19 = alloca i32, align 4
  %__cil_tmp20 = alloca i32, align 4
  %__cil_tmp21 = alloca i32, align 4
  %__cil_tmp22 = alloca i32, align 4
  %__cil_tmp23 = alloca %struct.list_head*, align 8
  %__cil_tmp24 = alloca i32, align 4
  %__cil_tmp25 = alloca i32, align 4
  %__cil_tmp26 = alloca %struct.node*, align 8
  %__cil_tmp27 = alloca i32, align 4
  %__cil_tmp28 = alloca i32, align 4
  %__cil_tmp29 = alloca %struct.list_head*, align 8
  %__cil_tmp30 = alloca i64, align 8
  %__cil_tmp31 = alloca i8*, align 8
  %__cil_tmp32 = alloca i8*, align 8
  %__cil_tmp33 = alloca %struct.node*, align 8
  %__cil_tmp34 = alloca i32, align 4
  %__cil_tmp35 = alloca i32, align 4
  %__cil_tmp36 = alloca %struct.list_head*, align 8
  %__cil_tmp37 = alloca i32, align 4
  %__cil_tmp38 = alloca i32, align 4
  %__cil_tmp39 = alloca i32, align 4
  %__cil_tmp40 = alloca %struct.list_head*, align 8
  %__cil_tmp41 = alloca i32, align 4
  %__cil_tmp42 = alloca i32, align 4
  %__cil_tmp43 = alloca i32, align 4
  %__cil_tmp44 = alloca i32, align 4
  %__cil_tmp45 = alloca %struct.list_head*, align 8
  %__cil_tmp46 = alloca i32, align 4
  %__cil_tmp47 = alloca i32, align 4
  %__cil_tmp48 = alloca i32, align 4
  %__cil_tmp49 = alloca i32, align 4
  %__cil_tmp50 = alloca %struct.list_head*, align 8
  %__cil_tmp51 = alloca i32, align 4
  %__cil_tmp52 = alloca i32, align 4
  %__cil_tmp53 = alloca i32, align 4
  %__cil_tmp54 = alloca i32, align 4
  %__cil_tmp55 = alloca %struct.list_head*, align 8
  %__cil_tmp56 = alloca i32, align 4
  %__cil_tmp57 = alloca i32, align 4
  %__cil_tmp58 = alloca i32, align 4
  %__cil_tmp59 = alloca %struct.list_head*, align 8
  %__cil_tmp60 = alloca i32, align 4
  %__cil_tmp61 = alloca i32, align 4
  %__cil_tmp62 = alloca i32, align 4
  %__cil_tmp63 = alloca i32, align 4
  %__cil_tmp64 = alloca %struct.list_head*, align 8
  %__cil_tmp65 = alloca i32, align 4
  %__cil_tmp66 = alloca i32, align 4
  %__cil_tmp67 = alloca i32, align 4
  %__cil_tmp68 = alloca i32, align 4
  %__cil_tmp69 = alloca %struct.list_head*, align 8
  %__cil_tmp70 = alloca i32, align 4
  %__cil_tmp71 = alloca i32, align 4
  %__cil_tmp72 = alloca %struct.node*, align 8
  %__cil_tmp73 = alloca i32, align 4
  %__cil_tmp74 = alloca i32, align 4
  %__cil_tmp75 = alloca i32, align 4
  %__cil_tmp76 = alloca i32, align 4
  %__cil_tmp77 = alloca i32, align 4
  %__cil_tmp78 = alloca %struct.list_head*, align 8
  %__cil_tmp79 = alloca %struct.node*, align 8
  %__cil_tmp80 = alloca i32, align 4
  %__cil_tmp81 = alloca i32, align 4
  %__cil_tmp82 = alloca i32, align 4
  %__cil_tmp83 = alloca i32*, align 8
  %__cil_tmp84 = alloca %struct.node*, align 8
  %__cil_tmp85 = alloca i32, align 4
  %__cil_tmp86 = alloca i32, align 4
  %__cil_tmp87 = alloca i32, align 4
  %__cil_tmp88 = alloca i32, align 4
  %__cil_tmp89 = alloca i32, align 4
  %__cil_tmp90 = alloca %struct.list_head*, align 8
  %__cil_tmp91 = alloca i32, align 4
  %__cil_tmp92 = alloca i32, align 4
  %__cil_tmp93 = alloca %struct.list_head*, align 8
  %__cil_tmp94 = alloca i32, align 4
  %__cil_tmp95 = alloca i32, align 4
  %__cil_tmp96 = alloca i32, align 4
  %__cil_tmp97 = alloca i32, align 4
  %__cil_tmp98 = alloca i32, align 4
  %__cil_tmp99 = alloca i32, align 4
  %__cil_tmp100 = alloca %struct.list_head*, align 8
  %__cil_tmp101 = alloca %struct.list_head*, align 8
  %__cil_tmp102 = alloca i32, align 4
  %__cil_tmp103 = alloca i32, align 4
  %__cil_tmp104 = alloca i32, align 4
  %__cil_tmp105 = alloca %struct.list_head*, align 8
  %__cil_tmp106 = alloca i32, align 4
  %__cil_tmp107 = alloca i32, align 4
  %__cil_tmp108 = alloca i32, align 4
  %__cil_tmp109 = alloca %struct.list_head*, align 8
  %__cil_tmp110 = alloca i32, align 4
  %__cil_tmp111 = alloca %struct.list_head*, align 8
  %__cil_tmp112 = alloca i32, align 4
  %__cil_tmp113 = alloca %struct.node*, align 8
  %__cil_tmp114 = alloca i32, align 4
  %__cil_tmp115 = alloca i32, align 4
  %__cil_tmp116 = alloca %struct.list_head*, align 8
  %__cil_tmp117 = alloca i64, align 8
  %__cil_tmp118 = alloca i8*, align 8
  %__cil_tmp119 = alloca i8*, align 8
  %__cil_tmp120 = alloca %struct.node*, align 8
  %__cil_tmp121 = alloca i32, align 4
  %__cil_tmp122 = alloca i32, align 4
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry
  br label %while_0_continue

while_0_continue:                                 ; preds = %while.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %tobool = icmp ne %struct.list_head* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %while_0_continue
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit:                                        ; No predecessors!
  br label %if.end

if.else:                                          ; preds = %while_0_continue
  br label %if.end

if.end:                                           ; preds = %if.else, %fail.exit
  br label %while_0_break

while_0_break:                                    ; preds = %if.end
  br label %while.body1

while.body1:                                      ; preds = %while_0_break
  br label %while_1_continue

while_1_continue:                                 ; preds = %while.body1
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %2 = ptrtoint %struct.list_head* %1 to i32
  store i32 %2, i32* %__cil_tmp3, align 4
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %4 = bitcast %struct.list_head* %3 to %struct.list_head**
  %5 = load %struct.list_head*, %struct.list_head** %4, align 8
  store %struct.list_head* %5, %struct.list_head** %__cil_tmp4, align 8
  %6 = load %struct.list_head*, %struct.list_head** %__cil_tmp4, align 8
  %7 = ptrtoint %struct.list_head* %6 to i32
  store i32 %7, i32* %__cil_tmp5, align 4
  %8 = load i32, i32* %__cil_tmp5, align 4
  %9 = load i32, i32* %__cil_tmp3, align 4
  %cmp = icmp ne i32 %8, %9
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %__cil_tmp6, align 4
  %10 = load i32, i32* %__cil_tmp6, align 4
  %tobool2 = icmp ne i32 %10, 0
  br i1 %tobool2, label %if.else4, label %if.then3

if.then3:                                         ; preds = %while_1_continue
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit1:                                       ; No predecessors!
  br label %if.end5

if.else4:                                         ; preds = %while_1_continue
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %fail.exit1
  br label %while_1_break

while_1_break:                                    ; preds = %if.end5
  br label %while.body6

while.body6:                                      ; preds = %while_1_break
  br label %while_2_continue

while_2_continue:                                 ; preds = %while.body6
  %11 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %12 = ptrtoint %struct.list_head* %11 to i32
  store i32 %12, i32* %__cil_tmp7, align 4
  %13 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %14 = ptrtoint %struct.list_head* %13 to i32
  store i32 %14, i32* %__cil_tmp8, align 4
  %15 = load i32, i32* %__cil_tmp8, align 4
  %add = add i32 %15, 4
  store i32 %add, i32* %__cil_tmp9, align 4
  %16 = load i32, i32* %__cil_tmp9, align 4
  %conv7 = zext i32 %16 to i64
  %17 = inttoptr i64 %conv7 to %struct.list_head**
  %18 = load %struct.list_head*, %struct.list_head** %17, align 8
  store %struct.list_head* %18, %struct.list_head** %__cil_tmp10, align 8
  %19 = load %struct.list_head*, %struct.list_head** %__cil_tmp10, align 8
  %20 = ptrtoint %struct.list_head* %19 to i32
  store i32 %20, i32* %__cil_tmp11, align 4
  %21 = load i32, i32* %__cil_tmp11, align 4
  %22 = load i32, i32* %__cil_tmp7, align 4
  %cmp8 = icmp ne i32 %21, %22
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %__cil_tmp12, align 4
  %23 = load i32, i32* %__cil_tmp12, align 4
  %tobool10 = icmp ne i32 %23, 0
  br i1 %tobool10, label %if.else12, label %if.then11

if.then11:                                        ; preds = %while_2_continue
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit2:                                       ; No predecessors!
  br label %if.end13

if.else12:                                        ; preds = %while_2_continue
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %fail.exit2
  br label %while_2_break

while_2_break:                                    ; preds = %if.end13
  %24 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %25 = ptrtoint %struct.list_head* %24 to i32
  store i32 %25, i32* %__cil_tmp13, align 4
  %26 = load i32, i32* %__cil_tmp13, align 4
  %add14 = add i32 %26, 4
  store i32 %add14, i32* %__cil_tmp14, align 4
  %27 = load i32, i32* %__cil_tmp14, align 4
  %conv15 = zext i32 %27 to i64
  %28 = inttoptr i64 %conv15 to %struct.list_head**
  %29 = load %struct.list_head*, %struct.list_head** %28, align 8
  store %struct.list_head* %29, %struct.list_head** %__cil_tmp15, align 8
  %30 = load %struct.list_head*, %struct.list_head** %__cil_tmp15, align 8
  store %struct.list_head* %30, %struct.list_head** %head.addr, align 8
  br label %while.body16

while.body16:                                     ; preds = %while_2_break
  br label %while_3_continue

while_3_continue:                                 ; preds = %while.body16
  %31 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %tobool17 = icmp ne %struct.list_head* %31, null
  br i1 %tobool17, label %if.else19, label %if.then18

if.then18:                                        ; preds = %while_3_continue
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit3:                                       ; No predecessors!
  br label %if.end20

if.else19:                                        ; preds = %while_3_continue
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %fail.exit3
  br label %while_3_break

while_3_break:                                    ; preds = %if.end20
  br label %while.body21

while.body21:                                     ; preds = %while_3_break
  br label %while_4_continue

while_4_continue:                                 ; preds = %while.body21
  %32 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %33 = ptrtoint %struct.list_head* %32 to i32
  store i32 %33, i32* %__cil_tmp16, align 4
  %34 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %35 = bitcast %struct.list_head* %34 to %struct.list_head**
  %36 = load %struct.list_head*, %struct.list_head** %35, align 8
  store %struct.list_head* %36, %struct.list_head** %__cil_tmp17, align 8
  %37 = load %struct.list_head*, %struct.list_head** %__cil_tmp17, align 8
  %38 = ptrtoint %struct.list_head* %37 to i32
  store i32 %38, i32* %__cil_tmp18, align 4
  %39 = load i32, i32* %__cil_tmp18, align 4
  %40 = load i32, i32* %__cil_tmp16, align 4
  %cmp22 = icmp ne i32 %39, %40
  %conv23 = zext i1 %cmp22 to i32
  store i32 %conv23, i32* %__cil_tmp19, align 4
  %41 = load i32, i32* %__cil_tmp19, align 4
  %tobool24 = icmp ne i32 %41, 0
  br i1 %tobool24, label %if.else26, label %if.then25

if.then25:                                        ; preds = %while_4_continue
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit4:                                       ; No predecessors!
  br label %if.end27

if.else26:                                        ; preds = %while_4_continue
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %fail.exit4
  br label %while_4_break

while_4_break:                                    ; preds = %if.end27
  br label %while.body28

while.body28:                                     ; preds = %while_4_break
  br label %while_5_continue

while_5_continue:                                 ; preds = %while.body28
  %42 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %43 = ptrtoint %struct.list_head* %42 to i32
  store i32 %43, i32* %__cil_tmp20, align 4
  %44 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %45 = ptrtoint %struct.list_head* %44 to i32
  store i32 %45, i32* %__cil_tmp21, align 4
  %46 = load i32, i32* %__cil_tmp21, align 4
  %add29 = add i32 %46, 4
  store i32 %add29, i32* %__cil_tmp22, align 4
  %47 = load i32, i32* %__cil_tmp22, align 4
  %conv30 = zext i32 %47 to i64
  %48 = inttoptr i64 %conv30 to %struct.list_head**
  %49 = load %struct.list_head*, %struct.list_head** %48, align 8
  store %struct.list_head* %49, %struct.list_head** %__cil_tmp23, align 8
  %50 = load %struct.list_head*, %struct.list_head** %__cil_tmp23, align 8
  %51 = ptrtoint %struct.list_head* %50 to i32
  store i32 %51, i32* %__cil_tmp24, align 4
  %52 = load i32, i32* %__cil_tmp24, align 4
  %53 = load i32, i32* %__cil_tmp20, align 4
  %cmp31 = icmp ne i32 %52, %53
  %conv32 = zext i1 %cmp31 to i32
  store i32 %conv32, i32* %__cil_tmp25, align 4
  %54 = load i32, i32* %__cil_tmp25, align 4
  %tobool33 = icmp ne i32 %54, 0
  br i1 %tobool33, label %if.else35, label %if.then34

if.then34:                                        ; preds = %while_5_continue
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit5:                                       ; No predecessors!
  br label %if.end36

if.else35:                                        ; preds = %while_5_continue
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %fail.exit5
  br label %while_5_break

while_5_break:                                    ; preds = %if.end36
  store %struct.node* null, %struct.node** %__cil_tmp26, align 8
  %55 = load %struct.node*, %struct.node** %__cil_tmp26, align 8
  %56 = ptrtoint %struct.node* %55 to i32
  store i32 %56, i32* %__cil_tmp27, align 4
  %57 = load i32, i32* %__cil_tmp27, align 4
  %add37 = add i32 %57, 4
  store i32 %add37, i32* %__cil_tmp28, align 4
  %58 = load i32, i32* %__cil_tmp28, align 4
  %conv38 = zext i32 %58 to i64
  %59 = inttoptr i64 %conv38 to %struct.list_head*
  store %struct.list_head* %59, %struct.list_head** %__cil_tmp29, align 8
  %60 = load %struct.list_head*, %struct.list_head** %__cil_tmp29, align 8
  %61 = ptrtoint %struct.list_head* %60 to i64
  store i64 %61, i64* %__cil_tmp30, align 8
  %62 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %63 = bitcast %struct.list_head* %62 to i8*
  store i8* %63, i8** %__cil_tmp31, align 8
  %64 = load i8*, i8** %__cil_tmp31, align 8
  %65 = load i64, i64* %__cil_tmp30, align 8
  %idx.neg = sub i64 0, %65
  %add.ptr = getelementptr inbounds i8, i8* %64, i64 %idx.neg
  store i8* %add.ptr, i8** %__cil_tmp32, align 8
  %66 = load i8*, i8** %__cil_tmp32, align 8
  %67 = bitcast i8* %66 to %struct.node*
  store %struct.node* %67, %struct.node** %__cil_tmp33, align 8
  %68 = load %struct.node*, %struct.node** %__cil_tmp33, align 8
  store %struct.node* %68, %struct.node** %node, align 8
  br label %while.body39

while.body39:                                     ; preds = %while_5_break
  br label %while_6_continue

while_6_continue:                                 ; preds = %while.body39
  %69 = load %struct.node*, %struct.node** %node, align 8
  %tobool40 = icmp ne %struct.node* %69, null
  br i1 %tobool40, label %if.else42, label %if.then41

if.then41:                                        ; preds = %while_6_continue
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit6:                                       ; No predecessors!
  br label %if.end43

if.else42:                                        ; preds = %while_6_continue
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %fail.exit6
  br label %while_6_break

while_6_break:                                    ; preds = %if.end43
  br label %while.body44

while.body44:                                     ; preds = %while_6_break
  br label %while_7_continue

while_7_continue:                                 ; preds = %while.body44
  %70 = load %struct.node*, %struct.node** %node, align 8
  %71 = ptrtoint %struct.node* %70 to i32
  store i32 %71, i32* %__cil_tmp34, align 4
  %72 = load i32, i32* %__cil_tmp34, align 4
  %add45 = add i32 %72, 12
  store i32 %add45, i32* %__cil_tmp35, align 4
  %73 = load i32, i32* %__cil_tmp35, align 4
  %conv46 = zext i32 %73 to i64
  %74 = inttoptr i64 %conv46 to %struct.list_head*
  store %struct.list_head* %74, %struct.list_head** %__cil_tmp36, align 8
  %75 = load %struct.list_head*, %struct.list_head** %__cil_tmp36, align 8
  %76 = ptrtoint %struct.list_head* %75 to i32
  store i32 %76, i32* %__cil_tmp37, align 4
  %77 = load %struct.node*, %struct.node** %node, align 8
  %78 = ptrtoint %struct.node* %77 to i32
  store i32 %78, i32* %__cil_tmp38, align 4
  %79 = load i32, i32* %__cil_tmp38, align 4
  %add47 = add i32 %79, 12
  store i32 %add47, i32* %__cil_tmp39, align 4
  %80 = load i32, i32* %__cil_tmp39, align 4
  %conv48 = zext i32 %80 to i64
  %81 = inttoptr i64 %conv48 to %struct.list_head**
  %82 = load %struct.list_head*, %struct.list_head** %81, align 8
  store %struct.list_head* %82, %struct.list_head** %__cil_tmp40, align 8
  %83 = load %struct.list_head*, %struct.list_head** %__cil_tmp40, align 8
  %84 = ptrtoint %struct.list_head* %83 to i32
  store i32 %84, i32* %__cil_tmp41, align 4
  %85 = load i32, i32* %__cil_tmp41, align 4
  %86 = load i32, i32* %__cil_tmp37, align 4
  %cmp49 = icmp eq i32 %85, %86
  %conv50 = zext i1 %cmp49 to i32
  store i32 %conv50, i32* %__cil_tmp42, align 4
  %87 = load i32, i32* %__cil_tmp42, align 4
  %tobool51 = icmp ne i32 %87, 0
  br i1 %tobool51, label %if.else53, label %if.then52

if.then52:                                        ; preds = %while_7_continue
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit7:                                       ; No predecessors!
  br label %if.end54

if.else53:                                        ; preds = %while_7_continue
  br label %if.end54

if.end54:                                         ; preds = %if.else53, %fail.exit7
  br label %while_7_break

while_7_break:                                    ; preds = %if.end54
  br label %while.body55

while.body55:                                     ; preds = %while_7_break
  br label %while_8_continue

while_8_continue:                                 ; preds = %while.body55
  %88 = load %struct.node*, %struct.node** %node, align 8
  %89 = ptrtoint %struct.node* %88 to i32
  store i32 %89, i32* %__cil_tmp43, align 4
  %90 = load i32, i32* %__cil_tmp43, align 4
  %add56 = add i32 %90, 12
  store i32 %add56, i32* %__cil_tmp44, align 4
  %91 = load i32, i32* %__cil_tmp44, align 4
  %conv57 = zext i32 %91 to i64
  %92 = inttoptr i64 %conv57 to %struct.list_head*
  store %struct.list_head* %92, %struct.list_head** %__cil_tmp45, align 8
  %93 = load %struct.list_head*, %struct.list_head** %__cil_tmp45, align 8
  %94 = ptrtoint %struct.list_head* %93 to i32
  store i32 %94, i32* %__cil_tmp46, align 4
  store i32 16, i32* %__cil_tmp47, align 4
  %95 = load %struct.node*, %struct.node** %node, align 8
  %96 = ptrtoint %struct.node* %95 to i32
  store i32 %96, i32* %__cil_tmp48, align 4
  %97 = load i32, i32* %__cil_tmp48, align 4
  %98 = load i32, i32* %__cil_tmp47, align 4
  %add58 = add i32 %97, %98
  store i32 %add58, i32* %__cil_tmp49, align 4
  %99 = load i32, i32* %__cil_tmp49, align 4
  %conv59 = zext i32 %99 to i64
  %100 = inttoptr i64 %conv59 to %struct.list_head**
  %101 = load %struct.list_head*, %struct.list_head** %100, align 8
  store %struct.list_head* %101, %struct.list_head** %__cil_tmp50, align 8
  %102 = load %struct.list_head*, %struct.list_head** %__cil_tmp50, align 8
  %103 = ptrtoint %struct.list_head* %102 to i32
  store i32 %103, i32* %__cil_tmp51, align 4
  %104 = load i32, i32* %__cil_tmp51, align 4
  %105 = load i32, i32* %__cil_tmp46, align 4
  %cmp60 = icmp eq i32 %104, %105
  %conv61 = zext i1 %cmp60 to i32
  store i32 %conv61, i32* %__cil_tmp52, align 4
  %106 = load i32, i32* %__cil_tmp52, align 4
  %tobool62 = icmp ne i32 %106, 0
  br i1 %tobool62, label %if.else64, label %if.then63

if.then63:                                        ; preds = %while_8_continue
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit8:                                       ; No predecessors!
  br label %if.end65

if.else64:                                        ; preds = %while_8_continue
  br label %if.end65

if.end65:                                         ; preds = %if.else64, %fail.exit8
  br label %while_8_break

while_8_break:                                    ; preds = %if.end65
  br label %while.body66

while.body66:                                     ; preds = %while_8_break
  br label %while_9_continue

while_9_continue:                                 ; preds = %while.body66
  %107 = load %struct.node*, %struct.node** %node, align 8
  %108 = ptrtoint %struct.node* %107 to i32
  store i32 %108, i32* %__cil_tmp53, align 4
  %109 = load i32, i32* %__cil_tmp53, align 4
  %add67 = add i32 %109, 4
  store i32 %add67, i32* %__cil_tmp54, align 4
  %110 = load i32, i32* %__cil_tmp54, align 4
  %conv68 = zext i32 %110 to i64
  %111 = inttoptr i64 %conv68 to %struct.list_head*
  store %struct.list_head* %111, %struct.list_head** %__cil_tmp55, align 8
  %112 = load %struct.list_head*, %struct.list_head** %__cil_tmp55, align 8
  %113 = ptrtoint %struct.list_head* %112 to i32
  store i32 %113, i32* %__cil_tmp56, align 4
  %114 = load %struct.node*, %struct.node** %node, align 8
  %115 = ptrtoint %struct.node* %114 to i32
  store i32 %115, i32* %__cil_tmp57, align 4
  %116 = load i32, i32* %__cil_tmp57, align 4
  %add69 = add i32 %116, 12
  store i32 %add69, i32* %__cil_tmp58, align 4
  %117 = load i32, i32* %__cil_tmp58, align 4
  %conv70 = zext i32 %117 to i64
  %118 = inttoptr i64 %conv70 to %struct.list_head**
  %119 = load %struct.list_head*, %struct.list_head** %118, align 8
  store %struct.list_head* %119, %struct.list_head** %__cil_tmp59, align 8
  %120 = load %struct.list_head*, %struct.list_head** %__cil_tmp59, align 8
  %121 = ptrtoint %struct.list_head* %120 to i32
  store i32 %121, i32* %__cil_tmp60, align 4
  %122 = load i32, i32* %__cil_tmp60, align 4
  %123 = load i32, i32* %__cil_tmp56, align 4
  %cmp71 = icmp ne i32 %122, %123
  %conv72 = zext i1 %cmp71 to i32
  store i32 %conv72, i32* %__cil_tmp61, align 4
  %124 = load i32, i32* %__cil_tmp61, align 4
  %tobool73 = icmp ne i32 %124, 0
  br i1 %tobool73, label %if.else75, label %if.then74

if.then74:                                        ; preds = %while_9_continue
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit9:                                       ; No predecessors!
  br label %if.end76

if.else75:                                        ; preds = %while_9_continue
  br label %if.end76

if.end76:                                         ; preds = %if.else75, %fail.exit9
  br label %while_9_break

while_9_break:                                    ; preds = %if.end76
  br label %while.body77

while.body77:                                     ; preds = %while_9_break
  br label %while_10_continue

while_10_continue:                                ; preds = %while.body77
  %125 = load %struct.node*, %struct.node** %node, align 8
  %126 = ptrtoint %struct.node* %125 to i32
  store i32 %126, i32* %__cil_tmp62, align 4
  %127 = load i32, i32* %__cil_tmp62, align 4
  %add78 = add i32 %127, 4
  store i32 %add78, i32* %__cil_tmp63, align 4
  %128 = load i32, i32* %__cil_tmp63, align 4
  %conv79 = zext i32 %128 to i64
  %129 = inttoptr i64 %conv79 to %struct.list_head*
  store %struct.list_head* %129, %struct.list_head** %__cil_tmp64, align 8
  %130 = load %struct.list_head*, %struct.list_head** %__cil_tmp64, align 8
  %131 = ptrtoint %struct.list_head* %130 to i32
  store i32 %131, i32* %__cil_tmp65, align 4
  store i32 16, i32* %__cil_tmp66, align 4
  %132 = load %struct.node*, %struct.node** %node, align 8
  %133 = ptrtoint %struct.node* %132 to i32
  store i32 %133, i32* %__cil_tmp67, align 4
  %134 = load i32, i32* %__cil_tmp67, align 4
  %135 = load i32, i32* %__cil_tmp66, align 4
  %add80 = add i32 %134, %135
  store i32 %add80, i32* %__cil_tmp68, align 4
  %136 = load i32, i32* %__cil_tmp68, align 4
  %conv81 = zext i32 %136 to i64
  %137 = inttoptr i64 %conv81 to %struct.list_head**
  %138 = load %struct.list_head*, %struct.list_head** %137, align 8
  store %struct.list_head* %138, %struct.list_head** %__cil_tmp69, align 8
  %139 = load %struct.list_head*, %struct.list_head** %__cil_tmp69, align 8
  %140 = ptrtoint %struct.list_head* %139 to i32
  store i32 %140, i32* %__cil_tmp70, align 4
  %141 = load i32, i32* %__cil_tmp70, align 4
  %142 = load i32, i32* %__cil_tmp65, align 4
  %cmp82 = icmp ne i32 %141, %142
  %conv83 = zext i1 %cmp82 to i32
  store i32 %conv83, i32* %__cil_tmp71, align 4
  %143 = load i32, i32* %__cil_tmp71, align 4
  %tobool84 = icmp ne i32 %143, 0
  br i1 %tobool84, label %if.else86, label %if.then85

if.then85:                                        ; preds = %while_10_continue
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit10:                                      ; No predecessors!
  br label %if.end87

if.else86:                                        ; preds = %while_10_continue
  br label %if.end87

if.end87:                                         ; preds = %if.else86, %fail.exit10
  br label %while_10_break

while_10_break:                                   ; preds = %if.end87
  br label %while.body88

while.body88:                                     ; preds = %while_10_break
  br label %while_11_continue

while_11_continue:                                ; preds = %while.body88
  %144 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %145 = bitcast %struct.list_head* %144 to %struct.node*
  store %struct.node* %145, %struct.node** %__cil_tmp72, align 8
  %146 = load %struct.node*, %struct.node** %__cil_tmp72, align 8
  %147 = ptrtoint %struct.node* %146 to i32
  store i32 %147, i32* %__cil_tmp73, align 4
  %148 = load %struct.node*, %struct.node** %node, align 8
  %149 = ptrtoint %struct.node* %148 to i32
  store i32 %149, i32* %__cil_tmp74, align 4
  %150 = load i32, i32* %__cil_tmp74, align 4
  %151 = load i32, i32* %__cil_tmp73, align 4
  %cmp89 = icmp ne i32 %150, %151
  %conv90 = zext i1 %cmp89 to i32
  store i32 %conv90, i32* %__cil_tmp75, align 4
  %152 = load i32, i32* %__cil_tmp75, align 4
  %tobool91 = icmp ne i32 %152, 0
  br i1 %tobool91, label %if.else93, label %if.then92

if.then92:                                        ; preds = %while_11_continue
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit11:                                      ; No predecessors!
  br label %if.end94

if.else93:                                        ; preds = %while_11_continue
  br label %if.end94

if.end94:                                         ; preds = %if.else93, %fail.exit11
  br label %while_11_break

while_11_break:                                   ; preds = %if.end94
  br label %while.body95

while.body95:                                     ; preds = %while_11_break
  br label %while_12_continue

while_12_continue:                                ; preds = %while.body95
  %153 = load %struct.node*, %struct.node** %node, align 8
  %154 = ptrtoint %struct.node* %153 to i32
  store i32 %154, i32* %__cil_tmp76, align 4
  %155 = load i32, i32* %__cil_tmp76, align 4
  %add96 = add i32 %155, 4
  store i32 %add96, i32* %__cil_tmp77, align 4
  %156 = load i32, i32* %__cil_tmp77, align 4
  %conv97 = zext i32 %156 to i64
  %157 = inttoptr i64 %conv97 to %struct.list_head*
  store %struct.list_head* %157, %struct.list_head** %__cil_tmp78, align 8
  %158 = load %struct.list_head*, %struct.list_head** %__cil_tmp78, align 8
  %159 = bitcast %struct.list_head* %158 to %struct.node*
  store %struct.node* %159, %struct.node** %__cil_tmp79, align 8
  %160 = load %struct.node*, %struct.node** %__cil_tmp79, align 8
  %161 = ptrtoint %struct.node* %160 to i32
  store i32 %161, i32* %__cil_tmp80, align 4
  %162 = load %struct.node*, %struct.node** %node, align 8
  %163 = ptrtoint %struct.node* %162 to i32
  store i32 %163, i32* %__cil_tmp81, align 4
  %164 = load i32, i32* %__cil_tmp81, align 4
  %165 = load i32, i32* %__cil_tmp80, align 4
  %cmp98 = icmp ne i32 %164, %165
  %conv99 = zext i1 %cmp98 to i32
  store i32 %conv99, i32* %__cil_tmp82, align 4
  %166 = load i32, i32* %__cil_tmp82, align 4
  %tobool100 = icmp ne i32 %166, 0
  br i1 %tobool100, label %if.else102, label %if.then101

if.then101:                                       ; preds = %while_12_continue
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit12:                                      ; No predecessors!
  br label %if.end103

if.else102:                                       ; preds = %while_12_continue
  br label %if.end103

if.end103:                                        ; preds = %if.else102, %fail.exit12
  br label %while_12_break

while_12_break:                                   ; preds = %if.end103
  br label %while.body104

while.body104:                                    ; preds = %while_12_break
  br label %while_13_continue

while_13_continue:                                ; preds = %while.body104
  %167 = load %struct.node*, %struct.node** %node, align 8
  %168 = bitcast %struct.node* %167 to i32*
  store i32* %168, i32** %__cil_tmp83, align 8
  %169 = load i32*, i32** %__cil_tmp83, align 8
  %170 = bitcast i32* %169 to %struct.node*
  store %struct.node* %170, %struct.node** %__cil_tmp84, align 8
  %171 = load %struct.node*, %struct.node** %__cil_tmp84, align 8
  %172 = ptrtoint %struct.node* %171 to i32
  store i32 %172, i32* %__cil_tmp85, align 4
  %173 = load %struct.node*, %struct.node** %node, align 8
  %174 = ptrtoint %struct.node* %173 to i32
  store i32 %174, i32* %__cil_tmp86, align 4
  %175 = load i32, i32* %__cil_tmp86, align 4
  %176 = load i32, i32* %__cil_tmp85, align 4
  %cmp105 = icmp eq i32 %175, %176
  %conv106 = zext i1 %cmp105 to i32
  store i32 %conv106, i32* %__cil_tmp87, align 4
  %177 = load i32, i32* %__cil_tmp87, align 4
  %tobool107 = icmp ne i32 %177, 0
  br i1 %tobool107, label %if.else109, label %if.then108

if.then108:                                       ; preds = %while_13_continue
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit13:                                      ; No predecessors!
  br label %if.end110

if.else109:                                       ; preds = %while_13_continue
  br label %if.end110

if.end110:                                        ; preds = %if.else109, %fail.exit13
  br label %while_13_break

while_13_break:                                   ; preds = %if.end110
  br label %while.body111

while.body111:                                    ; preds = %while_13_break
  br label %while_14_continue

while_14_continue:                                ; preds = %while.body111
  %178 = load %struct.node*, %struct.node** %node, align 8
  %179 = ptrtoint %struct.node* %178 to i32
  store i32 %179, i32* %__cil_tmp88, align 4
  %180 = load i32, i32* %__cil_tmp88, align 4
  %add112 = add i32 %180, 4
  store i32 %add112, i32* %__cil_tmp89, align 4
  %181 = load i32, i32* %__cil_tmp89, align 4
  %conv113 = zext i32 %181 to i64
  %182 = inttoptr i64 %conv113 to %struct.list_head**
  %183 = load %struct.list_head*, %struct.list_head** %182, align 8
  store %struct.list_head* %183, %struct.list_head** %__cil_tmp90, align 8
  %184 = load %struct.list_head*, %struct.list_head** %__cil_tmp90, align 8
  %185 = ptrtoint %struct.list_head* %184 to i32
  store i32 %185, i32* %__cil_tmp91, align 4
  %186 = load i32, i32* %__cil_tmp91, align 4
  %add114 = add i32 %186, 4
  store i32 %add114, i32* %__cil_tmp92, align 4
  %187 = load i32, i32* %__cil_tmp92, align 4
  %conv115 = zext i32 %187 to i64
  %188 = inttoptr i64 %conv115 to %struct.list_head**
  %189 = load %struct.list_head*, %struct.list_head** %188, align 8
  store %struct.list_head* %189, %struct.list_head** %__cil_tmp93, align 8
  %190 = load %struct.list_head*, %struct.list_head** %__cil_tmp93, align 8
  %191 = ptrtoint %struct.list_head* %190 to i32
  store i32 %191, i32* %__cil_tmp94, align 4
  %192 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %193 = ptrtoint %struct.list_head* %192 to i32
  store i32 %193, i32* %__cil_tmp95, align 4
  %194 = load i32, i32* %__cil_tmp95, align 4
  %195 = load i32, i32* %__cil_tmp94, align 4
  %cmp116 = icmp eq i32 %194, %195
  %conv117 = zext i1 %cmp116 to i32
  store i32 %conv117, i32* %__cil_tmp96, align 4
  %196 = load i32, i32* %__cil_tmp96, align 4
  %tobool118 = icmp ne i32 %196, 0
  br i1 %tobool118, label %if.else120, label %if.then119

if.then119:                                       ; preds = %while_14_continue
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit14:                                      ; No predecessors!
  br label %if.end121

if.else120:                                       ; preds = %while_14_continue
  br label %if.end121

if.end121:                                        ; preds = %if.else120, %fail.exit14
  br label %while_14_break

while_14_break:                                   ; preds = %if.end121
  br label %while.body122

while.body122:                                    ; preds = %while_14_break
  br label %while_15_continue

while_15_continue:                                ; preds = %while.body122
  store i32 8, i32* %__cil_tmp97, align 4
  %197 = load %struct.node*, %struct.node** %node, align 8
  %198 = ptrtoint %struct.node* %197 to i32
  store i32 %198, i32* %__cil_tmp98, align 4
  %199 = load i32, i32* %__cil_tmp98, align 4
  %200 = load i32, i32* %__cil_tmp97, align 4
  %add123 = add i32 %199, %200
  store i32 %add123, i32* %__cil_tmp99, align 4
  %201 = load i32, i32* %__cil_tmp99, align 4
  %conv124 = zext i32 %201 to i64
  %202 = inttoptr i64 %conv124 to %struct.list_head**
  %203 = load %struct.list_head*, %struct.list_head** %202, align 8
  store %struct.list_head* %203, %struct.list_head** %__cil_tmp100, align 8
  %204 = load %struct.list_head*, %struct.list_head** %__cil_tmp100, align 8
  %205 = bitcast %struct.list_head* %204 to %struct.list_head**
  %206 = load %struct.list_head*, %struct.list_head** %205, align 8
  store %struct.list_head* %206, %struct.list_head** %__cil_tmp101, align 8
  %207 = load %struct.list_head*, %struct.list_head** %__cil_tmp101, align 8
  %208 = ptrtoint %struct.list_head* %207 to i32
  store i32 %208, i32* %__cil_tmp102, align 4
  %209 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %210 = ptrtoint %struct.list_head* %209 to i32
  store i32 %210, i32* %__cil_tmp103, align 4
  %211 = load i32, i32* %__cil_tmp103, align 4
  %212 = load i32, i32* %__cil_tmp102, align 4
  %cmp125 = icmp eq i32 %211, %212
  %conv126 = zext i1 %cmp125 to i32
  store i32 %conv126, i32* %__cil_tmp104, align 4
  %213 = load i32, i32* %__cil_tmp104, align 4
  %tobool127 = icmp ne i32 %213, 0
  br i1 %tobool127, label %if.else129, label %if.then128

if.then128:                                       ; preds = %while_15_continue
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit15:                                      ; No predecessors!
  br label %if.end130

if.else129:                                       ; preds = %while_15_continue
  br label %if.end130

if.end130:                                        ; preds = %if.else129, %fail.exit15
  br label %while_15_break

while_15_break:                                   ; preds = %if.end130
  %214 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %215 = bitcast %struct.list_head* %214 to %struct.list_head**
  %216 = load %struct.list_head*, %struct.list_head** %215, align 8
  store %struct.list_head* %216, %struct.list_head** %__cil_tmp105, align 8
  %217 = load %struct.list_head*, %struct.list_head** %__cil_tmp105, align 8
  store %struct.list_head* %217, %struct.list_head** %head.addr, align 8
  br label %while.body131

while.body131:                                    ; preds = %if.end138, %while_15_break
  br label %while_16_continue

while_16_continue:                                ; preds = %while.body131
  %218 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %219 = ptrtoint %struct.list_head* %218 to i32
  store i32 %219, i32* %__cil_tmp106, align 4
  %220 = load %struct.node*, %struct.node** %node, align 8
  %221 = ptrtoint %struct.node* %220 to i32
  store i32 %221, i32* %__cil_tmp107, align 4
  %222 = load i32, i32* %__cil_tmp107, align 4
  %add132 = add i32 %222, 4
  store i32 %add132, i32* %__cil_tmp108, align 4
  %223 = load i32, i32* %__cil_tmp108, align 4
  %conv133 = zext i32 %223 to i64
  %224 = inttoptr i64 %conv133 to %struct.list_head*
  store %struct.list_head* %224, %struct.list_head** %__cil_tmp109, align 8
  %225 = load %struct.list_head*, %struct.list_head** %__cil_tmp109, align 8
  %226 = ptrtoint %struct.list_head* %225 to i32
  store i32 %226, i32* %__cil_tmp110, align 4
  %227 = load i32, i32* %__cil_tmp110, align 4
  %228 = load i32, i32* %__cil_tmp106, align 4
  %cmp134 = icmp ne i32 %227, %228
  br i1 %cmp134, label %if.then136, label %if.else137

if.then136:                                       ; preds = %while_16_continue
  br label %if.end138

if.else137:                                       ; preds = %while_16_continue
  br label %while_16_break

if.end138:                                        ; preds = %if.then136
  %229 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %230 = bitcast %struct.list_head* %229 to %struct.list_head**
  %231 = load %struct.list_head*, %struct.list_head** %230, align 8
  store %struct.list_head* %231, %struct.list_head** %__cil_tmp111, align 8
  %232 = load %struct.list_head*, %struct.list_head** %__cil_tmp111, align 8
  store %struct.list_head* %232, %struct.list_head** %head.addr, align 8
  br label %while.body131

while_16_break:                                   ; preds = %if.else137
  br label %while.body139

while.body139:                                    ; preds = %while_16_break
  br label %while_17_continue

while_17_continue:                                ; preds = %while.body139
  %233 = load %struct.node*, %struct.node** %node, align 8
  %234 = ptrtoint %struct.node* %233 to i32
  store i32 %234, i32* %__cil_tmp112, align 4
  store %struct.node* null, %struct.node** %__cil_tmp113, align 8
  %235 = load %struct.node*, %struct.node** %__cil_tmp113, align 8
  %236 = ptrtoint %struct.node* %235 to i32
  store i32 %236, i32* %__cil_tmp114, align 4
  %237 = load i32, i32* %__cil_tmp114, align 4
  %add140 = add i32 %237, 4
  store i32 %add140, i32* %__cil_tmp115, align 4
  %238 = load i32, i32* %__cil_tmp115, align 4
  %conv141 = zext i32 %238 to i64
  %239 = inttoptr i64 %conv141 to %struct.list_head*
  store %struct.list_head* %239, %struct.list_head** %__cil_tmp116, align 8
  %240 = load %struct.list_head*, %struct.list_head** %__cil_tmp116, align 8
  %241 = ptrtoint %struct.list_head* %240 to i64
  store i64 %241, i64* %__cil_tmp117, align 8
  %242 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %243 = bitcast %struct.list_head* %242 to i8*
  store i8* %243, i8** %__cil_tmp118, align 8
  %244 = load i8*, i8** %__cil_tmp118, align 8
  %245 = load i64, i64* %__cil_tmp117, align 8
  %idx.neg142 = sub i64 0, %245
  %add.ptr143 = getelementptr inbounds i8, i8* %244, i64 %idx.neg142
  store i8* %add.ptr143, i8** %__cil_tmp119, align 8
  %246 = load i8*, i8** %__cil_tmp119, align 8
  %247 = bitcast i8* %246 to %struct.node*
  store %struct.node* %247, %struct.node** %__cil_tmp120, align 8
  %248 = load %struct.node*, %struct.node** %__cil_tmp120, align 8
  %249 = ptrtoint %struct.node* %248 to i32
  store i32 %249, i32* %__cil_tmp121, align 4
  %250 = load i32, i32* %__cil_tmp121, align 4
  %251 = load i32, i32* %__cil_tmp112, align 4
  %cmp144 = icmp eq i32 %250, %251
  %conv145 = zext i1 %cmp144 to i32
  store i32 %conv145, i32* %__cil_tmp122, align 4
  %252 = load i32, i32* %__cil_tmp122, align 4
  %tobool146 = icmp ne i32 %252, 0
  br i1 %tobool146, label %if.else148, label %if.then147

if.then147:                                       ; preds = %while_17_continue
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit16:                                      ; No predecessors!
  br label %if.end149

if.else148:                                       ; preds = %while_17_continue
  br label %if.end149

if.end149:                                        ; preds = %if.else148, %fail.exit16
  br label %while_17_break

while_17_break:                                   ; preds = %if.end149
  ret void
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #4

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
