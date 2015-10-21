; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %N_LIN = alloca i32, align 4
  %N_COL = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %2 = alloca i8*
  %maior = alloca i32, align 4
  store i32 0, i32* %1
  store i32 1, i32* %N_LIN, align 4
  store i32 1, i32* %N_COL, align 4
  %3 = load i32, i32* %N_COL, align 4
  %4 = zext i32 %3 to i64
  %5 = load i32, i32* %N_LIN, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2
  %8 = mul nuw i64 %4, %6
  %9 = alloca i32, i64 %8, align 16
  %10 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %10, i32* %maior, align 4
  store i32 0, i32* %j, align 4
  br label %11

; <label>:11                                      ; preds = %53, %0
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %N_COL, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %56

; <label>:15                                      ; preds = %11
  store i32 0, i32* %k, align 4
  br label %16

; <label>:16                                      ; preds = %49, %15
  %17 = load i32, i32* %k, align 4
  %18 = load i32, i32* %N_LIN, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %52

; <label>:20                                      ; preds = %16
  %21 = call i32 (...) @__VERIFIER_nondet_int()
  %22 = load i32, i32* %k, align 4
  %23 = zext i32 %22 to i64
  %24 = load i32, i32* %j, align 4
  %25 = zext i32 %24 to i64
  %26 = mul nsw i64 %25, %6
  %27 = getelementptr inbounds i32, i32* %9, i64 %26
  %28 = getelementptr inbounds i32, i32* %27, i64 %23
  store i32 %21, i32* %28, align 4
  %29 = load i32, i32* %k, align 4
  %30 = zext i32 %29 to i64
  %31 = load i32, i32* %j, align 4
  %32 = zext i32 %31 to i64
  %33 = mul nsw i64 %32, %6
  %34 = getelementptr inbounds i32, i32* %9, i64 %33
  %35 = getelementptr inbounds i32, i32* %34, i64 %30
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %maior, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %48

; <label>:39                                      ; preds = %20
  %40 = load i32, i32* %k, align 4
  %41 = zext i32 %40 to i64
  %42 = load i32, i32* %j, align 4
  %43 = zext i32 %42 to i64
  %44 = mul nsw i64 %43, %6
  %45 = getelementptr inbounds i32, i32* %9, i64 %44
  %46 = getelementptr inbounds i32, i32* %45, i64 %41
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %maior, align 4
  br label %48

; <label>:48                                      ; preds = %39, %20
  br label %49

; <label>:49                                      ; preds = %48
  %50 = load i32, i32* %k, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %k, align 4
  br label %16

; <label>:52                                      ; preds = %16
  br label %53

; <label>:53                                      ; preds = %52
  %54 = load i32, i32* %j, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %j, align 4
  br label %11

; <label>:56                                      ; preds = %11
  %57 = mul nsw i64 0, %6
  %58 = getelementptr inbounds i32, i32* %9, i64 %57
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %maior, align 4
  %62 = icmp sle i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %63)
  store i32 0, i32* %1
  %65 = load i8*, i8** %2
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %1
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare i32 @__VERIFIER_nondet_int(...) #2

declare i32 @__VERIFIER_assert(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
