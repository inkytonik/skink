; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %tmp = alloca i8, align 1
  store i32 0, i32* %1
  %2 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %2, i32* %x, align 4
  %3 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %3, i32* %y, align 4
  %4 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %4, i32* %z, align 4
  %5 = load i32, i32* %x, align 4
  %6 = icmp slt i32 %5, 100
  %7 = zext i1 %6 to i32
  call void @__VERIFIER_assume(i32 %7)
  %8 = load i32, i32* %z, align 4
  %9 = icmp slt i32 %8, 100
  %10 = zext i1 %9 to i32
  call void @__VERIFIER_assume(i32 %10)
  br label %11

; <label>:11                                      ; preds = %32, %0
  %12 = load i32, i32* %x, align 4
  %13 = icmp slt i32 %12, 100
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %11
  %15 = load i32, i32* %z, align 4
  %16 = icmp slt i32 100, %15
  br label %17

; <label>:17                                      ; preds = %14, %11
  %18 = phi i1 [ false, %11 ], [ %16, %14 ]
  br i1 %18, label %19, label %33

; <label>:19                                      ; preds = %17
  %20 = call zeroext i1 (...) @__VERIFIER_nondet_bool()
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %tmp, align 1
  %22 = load i8, i8* %tmp, align 1
  %23 = trunc i8 %22 to i1
  br i1 %23, label %24, label %27

; <label>:24                                      ; preds = %19
  %25 = load i32, i32* %x, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %x, align 4
  br label %32

; <label>:27                                      ; preds = %19
  %28 = load i32, i32* %x, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %x, align 4
  %30 = load i32, i32* %z, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %z, align 4
  br label %32

; <label>:32                                      ; preds = %27, %24
  br label %11

; <label>:33                                      ; preds = %17
  %34 = load i32, i32* %x, align 4
  %35 = icmp sge i32 %34, 100
  br i1 %35, label %39, label %36

; <label>:36                                      ; preds = %33
  %37 = load i32, i32* %z, align 4
  %38 = icmp sle i32 %37, 100
  br label %39

; <label>:39                                      ; preds = %36, %33
  %40 = phi i1 [ true, %33 ], [ %38, %36 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %41)
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int(...) #1

declare void @__VERIFIER_assume(i32) #1

declare zeroext i1 @__VERIFIER_nondet_bool(...) #1

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
