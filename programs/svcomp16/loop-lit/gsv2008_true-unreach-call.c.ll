; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 -50, i32* %x, align 4
  %1 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %1, i32* %y, align 4
  %2 = load i32, i32* %y, align 4
  %3 = icmp slt i32 -1000, %2
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* %y, align 4
  %6 = icmp slt i32 %5, 1000000
  br label %7

; <label>:7                                       ; preds = %4, %0
  %8 = phi i1 [ false, %0 ], [ %6, %4 ]
  %9 = zext i1 %8 to i32
  call void @__VERIFIER_assume(i32 %9)
  br label %10

; <label>:10                                      ; preds = %13, %7
  %11 = load i32, i32* %x, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %19

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* %x, align 4
  %15 = load i32, i32* %y, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %x, align 4
  %17 = load i32, i32* %y, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %y, align 4
  br label %10

; <label>:19                                      ; preds = %10
  %20 = load i32, i32* %y, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %22)
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