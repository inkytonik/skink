; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %SIZE = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %saved_stack = alloca i8*
  %menor = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 1, i32* %SIZE, align 4
  %0 = load i32, i32* %SIZE, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack
  %vla = alloca i32, i64 %1, align 16
  %call = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %call, i32* %menor, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %SIZE, align 4
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (...) @__VERIFIER_nondet_int()
  %5 = load i32, i32* %j, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 %call1, i32* %arrayidx, align 4
  %6 = load i32, i32* %j, align 4
  %idxprom2 = zext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %vla, i64 %idxprom2
  %7 = load i32, i32* %arrayidx3, align 4
  %8 = load i32, i32* %menor, align 4
  %cmp4 = icmp sle i32 %7, %8
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %j, align 4
  %idxprom5 = zext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %vla, i64 %idxprom5
  %10 = load i32, i32* %arrayidx6, align 4
  store i32 %10, i32* %menor, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %j, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx7 = getelementptr inbounds i32, i32* %vla, i64 0
  %12 = load i32, i32* %arrayidx7, align 4
  %13 = load i32, i32* %menor, align 4
  %cmp8 = icmp sge i32 %12, %13
  %conv = zext i1 %cmp8 to i32
  %call9 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv)
  store i32 0, i32* %retval
  %14 = load i8*, i8** %saved_stack
  call void @llvm.stackrestore(i8* %14)
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare i32 @__VERIFIER_nondet_int(...) #2

declare i32 @__VERIFIER_assert(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
