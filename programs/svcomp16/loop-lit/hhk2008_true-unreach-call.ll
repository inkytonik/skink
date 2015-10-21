; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %res = alloca i32, align 4
  %cnt = alloca i32, align 4
  %1 = load i32, i32* %a, align 4
  %2 = icmp sle i32 %1, 1000000
  %3 = zext i1 %2 to i32
  %4 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*)(i32 %3)
  %5 = load i32, i32* %b, align 4
  %6 = icmp sle i32 0, %5
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %b, align 4
  %9 = icmp sle i32 %8, 1000000
  br label %10

; <label>:10                                      ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*)(i32 %12)
  %14 = load i32, i32* %a, align 4
  store i32 %14, i32* %res, align 4
  %15 = load i32, i32* %b, align 4
  store i32 %15, i32* %cnt, align 4
  br label %16

; <label>:16                                      ; preds = %19, %10
  %17 = load i32, i32* %cnt, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19                                      ; preds = %16
  %20 = load i32, i32* %cnt, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %cnt, align 4
  %22 = load i32, i32* %res, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %res, align 4
  br label %16

; <label>:24                                      ; preds = %16
  %25 = load i32, i32* %res, align 4
  %26 = load i32, i32* %a, align 4
  %27 = load i32, i32* %b, align 4
  %28 = add nsw i32 %26, %27
  %29 = icmp eq i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %30)
  ret void
}

declare i32 @__VERIFIER_assume(...) #1

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
