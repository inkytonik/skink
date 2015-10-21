; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %a = alloca [5 x i32], align 16
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %len, align 4
  br label %2

; <label>:2                                       ; preds = %8, %0
  %3 = call zeroext i1 (...) @__VERIFIER_nondet_bool()
  br i1 %3, label %4, label %14

; <label>:4                                       ; preds = %2
  %5 = load i32, i32* %len, align 4
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %4
  store i32 0, i32* %len, align 4
  br label %8

; <label>:8                                       ; preds = %7, %4
  %9 = load i32, i32* %len, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %a, i32 0, i64 %10
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %len, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %len, align 4
  br label %2

; <label>:14                                      ; preds = %2
  %15 = load i32, i32* %len, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %20

; <label>:17                                      ; preds = %14
  %18 = load i32, i32* %len, align 4
  %19 = icmp slt i32 %18, 5
  br label %20

; <label>:20                                      ; preds = %17, %14
  %21 = phi i1 [ false, %14 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %22)
  ret i32 1
}

declare zeroext i1 @__VERIFIER_nondet_bool(...) #1

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
