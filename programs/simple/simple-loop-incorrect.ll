; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @foo() #0 {
entry:
  %r = alloca i32, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %r, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %r, align 4
  %cmp1 = icmp sgt i32 %1, 0
  %conv = zext i1 %cmp1 to i32
  %call = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv)
  %2 = load i32, i32* %r, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %r, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* %r, align 4
  %cmp2 = icmp sgt i32 %3, 0
  %conv3 = zext i1 %cmp2 to i32
  %call4 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv3)
  ret void
}

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}