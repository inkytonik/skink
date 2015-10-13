; ModuleID = 'insertion_sort_false-unreach-call.i'
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
  call void (...) @__VERIFIER_error() #4
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %SIZE = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %key = alloca i32, align 4
  %saved_stack = alloca i8*
  store i32 0, i32* %retval
  %call = call i32 (...) @__VERIFIER_nondet_uint()
  store i32 %call, i32* %SIZE, align 4
  %0 = load i32, i32* %SIZE, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack
  %vla = alloca i32, i64 %1, align 16
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %SIZE, align 4
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  store i32 %6, i32* %key, align 4
  %7 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %7, 1
  store i32 %sub, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %8 = load i32, i32* %i, align 4
  %cmp1 = icmp sge i32 %8, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %vla, i64 %idxprom2
  %10 = load i32, i32* %arrayidx3, align 4
  %11 = load i32, i32* %key, align 4
  %cmp4 = icmp sgt i32 %10, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %13, 2
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %vla, i64 %idxprom6
  %15 = load i32, i32* %arrayidx7, align 4
  %16 = load i32, i32* %i, align 4
  %add = add nsw i32 %16, 1
  %idxprom8 = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %vla, i64 %idxprom8
  store i32 %15, i32* %arrayidx9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %17 = load i32, i32* %i, align 4
  %sub10 = sub nsw i32 %17, 1
  store i32 %sub10, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %18 = load i32, i32* %key, align 4
  %19 = load i32, i32* %i, align 4
  %add11 = add nsw i32 %19, 1
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %vla, i64 %idxprom12
  store i32 %18, i32* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %k, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc23, %for.end
  %21 = load i32, i32* %k, align 4
  %22 = load i32, i32* %SIZE, align 4
  %cmp15 = icmp ult i32 %21, %22
  br i1 %cmp15, label %for.body16, label %for.end25

for.body16:                                       ; preds = %for.cond14
  %23 = load i32, i32* %k, align 4
  %sub17 = sub nsw i32 %23, 1
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %vla, i64 %idxprom18
  %24 = load i32, i32* %arrayidx19, align 4
  %25 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %25 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %vla, i64 %idxprom20
  %26 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp sle i32 %24, %26
  %conv = zext i1 %cmp22 to i32
  call void @__VERIFIER_assert(i32 %conv)
  br label %for.inc23

for.inc23:                                        ; preds = %for.body16
  %27 = load i32, i32* %k, align 4
  %inc24 = add nsw i32 %27, 1
  store i32 %inc24, i32* %k, align 4
  br label %for.cond14

for.end25:                                        ; preds = %for.cond14
  store i32 0, i32* %retval
  %28 = load i8*, i8** %saved_stack
  call void @llvm.stackrestore(i8* %28)
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare i32 @__VERIFIER_nondet_uint(...) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
