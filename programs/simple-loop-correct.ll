; ModuleID = 'simple/simple-loop-correct.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 0, i32* %1
  br label %2

; <label>:2                                       ; preds = %5, %0
  %3 = load i32* %r, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %12

; <label>:5                                       ; preds = %2
  %6 = load i32* %r, align 4
  %7 = icmp sgt i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 (i32, ...)* bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %8)
  %10 = load i32* %r, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %r, align 4
  br label %2

; <label>:12                                      ; preds = %2
  %13 = load i32* %r, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 (i32, ...)* bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %15)
  %17 = load i32* %1
  ret i32 %17
}

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Apple LLVM version 6.1.0 (clang-602.0.49) (based on LLVM 3.6.0svn)"}