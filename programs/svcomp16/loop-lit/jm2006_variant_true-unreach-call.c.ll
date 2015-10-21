; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %1 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %1, i32* %i, align 4
  %2 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %2, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %4 = icmp sge i32 %3, 0
  %5 = zext i1 %4 to i32
  call void @__VERIFIER_assume(i32 %5)
  %6 = load i32, i32* %j, align 4
  %7 = icmp sge i32 %6, 0
  %8 = zext i1 %7 to i32
  call void @__VERIFIER_assume(i32 %8)
  %9 = load i32, i32* %i, align 4
  store i32 %9, i32* %x, align 4
  %10 = load i32, i32* %j, align 4
  store i32 %10, i32* %y, align 4
  store i32 0, i32* %z, align 4
  br label %11

; <label>:11                                      ; preds = %14, %0
  %12 = load i32, i32* %x, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %11
  %15 = load i32, i32* %x, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %x, align 4
  %17 = load i32, i32* %y, align 4
  %18 = sub nsw i32 %17, 2
  store i32 %18, i32* %y, align 4
  %19 = load i32, i32* %z, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %z, align 4
  br label %11

; <label>:21                                      ; preds = %11
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %j, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %32

; <label>:25                                      ; preds = %21
  %26 = load i32, i32* %y, align 4
  %27 = load i32, i32* %z, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %30)
  br label %32

; <label>:32                                      ; preds = %25, %21
  ret void
}

declare i32 @__VERIFIER_nondet_int(...) #1

declare void @__VERIFIER_assume(i32) #1

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
