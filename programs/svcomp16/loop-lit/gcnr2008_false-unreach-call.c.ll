; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %w = alloca i32, align 4
  store i32 0, i32* %w, align 4
  store i32 0, i32* %z, align 4
  store i32 0, i32* %y, align 4
  store i32 0, i32* %x, align 4
  br label %1

; <label>:1                                       ; preds = %44, %0
  %2 = call i32 (...) @__VERIFIER_nondet_int()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %1
  %5 = load i32, i32* %y, align 4
  %6 = icmp slt i32 %5, 10000
  br label %7

; <label>:7                                       ; preds = %4, %1
  %8 = phi i1 [ false, %1 ], [ %6, %4 ]
  br i1 %8, label %9, label %49

; <label>:9                                       ; preds = %7
  %10 = call i32 (...) @__VERIFIER_nondet_int()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

; <label>:12                                      ; preds = %9
  %13 = load i32, i32* %x, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %x, align 4
  %15 = load i32, i32* %y, align 4
  %16 = add nsw i32 %15, 100
  store i32 %16, i32* %y, align 4
  br label %44

; <label>:17                                      ; preds = %9
  %18 = call i32 (...) @__VERIFIER_nondet_int()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

; <label>:20                                      ; preds = %17
  %21 = load i32, i32* %x, align 4
  %22 = icmp sge i32 %21, 4
  br i1 %22, label %23, label %28

; <label>:23                                      ; preds = %20
  %24 = load i32, i32* %x, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %x, align 4
  %26 = load i32, i32* %y, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %y, align 4
  br label %28

; <label>:28                                      ; preds = %23, %20
  br label %43

; <label>:29                                      ; preds = %17
  %30 = load i32, i32* %y, align 4
  %31 = load i32, i32* %w, align 4
  %32 = mul nsw i32 10, %31
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %42

; <label>:34                                      ; preds = %29
  %35 = load i32, i32* %z, align 4
  %36 = load i32, i32* %x, align 4
  %37 = mul nsw i32 100, %36
  %38 = icmp sge i32 %35, %37
  br i1 %38, label %39, label %42

; <label>:39                                      ; preds = %34
  %40 = load i32, i32* %y, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %y, align 4
  br label %42

; <label>:42                                      ; preds = %39, %34, %29
  br label %43

; <label>:43                                      ; preds = %42, %28
  br label %44

; <label>:44                                      ; preds = %43, %12
  %45 = load i32, i32* %w, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %w, align 4
  %47 = load i32, i32* %z, align 4
  %48 = add nsw i32 %47, 10
  store i32 %48, i32* %z, align 4
  br label %1

; <label>:49                                      ; preds = %7
  %50 = load i32, i32* %x, align 4
  %51 = icmp sge i32 %50, 4
  br i1 %51, label %52, label %55

; <label>:52                                      ; preds = %49
  %53 = load i32, i32* %y, align 4
  %54 = icmp sle i32 %53, 2
  br label %55

; <label>:55                                      ; preds = %52, %49
  %56 = phi i1 [ false, %49 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %57)
  ret void
}

declare i32 @__VERIFIER_nondet_int(...) #1

declare i32 @assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
