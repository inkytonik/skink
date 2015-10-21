; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %1
  %2 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %2, i32* %x, align 4
  %3 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %3, i32* %y, align 4
  %4 = load i32, i32* %y, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %15

; <label>:6                                       ; preds = %0
  br label %7

; <label>:7                                       ; preds = %10, %6
  %8 = load i32, i32* %x, align 4
  %9 = icmp slt i32 %8, 100
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %7
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* %y, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %x, align 4
  br label %7

; <label>:14                                      ; preds = %7
  br label %15

; <label>:15                                      ; preds = %14, %0
  %16 = load i32, i32* %y, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %26, label %18

; <label>:18                                      ; preds = %15
  %19 = load i32, i32* %y, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* %x, align 4
  %23 = icmp sge i32 %22, 100
  br label %24

; <label>:24                                      ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  br label %26

; <label>:26                                      ; preds = %24, %15
  %27 = phi i1 [ true, %15 ], [ %25, %24 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %28)
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int(...) #1

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
