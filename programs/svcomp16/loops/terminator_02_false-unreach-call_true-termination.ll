; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %tmp = alloca i8, align 1
  store i32 0, i32* %1
  %2 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %2, i32* %x, align 4
  %3 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %3, i32* %y, align 4
  %4 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %4, i32* %z, align 4
  br label %5

; <label>:5                                       ; preds = %26, %0
  %6 = load i32, i32* %x, align 4
  %7 = icmp slt i32 %6, 100
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %z, align 4
  %10 = icmp slt i32 100, %9
  br label %11

; <label>:11                                      ; preds = %8, %5
  %12 = phi i1 [ false, %5 ], [ %10, %8 ]
  br i1 %12, label %13, label %27

; <label>:13                                      ; preds = %11
  %14 = call zeroext i1 (...) @__VERIFIER_nondet_bool()
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %tmp, align 1
  %16 = load i8, i8* %tmp, align 1
  %17 = trunc i8 %16 to i1
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %13
  %19 = load i32, i32* %x, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %x, align 4
  br label %26

; <label>:21                                      ; preds = %13
  %22 = load i32, i32* %x, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %x, align 4
  %24 = load i32, i32* %z, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %z, align 4
  br label %26

; <label>:26                                      ; preds = %21, %18
  br label %5

; <label>:27                                      ; preds = %11
  %28 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 0)
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int(...) #1

declare zeroext i1 @__VERIFIER_nondet_bool(...) #1

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
