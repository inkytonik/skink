; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %i, align 4
  store i32 9, i32* %k, align 4
  store i32 -100, i32* %j, align 4
  br label %1

; <label>:1                                       ; preds = %21, %0
  %2 = load i32, i32* %i, align 4
  %3 = icmp sle i32 %2, 100
  br i1 %3, label %4, label %22

; <label>:4                                       ; preds = %1
  %5 = load i32, i32* %i, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %i, align 4
  br label %7

; <label>:7                                       ; preds = %10, %4
  %8 = load i32, i32* %j, align 4
  %9 = icmp slt i32 %8, 20
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %7
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %j, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %j, align 4
  br label %7

; <label>:14                                      ; preds = %7
  store i32 4, i32* %k, align 4
  br label %15

; <label>:15                                      ; preds = %18, %14
  %16 = load i32, i32* %k, align 4
  %17 = icmp sle i32 %16, 3
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %15
  %19 = load i32, i32* %k, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %k, align 4
  br label %15

; <label>:21                                      ; preds = %15
  br label %1

; <label>:22                                      ; preds = %1
  %23 = load i32, i32* %k, align 4
  %24 = icmp eq i32 %23, 4
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %25)
  ret void
}

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
