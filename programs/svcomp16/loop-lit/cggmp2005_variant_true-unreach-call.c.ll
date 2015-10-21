; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %lo = alloca i32, align 4
  %mid = alloca i32, align 4
  %hi = alloca i32, align 4
  store i32 0, i32* %lo, align 4
  %1 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %1, i32* %mid, align 4
  %2 = load i32, i32* %mid, align 4
  %3 = icmp sgt i32 %2, 0
  %4 = zext i1 %3 to i32
  call void @__VERIFIER_assume(i32 %4)
  %5 = load i32, i32* %mid, align 4
  %6 = mul nsw i32 2, %5
  store i32 %6, i32* %hi, align 4
  br label %7

; <label>:7                                       ; preds = %10, %0
  %8 = load i32, i32* %mid, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %7
  %11 = load i32, i32* %lo, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %lo, align 4
  %13 = load i32, i32* %hi, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %hi, align 4
  %15 = load i32, i32* %mid, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %mid, align 4
  br label %7

; <label>:17                                      ; preds = %7
  %18 = load i32, i32* %lo, align 4
  %19 = load i32, i32* %hi, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %21)
  ret void
}

declare i32 @__VERIFIER_nondet_int(...) #1

declare void @__VERIFIER_assume(i32) #1

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
