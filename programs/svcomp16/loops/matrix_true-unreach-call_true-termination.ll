; ModuleID = 'matrix_true-unreach-call_true-termination.i'
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
  %N_LIN = alloca i32, align 4
  %N_COL = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %saved_stack = alloca i8*
  %maior = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 1, i32* %N_LIN, align 4
  store i32 1, i32* %N_COL, align 4
  %0 = load i32, i32* %N_COL, align 4
  %1 = zext i32 %0 to i64
  %2 = load i32, i32* %N_LIN, align 4
  %3 = zext i32 %2 to i64
  %4 = call i8* @llvm.stacksave()
  store i8* %4, i8** %saved_stack
  %5 = mul nuw i64 %1, %3
  %vla = alloca i32, i64 %5, align 16
  %call = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %call, i32* %maior, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %N_COL, align 4
  %cmp = icmp ult i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %8 = load i32, i32* %k, align 4
  %9 = load i32, i32* %N_LIN, align 4
  %cmp2 = icmp ult i32 %8, %9
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call4 = call i32 (...) @__VERIFIER_nondet_int()
  %10 = load i32, i32* %k, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load i32, i32* %j, align 4
  %idxprom5 = zext i32 %11 to i64
  %12 = mul nsw i64 %idxprom5, %3
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %12
  %arrayidx6 = getelementptr inbounds i32, i32* %arrayidx, i64 %idxprom
  store i32 %call4, i32* %arrayidx6, align 4
  %13 = load i32, i32* %k, align 4
  %idxprom7 = zext i32 %13 to i64
  %14 = load i32, i32* %j, align 4
  %idxprom8 = zext i32 %14 to i64
  %15 = mul nsw i64 %idxprom8, %3
  %arrayidx9 = getelementptr inbounds i32, i32* %vla, i64 %15
  %arrayidx10 = getelementptr inbounds i32, i32* %arrayidx9, i64 %idxprom7
  %16 = load i32, i32* %arrayidx10, align 4
  %17 = load i32, i32* %maior, align 4
  %cmp11 = icmp sge i32 %16, %17
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %18 = load i32, i32* %k, align 4
  %idxprom12 = zext i32 %18 to i64
  %19 = load i32, i32* %j, align 4
  %idxprom13 = zext i32 %19 to i64
  %20 = mul nsw i64 %idxprom13, %3
  %arrayidx14 = getelementptr inbounds i32, i32* %vla, i64 %20
  %arrayidx15 = getelementptr inbounds i32, i32* %arrayidx14, i64 %idxprom12
  %21 = load i32, i32* %arrayidx15, align 4
  store i32 %21, i32* %maior, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %k, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %23 = load i32, i32* %j, align 4
  %inc17 = add i32 %23, 1
  store i32 %inc17, i32* %j, align 4
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  %24 = mul nsw i64 0, %3
  %arrayidx19 = getelementptr inbounds i32, i32* %vla, i64 %24
  %arrayidx20 = getelementptr inbounds i32, i32* %arrayidx19, i64 0
  %25 = load i32, i32* %arrayidx20, align 4
  %26 = load i32, i32* %maior, align 4
  %cmp21 = icmp sle i32 %25, %26
  %conv = zext i1 %cmp21 to i32
  call void @__VERIFIER_assert(i32 %conv)
  store i32 0, i32* %retval
  %27 = load i8*, i8** %saved_stack
  call void @llvm.stackrestore(i8* %27)
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare i32 @__VERIFIER_nondet_int(...) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
