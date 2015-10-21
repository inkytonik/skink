; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %sn = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %sn, align 4
  store i32 1, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %12, %0
  %3 = load i32, i32* %i, align 4
  %4 = icmp sle i32 %3, 8
  br i1 %4, label %5, label %15

; <label>:5                                       ; preds = %2
  %6 = load i32, i32* %i, align 4
  %7 = icmp slt i32 %6, 4
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %sn, align 4
  %10 = add nsw i32 %9, 2
  store i32 %10, i32* %sn, align 4
  br label %11

; <label>:11                                      ; preds = %8, %5
  br label %12

; <label>:12                                      ; preds = %11
  %13 = load i32, i32* %i, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %i, align 4
  br label %2

; <label>:15                                      ; preds = %2
  %16 = load i32, i32* %sn, align 4
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %21, label %18

; <label>:18                                      ; preds = %15
  %19 = load i32, i32* %sn, align 4
  %20 = icmp eq i32 %19, 0
  br label %21

; <label>:21                                      ; preds = %18, %15
  %22 = phi i1 [ true, %15 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %23)
  %25 = load i32, i32* %1
  ret i32 %25
}

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
