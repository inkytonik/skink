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
  %2 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %2, i32* %n, align 4
  store i32 0, i32* %sn, align 4
  store i32 1, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %10, %0
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n, align 4
  %6 = icmp sle i32 %4, %5
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %3
  %8 = load i32, i32* %sn, align 4
  %9 = add nsw i32 %8, 2
  store i32 %9, i32* %sn, align 4
  br label %10

; <label>:10                                      ; preds = %7
  %11 = load i32, i32* %i, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %i, align 4
  br label %3

; <label>:13                                      ; preds = %3
  %14 = load i32, i32* %sn, align 4
  %15 = load i32, i32* %n, align 4
  %16 = mul nsw i32 %15, 2
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %21, label %18

; <label>:18                                      ; preds = %13
  %19 = load i32, i32* %sn, align 4
  %20 = icmp eq i32 %19, 0
  br label %21

; <label>:21                                      ; preds = %18, %13
  %22 = phi i1 [ true, %13 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %23)
  %25 = load i32, i32* %1
  ret i32 %25
}

declare i32 @__VERIFIER_nondet_int(...) #1

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
