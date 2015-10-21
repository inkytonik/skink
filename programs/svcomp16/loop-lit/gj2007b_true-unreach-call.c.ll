; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %x = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %x, align 4
  store i32 0, i32* %m, align 4
  %1 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %1, i32* %n, align 4
  br label %2

; <label>:2                                       ; preds = %11, %0
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* %n, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %14

; <label>:6                                       ; preds = %2
  %7 = call i32 (...) @__VERIFIER_nondet_int()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %x, align 4
  store i32 %10, i32* %m, align 4
  br label %11

; <label>:11                                      ; preds = %9, %6
  %12 = load i32, i32* %x, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %x, align 4
  br label %2

; <label>:14                                      ; preds = %2
  %15 = load i32, i32* %m, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %20, label %17

; <label>:17                                      ; preds = %14
  %18 = load i32, i32* %n, align 4
  %19 = icmp sle i32 %18, 0
  br label %20

; <label>:20                                      ; preds = %17, %14
  %21 = phi i1 [ true, %14 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %22)
  %24 = load i32, i32* %m, align 4
  %25 = load i32, i32* %n, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %30, label %27

; <label>:27                                      ; preds = %20
  %28 = load i32, i32* %n, align 4
  %29 = icmp sle i32 %28, 0
  br label %30

; <label>:30                                      ; preds = %27, %20
  %31 = phi i1 [ true, %20 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %32)
  ret void
}

declare i32 @__VERIFIER_nondet_int(...) #1

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
