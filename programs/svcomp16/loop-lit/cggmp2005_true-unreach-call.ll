; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 1, i32* %i, align 4
  store i32 10, i32* %j, align 4
  br label %1

; <label>:1                                       ; preds = %5, %0
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %4 = icmp sge i32 %2, %3
  br i1 %4, label %5, label %10

; <label>:5                                       ; preds = %1
  %6 = load i32, i32* %i, align 4
  %7 = add nsw i32 %6, 2
  store i32 %7, i32* %i, align 4
  %8 = load i32, i32* %j, align 4
  %9 = add nsw i32 -1, %8
  store i32 %9, i32* %j, align 4
  br label %1

; <label>:10                                      ; preds = %1
  %11 = load i32, i32* %j, align 4
  %12 = icmp eq i32 %11, 6
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %13)
  ret void
}

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
