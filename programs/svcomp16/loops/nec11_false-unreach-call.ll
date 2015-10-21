; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %a = alloca [5 x i32], align 16
  %len = alloca i32, align 4
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %len, align 4
  %2 = call zeroext i1 (...) @__VERIFIER_nondet_bool()
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %c, align 1
  br label %4

; <label>:4                                       ; preds = %11, %0
  %5 = load i8, i8* %c, align 1
  %6 = trunc i8 %5 to i1
  br i1 %6, label %7, label %17

; <label>:7                                       ; preds = %4
  %8 = load i32, i32* %len, align 4
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  store i32 0, i32* %len, align 4
  br label %11

; <label>:11                                      ; preds = %10, %7
  %12 = load i32, i32* %len, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %a, i32 0, i64 %13
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %len, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %len, align 4
  br label %4

; <label>:17                                      ; preds = %4
  %18 = load i32, i32* %len, align 4
  %19 = icmp eq i32 %18, 5
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %20)
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
