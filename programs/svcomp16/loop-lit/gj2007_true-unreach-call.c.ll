; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %x, align 4
  store i32 50, i32* %y, align 4
  br label %1

; <label>:1                                       ; preds = %15, %0
  %2 = load i32, i32* %x, align 4
  %3 = icmp slt i32 %2, 100
  br i1 %3, label %4, label %16

; <label>:4                                       ; preds = %1
  %5 = load i32, i32* %x, align 4
  %6 = icmp slt i32 %5, 50
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %4
  %8 = load i32, i32* %x, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %x, align 4
  br label %15

; <label>:10                                      ; preds = %4
  %11 = load i32, i32* %x, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %x, align 4
  %13 = load i32, i32* %y, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %y, align 4
  br label %15

; <label>:15                                      ; preds = %10, %7
  br label %1

; <label>:16                                      ; preds = %1
  %17 = load i32, i32* %y, align 4
  %18 = icmp eq i32 %17, 100
  %19 = zext i1 %18 to i32
  %20 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %19)
  ret void
}

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
