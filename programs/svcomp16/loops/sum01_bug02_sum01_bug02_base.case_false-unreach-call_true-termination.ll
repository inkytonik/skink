; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %sn = alloca i32, align 4
  store i32 0, i32* %1
  %2 = call i32 (...) @__VERIFIER_nondet_uint()
  store i32 %2, i32* %n, align 4
  store i32 0, i32* %sn, align 4
  store i32 1, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %14, %0
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n, align 4
  %6 = icmp sle i32 %4, %5
  br i1 %6, label %7, label %17

; <label>:7                                       ; preds = %3
  %8 = load i32, i32* %sn, align 4
  %9 = add nsw i32 %8, 2
  store i32 %9, i32* %sn, align 4
  %10 = load i32, i32* %i, align 4
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %7
  store i32 -10, i32* %sn, align 4
  br label %13

; <label>:13                                      ; preds = %12, %7
  br label %14

; <label>:14                                      ; preds = %13
  %15 = load i32, i32* %i, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %i, align 4
  br label %3

; <label>:17                                      ; preds = %3
  %18 = load i32, i32* %sn, align 4
  %19 = load i32, i32* %n, align 4
  %20 = mul nsw i32 %19, 2
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %25, label %22

; <label>:22                                      ; preds = %17
  %23 = load i32, i32* %sn, align 4
  %24 = icmp eq i32 %23, 0
  br label %25

; <label>:25                                      ; preds = %22, %17
  %26 = phi i1 [ true, %17 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %27)
  %29 = load i32, i32* %1
  ret i32 %29
}

declare i32 @__VERIFIER_nondet_uint(...) #1

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
