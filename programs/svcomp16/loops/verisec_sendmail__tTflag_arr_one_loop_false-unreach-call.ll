; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %in = alloca [11 x i8], align 1
  %s = alloca i8*, align 8
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %idx_in = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %10, %0
  %3 = load i32, i32* %i, align 4
  %4 = icmp slt i32 %3, 11
  br i1 %4, label %5, label %13

; <label>:5                                       ; preds = %2
  %6 = call signext i8 (...) @__VERIFIER_nondet_char()
  %7 = load i32, i32* %i, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 %8
  store i8 %6, i8* %9, align 1
  br label %10

; <label>:10                                      ; preds = %5
  %11 = load i32, i32* %i, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %i, align 4
  br label %2

; <label>:13                                      ; preds = %2
  %14 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 10
  store i8 0, i8* %14, align 1
  store i32 0, i32* %idx_in, align 4
  %15 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i32 0
  store i8* %15, i8** %s, align 8
  store i32 0, i32* %i, align 4
  %16 = load i32, i32* %idx_in, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 %17
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %c, align 1
  br label %20

; <label>:20                                      ; preds = %30, %13
  %21 = load i8, i8* %c, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sle i32 48, %22
  br i1 %23, label %24, label %28

; <label>:24                                      ; preds = %20
  %25 = load i8, i8* %c, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sle i32 %26, 57
  br label %28

; <label>:28                                      ; preds = %24, %20
  %29 = phi i1 [ false, %20 ], [ %27, %24 ]
  br i1 %29, label %30, label %44

; <label>:30                                      ; preds = %28
  %31 = load i8, i8* %c, align 1
  %32 = zext i8 %31 to i32
  %33 = sub nsw i32 %32, 48
  store i32 %33, i32* %j, align 4
  %34 = load i32, i32* %i, align 4
  %35 = mul i32 %34, 10
  %36 = load i32, i32* %j, align 4
  %37 = add i32 %35, %36
  store i32 %37, i32* %i, align 4
  %38 = load i32, i32* %idx_in, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %idx_in, align 4
  %40 = load i32, i32* %idx_in, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 %41
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %c, align 1
  br label %20

; <label>:44                                      ; preds = %28
  %45 = load i32, i32* %i, align 4
  %46 = icmp sge i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %47)
  ret i32 0
}

declare signext i8 @__VERIFIER_nondet_char(...) #1

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
