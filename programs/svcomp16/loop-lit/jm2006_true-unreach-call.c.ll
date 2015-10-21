; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %1 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %1, i32* %i, align 4
  %2 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %2, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  store i32 %3, i32* %x, align 4
  %4 = load i32, i32* %j, align 4
  store i32 %4, i32* %y, align 4
  br label %5

; <label>:5                                       ; preds = %8, %0
  %6 = load i32, i32* %x, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %x, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %x, align 4
  %11 = load i32, i32* %y, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %y, align 4
  br label %5

; <label>:13                                      ; preds = %5
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %j, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

; <label>:17                                      ; preds = %13
  %18 = load i32, i32* %y, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %20)
  br label %22

; <label>:22                                      ; preds = %17, %13
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
