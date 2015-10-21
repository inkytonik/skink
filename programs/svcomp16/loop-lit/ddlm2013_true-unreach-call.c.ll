; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %flag = alloca i32, align 4
  %1 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %1, i32* %flag, align 4
  store i32 0, i32* %a, align 4
  store i32 0, i32* %b, align 4
  store i32 1, i32* %j, align 4
  %2 = load i32, i32* %flag, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  store i32 0, i32* %i, align 4
  br label %6

; <label>:5                                       ; preds = %0
  store i32 1, i32* %i, align 4
  br label %6

; <label>:6                                       ; preds = %5, %4
  br label %7

; <label>:7                                       ; preds = %29, %6
  %8 = call i32 (...) @__VERIFIER_nondet_int()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %30

; <label>:10                                      ; preds = %7
  %11 = load i32, i32* %a, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %a, align 4
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %i, align 4
  %15 = sub nsw i32 %13, %14
  %16 = load i32, i32* %b, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %b, align 4
  %18 = load i32, i32* %i, align 4
  %19 = add nsw i32 %18, 2
  store i32 %19, i32* %i, align 4
  %20 = load i32, i32* %i, align 4
  %21 = srem i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

; <label>:23                                      ; preds = %10
  %24 = load i32, i32* %j, align 4
  %25 = add nsw i32 %24, 2
  store i32 %25, i32* %j, align 4
  br label %29

; <label>:26                                      ; preds = %10
  %27 = load i32, i32* %j, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %j, align 4
  br label %29

; <label>:29                                      ; preds = %26, %23
  br label %7

; <label>:30                                      ; preds = %7
  %31 = load i32, i32* %flag, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

; <label>:33                                      ; preds = %30
  %34 = load i32, i32* %a, align 4
  %35 = load i32, i32* %b, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %37)
  br label %39

; <label>:39                                      ; preds = %33, %30
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
