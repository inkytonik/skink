; ModuleID = 'n.c24_false-unreach-call.i'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
entry:
  %cond.addr = alloca i32, align 4
  store i32 %cond, i32* %cond.addr, align 4
  %0 = load i32, i32* %cond.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %ERROR

ERROR:                                            ; preds = %if.then
  call void (...) @__VERIFIER_error() #5
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @bar(i8* %x) #0 {
entry:
  %x.addr = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  %call = call i32 @__VERIFIER_nondet_int()
  ret i32 %call
}

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind ssp uwtable
define i32 @foo(i32* %x) #0 {
entry:
  %x.addr = alloca i32*, align 8
  store i32* %x, i32** %x.addr, align 8
  %call = call i32 @__VERIFIER_nondet_int()
  %0 = load i32*, i32** %x.addr, align 8
  store i32 %call, i32* %0, align 4
  %1 = load i32*, i32** %x.addr, align 8
  %2 = load i32, i32* %1, align 4
  ret i32 %2
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ret = alloca i32, align 4
  %offset = alloca i32, align 4
  %tmp_cnt = alloca i32, align 4
  %tel_data = alloca i32, align 4
  %klen = alloca i32, align 4
  %x = alloca [1000 x i8], align 16
  store i32 0, i32* %retval
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @__VERIFIER_nondet_int()
  %conv = trunc i32 %call to i8
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1000 x i8], [1000 x i8]* %x, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc75, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %3, 1000
  br i1 %cmp2, label %for.body4, label %for.end77

for.body4:                                        ; preds = %for.cond1
  %call5 = call i32 @__VERIFIER_nondet_int()
  store i32 %call5, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %cmp6 = icmp ne i32 %4, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body4
  %call8 = call i32 @__VERIFIER_nondet_int()
  store i32 %call8, i32* %tmp_cnt, align 4
  %5 = load i32, i32* %tmp_cnt, align 4
  %cmp9 = icmp slt i32 %5, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end12:                                         ; preds = %if.end
  store i32 0, i32* %offset, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc72, %if.end12
  %6 = load i32, i32* %offset, align 4
  %7 = load i32, i32* %tmp_cnt, align 4
  %cmp14 = icmp slt i32 %6, %7
  br i1 %cmp14, label %for.body16, label %for.end74

for.body16:                                       ; preds = %for.cond13
  %call17 = call i32 @foo(i32* %tel_data)
  store i32 %call17, i32* %ret, align 4
  %8 = load i32, i32* %ret, align 4
  %cmp18 = icmp eq i32 %8, 0
  br i1 %cmp18, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body16
  %9 = load i32, i32* %ret, align 4
  %cmp20 = icmp eq i32 %9, 1
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %lor.lhs.false, %for.body16
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %10 = load i32, i32* %ret, align 4
  %cmp23 = icmp eq i32 %10, -1
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.else
  br label %for.inc72

if.end26:                                         ; preds = %if.else
  br label %if.end27

if.end27:                                         ; preds = %if.end26
  store i32 0, i32* %j, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc48, %if.end27
  %11 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %11 to i64
  %arrayidx30 = getelementptr inbounds [1000 x i8], [1000 x i8]* %x, i32 0, i64 %idxprom29
  %12 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %12 to i32
  %cmp32 = icmp ne i32 %conv31, 0
  br i1 %cmp32, label %for.body34, label %for.end50

for.body34:                                       ; preds = %for.cond28
  %13 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %13 to i64
  %arrayidx36 = getelementptr inbounds [1000 x i8], [1000 x i8]* %x, i32 0, i64 %idxprom35
  %14 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %14 to i32
  %cmp38 = icmp eq i32 %conv37, 1
  br i1 %cmp38, label %if.then40, label %if.end47

if.then40:                                        ; preds = %for.body34
  %15 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %15 to i64
  %arrayidx42 = getelementptr inbounds [1000 x i8], [1000 x i8]* %x, i32 0, i64 %idxprom41
  %16 = load i32, i32* %i, align 4
  %add = add nsw i32 %16, 1
  %idxprom43 = sext i32 %add to i64
  %arrayidx44 = getelementptr inbounds [1000 x i8], [1000 x i8]* %x, i32 0, i64 %idxprom43
  %17 = load i32, i32* %i, align 4
  %add45 = add nsw i32 %17, 1
  %sub = sub nsw i32 1001, %add45
  %conv46 = sext i32 %sub to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %arrayidx42, i8* %arrayidx44, i64 %conv46, i32 1, i1 false)
  br label %if.end47

if.end47:                                         ; preds = %if.then40, %for.body34
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %18 = load i32, i32* %j, align 4
  %inc49 = add nsw i32 %18, 1
  store i32 %inc49, i32* %j, align 4
  br label %for.cond28

for.end50:                                        ; preds = %for.cond28
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %x, i32 0, i32 0
  %call51 = call i32 @bar(i8* %arraydecay)
  store i32 %call51, i32* %ret, align 4
  %19 = load i32, i32* %ret, align 4
  %cmp52 = icmp ne i32 %19, -1
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %for.end50
  br label %for.inc72

if.end55:                                         ; preds = %for.end50
  %arraydecay56 = getelementptr inbounds [1000 x i8], [1000 x i8]* %x, i32 0, i32 0
  %call57 = call i64 @strlen(i8* %arraydecay56) #6
  %conv58 = trunc i64 %call57 to i32
  store i32 %conv58, i32* %klen, align 4
  %20 = load i32, i32* %klen, align 4
  %cmp59 = icmp sgt i32 %20, 20
  br i1 %cmp59, label %if.then61, label %if.else64

if.then61:                                        ; preds = %if.end55
  %21 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %21 to i64
  %arrayidx63 = getelementptr inbounds [1000 x i8], [1000 x i8]* %x, i32 0, i64 %idxprom62
  store i8 0, i8* %arrayidx63, align 1
  br label %if.end71

if.else64:                                        ; preds = %if.end55
  %22 = load i32, i32* %klen, align 4
  %cmp65 = icmp sgt i32 %22, 0
  br i1 %cmp65, label %if.then67, label %if.end70

if.then67:                                        ; preds = %if.else64
  %23 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %23 to i64
  %arrayidx69 = getelementptr inbounds [1000 x i8], [1000 x i8]* %x, i32 0, i64 %idxprom68
  store i8 -1, i8* %arrayidx69, align 1
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.else64
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then61
  br label %for.inc72

for.inc72:                                        ; preds = %if.end71, %if.then54, %if.then25
  %24 = load i32, i32* %offset, align 4
  %inc73 = add nsw i32 %24, 1
  store i32 %inc73, i32* %offset, align 4
  br label %for.cond13

for.end74:                                        ; preds = %for.cond13
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %25 = load i32, i32* %i, align 4
  %inc76 = add nsw i32 %25, 1
  store i32 %inc76, i32* %i, align 4
  br label %for.cond1

for.end77:                                        ; preds = %for.cond1
  %26 = load i32, i32* %offset, align 4
  %cmp78 = icmp sge i32 %26, 0
  br i1 %cmp78, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end77
  %27 = load i32, i32* %offset, align 4
  %cmp80 = icmp sle i32 %27, 1000
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end77
  %28 = phi i1 [ false, %for.end77 ], [ %cmp80, %land.rhs ]
  %land.ext = zext i1 %28 to i32
  call void @__VERIFIER_assert(i32 %land.ext)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then22, %if.then11, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
