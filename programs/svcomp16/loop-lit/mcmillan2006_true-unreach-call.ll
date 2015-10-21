; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
  %n = alloca i32, align 4
  %x = alloca i32*, align 8
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %1 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %1, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %3 = icmp sle i32 0, %2
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* %n, align 4
  %6 = icmp sle i32 %5, 1000
  br label %7

; <label>:7                                       ; preds = %4, %0
  %8 = phi i1 [ false, %0 ], [ %6, %4 ]
  %9 = zext i1 %8 to i32
  %10 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*)(i32 %9)
  %11 = load i32, i32* %n, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = call i8* @malloc(i64 %13)
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %x, align 8
  store i32 0, i32* %i, align 4
  br label %16

; <label>:16                                      ; preds = %25, %7
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %n, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %28

; <label>:20                                      ; preds = %16
  %21 = load i32, i32* %i, align 4
  %22 = sext i32 %21 to i64
  %23 = load i32*, i32** %x, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 %22
  store i32 0, i32* %24, align 4
  br label %25

; <label>:25                                      ; preds = %20
  %26 = load i32, i32* %i, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %i, align 4
  br label %16

; <label>:28                                      ; preds = %16
  store i32 0, i32* %i1, align 4
  br label %29

; <label>:29                                      ; preds = %42, %28
  %30 = load i32, i32* %i1, align 4
  %31 = load i32, i32* %n, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %45

; <label>:33                                      ; preds = %29
  %34 = load i32, i32* %i1, align 4
  %35 = sext i32 %34 to i64
  %36 = load i32*, i32** %x, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 %35
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %40)
  br label %42

; <label>:42                                      ; preds = %33
  %43 = load i32, i32* %i1, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %i1, align 4
  br label %29

; <label>:45                                      ; preds = %29
  ret void
}

declare i32 @__VERIFIER_nondet_int(...) #1

declare i32 @__VERIFIER_assume(...) #1

declare i8* @malloc(i64) #1

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
