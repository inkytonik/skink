; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.node = type { i32, %struct.list_head, %struct.list_head }

@gl_list = global %struct.list_head { %struct.list_head* @gl_list, %struct.list_head* @gl_list }, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
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
  %1 = alloca %struct.list_head*, align 8
  %entry.i.5.i.i = alloca %struct.node*, align 8
  %__cil_tmp3.i.6.i.i = alloca %struct.node*, align 8
  %__cil_tmp4.i.7.i.i = alloca i32, align 4
  %__cil_tmp5.i.8.i.i = alloca i32, align 4
  %__cil_tmp6.i.9.i.i = alloca %struct.list_head*, align 8
  %__cil_tmp7.i.10.i.i = alloca i64, align 8
  %__cil_tmp8.i.11.i.i = alloca i8*, align 8
  %__cil_tmp9.i.12.i.i = alloca i8*, align 8
  %2 = alloca %struct.list_head*, align 8
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.list_head*, align 8
  %__cil_tmp4.i.i.i.i.i = alloca i32, align 4
  %__cil_tmp5.i.i.i.i.i = alloca i32, align 4
  %__cil_tmp6.i.i.i.i.i = alloca i32, align 4
  %__cil_tmp7.i.i.i.i.i = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.list_head*, align 8
  %__cil_tmp3.i.1.i.i.i = alloca %struct.list_head*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.list_head*, align 8
  %__cil_tmp3.i.i.i.i = alloca i32, align 4
  %__cil_tmp4.i.i.i.i.1 = alloca i32, align 4
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.list_head*, align 8
  %__cil_tmp3.i.1.i.i = alloca i32, align 4
  %__cil_tmp4.i.2.i.i = alloca i32, align 4
  %__cil_tmp5.i.3.i.i = alloca %struct.list_head*, align 8
  %__cil_tmp6.i.4.i.i = alloca %struct.list_head*, align 8
  %11 = alloca %struct.list_head*, align 8
  %entry.i.i.i = alloca %struct.node*, align 8
  %__cil_tmp3.i.i.i.2 = alloca %struct.node*, align 8
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
  %tmp.i.i.3 = alloca i32, align 4
  %val1.i.i = alloca i32, align 4
  %tmp___0.i.i = alloca i32, align 4
  %__cil_tmp8.i.i.4 = alloca %struct.list_head*, align 8
  %__cil_tmp9.i.i.5 = alloca i32, align 4
  %__cil_tmp10.i.i.6 = alloca i32, align 4
  %tmp.i.7 = alloca i8, align 1
  %12 = alloca %struct.list_head*, align 8
  %13 = alloca %struct.list_head*, align 8
  %14 = alloca %struct.list_head*, align 8
  %__cil_tmp4.i.i.i.i = alloca i32, align 4
  %__cil_tmp5.i.i.i.i = alloca i32, align 4
  %__cil_tmp6.i.i.i.i = alloca i32, align 4
  %__cil_tmp7.i.i.i.i = alloca i32, align 4
  %15 = alloca %struct.list_head*, align 8
  %16 = alloca %struct.list_head*, align 8
  %__cil_tmp3.i.i.i = alloca %struct.list_head*, align 8
  %17 = alloca i32, align 4
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
  %18 = alloca i32, align 4
  %__cil_tmp1 = alloca %struct.list_head*, align 8
  %__cil_tmp2 = alloca %struct.list_head*, align 8
  store i32 0, i32* %18
  %19 = bitcast i32* %tmp.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19)
  %20 = bitcast i32* %tmp___0.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20)
  br label %21

; <label>:21                                      ; preds = %151, %0
  %22 = call i32 @__VERIFIER_nondet_int() #5
  store i32 %22, i32* %tmp.i, align 4
  %23 = load i32, i32* %tmp.i, align 4
  %24 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #5
  %25 = bitcast %struct.node** %node.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #5
  %26 = bitcast i8** %tmp.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #5
  %27 = bitcast i32* %__cil_tmp4.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #5
  %28 = bitcast i32* %__cil_tmp5.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #5
  %29 = bitcast i32* %__cil_tmp6.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #5
  %30 = bitcast %struct.list_head** %__cil_tmp7.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #5
  %31 = bitcast i32* %__cil_tmp8.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #5
  %32 = bitcast i32* %__cil_tmp9.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #5
  %33 = bitcast i32* %__cil_tmp10.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #5
  %34 = bitcast i32* %__cil_tmp11.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #5
  %35 = bitcast i32* %__cil_tmp12.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #5
  %36 = bitcast i32* %__cil_tmp13.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #5
  %37 = bitcast i32* %__cil_tmp14.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #5
  %38 = bitcast i32* %__cil_tmp15.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #5
  store i32 %23, i32* %17, align 4
  store i32 20, i32* %__cil_tmp4.i.i, align 4
  %39 = load i32, i32* %__cil_tmp4.i.i, align 4
  %40 = call noalias i8* @malloc(i32 %39) #5
  store i8* %40, i8** %tmp.i.i, align 8
  %41 = load i8*, i8** %tmp.i.i, align 8
  %42 = bitcast i8* %41 to %struct.node*
  store %struct.node* %42, %struct.node** %node.i.i, align 8
  %43 = load %struct.node*, %struct.node** %node.i.i, align 8
  %44 = icmp ne %struct.node* %43, null
  br i1 %44, label %gl_insert.exit.i, label %45

; <label>:45                                      ; preds = %21
  call void @abort() #6
  unreachable

gl_insert.exit.i:                                 ; preds = %21
  %46 = load i32, i32* %17, align 4
  %47 = load %struct.node*, %struct.node** %node.i.i, align 8
  %48 = bitcast %struct.node* %47 to i32*
  store i32 %46, i32* %48, align 4
  %49 = load %struct.node*, %struct.node** %node.i.i, align 8
  %50 = ptrtoint %struct.node* %49 to i32
  store i32 %50, i32* %__cil_tmp5.i.i, align 4
  %51 = load i32, i32* %__cil_tmp5.i.i, align 4
  %52 = add i32 %51, 4
  store i32 %52, i32* %__cil_tmp6.i.i, align 4
  %53 = load i32, i32* %__cil_tmp6.i.i, align 4
  %54 = zext i32 %53 to i64
  %55 = inttoptr i64 %54 to %struct.list_head*
  store %struct.list_head* %55, %struct.list_head** %__cil_tmp7.i.i, align 8
  %56 = load %struct.list_head*, %struct.list_head** %__cil_tmp7.i.i, align 8
  %57 = bitcast %struct.list_head** %15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #5
  %58 = bitcast %struct.list_head** %16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #5
  %59 = bitcast %struct.list_head** %__cil_tmp3.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #5
  store %struct.list_head* %56, %struct.list_head** %15, align 8
  store %struct.list_head* @gl_list, %struct.list_head** %16, align 8
  %60 = load %struct.list_head*, %struct.list_head** %16, align 8
  %61 = bitcast %struct.list_head* %60 to %struct.list_head**
  %62 = load %struct.list_head*, %struct.list_head** %61, align 8
  store %struct.list_head* %62, %struct.list_head** %__cil_tmp3.i.i.i, align 8
  %63 = load %struct.list_head*, %struct.list_head** %15, align 8
  %64 = load %struct.list_head*, %struct.list_head** %16, align 8
  %65 = load %struct.list_head*, %struct.list_head** %__cil_tmp3.i.i.i, align 8
  %66 = bitcast %struct.list_head** %12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #5
  %67 = bitcast %struct.list_head** %13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #5
  %68 = bitcast %struct.list_head** %14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #5
  %69 = bitcast i32* %__cil_tmp4.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #5
  %70 = bitcast i32* %__cil_tmp5.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #5
  %71 = bitcast i32* %__cil_tmp6.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #5
  %72 = bitcast i32* %__cil_tmp7.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #5
  store %struct.list_head* %63, %struct.list_head** %12, align 8
  store %struct.list_head* %64, %struct.list_head** %13, align 8
  store %struct.list_head* %65, %struct.list_head** %14, align 8
  %73 = load %struct.list_head*, %struct.list_head** %14, align 8
  %74 = ptrtoint %struct.list_head* %73 to i32
  store i32 %74, i32* %__cil_tmp4.i.i.i.i, align 4
  %75 = load i32, i32* %__cil_tmp4.i.i.i.i, align 4
  %76 = add i32 %75, 4
  store i32 %76, i32* %__cil_tmp5.i.i.i.i, align 4
  %77 = load %struct.list_head*, %struct.list_head** %12, align 8
  %78 = load i32, i32* %__cil_tmp5.i.i.i.i, align 4
  %79 = zext i32 %78 to i64
  %80 = inttoptr i64 %79 to %struct.list_head**
  store %struct.list_head* %77, %struct.list_head** %80, align 8
  %81 = load %struct.list_head*, %struct.list_head** %14, align 8
  %82 = load %struct.list_head*, %struct.list_head** %12, align 8
  %83 = bitcast %struct.list_head* %82 to %struct.list_head**
  store %struct.list_head* %81, %struct.list_head** %83, align 8
  %84 = load %struct.list_head*, %struct.list_head** %12, align 8
  %85 = ptrtoint %struct.list_head* %84 to i32
  store i32 %85, i32* %__cil_tmp6.i.i.i.i, align 4
  %86 = load i32, i32* %__cil_tmp6.i.i.i.i, align 4
  %87 = add i32 %86, 4
  store i32 %87, i32* %__cil_tmp7.i.i.i.i, align 4
  %88 = load %struct.list_head*, %struct.list_head** %13, align 8
  %89 = load i32, i32* %__cil_tmp7.i.i.i.i, align 4
  %90 = zext i32 %89 to i64
  %91 = inttoptr i64 %90 to %struct.list_head**
  store %struct.list_head* %88, %struct.list_head** %91, align 8
  %92 = load %struct.list_head*, %struct.list_head** %12, align 8
  %93 = load %struct.list_head*, %struct.list_head** %13, align 8
  %94 = bitcast %struct.list_head* %93 to %struct.list_head**
  store %struct.list_head* %92, %struct.list_head** %94, align 8
  %95 = bitcast %struct.list_head** %12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #5
  %96 = bitcast %struct.list_head** %13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #5
  %97 = bitcast %struct.list_head** %14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #5
  %98 = bitcast i32* %__cil_tmp4.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #5
  %99 = bitcast i32* %__cil_tmp5.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #5
  %100 = bitcast i32* %__cil_tmp6.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #5
  %101 = bitcast i32* %__cil_tmp7.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #5
  %102 = bitcast %struct.list_head** %15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #5
  %103 = bitcast %struct.list_head** %16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #5
  %104 = bitcast %struct.list_head** %__cil_tmp3.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #5
  %105 = load %struct.node*, %struct.node** %node.i.i, align 8
  %106 = ptrtoint %struct.node* %105 to i32
  store i32 %106, i32* %__cil_tmp8.i.i, align 4
  %107 = load i32, i32* %__cil_tmp8.i.i, align 4
  %108 = add i32 %107, 12
  store i32 %108, i32* %__cil_tmp9.i.i, align 4
  %109 = load %struct.node*, %struct.node** %node.i.i, align 8
  %110 = ptrtoint %struct.node* %109 to i32
  store i32 %110, i32* %__cil_tmp10.i.i, align 4
  %111 = load i32, i32* %__cil_tmp10.i.i, align 4
  %112 = add i32 %111, 12
  store i32 %112, i32* %__cil_tmp11.i.i, align 4
  %113 = load i32, i32* %__cil_tmp11.i.i, align 4
  %114 = zext i32 %113 to i64
  %115 = inttoptr i64 %114 to %struct.list_head*
  %116 = load i32, i32* %__cil_tmp9.i.i, align 4
  %117 = zext i32 %116 to i64
  %118 = inttoptr i64 %117 to %struct.list_head**
  store %struct.list_head* %115, %struct.list_head** %118, align 8
  %119 = load %struct.node*, %struct.node** %node.i.i, align 8
  %120 = ptrtoint %struct.node* %119 to i32
  store i32 %120, i32* %__cil_tmp12.i.i, align 4
  %121 = load i32, i32* %__cil_tmp12.i.i, align 4
  %122 = add i32 %121, 12
  store i32 %122, i32* %__cil_tmp13.i.i, align 4
  %123 = load %struct.node*, %struct.node** %node.i.i, align 8
  %124 = ptrtoint %struct.node* %123 to i32
  store i32 %124, i32* %__cil_tmp14.i.i, align 4
  %125 = load i32, i32* %__cil_tmp14.i.i, align 4
  %126 = add i32 %125, 12
  store i32 %126, i32* %__cil_tmp15.i.i, align 4
  %127 = load i32, i32* %__cil_tmp15.i.i, align 4
  %128 = zext i32 %127 to i64
  %129 = inttoptr i64 %128 to %struct.list_head*
  %130 = load i32, i32* %__cil_tmp13.i.i, align 4
  %131 = zext i32 %130 to i64
  %132 = inttoptr i64 %131 to %struct.list_head**
  store %struct.list_head* %129, %struct.list_head** %132, align 8
  %133 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #5
  %134 = bitcast %struct.node** %node.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #5
  %135 = bitcast i8** %tmp.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #5
  %136 = bitcast i32* %__cil_tmp4.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #5
  %137 = bitcast i32* %__cil_tmp5.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #5
  %138 = bitcast i32* %__cil_tmp6.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #5
  %139 = bitcast %struct.list_head** %__cil_tmp7.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #5
  %140 = bitcast i32* %__cil_tmp8.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #5
  %141 = bitcast i32* %__cil_tmp9.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #5
  %142 = bitcast i32* %__cil_tmp10.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #5
  %143 = bitcast i32* %__cil_tmp11.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #5
  %144 = bitcast i32* %__cil_tmp12.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #5
  %145 = bitcast i32* %__cil_tmp13.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #5
  %146 = bitcast i32* %__cil_tmp14.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #5
  %147 = bitcast i32* %__cil_tmp15.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #5
  %148 = call i32 @__VERIFIER_nondet_int() #5
  store i32 %148, i32* %tmp___0.i, align 4
  %149 = load i32, i32* %tmp___0.i, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %gl_read.exit

; <label>:151                                     ; preds = %gl_insert.exit.i
  br label %21

gl_read.exit:                                     ; preds = %gl_insert.exit.i
  %152 = bitcast i32* %tmp.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152)
  %153 = bitcast i32* %tmp___0.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153)
  store %struct.list_head* @gl_list, %struct.list_head** %__cil_tmp1, align 8
  %154 = load %struct.list_head*, %struct.list_head** %__cil_tmp1, align 8
  call void @inspect(%struct.list_head* %154)
  call void @llvm.lifetime.start(i64 1, i8* %tmp.i.7)
  br label %155

; <label>:155                                     ; preds = %375, %gl_read.exit
  call void @llvm.lifetime.start(i64 1, i8* %any_change.i.i) #5
  %156 = bitcast %struct.list_head** %pos0.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %156) #5
  %157 = bitcast %struct.list_head** %pos1.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %157) #5
  %158 = bitcast i32* %val0.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %158) #5
  %159 = bitcast i32* %tmp.i.i.3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #5
  %160 = bitcast i32* %val1.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %160) #5
  %161 = bitcast i32* %tmp___0.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %161) #5
  %162 = bitcast %struct.list_head** %__cil_tmp8.i.i.4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %162) #5
  %163 = bitcast i32* %__cil_tmp9.i.i.5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %163) #5
  %164 = bitcast i32* %__cil_tmp10.i.i.6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %164) #5
  store i8 0, i8* %any_change.i.i, align 1
  store %struct.list_head* @gl_list, %struct.list_head** %__cil_tmp8.i.i.4, align 8
  %165 = load %struct.list_head*, %struct.list_head** %__cil_tmp8.i.i.4, align 8
  %166 = bitcast %struct.list_head* %165 to %struct.list_head**
  %167 = load %struct.list_head*, %struct.list_head** %166, align 8
  store %struct.list_head* %167, %struct.list_head** %pos0.i.i, align 8
  br label %168

; <label>:168                                     ; preds = %264, %155
  br label %169

; <label>:169                                     ; preds = %262, %168
  %170 = load %struct.list_head*, %struct.list_head** %pos0.i.i, align 8
  %171 = bitcast %struct.list_head* %170 to %struct.list_head**
  %172 = load %struct.list_head*, %struct.list_head** %171, align 8
  store %struct.list_head* %172, %struct.list_head** %pos1.i.i, align 8
  %173 = load %struct.list_head*, %struct.list_head** %pos1.i.i, align 8
  %174 = ptrtoint %struct.list_head* %173 to i32
  store i32 %174, i32* %__cil_tmp9.i.i.5, align 4
  store i32 ptrtoint (%struct.list_head* @gl_list to i32), i32* %__cil_tmp10.i.i.6, align 4
  %175 = load i32, i32* %__cil_tmp10.i.i.6, align 4
  %176 = load i32, i32* %__cil_tmp9.i.i.5, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %gl_sort_pass.exit.i

; <label>:178                                     ; preds = %169
  %179 = load %struct.list_head*, %struct.list_head** %pos0.i.i, align 8
  %180 = bitcast %struct.list_head** %11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %180) #5
  %181 = bitcast %struct.node** %entry.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %181) #5
  %182 = bitcast %struct.node** %__cil_tmp3.i.i.i.2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %182) #5
  %183 = bitcast i32* %__cil_tmp4.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %183) #5
  %184 = bitcast i32* %__cil_tmp5.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %184) #5
  %185 = bitcast %struct.list_head** %__cil_tmp6.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %185) #5
  %186 = bitcast i64* %__cil_tmp7.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %186) #5
  %187 = bitcast i8** %__cil_tmp8.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %187) #5
  %188 = bitcast i8** %__cil_tmp9.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %188) #5
  store %struct.list_head* %179, %struct.list_head** %11, align 8
  store %struct.node* null, %struct.node** %__cil_tmp3.i.i.i.2, align 8
  %189 = load %struct.node*, %struct.node** %__cil_tmp3.i.i.i.2, align 8
  %190 = ptrtoint %struct.node* %189 to i32
  store i32 %190, i32* %__cil_tmp4.i.i.i, align 4
  %191 = load i32, i32* %__cil_tmp4.i.i.i, align 4
  %192 = add i32 %191, 4
  store i32 %192, i32* %__cil_tmp5.i.i.i, align 4
  %193 = load i32, i32* %__cil_tmp5.i.i.i, align 4
  %194 = zext i32 %193 to i64
  %195 = inttoptr i64 %194 to %struct.list_head*
  store %struct.list_head* %195, %struct.list_head** %__cil_tmp6.i.i.i, align 8
  %196 = load %struct.list_head*, %struct.list_head** %__cil_tmp6.i.i.i, align 8
  %197 = ptrtoint %struct.list_head* %196 to i64
  store i64 %197, i64* %__cil_tmp7.i.i.i, align 8
  %198 = load %struct.list_head*, %struct.list_head** %11, align 8
  %199 = bitcast %struct.list_head* %198 to i8*
  store i8* %199, i8** %__cil_tmp8.i.i.i, align 8
  %200 = load i8*, i8** %__cil_tmp8.i.i.i, align 8
  %201 = load i64, i64* %__cil_tmp7.i.i.i, align 8
  %202 = sub i64 0, %201
  %203 = getelementptr inbounds i8, i8* %200, i64 %202
  store i8* %203, i8** %__cil_tmp9.i.i.i, align 8
  %204 = load i8*, i8** %__cil_tmp9.i.i.i, align 8
  %205 = bitcast i8* %204 to %struct.node*
  store %struct.node* %205, %struct.node** %entry.i.i.i, align 8
  %206 = load %struct.node*, %struct.node** %entry.i.i.i, align 8
  %207 = bitcast %struct.node* %206 to i32*
  %208 = load i32, i32* %207, align 4
  %209 = bitcast %struct.list_head** %11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #5
  %210 = bitcast %struct.node** %entry.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #5
  %211 = bitcast %struct.node** %__cil_tmp3.i.i.i.2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #5
  %212 = bitcast i32* %__cil_tmp4.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #5
  %213 = bitcast i32* %__cil_tmp5.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #5
  %214 = bitcast %struct.list_head** %__cil_tmp6.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #5
  %215 = bitcast i64* %__cil_tmp7.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #5
  %216 = bitcast i8** %__cil_tmp8.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #5
  %217 = bitcast i8** %__cil_tmp9.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #5
  store i32 %208, i32* %tmp.i.i.3, align 4
  %218 = load i32, i32* %tmp.i.i.3, align 4
  store i32 %218, i32* %val0.i.i, align 4
  %219 = load %struct.list_head*, %struct.list_head** %pos1.i.i, align 8
  %220 = bitcast %struct.list_head** %1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %220) #5
  %221 = bitcast %struct.node** %entry.i.5.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %221) #5
  %222 = bitcast %struct.node** %__cil_tmp3.i.6.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %222) #5
  %223 = bitcast i32* %__cil_tmp4.i.7.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %223) #5
  %224 = bitcast i32* %__cil_tmp5.i.8.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %224) #5
  %225 = bitcast %struct.list_head** %__cil_tmp6.i.9.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %225) #5
  %226 = bitcast i64* %__cil_tmp7.i.10.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %226) #5
  %227 = bitcast i8** %__cil_tmp8.i.11.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %227) #5
  %228 = bitcast i8** %__cil_tmp9.i.12.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %228) #5
  store %struct.list_head* %219, %struct.list_head** %1, align 8
  store %struct.node* null, %struct.node** %__cil_tmp3.i.6.i.i, align 8
  %229 = load %struct.node*, %struct.node** %__cil_tmp3.i.6.i.i, align 8
  %230 = ptrtoint %struct.node* %229 to i32
  store i32 %230, i32* %__cil_tmp4.i.7.i.i, align 4
  %231 = load i32, i32* %__cil_tmp4.i.7.i.i, align 4
  %232 = add i32 %231, 4
  store i32 %232, i32* %__cil_tmp5.i.8.i.i, align 4
  %233 = load i32, i32* %__cil_tmp5.i.8.i.i, align 4
  %234 = zext i32 %233 to i64
  %235 = inttoptr i64 %234 to %struct.list_head*
  store %struct.list_head* %235, %struct.list_head** %__cil_tmp6.i.9.i.i, align 8
  %236 = load %struct.list_head*, %struct.list_head** %__cil_tmp6.i.9.i.i, align 8
  %237 = ptrtoint %struct.list_head* %236 to i64
  store i64 %237, i64* %__cil_tmp7.i.10.i.i, align 8
  %238 = load %struct.list_head*, %struct.list_head** %1, align 8
  %239 = bitcast %struct.list_head* %238 to i8*
  store i8* %239, i8** %__cil_tmp8.i.11.i.i, align 8
  %240 = load i8*, i8** %__cil_tmp8.i.11.i.i, align 8
  %241 = load i64, i64* %__cil_tmp7.i.10.i.i, align 8
  %242 = sub i64 0, %241
  %243 = getelementptr inbounds i8, i8* %240, i64 %242
  store i8* %243, i8** %__cil_tmp9.i.12.i.i, align 8
  %244 = load i8*, i8** %__cil_tmp9.i.12.i.i, align 8
  %245 = bitcast i8* %244 to %struct.node*
  store %struct.node* %245, %struct.node** %entry.i.5.i.i, align 8
  %246 = load %struct.node*, %struct.node** %entry.i.5.i.i, align 8
  %247 = bitcast %struct.node* %246 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = bitcast %struct.list_head** %1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %249) #5
  %250 = bitcast %struct.node** %entry.i.5.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %250) #5
  %251 = bitcast %struct.node** %__cil_tmp3.i.6.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %251) #5
  %252 = bitcast i32* %__cil_tmp4.i.7.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %252) #5
  %253 = bitcast i32* %__cil_tmp5.i.8.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %253) #5
  %254 = bitcast %struct.list_head** %__cil_tmp6.i.9.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %254) #5
  %255 = bitcast i64* %__cil_tmp7.i.10.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %255) #5
  %256 = bitcast i8** %__cil_tmp8.i.11.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %256) #5
  %257 = bitcast i8** %__cil_tmp9.i.12.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %257) #5
  store i32 %248, i32* %tmp___0.i.i, align 4
  %258 = load i32, i32* %tmp___0.i.i, align 4
  store i32 %258, i32* %val1.i.i, align 4
  %259 = load i32, i32* %val0.i.i, align 4
  %260 = load i32, i32* %val1.i.i, align 4
  %261 = icmp sle i32 %259, %260
  br i1 %261, label %262, label %264

; <label>:262                                     ; preds = %178
  %263 = load %struct.list_head*, %struct.list_head** %pos1.i.i, align 8
  store %struct.list_head* %263, %struct.list_head** %pos0.i.i, align 8
  br label %169

; <label>:264                                     ; preds = %178
  store i8 1, i8* %any_change.i.i, align 1
  %265 = load %struct.list_head*, %struct.list_head** %pos0.i.i, align 8
  %266 = load %struct.list_head*, %struct.list_head** %pos1.i.i, align 8
  %267 = bitcast %struct.list_head** %9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %267) #5
  %268 = bitcast %struct.list_head** %10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %268) #5
  %269 = bitcast i32* %__cil_tmp3.i.1.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %269) #5
  %270 = bitcast i32* %__cil_tmp4.i.2.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %270) #5
  %271 = bitcast %struct.list_head** %__cil_tmp5.i.3.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %271) #5
  %272 = bitcast %struct.list_head** %__cil_tmp6.i.4.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %272) #5
  store %struct.list_head* %265, %struct.list_head** %9, align 8
  store %struct.list_head* %266, %struct.list_head** %10, align 8
  %273 = load %struct.list_head*, %struct.list_head** %9, align 8
  %274 = ptrtoint %struct.list_head* %273 to i32
  store i32 %274, i32* %__cil_tmp3.i.1.i.i, align 4
  %275 = load i32, i32* %__cil_tmp3.i.1.i.i, align 4
  %276 = add i32 %275, 4
  store i32 %276, i32* %__cil_tmp4.i.2.i.i, align 4
  %277 = load i32, i32* %__cil_tmp4.i.2.i.i, align 4
  %278 = zext i32 %277 to i64
  %279 = inttoptr i64 %278 to %struct.list_head**
  %280 = load %struct.list_head*, %struct.list_head** %279, align 8
  store %struct.list_head* %280, %struct.list_head** %__cil_tmp5.i.3.i.i, align 8
  %281 = load %struct.list_head*, %struct.list_head** %9, align 8
  %282 = bitcast %struct.list_head* %281 to %struct.list_head**
  %283 = load %struct.list_head*, %struct.list_head** %282, align 8
  store %struct.list_head* %283, %struct.list_head** %__cil_tmp6.i.4.i.i, align 8
  %284 = load %struct.list_head*, %struct.list_head** %__cil_tmp5.i.3.i.i, align 8
  %285 = load %struct.list_head*, %struct.list_head** %__cil_tmp6.i.4.i.i, align 8
  %286 = bitcast %struct.list_head** %7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %286) #5
  %287 = bitcast %struct.list_head** %8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %287) #5
  %288 = bitcast i32* %__cil_tmp3.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %288) #5
  %289 = bitcast i32* %__cil_tmp4.i.i.i.i.1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %289) #5
  store %struct.list_head* %284, %struct.list_head** %7, align 8
  store %struct.list_head* %285, %struct.list_head** %8, align 8
  %290 = load %struct.list_head*, %struct.list_head** %8, align 8
  %291 = ptrtoint %struct.list_head* %290 to i32
  store i32 %291, i32* %__cil_tmp3.i.i.i.i, align 4
  %292 = load i32, i32* %__cil_tmp3.i.i.i.i, align 4
  %293 = add i32 %292, 4
  store i32 %293, i32* %__cil_tmp4.i.i.i.i.1, align 4
  %294 = load %struct.list_head*, %struct.list_head** %7, align 8
  %295 = load i32, i32* %__cil_tmp4.i.i.i.i.1, align 4
  %296 = zext i32 %295 to i64
  %297 = inttoptr i64 %296 to %struct.list_head**
  store %struct.list_head* %294, %struct.list_head** %297, align 8
  %298 = load %struct.list_head*, %struct.list_head** %8, align 8
  %299 = load %struct.list_head*, %struct.list_head** %7, align 8
  %300 = bitcast %struct.list_head* %299 to %struct.list_head**
  store %struct.list_head* %298, %struct.list_head** %300, align 8
  %301 = bitcast %struct.list_head** %7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %301) #5
  %302 = bitcast %struct.list_head** %8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %302) #5
  %303 = bitcast i32* %__cil_tmp3.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #5
  %304 = bitcast i32* %__cil_tmp4.i.i.i.i.1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #5
  %305 = load %struct.list_head*, %struct.list_head** %9, align 8
  %306 = load %struct.list_head*, %struct.list_head** %10, align 8
  %307 = bitcast %struct.list_head** %5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %307) #5
  %308 = bitcast %struct.list_head** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %308) #5
  %309 = bitcast %struct.list_head** %__cil_tmp3.i.1.i.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %309) #5
  store %struct.list_head* %305, %struct.list_head** %5, align 8
  store %struct.list_head* %306, %struct.list_head** %6, align 8
  %310 = load %struct.list_head*, %struct.list_head** %6, align 8
  %311 = bitcast %struct.list_head* %310 to %struct.list_head**
  %312 = load %struct.list_head*, %struct.list_head** %311, align 8
  store %struct.list_head* %312, %struct.list_head** %__cil_tmp3.i.1.i.i.i, align 8
  %313 = load %struct.list_head*, %struct.list_head** %5, align 8
  %314 = load %struct.list_head*, %struct.list_head** %6, align 8
  %315 = load %struct.list_head*, %struct.list_head** %__cil_tmp3.i.1.i.i.i, align 8
  %316 = bitcast %struct.list_head** %2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %316) #5
  %317 = bitcast %struct.list_head** %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %317) #5
  %318 = bitcast %struct.list_head** %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %318) #5
  %319 = bitcast i32* %__cil_tmp4.i.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %319) #5
  %320 = bitcast i32* %__cil_tmp5.i.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %320) #5
  %321 = bitcast i32* %__cil_tmp6.i.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %321) #5
  %322 = bitcast i32* %__cil_tmp7.i.i.i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %322) #5
  store %struct.list_head* %313, %struct.list_head** %2, align 8
  store %struct.list_head* %314, %struct.list_head** %3, align 8
  store %struct.list_head* %315, %struct.list_head** %4, align 8
  %323 = load %struct.list_head*, %struct.list_head** %4, align 8
  %324 = ptrtoint %struct.list_head* %323 to i32
  store i32 %324, i32* %__cil_tmp4.i.i.i.i.i, align 4
  %325 = load i32, i32* %__cil_tmp4.i.i.i.i.i, align 4
  %326 = add i32 %325, 4
  store i32 %326, i32* %__cil_tmp5.i.i.i.i.i, align 4
  %327 = load %struct.list_head*, %struct.list_head** %2, align 8
  %328 = load i32, i32* %__cil_tmp5.i.i.i.i.i, align 4
  %329 = zext i32 %328 to i64
  %330 = inttoptr i64 %329 to %struct.list_head**
  store %struct.list_head* %327, %struct.list_head** %330, align 8
  %331 = load %struct.list_head*, %struct.list_head** %4, align 8
  %332 = load %struct.list_head*, %struct.list_head** %2, align 8
  %333 = bitcast %struct.list_head* %332 to %struct.list_head**
  store %struct.list_head* %331, %struct.list_head** %333, align 8
  %334 = load %struct.list_head*, %struct.list_head** %2, align 8
  %335 = ptrtoint %struct.list_head* %334 to i32
  store i32 %335, i32* %__cil_tmp6.i.i.i.i.i, align 4
  %336 = load i32, i32* %__cil_tmp6.i.i.i.i.i, align 4
  %337 = add i32 %336, 4
  store i32 %337, i32* %__cil_tmp7.i.i.i.i.i, align 4
  %338 = load %struct.list_head*, %struct.list_head** %3, align 8
  %339 = load i32, i32* %__cil_tmp7.i.i.i.i.i, align 4
  %340 = zext i32 %339 to i64
  %341 = inttoptr i64 %340 to %struct.list_head**
  store %struct.list_head* %338, %struct.list_head** %341, align 8
  %342 = load %struct.list_head*, %struct.list_head** %2, align 8
  %343 = load %struct.list_head*, %struct.list_head** %3, align 8
  %344 = bitcast %struct.list_head* %343 to %struct.list_head**
  store %struct.list_head* %342, %struct.list_head** %344, align 8
  %345 = bitcast %struct.list_head** %2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %345) #5
  %346 = bitcast %struct.list_head** %3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %346) #5
  %347 = bitcast %struct.list_head** %4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %347) #5
  %348 = bitcast i32* %__cil_tmp4.i.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %348) #5
  %349 = bitcast i32* %__cil_tmp5.i.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %349) #5
  %350 = bitcast i32* %__cil_tmp6.i.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %350) #5
  %351 = bitcast i32* %__cil_tmp7.i.i.i.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %351) #5
  %352 = bitcast %struct.list_head** %5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %352) #5
  %353 = bitcast %struct.list_head** %6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %353) #5
  %354 = bitcast %struct.list_head** %__cil_tmp3.i.1.i.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %354) #5
  %355 = bitcast %struct.list_head** %9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %355) #5
  %356 = bitcast %struct.list_head** %10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %356) #5
  %357 = bitcast i32* %__cil_tmp3.i.1.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %357) #5
  %358 = bitcast i32* %__cil_tmp4.i.2.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %358) #5
  %359 = bitcast %struct.list_head** %__cil_tmp5.i.3.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %359) #5
  %360 = bitcast %struct.list_head** %__cil_tmp6.i.4.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %360) #5
  br label %168

gl_sort_pass.exit.i:                              ; preds = %169
  %361 = load i8, i8* %any_change.i.i, align 1
  %362 = trunc i8 %361 to i1
  call void @llvm.lifetime.end(i64 1, i8* %any_change.i.i) #5
  %363 = bitcast %struct.list_head** %pos0.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %363) #5
  %364 = bitcast %struct.list_head** %pos1.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %364) #5
  %365 = bitcast i32* %val0.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %365) #5
  %366 = bitcast i32* %tmp.i.i.3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %366) #5
  %367 = bitcast i32* %val1.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %367) #5
  %368 = bitcast i32* %tmp___0.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %368) #5
  %369 = bitcast %struct.list_head** %__cil_tmp8.i.i.4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %369) #5
  %370 = bitcast i32* %__cil_tmp9.i.i.5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %370) #5
  %371 = bitcast i32* %__cil_tmp10.i.i.6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %371) #5
  %372 = zext i1 %362 to i8
  store i8 %372, i8* %tmp.i.7, align 1
  %373 = load i8, i8* %tmp.i.7, align 1
  %374 = trunc i8 %373 to i1
  br i1 %374, label %375, label %gl_sort.exit

; <label>:375                                     ; preds = %gl_sort_pass.exit.i
  br label %155

gl_sort.exit:                                     ; preds = %gl_sort_pass.exit.i
  call void @llvm.lifetime.end(i64 1, i8* %tmp.i.7)
  store %struct.list_head* @gl_list, %struct.list_head** %__cil_tmp2, align 8
  %376 = load %struct.list_head*, %struct.list_head** %__cil_tmp2, align 8
  call void @inspect(%struct.list_head* %376)
  %377 = bitcast %struct.list_head** %next.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %377)
  %378 = bitcast %struct.list_head** %__cil_tmp2.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %378)
  %379 = bitcast i32* %__cil_tmp3.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %379)
  %380 = bitcast i32* %__cil_tmp4.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %380)
  %381 = bitcast %struct.list_head** %__cil_tmp5.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %381)
  %382 = bitcast %struct.node** %__cil_tmp6.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %382)
  %383 = bitcast i32* %__cil_tmp7.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %383)
  %384 = bitcast i32* %__cil_tmp8.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %384)
  %385 = bitcast %struct.list_head** %__cil_tmp9.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %385)
  %386 = bitcast i64* %__cil_tmp10.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %386)
  %387 = bitcast i8** %__cil_tmp11.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %387)
  %388 = bitcast i8** %__cil_tmp12.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %388)
  %389 = bitcast %struct.node** %__cil_tmp13.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %389)
  %390 = bitcast i8** %__cil_tmp14.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %390)
  br label %391

; <label>:391                                     ; preds = %400, %gl_sort.exit
  store %struct.list_head* @gl_list, %struct.list_head** %__cil_tmp2.i, align 8
  %392 = load %struct.list_head*, %struct.list_head** %__cil_tmp2.i, align 8
  %393 = bitcast %struct.list_head* %392 to %struct.list_head**
  %394 = load %struct.list_head*, %struct.list_head** %393, align 8
  store %struct.list_head* %394, %struct.list_head** %next.i, align 8
  %395 = load %struct.list_head*, %struct.list_head** %next.i, align 8
  %396 = ptrtoint %struct.list_head* %395 to i32
  store i32 %396, i32* %__cil_tmp3.i, align 4
  store i32 ptrtoint (%struct.list_head* @gl_list to i32), i32* %__cil_tmp4.i, align 4
  %397 = load i32, i32* %__cil_tmp4.i, align 4
  %398 = load i32, i32* %__cil_tmp3.i, align 4
  %399 = icmp ne i32 %397, %398
  br i1 %399, label %400, label %gl_destroy.exit

; <label>:400                                     ; preds = %391
  store %struct.list_head* @gl_list, %struct.list_head** %__cil_tmp5.i, align 8
  %401 = load %struct.list_head*, %struct.list_head** %next.i, align 8
  %402 = bitcast %struct.list_head* %401 to %struct.list_head**
  %403 = load %struct.list_head*, %struct.list_head** %402, align 8
  %404 = load %struct.list_head*, %struct.list_head** %__cil_tmp5.i, align 8
  %405 = bitcast %struct.list_head* %404 to %struct.list_head**
  store %struct.list_head* %403, %struct.list_head** %405, align 8
  store %struct.node* null, %struct.node** %__cil_tmp6.i, align 8
  %406 = load %struct.node*, %struct.node** %__cil_tmp6.i, align 8
  %407 = ptrtoint %struct.node* %406 to i32
  store i32 %407, i32* %__cil_tmp7.i, align 4
  %408 = load i32, i32* %__cil_tmp7.i, align 4
  %409 = add i32 %408, 4
  store i32 %409, i32* %__cil_tmp8.i, align 4
  %410 = load i32, i32* %__cil_tmp8.i, align 4
  %411 = zext i32 %410 to i64
  %412 = inttoptr i64 %411 to %struct.list_head*
  store %struct.list_head* %412, %struct.list_head** %__cil_tmp9.i, align 8
  %413 = load %struct.list_head*, %struct.list_head** %__cil_tmp9.i, align 8
  %414 = ptrtoint %struct.list_head* %413 to i64
  store i64 %414, i64* %__cil_tmp10.i, align 8
  %415 = load %struct.list_head*, %struct.list_head** %next.i, align 8
  %416 = bitcast %struct.list_head* %415 to i8*
  store i8* %416, i8** %__cil_tmp11.i, align 8
  %417 = load i8*, i8** %__cil_tmp11.i, align 8
  %418 = load i64, i64* %__cil_tmp10.i, align 8
  %419 = sub i64 0, %418
  %420 = getelementptr inbounds i8, i8* %417, i64 %419
  store i8* %420, i8** %__cil_tmp12.i, align 8
  %421 = load i8*, i8** %__cil_tmp12.i, align 8
  %422 = bitcast i8* %421 to %struct.node*
  store %struct.node* %422, %struct.node** %__cil_tmp13.i, align 8
  %423 = load %struct.node*, %struct.node** %__cil_tmp13.i, align 8
  %424 = bitcast %struct.node* %423 to i8*
  store i8* %424, i8** %__cil_tmp14.i, align 8
  %425 = load i8*, i8** %__cil_tmp14.i, align 8
  call void @free(i8* %425) #5
  br label %391

gl_destroy.exit:                                  ; preds = %391
  %426 = bitcast %struct.list_head** %next.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %426)
  %427 = bitcast %struct.list_head** %__cil_tmp2.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %427)
  %428 = bitcast i32* %__cil_tmp3.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %428)
  %429 = bitcast i32* %__cil_tmp4.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %429)
  %430 = bitcast %struct.list_head** %__cil_tmp5.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %430)
  %431 = bitcast %struct.node** %__cil_tmp6.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %431)
  %432 = bitcast i32* %__cil_tmp7.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %432)
  %433 = bitcast i32* %__cil_tmp8.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %433)
  %434 = bitcast %struct.list_head** %__cil_tmp9.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %434)
  %435 = bitcast i64* %__cil_tmp10.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %435)
  %436 = bitcast i8** %__cil_tmp11.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %436)
  %437 = bitcast i8** %__cil_tmp12.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %437)
  %438 = bitcast %struct.node** %__cil_tmp13.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %438)
  %439 = bitcast i8** %__cil_tmp14.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %439)
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal void @inspect(%struct.list_head* %head) #0 {
  %1 = alloca %struct.list_head*, align 8
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
  store %struct.list_head* %head, %struct.list_head** %1, align 8
  br label %2

; <label>:2                                       ; preds = %0
  br label %3

; <label>:3                                       ; preds = %2
  %4 = load %struct.list_head*, %struct.list_head** %1, align 8
  %5 = icmp ne %struct.list_head* %4, null
  br i1 %5, label %7, label %6

; <label>:6                                       ; preds = %3
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit:                                        ; No predecessors!
  br label %8

; <label>:7                                       ; preds = %3
  br label %8

; <label>:8                                       ; preds = %7, %fail.exit
  br label %9

; <label>:9                                       ; preds = %8
  br label %10

; <label>:10                                      ; preds = %9
  br label %11

; <label>:11                                      ; preds = %10
  %12 = load %struct.list_head*, %struct.list_head** %1, align 8
  %13 = ptrtoint %struct.list_head* %12 to i32
  store i32 %13, i32* %__cil_tmp3, align 4
  %14 = load %struct.list_head*, %struct.list_head** %1, align 8
  %15 = bitcast %struct.list_head* %14 to %struct.list_head**
  %16 = load %struct.list_head*, %struct.list_head** %15, align 8
  store %struct.list_head* %16, %struct.list_head** %__cil_tmp4, align 8
  %17 = load %struct.list_head*, %struct.list_head** %__cil_tmp4, align 8
  %18 = ptrtoint %struct.list_head* %17 to i32
  store i32 %18, i32* %__cil_tmp5, align 4
  %19 = load i32, i32* %__cil_tmp5, align 4
  %20 = load i32, i32* %__cil_tmp3, align 4
  %21 = icmp ne i32 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %__cil_tmp6, align 4
  %23 = load i32, i32* %__cil_tmp6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

; <label>:25                                      ; preds = %11
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit1:                                       ; No predecessors!
  br label %27

; <label>:26                                      ; preds = %11
  br label %27

; <label>:27                                      ; preds = %26, %fail.exit1
  br label %28

; <label>:28                                      ; preds = %27
  br label %29

; <label>:29                                      ; preds = %28
  br label %30

; <label>:30                                      ; preds = %29
  %31 = load %struct.list_head*, %struct.list_head** %1, align 8
  %32 = ptrtoint %struct.list_head* %31 to i32
  store i32 %32, i32* %__cil_tmp7, align 4
  %33 = load %struct.list_head*, %struct.list_head** %1, align 8
  %34 = ptrtoint %struct.list_head* %33 to i32
  store i32 %34, i32* %__cil_tmp8, align 4
  %35 = load i32, i32* %__cil_tmp8, align 4
  %36 = add i32 %35, 4
  store i32 %36, i32* %__cil_tmp9, align 4
  %37 = load i32, i32* %__cil_tmp9, align 4
  %38 = zext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.list_head**
  %40 = load %struct.list_head*, %struct.list_head** %39, align 8
  store %struct.list_head* %40, %struct.list_head** %__cil_tmp10, align 8
  %41 = load %struct.list_head*, %struct.list_head** %__cil_tmp10, align 8
  %42 = ptrtoint %struct.list_head* %41 to i32
  store i32 %42, i32* %__cil_tmp11, align 4
  %43 = load i32, i32* %__cil_tmp11, align 4
  %44 = load i32, i32* %__cil_tmp7, align 4
  %45 = icmp ne i32 %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %__cil_tmp12, align 4
  %47 = load i32, i32* %__cil_tmp12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

; <label>:49                                      ; preds = %30
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit2:                                       ; No predecessors!
  br label %51

; <label>:50                                      ; preds = %30
  br label %51

; <label>:51                                      ; preds = %50, %fail.exit2
  br label %52

; <label>:52                                      ; preds = %51
  %53 = load %struct.list_head*, %struct.list_head** %1, align 8
  %54 = ptrtoint %struct.list_head* %53 to i32
  store i32 %54, i32* %__cil_tmp13, align 4
  %55 = load i32, i32* %__cil_tmp13, align 4
  %56 = add i32 %55, 4
  store i32 %56, i32* %__cil_tmp14, align 4
  %57 = load i32, i32* %__cil_tmp14, align 4
  %58 = zext i32 %57 to i64
  %59 = inttoptr i64 %58 to %struct.list_head**
  %60 = load %struct.list_head*, %struct.list_head** %59, align 8
  store %struct.list_head* %60, %struct.list_head** %__cil_tmp15, align 8
  %61 = load %struct.list_head*, %struct.list_head** %__cil_tmp15, align 8
  store %struct.list_head* %61, %struct.list_head** %1, align 8
  br label %62

; <label>:62                                      ; preds = %52
  br label %63

; <label>:63                                      ; preds = %62
  %64 = load %struct.list_head*, %struct.list_head** %1, align 8
  %65 = icmp ne %struct.list_head* %64, null
  br i1 %65, label %67, label %66

; <label>:66                                      ; preds = %63
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit3:                                       ; No predecessors!
  br label %68

; <label>:67                                      ; preds = %63
  br label %68

; <label>:68                                      ; preds = %67, %fail.exit3
  br label %69

; <label>:69                                      ; preds = %68
  br label %70

; <label>:70                                      ; preds = %69
  br label %71

; <label>:71                                      ; preds = %70
  %72 = load %struct.list_head*, %struct.list_head** %1, align 8
  %73 = ptrtoint %struct.list_head* %72 to i32
  store i32 %73, i32* %__cil_tmp16, align 4
  %74 = load %struct.list_head*, %struct.list_head** %1, align 8
  %75 = bitcast %struct.list_head* %74 to %struct.list_head**
  %76 = load %struct.list_head*, %struct.list_head** %75, align 8
  store %struct.list_head* %76, %struct.list_head** %__cil_tmp17, align 8
  %77 = load %struct.list_head*, %struct.list_head** %__cil_tmp17, align 8
  %78 = ptrtoint %struct.list_head* %77 to i32
  store i32 %78, i32* %__cil_tmp18, align 4
  %79 = load i32, i32* %__cil_tmp18, align 4
  %80 = load i32, i32* %__cil_tmp16, align 4
  %81 = icmp ne i32 %79, %80
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %__cil_tmp19, align 4
  %83 = load i32, i32* %__cil_tmp19, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

; <label>:85                                      ; preds = %71
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit4:                                       ; No predecessors!
  br label %87

; <label>:86                                      ; preds = %71
  br label %87

; <label>:87                                      ; preds = %86, %fail.exit4
  br label %88

; <label>:88                                      ; preds = %87
  br label %89

; <label>:89                                      ; preds = %88
  br label %90

; <label>:90                                      ; preds = %89
  %91 = load %struct.list_head*, %struct.list_head** %1, align 8
  %92 = ptrtoint %struct.list_head* %91 to i32
  store i32 %92, i32* %__cil_tmp20, align 4
  %93 = load %struct.list_head*, %struct.list_head** %1, align 8
  %94 = ptrtoint %struct.list_head* %93 to i32
  store i32 %94, i32* %__cil_tmp21, align 4
  %95 = load i32, i32* %__cil_tmp21, align 4
  %96 = add i32 %95, 4
  store i32 %96, i32* %__cil_tmp22, align 4
  %97 = load i32, i32* %__cil_tmp22, align 4
  %98 = zext i32 %97 to i64
  %99 = inttoptr i64 %98 to %struct.list_head**
  %100 = load %struct.list_head*, %struct.list_head** %99, align 8
  store %struct.list_head* %100, %struct.list_head** %__cil_tmp23, align 8
  %101 = load %struct.list_head*, %struct.list_head** %__cil_tmp23, align 8
  %102 = ptrtoint %struct.list_head* %101 to i32
  store i32 %102, i32* %__cil_tmp24, align 4
  %103 = load i32, i32* %__cil_tmp24, align 4
  %104 = load i32, i32* %__cil_tmp20, align 4
  %105 = icmp ne i32 %103, %104
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %__cil_tmp25, align 4
  %107 = load i32, i32* %__cil_tmp25, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

; <label>:109                                     ; preds = %90
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit5:                                       ; No predecessors!
  br label %111

; <label>:110                                     ; preds = %90
  br label %111

; <label>:111                                     ; preds = %110, %fail.exit5
  br label %112

; <label>:112                                     ; preds = %111
  store %struct.node* null, %struct.node** %__cil_tmp26, align 8
  %113 = load %struct.node*, %struct.node** %__cil_tmp26, align 8
  %114 = ptrtoint %struct.node* %113 to i32
  store i32 %114, i32* %__cil_tmp27, align 4
  %115 = load i32, i32* %__cil_tmp27, align 4
  %116 = add i32 %115, 4
  store i32 %116, i32* %__cil_tmp28, align 4
  %117 = load i32, i32* %__cil_tmp28, align 4
  %118 = zext i32 %117 to i64
  %119 = inttoptr i64 %118 to %struct.list_head*
  store %struct.list_head* %119, %struct.list_head** %__cil_tmp29, align 8
  %120 = load %struct.list_head*, %struct.list_head** %__cil_tmp29, align 8
  %121 = ptrtoint %struct.list_head* %120 to i64
  store i64 %121, i64* %__cil_tmp30, align 8
  %122 = load %struct.list_head*, %struct.list_head** %1, align 8
  %123 = bitcast %struct.list_head* %122 to i8*
  store i8* %123, i8** %__cil_tmp31, align 8
  %124 = load i8*, i8** %__cil_tmp31, align 8
  %125 = load i64, i64* %__cil_tmp30, align 8
  %126 = sub i64 0, %125
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8* %127, i8** %__cil_tmp32, align 8
  %128 = load i8*, i8** %__cil_tmp32, align 8
  %129 = bitcast i8* %128 to %struct.node*
  store %struct.node* %129, %struct.node** %__cil_tmp33, align 8
  %130 = load %struct.node*, %struct.node** %__cil_tmp33, align 8
  store %struct.node* %130, %struct.node** %node, align 8
  br label %131

; <label>:131                                     ; preds = %112
  br label %132

; <label>:132                                     ; preds = %131
  %133 = load %struct.node*, %struct.node** %node, align 8
  %134 = icmp ne %struct.node* %133, null
  br i1 %134, label %136, label %135

; <label>:135                                     ; preds = %132
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit6:                                       ; No predecessors!
  br label %137

; <label>:136                                     ; preds = %132
  br label %137

; <label>:137                                     ; preds = %136, %fail.exit6
  br label %138

; <label>:138                                     ; preds = %137
  br label %139

; <label>:139                                     ; preds = %138
  br label %140

; <label>:140                                     ; preds = %139
  %141 = load %struct.node*, %struct.node** %node, align 8
  %142 = ptrtoint %struct.node* %141 to i32
  store i32 %142, i32* %__cil_tmp34, align 4
  %143 = load i32, i32* %__cil_tmp34, align 4
  %144 = add i32 %143, 12
  store i32 %144, i32* %__cil_tmp35, align 4
  %145 = load i32, i32* %__cil_tmp35, align 4
  %146 = zext i32 %145 to i64
  %147 = inttoptr i64 %146 to %struct.list_head*
  store %struct.list_head* %147, %struct.list_head** %__cil_tmp36, align 8
  %148 = load %struct.list_head*, %struct.list_head** %__cil_tmp36, align 8
  %149 = ptrtoint %struct.list_head* %148 to i32
  store i32 %149, i32* %__cil_tmp37, align 4
  %150 = load %struct.node*, %struct.node** %node, align 8
  %151 = ptrtoint %struct.node* %150 to i32
  store i32 %151, i32* %__cil_tmp38, align 4
  %152 = load i32, i32* %__cil_tmp38, align 4
  %153 = add i32 %152, 12
  store i32 %153, i32* %__cil_tmp39, align 4
  %154 = load i32, i32* %__cil_tmp39, align 4
  %155 = zext i32 %154 to i64
  %156 = inttoptr i64 %155 to %struct.list_head**
  %157 = load %struct.list_head*, %struct.list_head** %156, align 8
  store %struct.list_head* %157, %struct.list_head** %__cil_tmp40, align 8
  %158 = load %struct.list_head*, %struct.list_head** %__cil_tmp40, align 8
  %159 = ptrtoint %struct.list_head* %158 to i32
  store i32 %159, i32* %__cil_tmp41, align 4
  %160 = load i32, i32* %__cil_tmp41, align 4
  %161 = load i32, i32* %__cil_tmp37, align 4
  %162 = icmp eq i32 %160, %161
  %163 = zext i1 %162 to i32
  store i32 %163, i32* %__cil_tmp42, align 4
  %164 = load i32, i32* %__cil_tmp42, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

; <label>:166                                     ; preds = %140
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit7:                                       ; No predecessors!
  br label %168

; <label>:167                                     ; preds = %140
  br label %168

; <label>:168                                     ; preds = %167, %fail.exit7
  br label %169

; <label>:169                                     ; preds = %168
  br label %170

; <label>:170                                     ; preds = %169
  br label %171

; <label>:171                                     ; preds = %170
  %172 = load %struct.node*, %struct.node** %node, align 8
  %173 = ptrtoint %struct.node* %172 to i32
  store i32 %173, i32* %__cil_tmp43, align 4
  %174 = load i32, i32* %__cil_tmp43, align 4
  %175 = add i32 %174, 12
  store i32 %175, i32* %__cil_tmp44, align 4
  %176 = load i32, i32* %__cil_tmp44, align 4
  %177 = zext i32 %176 to i64
  %178 = inttoptr i64 %177 to %struct.list_head*
  store %struct.list_head* %178, %struct.list_head** %__cil_tmp45, align 8
  %179 = load %struct.list_head*, %struct.list_head** %__cil_tmp45, align 8
  %180 = ptrtoint %struct.list_head* %179 to i32
  store i32 %180, i32* %__cil_tmp46, align 4
  store i32 16, i32* %__cil_tmp47, align 4
  %181 = load %struct.node*, %struct.node** %node, align 8
  %182 = ptrtoint %struct.node* %181 to i32
  store i32 %182, i32* %__cil_tmp48, align 4
  %183 = load i32, i32* %__cil_tmp48, align 4
  %184 = load i32, i32* %__cil_tmp47, align 4
  %185 = add i32 %183, %184
  store i32 %185, i32* %__cil_tmp49, align 4
  %186 = load i32, i32* %__cil_tmp49, align 4
  %187 = zext i32 %186 to i64
  %188 = inttoptr i64 %187 to %struct.list_head**
  %189 = load %struct.list_head*, %struct.list_head** %188, align 8
  store %struct.list_head* %189, %struct.list_head** %__cil_tmp50, align 8
  %190 = load %struct.list_head*, %struct.list_head** %__cil_tmp50, align 8
  %191 = ptrtoint %struct.list_head* %190 to i32
  store i32 %191, i32* %__cil_tmp51, align 4
  %192 = load i32, i32* %__cil_tmp51, align 4
  %193 = load i32, i32* %__cil_tmp46, align 4
  %194 = icmp eq i32 %192, %193
  %195 = zext i1 %194 to i32
  store i32 %195, i32* %__cil_tmp52, align 4
  %196 = load i32, i32* %__cil_tmp52, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

; <label>:198                                     ; preds = %171
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit8:                                       ; No predecessors!
  br label %200

; <label>:199                                     ; preds = %171
  br label %200

; <label>:200                                     ; preds = %199, %fail.exit8
  br label %201

; <label>:201                                     ; preds = %200
  br label %202

; <label>:202                                     ; preds = %201
  br label %203

; <label>:203                                     ; preds = %202
  %204 = load %struct.node*, %struct.node** %node, align 8
  %205 = ptrtoint %struct.node* %204 to i32
  store i32 %205, i32* %__cil_tmp53, align 4
  %206 = load i32, i32* %__cil_tmp53, align 4
  %207 = add i32 %206, 4
  store i32 %207, i32* %__cil_tmp54, align 4
  %208 = load i32, i32* %__cil_tmp54, align 4
  %209 = zext i32 %208 to i64
  %210 = inttoptr i64 %209 to %struct.list_head*
  store %struct.list_head* %210, %struct.list_head** %__cil_tmp55, align 8
  %211 = load %struct.list_head*, %struct.list_head** %__cil_tmp55, align 8
  %212 = ptrtoint %struct.list_head* %211 to i32
  store i32 %212, i32* %__cil_tmp56, align 4
  %213 = load %struct.node*, %struct.node** %node, align 8
  %214 = ptrtoint %struct.node* %213 to i32
  store i32 %214, i32* %__cil_tmp57, align 4
  %215 = load i32, i32* %__cil_tmp57, align 4
  %216 = add i32 %215, 12
  store i32 %216, i32* %__cil_tmp58, align 4
  %217 = load i32, i32* %__cil_tmp58, align 4
  %218 = zext i32 %217 to i64
  %219 = inttoptr i64 %218 to %struct.list_head**
  %220 = load %struct.list_head*, %struct.list_head** %219, align 8
  store %struct.list_head* %220, %struct.list_head** %__cil_tmp59, align 8
  %221 = load %struct.list_head*, %struct.list_head** %__cil_tmp59, align 8
  %222 = ptrtoint %struct.list_head* %221 to i32
  store i32 %222, i32* %__cil_tmp60, align 4
  %223 = load i32, i32* %__cil_tmp60, align 4
  %224 = load i32, i32* %__cil_tmp56, align 4
  %225 = icmp ne i32 %223, %224
  %226 = zext i1 %225 to i32
  store i32 %226, i32* %__cil_tmp61, align 4
  %227 = load i32, i32* %__cil_tmp61, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

; <label>:229                                     ; preds = %203
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit9:                                       ; No predecessors!
  br label %231

; <label>:230                                     ; preds = %203
  br label %231

; <label>:231                                     ; preds = %230, %fail.exit9
  br label %232

; <label>:232                                     ; preds = %231
  br label %233

; <label>:233                                     ; preds = %232
  br label %234

; <label>:234                                     ; preds = %233
  %235 = load %struct.node*, %struct.node** %node, align 8
  %236 = ptrtoint %struct.node* %235 to i32
  store i32 %236, i32* %__cil_tmp62, align 4
  %237 = load i32, i32* %__cil_tmp62, align 4
  %238 = add i32 %237, 4
  store i32 %238, i32* %__cil_tmp63, align 4
  %239 = load i32, i32* %__cil_tmp63, align 4
  %240 = zext i32 %239 to i64
  %241 = inttoptr i64 %240 to %struct.list_head*
  store %struct.list_head* %241, %struct.list_head** %__cil_tmp64, align 8
  %242 = load %struct.list_head*, %struct.list_head** %__cil_tmp64, align 8
  %243 = ptrtoint %struct.list_head* %242 to i32
  store i32 %243, i32* %__cil_tmp65, align 4
  store i32 16, i32* %__cil_tmp66, align 4
  %244 = load %struct.node*, %struct.node** %node, align 8
  %245 = ptrtoint %struct.node* %244 to i32
  store i32 %245, i32* %__cil_tmp67, align 4
  %246 = load i32, i32* %__cil_tmp67, align 4
  %247 = load i32, i32* %__cil_tmp66, align 4
  %248 = add i32 %246, %247
  store i32 %248, i32* %__cil_tmp68, align 4
  %249 = load i32, i32* %__cil_tmp68, align 4
  %250 = zext i32 %249 to i64
  %251 = inttoptr i64 %250 to %struct.list_head**
  %252 = load %struct.list_head*, %struct.list_head** %251, align 8
  store %struct.list_head* %252, %struct.list_head** %__cil_tmp69, align 8
  %253 = load %struct.list_head*, %struct.list_head** %__cil_tmp69, align 8
  %254 = ptrtoint %struct.list_head* %253 to i32
  store i32 %254, i32* %__cil_tmp70, align 4
  %255 = load i32, i32* %__cil_tmp70, align 4
  %256 = load i32, i32* %__cil_tmp65, align 4
  %257 = icmp ne i32 %255, %256
  %258 = zext i1 %257 to i32
  store i32 %258, i32* %__cil_tmp71, align 4
  %259 = load i32, i32* %__cil_tmp71, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %262, label %261

; <label>:261                                     ; preds = %234
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit10:                                      ; No predecessors!
  br label %263

; <label>:262                                     ; preds = %234
  br label %263

; <label>:263                                     ; preds = %262, %fail.exit10
  br label %264

; <label>:264                                     ; preds = %263
  br label %265

; <label>:265                                     ; preds = %264
  br label %266

; <label>:266                                     ; preds = %265
  %267 = load %struct.list_head*, %struct.list_head** %1, align 8
  %268 = bitcast %struct.list_head* %267 to %struct.node*
  store %struct.node* %268, %struct.node** %__cil_tmp72, align 8
  %269 = load %struct.node*, %struct.node** %__cil_tmp72, align 8
  %270 = ptrtoint %struct.node* %269 to i32
  store i32 %270, i32* %__cil_tmp73, align 4
  %271 = load %struct.node*, %struct.node** %node, align 8
  %272 = ptrtoint %struct.node* %271 to i32
  store i32 %272, i32* %__cil_tmp74, align 4
  %273 = load i32, i32* %__cil_tmp74, align 4
  %274 = load i32, i32* %__cil_tmp73, align 4
  %275 = icmp ne i32 %273, %274
  %276 = zext i1 %275 to i32
  store i32 %276, i32* %__cil_tmp75, align 4
  %277 = load i32, i32* %__cil_tmp75, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %280, label %279

; <label>:279                                     ; preds = %266
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit11:                                      ; No predecessors!
  br label %281

; <label>:280                                     ; preds = %266
  br label %281

; <label>:281                                     ; preds = %280, %fail.exit11
  br label %282

; <label>:282                                     ; preds = %281
  br label %283

; <label>:283                                     ; preds = %282
  br label %284

; <label>:284                                     ; preds = %283
  %285 = load %struct.node*, %struct.node** %node, align 8
  %286 = ptrtoint %struct.node* %285 to i32
  store i32 %286, i32* %__cil_tmp76, align 4
  %287 = load i32, i32* %__cil_tmp76, align 4
  %288 = add i32 %287, 4
  store i32 %288, i32* %__cil_tmp77, align 4
  %289 = load i32, i32* %__cil_tmp77, align 4
  %290 = zext i32 %289 to i64
  %291 = inttoptr i64 %290 to %struct.list_head*
  store %struct.list_head* %291, %struct.list_head** %__cil_tmp78, align 8
  %292 = load %struct.list_head*, %struct.list_head** %__cil_tmp78, align 8
  %293 = bitcast %struct.list_head* %292 to %struct.node*
  store %struct.node* %293, %struct.node** %__cil_tmp79, align 8
  %294 = load %struct.node*, %struct.node** %__cil_tmp79, align 8
  %295 = ptrtoint %struct.node* %294 to i32
  store i32 %295, i32* %__cil_tmp80, align 4
  %296 = load %struct.node*, %struct.node** %node, align 8
  %297 = ptrtoint %struct.node* %296 to i32
  store i32 %297, i32* %__cil_tmp81, align 4
  %298 = load i32, i32* %__cil_tmp81, align 4
  %299 = load i32, i32* %__cil_tmp80, align 4
  %300 = icmp ne i32 %298, %299
  %301 = zext i1 %300 to i32
  store i32 %301, i32* %__cil_tmp82, align 4
  %302 = load i32, i32* %__cil_tmp82, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %305, label %304

; <label>:304                                     ; preds = %284
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit12:                                      ; No predecessors!
  br label %306

; <label>:305                                     ; preds = %284
  br label %306

; <label>:306                                     ; preds = %305, %fail.exit12
  br label %307

; <label>:307                                     ; preds = %306
  br label %308

; <label>:308                                     ; preds = %307
  br label %309

; <label>:309                                     ; preds = %308
  %310 = load %struct.node*, %struct.node** %node, align 8
  %311 = bitcast %struct.node* %310 to i32*
  store i32* %311, i32** %__cil_tmp83, align 8
  %312 = load i32*, i32** %__cil_tmp83, align 8
  %313 = bitcast i32* %312 to %struct.node*
  store %struct.node* %313, %struct.node** %__cil_tmp84, align 8
  %314 = load %struct.node*, %struct.node** %__cil_tmp84, align 8
  %315 = ptrtoint %struct.node* %314 to i32
  store i32 %315, i32* %__cil_tmp85, align 4
  %316 = load %struct.node*, %struct.node** %node, align 8
  %317 = ptrtoint %struct.node* %316 to i32
  store i32 %317, i32* %__cil_tmp86, align 4
  %318 = load i32, i32* %__cil_tmp86, align 4
  %319 = load i32, i32* %__cil_tmp85, align 4
  %320 = icmp eq i32 %318, %319
  %321 = zext i1 %320 to i32
  store i32 %321, i32* %__cil_tmp87, align 4
  %322 = load i32, i32* %__cil_tmp87, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %325, label %324

; <label>:324                                     ; preds = %309
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit13:                                      ; No predecessors!
  br label %326

; <label>:325                                     ; preds = %309
  br label %326

; <label>:326                                     ; preds = %325, %fail.exit13
  br label %327

; <label>:327                                     ; preds = %326
  br label %328

; <label>:328                                     ; preds = %327
  br label %329

; <label>:329                                     ; preds = %328
  %330 = load %struct.node*, %struct.node** %node, align 8
  %331 = ptrtoint %struct.node* %330 to i32
  store i32 %331, i32* %__cil_tmp88, align 4
  %332 = load i32, i32* %__cil_tmp88, align 4
  %333 = add i32 %332, 4
  store i32 %333, i32* %__cil_tmp89, align 4
  %334 = load i32, i32* %__cil_tmp89, align 4
  %335 = zext i32 %334 to i64
  %336 = inttoptr i64 %335 to %struct.list_head**
  %337 = load %struct.list_head*, %struct.list_head** %336, align 8
  store %struct.list_head* %337, %struct.list_head** %__cil_tmp90, align 8
  %338 = load %struct.list_head*, %struct.list_head** %__cil_tmp90, align 8
  %339 = ptrtoint %struct.list_head* %338 to i32
  store i32 %339, i32* %__cil_tmp91, align 4
  %340 = load i32, i32* %__cil_tmp91, align 4
  %341 = add i32 %340, 4
  store i32 %341, i32* %__cil_tmp92, align 4
  %342 = load i32, i32* %__cil_tmp92, align 4
  %343 = zext i32 %342 to i64
  %344 = inttoptr i64 %343 to %struct.list_head**
  %345 = load %struct.list_head*, %struct.list_head** %344, align 8
  store %struct.list_head* %345, %struct.list_head** %__cil_tmp93, align 8
  %346 = load %struct.list_head*, %struct.list_head** %__cil_tmp93, align 8
  %347 = ptrtoint %struct.list_head* %346 to i32
  store i32 %347, i32* %__cil_tmp94, align 4
  %348 = load %struct.list_head*, %struct.list_head** %1, align 8
  %349 = ptrtoint %struct.list_head* %348 to i32
  store i32 %349, i32* %__cil_tmp95, align 4
  %350 = load i32, i32* %__cil_tmp95, align 4
  %351 = load i32, i32* %__cil_tmp94, align 4
  %352 = icmp eq i32 %350, %351
  %353 = zext i1 %352 to i32
  store i32 %353, i32* %__cil_tmp96, align 4
  %354 = load i32, i32* %__cil_tmp96, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %357, label %356

; <label>:356                                     ; preds = %329
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit14:                                      ; No predecessors!
  br label %358

; <label>:357                                     ; preds = %329
  br label %358

; <label>:358                                     ; preds = %357, %fail.exit14
  br label %359

; <label>:359                                     ; preds = %358
  br label %360

; <label>:360                                     ; preds = %359
  br label %361

; <label>:361                                     ; preds = %360
  store i32 8, i32* %__cil_tmp97, align 4
  %362 = load %struct.node*, %struct.node** %node, align 8
  %363 = ptrtoint %struct.node* %362 to i32
  store i32 %363, i32* %__cil_tmp98, align 4
  %364 = load i32, i32* %__cil_tmp98, align 4
  %365 = load i32, i32* %__cil_tmp97, align 4
  %366 = add i32 %364, %365
  store i32 %366, i32* %__cil_tmp99, align 4
  %367 = load i32, i32* %__cil_tmp99, align 4
  %368 = zext i32 %367 to i64
  %369 = inttoptr i64 %368 to %struct.list_head**
  %370 = load %struct.list_head*, %struct.list_head** %369, align 8
  store %struct.list_head* %370, %struct.list_head** %__cil_tmp100, align 8
  %371 = load %struct.list_head*, %struct.list_head** %__cil_tmp100, align 8
  %372 = bitcast %struct.list_head* %371 to %struct.list_head**
  %373 = load %struct.list_head*, %struct.list_head** %372, align 8
  store %struct.list_head* %373, %struct.list_head** %__cil_tmp101, align 8
  %374 = load %struct.list_head*, %struct.list_head** %__cil_tmp101, align 8
  %375 = ptrtoint %struct.list_head* %374 to i32
  store i32 %375, i32* %__cil_tmp102, align 4
  %376 = load %struct.list_head*, %struct.list_head** %1, align 8
  %377 = ptrtoint %struct.list_head* %376 to i32
  store i32 %377, i32* %__cil_tmp103, align 4
  %378 = load i32, i32* %__cil_tmp103, align 4
  %379 = load i32, i32* %__cil_tmp102, align 4
  %380 = icmp eq i32 %378, %379
  %381 = zext i1 %380 to i32
  store i32 %381, i32* %__cil_tmp104, align 4
  %382 = load i32, i32* %__cil_tmp104, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %385, label %384

; <label>:384                                     ; preds = %361
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit15:                                      ; No predecessors!
  br label %386

; <label>:385                                     ; preds = %361
  br label %386

; <label>:386                                     ; preds = %385, %fail.exit15
  br label %387

; <label>:387                                     ; preds = %386
  %388 = load %struct.list_head*, %struct.list_head** %1, align 8
  %389 = bitcast %struct.list_head* %388 to %struct.list_head**
  %390 = load %struct.list_head*, %struct.list_head** %389, align 8
  store %struct.list_head* %390, %struct.list_head** %__cil_tmp105, align 8
  %391 = load %struct.list_head*, %struct.list_head** %__cil_tmp105, align 8
  store %struct.list_head* %391, %struct.list_head** %1, align 8
  br label %392

; <label>:392                                     ; preds = %410, %387
  br label %393

; <label>:393                                     ; preds = %392
  %394 = load %struct.list_head*, %struct.list_head** %1, align 8
  %395 = ptrtoint %struct.list_head* %394 to i32
  store i32 %395, i32* %__cil_tmp106, align 4
  %396 = load %struct.node*, %struct.node** %node, align 8
  %397 = ptrtoint %struct.node* %396 to i32
  store i32 %397, i32* %__cil_tmp107, align 4
  %398 = load i32, i32* %__cil_tmp107, align 4
  %399 = add i32 %398, 4
  store i32 %399, i32* %__cil_tmp108, align 4
  %400 = load i32, i32* %__cil_tmp108, align 4
  %401 = zext i32 %400 to i64
  %402 = inttoptr i64 %401 to %struct.list_head*
  store %struct.list_head* %402, %struct.list_head** %__cil_tmp109, align 8
  %403 = load %struct.list_head*, %struct.list_head** %__cil_tmp109, align 8
  %404 = ptrtoint %struct.list_head* %403 to i32
  store i32 %404, i32* %__cil_tmp110, align 4
  %405 = load i32, i32* %__cil_tmp110, align 4
  %406 = load i32, i32* %__cil_tmp106, align 4
  %407 = icmp ne i32 %405, %406
  br i1 %407, label %408, label %409

; <label>:408                                     ; preds = %393
  br label %410

; <label>:409                                     ; preds = %393
  br label %415

; <label>:410                                     ; preds = %408
  %411 = load %struct.list_head*, %struct.list_head** %1, align 8
  %412 = bitcast %struct.list_head* %411 to %struct.list_head**
  %413 = load %struct.list_head*, %struct.list_head** %412, align 8
  store %struct.list_head* %413, %struct.list_head** %__cil_tmp111, align 8
  %414 = load %struct.list_head*, %struct.list_head** %__cil_tmp111, align 8
  store %struct.list_head* %414, %struct.list_head** %1, align 8
  br label %392

; <label>:415                                     ; preds = %409
  br label %416

; <label>:416                                     ; preds = %415
  br label %417

; <label>:417                                     ; preds = %416
  %418 = load %struct.node*, %struct.node** %node, align 8
  %419 = ptrtoint %struct.node* %418 to i32
  store i32 %419, i32* %__cil_tmp112, align 4
  store %struct.node* null, %struct.node** %__cil_tmp113, align 8
  %420 = load %struct.node*, %struct.node** %__cil_tmp113, align 8
  %421 = ptrtoint %struct.node* %420 to i32
  store i32 %421, i32* %__cil_tmp114, align 4
  %422 = load i32, i32* %__cil_tmp114, align 4
  %423 = add i32 %422, 4
  store i32 %423, i32* %__cil_tmp115, align 4
  %424 = load i32, i32* %__cil_tmp115, align 4
  %425 = zext i32 %424 to i64
  %426 = inttoptr i64 %425 to %struct.list_head*
  store %struct.list_head* %426, %struct.list_head** %__cil_tmp116, align 8
  %427 = load %struct.list_head*, %struct.list_head** %__cil_tmp116, align 8
  %428 = ptrtoint %struct.list_head* %427 to i64
  store i64 %428, i64* %__cil_tmp117, align 8
  %429 = load %struct.list_head*, %struct.list_head** %1, align 8
  %430 = bitcast %struct.list_head* %429 to i8*
  store i8* %430, i8** %__cil_tmp118, align 8
  %431 = load i8*, i8** %__cil_tmp118, align 8
  %432 = load i64, i64* %__cil_tmp117, align 8
  %433 = sub i64 0, %432
  %434 = getelementptr inbounds i8, i8* %431, i64 %433
  store i8* %434, i8** %__cil_tmp119, align 8
  %435 = load i8*, i8** %__cil_tmp119, align 8
  %436 = bitcast i8* %435 to %struct.node*
  store %struct.node* %436, %struct.node** %__cil_tmp120, align 8
  %437 = load %struct.node*, %struct.node** %__cil_tmp120, align 8
  %438 = ptrtoint %struct.node* %437 to i32
  store i32 %438, i32* %__cil_tmp121, align 4
  %439 = load i32, i32* %__cil_tmp121, align 4
  %440 = load i32, i32* %__cil_tmp112, align 4
  %441 = icmp eq i32 %439, %440
  %442 = zext i1 %441 to i32
  store i32 %442, i32* %__cil_tmp122, align 4
  %443 = load i32, i32* %__cil_tmp122, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %446, label %445

; <label>:445                                     ; preds = %417
  call void (...) @__VERIFIER_error() #6
  unreachable

fail.exit16:                                      ; No predecessors!
  br label %447

; <label>:446                                     ; preds = %417
  br label %447

; <label>:447                                     ; preds = %446, %fail.exit16
  br label %448

; <label>:448                                     ; preds = %447
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

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
