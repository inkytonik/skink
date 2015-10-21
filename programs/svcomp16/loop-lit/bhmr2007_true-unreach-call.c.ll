; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %a, align 4
  store i32 0, i32* %b, align 4
  %1 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %1, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %3 = icmp sge i32 %2, 0
  %4 = zext i1 %3 to i32
  call void @__VERIFIER_assume(i32 %4)
  br label %5

; <label>:5                                       ; preds = %22, %0
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %25

; <label>:9                                       ; preds = %5
  %10 = call i32 (...) @__VERIFIER_nondet_int()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

; <label>:12                                      ; preds = %9
  %13 = load i32, i32* %a, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %a, align 4
  %15 = load i32, i32* %b, align 4
  %16 = add nsw i32 %15, 2
  store i32 %16, i32* %b, align 4
  br label %22

; <label>:17                                      ; preds = %9
  %18 = load i32, i32* %a, align 4
  %19 = add nsw i32 %18, 2
  store i32 %19, i32* %a, align 4
  %20 = load i32, i32* %b, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %b, align 4
  br label %22

; <label>:22                                      ; preds = %17, %12
  %23 = load i32, i32* %i, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %i, align 4
  br label %5

; <label>:25                                      ; preds = %5
  %26 = load i32, i32* %a, align 4
  %27 = load i32, i32* %b, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* %n, align 4
  %30 = mul nsw i32 3, %29
  %31 = icmp eq i32 %28, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %32)
  ret void
}

declare i32 @__VERIFIER_nondet_int(...) #1

declare void @__VERIFIER_assume(i32) #1

declare i32 @assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
