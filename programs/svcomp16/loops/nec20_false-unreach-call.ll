; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@b = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %k = alloca i8, align 1
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca [1025 x i32], align 16
  store i32 0, i32* %1
  %2 = call zeroext i1 (...) @__VERIFIER_nondet_bool()
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %k, align 1
  %4 = load i8, i8* %k, align 1
  %5 = trunc i8 %4 to i1
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i32 0, i32* %n, align 4
  br label %8

; <label>:7                                       ; preds = %0
  store i32 1023, i32* %n, align 4
  br label %8

; <label>:8                                       ; preds = %7, %6
  store i32 0, i32* %i, align 4
  br label %9

; <label>:9                                       ; preds = %13, %8
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %n, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %18

; <label>:13                                      ; preds = %9
  %14 = load i32, i32* %i, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %i, align 4
  %16 = load i32, i32* %j, align 4
  %17 = add nsw i32 %16, 2
  store i32 %17, i32* %j, align 4
  br label %9

; <label>:18                                      ; preds = %9
  %19 = load i32, i32* %i, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [1025 x i32], [1025 x i32]* %a, i32 0, i64 %20
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %j, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [1025 x i32], [1025 x i32]* %a, i32 0, i64 %23
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* %j, align 4
  %26 = icmp slt i32 %25, 1025
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %27)
  %29 = load i32, i32* @b, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [1025 x i32], [1025 x i32]* %a, i32 0, i64 %30
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* @b, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %41

; <label>:34                                      ; preds = %18
  %35 = load i32, i32* @b, align 4
  %36 = icmp slt i32 %35, 1023
  br i1 %36, label %37, label %41

; <label>:37                                      ; preds = %34
  %38 = load i32, i32* @b, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [1025 x i32], [1025 x i32]* %a, i32 0, i64 %39
  store i32 1, i32* %40, align 4
  br label %46

; <label>:41                                      ; preds = %34, %18
  %42 = load i32, i32* @b, align 4
  %43 = srem i32 %42, 1023
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [1025 x i32], [1025 x i32]* %a, i32 0, i64 %44
  store i32 1, i32* %45, align 4
  br label %46

; <label>:46                                      ; preds = %41, %37
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
