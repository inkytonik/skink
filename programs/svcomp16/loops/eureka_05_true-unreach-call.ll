; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@n = global i32 5, align 4
@array = common global [5 x i32] zeroinitializer, align 16

; Function Attrs: nounwind ssp uwtable
define void @SelectionSort() #0 {
  %lh = alloca i32, align 4
  %rh = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 0, i32* %lh, align 4
  br label %1

; <label>:1                                       ; preds = %45, %0
  %2 = load i32, i32* %lh, align 4
  %3 = load i32, i32* @n, align 4
  %4 = icmp slt i32 %2, %3
  br i1 %4, label %5, label %48

; <label>:5                                       ; preds = %1
  %6 = load i32, i32* %lh, align 4
  store i32 %6, i32* %rh, align 4
  %7 = load i32, i32* %lh, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %i, align 4
  br label %9

; <label>:9                                       ; preds = %26, %5
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* @n, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %29

; <label>:13                                      ; preds = %9
  %14 = load i32, i32* %i, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* @array, i32 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %rh, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* @array, i32 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %25

; <label>:23                                      ; preds = %13
  %24 = load i32, i32* %i, align 4
  store i32 %24, i32* %rh, align 4
  br label %25

; <label>:25                                      ; preds = %23, %13
  br label %26

; <label>:26                                      ; preds = %25
  %27 = load i32, i32* %i, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %i, align 4
  br label %9

; <label>:29                                      ; preds = %9
  %30 = load i32, i32* %lh, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* @array, i32 0, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %temp, align 4
  %34 = load i32, i32* %rh, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* @array, i32 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %lh, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* @array, i32 0, i64 %39
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %temp, align 4
  %42 = load i32, i32* %rh, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [5 x i32], [5 x i32]* @array, i32 0, i64 %43
  store i32 %41, i32* %44, align 4
  br label %45

; <label>:45                                      ; preds = %29
  %46 = load i32, i32* %lh, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %lh, align 4
  br label %1

; <label>:48                                      ; preds = %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %array = alloca [5 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %1
  store i32 4, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %10, %0
  %3 = load i32, i32* %i, align 4
  %4 = icmp sge i32 %3, 0
  br i1 %4, label %5, label %13

; <label>:5                                       ; preds = %2
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %i, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* %array, i32 0, i64 %8
  store i32 %6, i32* %9, align 4
  br label %10

; <label>:10                                      ; preds = %5
  %11 = load i32, i32* %i, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %i, align 4
  br label %2

; <label>:13                                      ; preds = %2
  call void @SelectionSort()
  store i32 0, i32* %i, align 4
  br label %14

; <label>:14                                      ; preds = %26, %13
  %15 = load i32, i32* %i, align 4
  %16 = icmp slt i32 %15, 5
  br i1 %16, label %17, label %29

; <label>:17                                      ; preds = %14
  %18 = load i32, i32* %i, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %array, i32 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %i, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %24)
  br label %26

; <label>:26                                      ; preds = %17
  %27 = load i32, i32* %i, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %i, align 4
  br label %14

; <label>:29                                      ; preds = %14
  %30 = load i32, i32* %1
  ret i32 %30
}

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
