; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

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
  %call = call i32 (...) @__VERIFIER_nondet_uint()
  store i32 %call, i32* %N_LIN, align 4
  %call1 = call i32 (...) @__VERIFIER_nondet_uint()
  store i32 %call1, i32* %N_COL, align 4
  %0 = load i32, i32* %N_COL, align 4
  %1 = zext i32 %0 to i64
  %2 = load i32, i32* %N_LIN, align 4
  %3 = zext i32 %2 to i64
  %4 = call i8* @llvm.stacksave()
  store i8* %4, i8** %saved_stack
  %5 = mul nuw i64 %1, %3
  %vla = alloca i32, i64 %5, align 16
  %call2 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %call2, i32* %maior, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %N_COL, align 4
  %cmp = icmp ult i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %8 = load i32, i32* %k, align 4
  %9 = load i32, i32* %N_LIN, align 4
  %cmp4 = icmp ult i32 %8, %9
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %call6 = call i32 (...) @__VERIFIER_nondet_int()
  %10 = load i32, i32* %k, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load i32, i32* %j, align 4
  %idxprom7 = zext i32 %11 to i64
  %12 = mul nsw i64 %idxprom7, %3
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %12
  %arrayidx8 = getelementptr inbounds i32, i32* %arrayidx, i64 %idxprom
  store i32 %call6, i32* %arrayidx8, align 4
  %13 = load i32, i32* %k, align 4
  %idxprom9 = zext i32 %13 to i64
  %14 = load i32, i32* %j, align 4
  %idxprom10 = zext i32 %14 to i64
  %15 = mul nsw i64 %idxprom10, %3
  %arrayidx11 = getelementptr inbounds i32, i32* %vla, i64 %15
  %arrayidx12 = getelementptr inbounds i32, i32* %arrayidx11, i64 %idxprom9
  %16 = load i32, i32* %arrayidx12, align 4
  %17 = load i32, i32* %maior, align 4
  %cmp13 = icmp sgt i32 %16, %17
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  %18 = load i32, i32* %k, align 4
  %idxprom14 = zext i32 %18 to i64
  %19 = load i32, i32* %j, align 4
  %idxprom15 = zext i32 %19 to i64
  %20 = mul nsw i64 %idxprom15, %3
  %arrayidx16 = getelementptr inbounds i32, i32* %vla, i64 %20
  %arrayidx17 = getelementptr inbounds i32, i32* %arrayidx16, i64 %idxprom14
  %21 = load i32, i32* %arrayidx17, align 4
  store i32 %21, i32* %maior, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %k, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond3

for.end:                                          ; preds = %for.cond3
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %23 = load i32, i32* %j, align 4
  %inc19 = add i32 %23, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.cond

for.end20:                                        ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc36, %for.end20
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %N_COL, align 4
  %cmp22 = icmp ult i32 %24, %25
  br i1 %cmp22, label %for.body23, label %for.end38

for.body23:                                       ; preds = %for.cond21
  store i32 0, i32* %k, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc33, %for.body23
  %26 = load i32, i32* %k, align 4
  %27 = load i32, i32* %N_LIN, align 4
  %cmp25 = icmp ult i32 %26, %27
  br i1 %cmp25, label %for.body26, label %for.end35

for.body26:                                       ; preds = %for.cond24
  %28 = load i32, i32* %k, align 4
  %idxprom27 = zext i32 %28 to i64
  %29 = load i32, i32* %j, align 4
  %idxprom28 = zext i32 %29 to i64
  %30 = mul nsw i64 %idxprom28, %3
  %arrayidx29 = getelementptr inbounds i32, i32* %vla, i64 %30
  %arrayidx30 = getelementptr inbounds i32, i32* %arrayidx29, i64 %idxprom27
  %31 = load i32, i32* %arrayidx30, align 4
  %32 = load i32, i32* %maior, align 4
  %cmp31 = icmp slt i32 %31, %32
  %conv = zext i1 %cmp31 to i32
  %call32 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv)
  br label %for.inc33

for.inc33:                                        ; preds = %for.body26
  %33 = load i32, i32* %k, align 4
  %inc34 = add i32 %33, 1
  store i32 %inc34, i32* %k, align 4
  br label %for.cond24

for.end35:                                        ; preds = %for.cond24
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %34 = load i32, i32* %j, align 4
  %inc37 = add i32 %34, 1
  store i32 %inc37, i32* %j, align 4
  br label %for.cond21

for.end38:                                        ; preds = %for.cond21
  %35 = load i8*, i8** %saved_stack
  call void @llvm.stackrestore(i8* %35)
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @__VERIFIER_nondet_uint(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare i32 @__VERIFIER_nondet_int(...) #1

declare i32 @__VERIFIER_assert(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
