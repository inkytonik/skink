; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %sn = alloca i32, align 4
  store i32 0, i32* %1
  store i32 10, i32* %j, align 4
  %2 = call i32 (...) @__VERIFIER_nondet_uint()
  store i32 %2, i32* %n, align 4
  store i32 0, i32* %sn, align 4
  store i32 1, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %17, %0
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n, align 4
  %6 = icmp sle i32 %4, %5
  br i1 %6, label %7, label %20

; <label>:7                                       ; preds = %3
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %j, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %7
  %12 = load i32, i32* %sn, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %sn, align 4
  br label %14

; <label>:14                                      ; preds = %11, %7
  %15 = load i32, i32* %j, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %j, align 4
  br label %17

; <label>:17                                      ; preds = %14
  %18 = load i32, i32* %i, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %i, align 4
  br label %3

; <label>:20                                      ; preds = %3
  %21 = load i32, i32* %sn, align 4
  %22 = load i32, i32* %n, align 4
  %23 = mul nsw i32 %22, 2
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %28, label %25

; <label>:25                                      ; preds = %20
  %26 = load i32, i32* %sn, align 4
  %27 = icmp eq i32 %26, 0
  br label %28

; <label>:28                                      ; preds = %25, %20
  %29 = phi i1 [ true, %20 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %30)
  %32 = load i32, i32* %1
  ret i32 %32
}

declare i32 @__VERIFIER_nondet_uint(...) #1

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
