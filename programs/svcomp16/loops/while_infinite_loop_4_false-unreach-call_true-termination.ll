; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@x = global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @eval() #0 {
entry:
  br label %while.body

while.body:                                       ; preds = %entry
  store i32 1, i32* @x, align 4
  br label %while.end

while.end:                                        ; preds = %while.body
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  br label %while.body

while.body:                                       ; preds = %while.body, %entry
  store i32 1, i32* @x, align 4
  %0 = load i32, i32* @x, align 4
  %cmp = icmp eq i32 %0, 0
  %conv = zext i1 %cmp to i32
  %call = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv)
  br label %while.body

return:                                           ; No predecessors!
  %1 = load i32, i32* %retval
  ret i32 %1
}

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
