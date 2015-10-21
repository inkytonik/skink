; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %res = alloca i32, align 4
  %cnt = alloca i32, align 4
  %1 = load i32, i32* %a, align 4
  %2 = icmp sle i32 %1, 1000000
  %3 = zext i1 %2 to i32
  call void @__VERIFIER_assume(i32 %3)
  %4 = load i32, i32* %b, align 4
  %5 = icmp sle i32 0, %4
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %b, align 4
  %8 = icmp sle i32 %7, 1000000
  br label %9

; <label>:9                                       ; preds = %6, %0
  %10 = phi i1 [ false, %0 ], [ %8, %6 ]
  %11 = zext i1 %10 to i32
  call void @__VERIFIER_assume(i32 %11)
  %12 = load i32, i32* %a, align 4
  store i32 %12, i32* %res, align 4
  %13 = load i32, i32* %b, align 4
  store i32 %13, i32* %cnt, align 4
  br label %14

; <label>:14                                      ; preds = %17, %9
  %15 = load i32, i32* %cnt, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %22

; <label>:17                                      ; preds = %14
  %18 = load i32, i32* %cnt, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %cnt, align 4
  %20 = load i32, i32* %res, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %res, align 4
  br label %14

; <label>:22                                      ; preds = %14
  %23 = load i32, i32* %res, align 4
  %24 = load i32, i32* %a, align 4
  %25 = load i32, i32* %b, align 4
  %26 = add nsw i32 %24, %25
  %27 = icmp eq i32 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %28)
  ret void
}

declare void @__VERIFIER_assume(i32) #1

declare i32 @assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
