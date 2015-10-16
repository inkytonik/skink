; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %i, align 4
  store i32 0, i32* %x, align 4
  store i32 0, i32* %y, align 4
  %call = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %call, i32* %n, align 4
  %0 = load i32, i32* %n, align 4
  %cmp = icmp sgt i32 %0, 0
  %conv = zext i1 %cmp to i32
  call void @__VERIFIER_assume(i32 %conv)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %3, %4
  store i32 %sub, i32* %x, align 4
  %5 = load i32, i32* %x, align 4
  %cmp3 = icmp eq i32 %5, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv4)
  %call6 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %call6, i32* %y, align 4
  %6 = load i32, i32* %y, align 4
  %cmp7 = icmp ne i32 %6, 0
  %conv8 = zext i1 %cmp7 to i32
  call void @__VERIFIER_assume(i32 %conv8)
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %y, align 4
  %add = add nsw i32 %7, %8
  store i32 %add, i32* %x, align 4
  %9 = load i32, i32* %x, align 4
  %cmp9 = icmp ne i32 %9, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %x, align 4
  %cmp12 = icmp eq i32 %11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv13)
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @__VERIFIER_nondet_int(...) #1

declare void @__VERIFIER_assume(i32) #1

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
