; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %i, align 4
  store i32 0, i32* %x, align 4
  store i32 0, i32* %y, align 4
  %2 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %2, i32* %n, align 4
  %3 = load i32, i32* %n, align 4
  %4 = icmp sgt i32 %3, 0
  %5 = zext i1 %4 to i32
  call void @__VERIFIER_assume(i32 %5)
  store i32 0, i32* %i, align 4
  br label %6

; <label>:6                                       ; preds = %29, %0
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %32

; <label>:10                                      ; preds = %6
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* %y, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %x, align 4
  %14 = load i32, i32* %x, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %16)
  %18 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %18, i32* %y, align 4
  %19 = load i32, i32* %y, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  call void @__VERIFIER_assume(i32 %21)
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* %y, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %x, align 4
  %25 = load i32, i32* %x, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %27)
  br label %29

; <label>:29                                      ; preds = %10
  %30 = load i32, i32* %i, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %i, align 4
  br label %6

; <label>:32                                      ; preds = %6
  %33 = load i32, i32* %x, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %35)
  %37 = load i32, i32* %1
  ret i32 %37
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
