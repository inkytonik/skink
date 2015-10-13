; ModuleID = 'bubble_sort_false-unreach-call.i'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.node = type { i32, %struct.list_head, %struct.list_head }

@gl_list = global %struct.list_head { %struct.list_head* @gl_list, %struct.list_head* @gl_list }, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %__cil_tmp1 = alloca %struct.list_head*, align 8
  %__cil_tmp2 = alloca %struct.list_head*, align 8
  store i32 0, i32* %retval
  call void @gl_read()
  store %struct.list_head* @gl_list, %struct.list_head** %__cil_tmp1, align 8
  %0 = load %struct.list_head*, %struct.list_head** %__cil_tmp1, align 8
  call void @inspect(%struct.list_head* %0)
  call void @gl_sort()
  store %struct.list_head* @gl_list, %struct.list_head** %__cil_tmp2, align 8
  %1 = load %struct.list_head*, %struct.list_head** %__cil_tmp2, align 8
  call void @inspect(%struct.list_head* %1)
  call void @gl_destroy()
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal void @gl_read() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp___0 = alloca i32, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  br label %while_19_continue

while_19_continue:                                ; preds = %while.body
  %call = call i32 @__VERIFIER_nondet_int()
  store i32 %call, i32* %tmp, align 4
  %0 = load i32, i32* %tmp, align 4
  call void @gl_insert(i32 %0)
  %call2 = call i32 @__VERIFIER_nondet_int()
  store i32 %call2, i32* %tmp___0, align 4
  %1 = load i32, i32* %tmp___0, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while_19_continue
  br label %if.end

if.else:                                          ; preds = %while_19_continue
  br label %while_19_break

if.end:                                           ; preds = %if.then
  br label %while.body

while_19_break:                                   ; preds = %if.else
  ret void
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
  call void @fail()
  br label %if.end

if.else:                                          ; preds = %while_0_continue
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
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
  call void @fail()
  br label %if.end5

if.else4:                                         ; preds = %while_1_continue
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.then3
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
  call void @fail()
  br label %if.end13

if.else12:                                        ; preds = %while_2_continue
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then11
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
  call void @fail()
  br label %if.end20

if.else19:                                        ; preds = %while_3_continue
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then18
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
  call void @fail()
  br label %if.end27

if.else26:                                        ; preds = %while_4_continue
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %if.then25
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
  call void @fail()
  br label %if.end36

if.else35:                                        ; preds = %while_5_continue
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %if.then34
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
  call void @fail()
  br label %if.end43

if.else42:                                        ; preds = %while_6_continue
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %if.then41
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
  call void @fail()
  br label %if.end54

if.else53:                                        ; preds = %while_7_continue
  br label %if.end54

if.end54:                                         ; preds = %if.else53, %if.then52
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
  call void @fail()
  br label %if.end65

if.else64:                                        ; preds = %while_8_continue
  br label %if.end65

if.end65:                                         ; preds = %if.else64, %if.then63
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
  call void @fail()
  br label %if.end76

if.else75:                                        ; preds = %while_9_continue
  br label %if.end76

if.end76:                                         ; preds = %if.else75, %if.then74
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
  call void @fail()
  br label %if.end87

if.else86:                                        ; preds = %while_10_continue
  br label %if.end87

if.end87:                                         ; preds = %if.else86, %if.then85
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
  call void @fail()
  br label %if.end94

if.else93:                                        ; preds = %while_11_continue
  br label %if.end94

if.end94:                                         ; preds = %if.else93, %if.then92
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
  call void @fail()
  br label %if.end103

if.else102:                                       ; preds = %while_12_continue
  br label %if.end103

if.end103:                                        ; preds = %if.else102, %if.then101
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
  call void @fail()
  br label %if.end110

if.else109:                                       ; preds = %while_13_continue
  br label %if.end110

if.end110:                                        ; preds = %if.else109, %if.then108
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
  call void @fail()
  br label %if.end121

if.else120:                                       ; preds = %while_14_continue
  br label %if.end121

if.end121:                                        ; preds = %if.else120, %if.then119
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
  call void @fail()
  br label %if.end130

if.else129:                                       ; preds = %while_15_continue
  br label %if.end130

if.end130:                                        ; preds = %if.else129, %if.then128
  br label %while_15_break

while_15_break:                                   ; preds = %if.end130
  %214 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %215 = bitcast %struct.list_head* %214 to %struct.list_head**
  %216 = load %struct.list_head*, %struct.list_head** %215, align 8
  store %struct.list_head* %216, %struct.list_head** %__cil_tmp105, align 8
  %217 = load %struct.list_head*, %struct.list_head** %__cil_tmp105, align 8
  store %struct.list_head* %217, %struct.list_head** %head.addr, align 8
  br label %while.body131

while.body131:                                    ; preds = %while_15_break, %if.end138
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
  call void @fail()
  br label %if.end149

if.else148:                                       ; preds = %while_17_continue
  br label %if.end149

if.end149:                                        ; preds = %if.else148, %if.then147
  br label %while_17_break

while_17_break:                                   ; preds = %if.end149
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @gl_sort() #0 {
entry:
  %tmp = alloca i8, align 1
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  br label %while_22_continue

while_22_continue:                                ; preds = %while.body
  %call = call zeroext i1 @gl_sort_pass()
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %tmp, align 1
  %0 = load i8, i8* %tmp, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while_22_continue
  br label %if.end

if.else:                                          ; preds = %while_22_continue
  br label %while_22_break

if.end:                                           ; preds = %if.then
  br label %while.body

while_22_break:                                   ; preds = %if.else
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @gl_destroy() #0 {
entry:
  %next = alloca %struct.list_head*, align 8
  %__cil_tmp2 = alloca %struct.list_head*, align 8
  %__cil_tmp3 = alloca i32, align 4
  %__cil_tmp4 = alloca i32, align 4
  %__cil_tmp5 = alloca %struct.list_head*, align 8
  %__cil_tmp6 = alloca %struct.node*, align 8
  %__cil_tmp7 = alloca i32, align 4
  %__cil_tmp8 = alloca i32, align 4
  %__cil_tmp9 = alloca %struct.list_head*, align 8
  %__cil_tmp10 = alloca i64, align 8
  %__cil_tmp11 = alloca i8*, align 8
  %__cil_tmp12 = alloca i8*, align 8
  %__cil_tmp13 = alloca %struct.node*, align 8
  %__cil_tmp14 = alloca i8*, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  br label %while_20_continue

while_20_continue:                                ; preds = %while.body
  store %struct.list_head* @gl_list, %struct.list_head** %__cil_tmp2, align 8
  %0 = load %struct.list_head*, %struct.list_head** %__cil_tmp2, align 8
  %1 = bitcast %struct.list_head* %0 to %struct.list_head**
  %2 = load %struct.list_head*, %struct.list_head** %1, align 8
  store %struct.list_head* %2, %struct.list_head** %next, align 8
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8
  %4 = ptrtoint %struct.list_head* %3 to i32
  store i32 %4, i32* %__cil_tmp3, align 4
  store i32 ptrtoint (%struct.list_head* @gl_list to i32), i32* %__cil_tmp4, align 4
  %5 = load i32, i32* %__cil_tmp4, align 4
  %6 = load i32, i32* %__cil_tmp3, align 4
  %cmp = icmp ne i32 %5, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while_20_continue
  br label %if.end

if.else:                                          ; preds = %while_20_continue
  br label %while_20_break

if.end:                                           ; preds = %if.then
  store %struct.list_head* @gl_list, %struct.list_head** %__cil_tmp5, align 8
  %7 = load %struct.list_head*, %struct.list_head** %next, align 8
  %8 = bitcast %struct.list_head* %7 to %struct.list_head**
  %9 = load %struct.list_head*, %struct.list_head** %8, align 8
  %10 = load %struct.list_head*, %struct.list_head** %__cil_tmp5, align 8
  %11 = bitcast %struct.list_head* %10 to %struct.list_head**
  store %struct.list_head* %9, %struct.list_head** %11, align 8
  store %struct.node* null, %struct.node** %__cil_tmp6, align 8
  %12 = load %struct.node*, %struct.node** %__cil_tmp6, align 8
  %13 = ptrtoint %struct.node* %12 to i32
  store i32 %13, i32* %__cil_tmp7, align 4
  %14 = load i32, i32* %__cil_tmp7, align 4
  %add = add i32 %14, 4
  store i32 %add, i32* %__cil_tmp8, align 4
  %15 = load i32, i32* %__cil_tmp8, align 4
  %conv = zext i32 %15 to i64
  %16 = inttoptr i64 %conv to %struct.list_head*
  store %struct.list_head* %16, %struct.list_head** %__cil_tmp9, align 8
  %17 = load %struct.list_head*, %struct.list_head** %__cil_tmp9, align 8
  %18 = ptrtoint %struct.list_head* %17 to i64
  store i64 %18, i64* %__cil_tmp10, align 8
  %19 = load %struct.list_head*, %struct.list_head** %next, align 8
  %20 = bitcast %struct.list_head* %19 to i8*
  store i8* %20, i8** %__cil_tmp11, align 8
  %21 = load i8*, i8** %__cil_tmp11, align 8
  %22 = load i64, i64* %__cil_tmp10, align 8
  %idx.neg = sub i64 0, %22
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.neg
  store i8* %add.ptr, i8** %__cil_tmp12, align 8
  %23 = load i8*, i8** %__cil_tmp12, align 8
  %24 = bitcast i8* %23 to %struct.node*
  store %struct.node* %24, %struct.node** %__cil_tmp13, align 8
  %25 = load %struct.node*, %struct.node** %__cil_tmp13, align 8
  %26 = bitcast %struct.node* %25 to i8*
  store i8* %26, i8** %__cil_tmp14, align 8
  %27 = load i8*, i8** %__cil_tmp14, align 8
  call void @free(i8* %27) #6
  br label %while.body

while_20_break:                                   ; preds = %if.else
  ret void
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind ssp uwtable
define internal void @gl_insert(i32 %value) #0 {
entry:
  %value.addr = alloca i32, align 4
  %node = alloca %struct.node*, align 8
  %tmp = alloca i8*, align 8
  %__cil_tmp4 = alloca i32, align 4
  %__cil_tmp5 = alloca i32, align 4
  %__cil_tmp6 = alloca i32, align 4
  %__cil_tmp7 = alloca %struct.list_head*, align 8
  %__cil_tmp8 = alloca i32, align 4
  %__cil_tmp9 = alloca i32, align 4
  %__cil_tmp10 = alloca i32, align 4
  %__cil_tmp11 = alloca i32, align 4
  %__cil_tmp12 = alloca i32, align 4
  %__cil_tmp13 = alloca i32, align 4
  %__cil_tmp14 = alloca i32, align 4
  %__cil_tmp15 = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  store i32 20, i32* %__cil_tmp4, align 4
  %0 = load i32, i32* %__cil_tmp4, align 4
  %call = call noalias i8* @malloc(i32 %0) #6
  store i8* %call, i8** %tmp, align 8
  %1 = load i8*, i8** %tmp, align 8
  %2 = bitcast i8* %1 to %struct.node*
  store %struct.node* %2, %struct.node** %node, align 8
  %3 = load %struct.node*, %struct.node** %node, align 8
  %tobool = icmp ne %struct.node* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @abort() #7
  unreachable

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else
  %4 = load i32, i32* %value.addr, align 4
  %5 = load %struct.node*, %struct.node** %node, align 8
  %6 = bitcast %struct.node* %5 to i32*
  store i32 %4, i32* %6, align 4
  %7 = load %struct.node*, %struct.node** %node, align 8
  %8 = ptrtoint %struct.node* %7 to i32
  store i32 %8, i32* %__cil_tmp5, align 4
  %9 = load i32, i32* %__cil_tmp5, align 4
  %add = add i32 %9, 4
  store i32 %add, i32* %__cil_tmp6, align 4
  %10 = load i32, i32* %__cil_tmp6, align 4
  %conv = zext i32 %10 to i64
  %11 = inttoptr i64 %conv to %struct.list_head*
  store %struct.list_head* %11, %struct.list_head** %__cil_tmp7, align 8
  %12 = load %struct.list_head*, %struct.list_head** %__cil_tmp7, align 8
  call void @list_add(%struct.list_head* %12, %struct.list_head* @gl_list)
  br label %while.body

while.body:                                       ; preds = %if.end
  br label %while_18_continue

while_18_continue:                                ; preds = %while.body
  %13 = load %struct.node*, %struct.node** %node, align 8
  %14 = ptrtoint %struct.node* %13 to i32
  store i32 %14, i32* %__cil_tmp8, align 4
  %15 = load i32, i32* %__cil_tmp8, align 4
  %add13 = add i32 %15, 12
  store i32 %add13, i32* %__cil_tmp9, align 4
  %16 = load %struct.node*, %struct.node** %node, align 8
  %17 = ptrtoint %struct.node* %16 to i32
  store i32 %17, i32* %__cil_tmp10, align 4
  %18 = load i32, i32* %__cil_tmp10, align 4
  %add14 = add i32 %18, 12
  store i32 %add14, i32* %__cil_tmp11, align 4
  %19 = load i32, i32* %__cil_tmp11, align 4
  %conv15 = zext i32 %19 to i64
  %20 = inttoptr i64 %conv15 to %struct.list_head*
  %21 = load i32, i32* %__cil_tmp9, align 4
  %conv16 = zext i32 %21 to i64
  %22 = inttoptr i64 %conv16 to %struct.list_head**
  store %struct.list_head* %20, %struct.list_head** %22, align 8
  %23 = load %struct.node*, %struct.node** %node, align 8
  %24 = ptrtoint %struct.node* %23 to i32
  store i32 %24, i32* %__cil_tmp12, align 4
  %25 = load i32, i32* %__cil_tmp12, align 4
  %add17 = add i32 %25, 12
  store i32 %add17, i32* %__cil_tmp13, align 4
  %26 = load %struct.node*, %struct.node** %node, align 8
  %27 = ptrtoint %struct.node* %26 to i32
  store i32 %27, i32* %__cil_tmp14, align 4
  %28 = load i32, i32* %__cil_tmp14, align 4
  %add18 = add i32 %28, 12
  store i32 %add18, i32* %__cil_tmp15, align 4
  %29 = load i32, i32* %__cil_tmp15, align 4
  %conv19 = zext i32 %29 to i64
  %30 = inttoptr i64 %conv19 to %struct.list_head*
  %31 = load i32, i32* %__cil_tmp13, align 4
  %conv20 = zext i32 %31 to i64
  %32 = inttoptr i64 %conv20 to %struct.list_head**
  store %struct.list_head* %30, %struct.list_head** %32, align 8
  br label %while_18_break

while_18_break:                                   ; preds = %while_18_continue
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #4 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  %__cil_tmp3 = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %1 = bitcast %struct.list_head* %0 to %struct.list_head**
  %2 = load %struct.list_head*, %struct.list_head** %1, align 8
  store %struct.list_head* %2, %struct.list_head** %__cil_tmp3, align 8
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8
  %4 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %5 = load %struct.list_head*, %struct.list_head** %__cil_tmp3, align 8
  call void @__list_add(%struct.list_head* %3, %struct.list_head* %4, %struct.list_head* %5)
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #4 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  %__cil_tmp4 = alloca i32, align 4
  %__cil_tmp5 = alloca i32, align 4
  %__cil_tmp6 = alloca i32, align 4
  %__cil_tmp7 = alloca i32, align 4
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  %0 = load %struct.list_head*, %struct.list_head** %next.addr, align 8
  %1 = ptrtoint %struct.list_head* %0 to i32
  store i32 %1, i32* %__cil_tmp4, align 4
  %2 = load i32, i32* %__cil_tmp4, align 4
  %add = add i32 %2, 4
  store i32 %add, i32* %__cil_tmp5, align 4
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8
  %4 = load i32, i32* %__cil_tmp5, align 4
  %conv = zext i32 %4 to i64
  %5 = inttoptr i64 %conv to %struct.list_head**
  store %struct.list_head* %3, %struct.list_head** %5, align 8
  %6 = load %struct.list_head*, %struct.list_head** %next.addr, align 8
  %7 = load %struct.list_head*, %struct.list_head** %new.addr, align 8
  %8 = bitcast %struct.list_head* %7 to %struct.list_head**
  store %struct.list_head* %6, %struct.list_head** %8, align 8
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8
  %10 = ptrtoint %struct.list_head* %9 to i32
  store i32 %10, i32* %__cil_tmp6, align 4
  %11 = load i32, i32* %__cil_tmp6, align 4
  %add1 = add i32 %11, 4
  store i32 %add1, i32* %__cil_tmp7, align 4
  %12 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8
  %13 = load i32, i32* %__cil_tmp7, align 4
  %conv2 = zext i32 %13 to i64
  %14 = inttoptr i64 %conv2 to %struct.list_head**
  store %struct.list_head* %12, %struct.list_head** %14, align 8
  %15 = load %struct.list_head*, %struct.list_head** %new.addr, align 8
  %16 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8
  %17 = bitcast %struct.list_head* %16 to %struct.list_head**
  store %struct.list_head* %15, %struct.list_head** %17, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @fail() #0 {
entry:
  br label %ERROR

ERROR:                                            ; preds = %entry
  call void (...) @__VERIFIER_error() #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #5

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @gl_sort_pass() #0 {
entry:
  %any_change = alloca i8, align 1
  %pos0 = alloca %struct.list_head*, align 8
  %pos1 = alloca %struct.list_head*, align 8
  %val0 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %val1 = alloca i32, align 4
  %tmp___0 = alloca i32, align 4
  %__cil_tmp8 = alloca %struct.list_head*, align 8
  %__cil_tmp9 = alloca i32, align 4
  %__cil_tmp10 = alloca i32, align 4
  store i8 0, i8* %any_change, align 1
  store %struct.list_head* @gl_list, %struct.list_head** %__cil_tmp8, align 8
  %0 = load %struct.list_head*, %struct.list_head** %__cil_tmp8, align 8
  %1 = bitcast %struct.list_head* %0 to %struct.list_head**
  %2 = load %struct.list_head*, %struct.list_head** %1, align 8
  store %struct.list_head* %2, %struct.list_head** %pos0, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end10
  br label %while_21_continue

while_21_continue:                                ; preds = %if.then8, %while.body
  %3 = load %struct.list_head*, %struct.list_head** %pos0, align 8
  %4 = bitcast %struct.list_head* %3 to %struct.list_head**
  %5 = load %struct.list_head*, %struct.list_head** %4, align 8
  store %struct.list_head* %5, %struct.list_head** %pos1, align 8
  %6 = load %struct.list_head*, %struct.list_head** %pos1, align 8
  %7 = ptrtoint %struct.list_head* %6 to i32
  store i32 %7, i32* %__cil_tmp9, align 4
  store i32 ptrtoint (%struct.list_head* @gl_list to i32), i32* %__cil_tmp10, align 4
  %8 = load i32, i32* %__cil_tmp10, align 4
  %9 = load i32, i32* %__cil_tmp9, align 4
  %cmp = icmp ne i32 %8, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while_21_continue
  br label %if.end

if.else:                                          ; preds = %while_21_continue
  br label %while_21_break

if.end:                                           ; preds = %if.then
  %10 = load %struct.list_head*, %struct.list_head** %pos0, align 8
  %call = call i32 @val_from_node(%struct.list_head* %10)
  store i32 %call, i32* %tmp, align 4
  %11 = load i32, i32* %tmp, align 4
  store i32 %11, i32* %val0, align 4
  %12 = load %struct.list_head*, %struct.list_head** %pos1, align 8
  %call6 = call i32 @val_from_node(%struct.list_head* %12)
  store i32 %call6, i32* %tmp___0, align 4
  %13 = load i32, i32* %tmp___0, align 4
  store i32 %13, i32* %val1, align 4
  %14 = load i32, i32* %val0, align 4
  %15 = load i32, i32* %val1, align 4
  %cmp7 = icmp sle i32 %14, %15
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.end
  %16 = load %struct.list_head*, %struct.list_head** %pos1, align 8
  store %struct.list_head* %16, %struct.list_head** %pos0, align 8
  br label %while_21_continue

if.else9:                                         ; preds = %if.end
  br label %if.end10

if.end10:                                         ; preds = %if.else9
  store i8 1, i8* %any_change, align 1
  %17 = load %struct.list_head*, %struct.list_head** %pos0, align 8
  %18 = load %struct.list_head*, %struct.list_head** %pos1, align 8
  call void @list_move(%struct.list_head* %17, %struct.list_head* %18)
  br label %while.body

while_21_break:                                   ; preds = %if.else
  %19 = load i8, i8* %any_change, align 1
  %tobool = trunc i8 %19 to i1
  ret i1 %tobool
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @val_from_node(%struct.list_head* %head) #0 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %entry1 = alloca %struct.node*, align 8
  %__cil_tmp3 = alloca %struct.node*, align 8
  %__cil_tmp4 = alloca i32, align 4
  %__cil_tmp5 = alloca i32, align 4
  %__cil_tmp6 = alloca %struct.list_head*, align 8
  %__cil_tmp7 = alloca i64, align 8
  %__cil_tmp8 = alloca i8*, align 8
  %__cil_tmp9 = alloca i8*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  store %struct.node* null, %struct.node** %__cil_tmp3, align 8
  %0 = load %struct.node*, %struct.node** %__cil_tmp3, align 8
  %1 = ptrtoint %struct.node* %0 to i32
  store i32 %1, i32* %__cil_tmp4, align 4
  %2 = load i32, i32* %__cil_tmp4, align 4
  %add = add i32 %2, 4
  store i32 %add, i32* %__cil_tmp5, align 4
  %3 = load i32, i32* %__cil_tmp5, align 4
  %conv = zext i32 %3 to i64
  %4 = inttoptr i64 %conv to %struct.list_head*
  store %struct.list_head* %4, %struct.list_head** %__cil_tmp6, align 8
  %5 = load %struct.list_head*, %struct.list_head** %__cil_tmp6, align 8
  %6 = ptrtoint %struct.list_head* %5 to i64
  store i64 %6, i64* %__cil_tmp7, align 8
  %7 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  %8 = bitcast %struct.list_head* %7 to i8*
  store i8* %8, i8** %__cil_tmp8, align 8
  %9 = load i8*, i8** %__cil_tmp8, align 8
  %10 = load i64, i64* %__cil_tmp7, align 8
  %idx.neg = sub i64 0, %10
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.neg
  store i8* %add.ptr, i8** %__cil_tmp9, align 8
  %11 = load i8*, i8** %__cil_tmp9, align 8
  %12 = bitcast i8* %11 to %struct.node*
  store %struct.node* %12, %struct.node** %entry1, align 8
  %13 = load %struct.node*, %struct.node** %entry1, align 8
  %14 = bitcast %struct.node* %13 to i32*
  %15 = load i32, i32* %14, align 4
  ret i32 %15
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @list_move(%struct.list_head* %list, %struct.list_head* %head) #4 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  %__cil_tmp3 = alloca i32, align 4
  %__cil_tmp4 = alloca i32, align 4
  %__cil_tmp5 = alloca %struct.list_head*, align 8
  %__cil_tmp6 = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8
  %1 = ptrtoint %struct.list_head* %0 to i32
  store i32 %1, i32* %__cil_tmp3, align 4
  %2 = load i32, i32* %__cil_tmp3, align 4
  %add = add i32 %2, 4
  store i32 %add, i32* %__cil_tmp4, align 4
  %3 = load i32, i32* %__cil_tmp4, align 4
  %conv = zext i32 %3 to i64
  %4 = inttoptr i64 %conv to %struct.list_head**
  %5 = load %struct.list_head*, %struct.list_head** %4, align 8
  store %struct.list_head* %5, %struct.list_head** %__cil_tmp5, align 8
  %6 = load %struct.list_head*, %struct.list_head** %list.addr, align 8
  %7 = bitcast %struct.list_head* %6 to %struct.list_head**
  %8 = load %struct.list_head*, %struct.list_head** %7, align 8
  store %struct.list_head* %8, %struct.list_head** %__cil_tmp6, align 8
  %9 = load %struct.list_head*, %struct.list_head** %__cil_tmp5, align 8
  %10 = load %struct.list_head*, %struct.list_head** %__cil_tmp6, align 8
  call void @__list_del(%struct.list_head* %9, %struct.list_head* %10)
  %11 = load %struct.list_head*, %struct.list_head** %list.addr, align 8
  %12 = load %struct.list_head*, %struct.list_head** %head.addr, align 8
  call void @list_add(%struct.list_head* %11, %struct.list_head* %12)
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #4 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  %__cil_tmp3 = alloca i32, align 4
  %__cil_tmp4 = alloca i32, align 4
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  %0 = load %struct.list_head*, %struct.list_head** %next.addr, align 8
  %1 = ptrtoint %struct.list_head* %0 to i32
  store i32 %1, i32* %__cil_tmp3, align 4
  %2 = load i32, i32* %__cil_tmp3, align 4
  %add = add i32 %2, 4
  store i32 %add, i32* %__cil_tmp4, align 4
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8
  %4 = load i32, i32* %__cil_tmp4, align 4
  %conv = zext i32 %4 to i64
  %5 = inttoptr i64 %conv to %struct.list_head**
  store %struct.list_head* %3, %struct.list_head** %5, align 8
  %6 = load %struct.list_head*, %struct.list_head** %next.addr, align 8
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8
  %8 = bitcast %struct.list_head* %7 to %struct.list_head**
  store %struct.list_head* %6, %struct.list_head** %8, align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
