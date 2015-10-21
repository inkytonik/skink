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
  %3 = call i32 (...) @__VERIFIER_nondet_uint()
  store i32 %3, i32* %N_LIN, align 4
  %4 = call i32 (...) @__VERIFIER_nondet_uint()
  store i32 %4, i32* %N_COL, align 4
  %5 = load i32, i32* %N_COL, align 4
  %6 = zext i32 %5 to i64
  %7 = load i32, i32* %N_LIN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2
  %10 = mul nuw i64 %6, %8
  %11 = alloca i32, i64 %10, align 16
  %12 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %12, i32* %maior, align 4
  store i32 0, i32* %j, align 4
  br label %13

; <label>:13                                      ; preds = %55, %0
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %N_COL, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %58

; <label>:17                                      ; preds = %13
  store i32 0, i32* %k, align 4
  br label %18

; <label>:18                                      ; preds = %51, %17
  %19 = load i32, i32* %k, align 4
  %20 = load i32, i32* %N_LIN, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %54

; <label>:22                                      ; preds = %18
  %23 = call i32 (...) @__VERIFIER_nondet_int()
  %24 = load i32, i32* %k, align 4
  %25 = zext i32 %24 to i64
  %26 = load i32, i32* %j, align 4
  %27 = zext i32 %26 to i64
  %28 = mul nsw i64 %27, %8
  %29 = getelementptr inbounds i32, i32* %11, i64 %28
  %30 = getelementptr inbounds i32, i32* %29, i64 %25
  store i32 %23, i32* %30, align 4
  %31 = load i32, i32* %k, align 4
  %32 = zext i32 %31 to i64
  %33 = load i32, i32* %j, align 4
  %34 = zext i32 %33 to i64
  %35 = mul nsw i64 %34, %8
  %36 = getelementptr inbounds i32, i32* %11, i64 %35
  %37 = getelementptr inbounds i32, i32* %36, i64 %32
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %maior, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %50

; <label>:41                                      ; preds = %22
  %42 = load i32, i32* %k, align 4
  %43 = zext i32 %42 to i64
  %44 = load i32, i32* %j, align 4
  %45 = zext i32 %44 to i64
  %46 = mul nsw i64 %45, %8
  %47 = getelementptr inbounds i32, i32* %11, i64 %46
  %48 = getelementptr inbounds i32, i32* %47, i64 %43
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %maior, align 4
  br label %50

; <label>:50                                      ; preds = %41, %22
  br label %51

; <label>:51                                      ; preds = %50
  %52 = load i32, i32* %k, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %k, align 4
  br label %18

; <label>:54                                      ; preds = %18
  br label %55

; <label>:55                                      ; preds = %54
  %56 = load i32, i32* %j, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %j, align 4
  br label %13

; <label>:58                                      ; preds = %13
  store i32 0, i32* %j, align 4
  br label %59

; <label>:59                                      ; preds = %85, %58
  %60 = load i32, i32* %j, align 4
  %61 = load i32, i32* %N_COL, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %88

; <label>:63                                      ; preds = %59
  store i32 0, i32* %k, align 4
  br label %64

; <label>:64                                      ; preds = %81, %63
  %65 = load i32, i32* %k, align 4
  %66 = load i32, i32* %N_LIN, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %84

; <label>:68                                      ; preds = %64
  %69 = load i32, i32* %k, align 4
  %70 = zext i32 %69 to i64
  %71 = load i32, i32* %j, align 4
  %72 = zext i32 %71 to i64
  %73 = mul nsw i64 %72, %8
  %74 = getelementptr inbounds i32, i32* %11, i64 %73
  %75 = getelementptr inbounds i32, i32* %74, i64 %70
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %maior, align 4
  %78 = icmp slt i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %79)
  br label %81

; <label>:81                                      ; preds = %68
  %82 = load i32, i32* %k, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %k, align 4
  br label %64

; <label>:84                                      ; preds = %64
  br label %85

; <label>:85                                      ; preds = %84
  %86 = load i32, i32* %j, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %j, align 4
  br label %59

; <label>:88                                      ; preds = %59
  %89 = load i8*, i8** %2
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %1
  ret i32 %90
}

declare i32 @__VERIFIER_nondet_uint(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare i32 @__VERIFIER_nondet_int(...) #1

declare i32 @__VERIFIER_assert(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
