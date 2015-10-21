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
  %2 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 10
  store i8 0, i8* %2, align 1
  store i32 0, i32* %idx_in, align 4
  %3 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i32 0
  store i8* %3, i8** %s, align 8
  store i32 0, i32* %i, align 4
  %4 = load i32, i32* %idx_in, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 %5
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %c, align 1
  br label %8

; <label>:8                                       ; preds = %18, %0
  %9 = load i8, i8* %c, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp sle i32 48, %10
  br i1 %11, label %12, label %16

; <label>:12                                      ; preds = %8
  %13 = load i8, i8* %c, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp sle i32 %14, 57
  br label %16

; <label>:16                                      ; preds = %12, %8
  %17 = phi i1 [ false, %8 ], [ %15, %12 ]
  br i1 %17, label %18, label %32

; <label>:18                                      ; preds = %16
  %19 = load i8, i8* %c, align 1
  %20 = zext i8 %19 to i32
  %21 = sub nsw i32 %20, 48
  store i32 %21, i32* %j, align 4
  %22 = load i32, i32* %i, align 4
  %23 = mul i32 %22, 10
  %24 = load i32, i32* %j, align 4
  %25 = add i32 %23, %24
  store i32 %25, i32* %i, align 4
  %26 = load i32, i32* %idx_in, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %idx_in, align 4
  %28 = load i32, i32* %idx_in, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 %29
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %c, align 1
  br label %8

; <label>:32                                      ; preds = %16
  %33 = load i32, i32* %i, align 4
  %34 = icmp uge i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %35)
  ret i32 0
}

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
