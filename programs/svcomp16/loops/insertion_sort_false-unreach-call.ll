; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %SIZE = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %key = alloca i32, align 4
  %2 = alloca i8*
  store i32 0, i32* %1
  %3 = call i32 (...) @__VERIFIER_nondet_uint()
  store i32 %3, i32* %SIZE, align 4
  %4 = load i32, i32* %SIZE, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %2
  %7 = alloca i32, i64 %5, align 16
  store i32 1, i32* %j, align 4
  br label %8

; <label>:8                                       ; preds = %52, %0
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %SIZE, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %55

; <label>:12                                      ; preds = %8
  %13 = load i32, i32* %j, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %7, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %key, align 4
  %17 = load i32, i32* %j, align 4
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %i, align 4
  br label %19

; <label>:19                                      ; preds = %43, %12
  %20 = load i32, i32* %i, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %29

; <label>:22                                      ; preds = %19
  %23 = load i32, i32* %i, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %7, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %key, align 4
  %28 = icmp sgt i32 %26, %27
  br label %29

; <label>:29                                      ; preds = %22, %19
  %30 = phi i1 [ false, %19 ], [ %28, %22 ]
  br i1 %30, label %31, label %46

; <label>:31                                      ; preds = %29
  %32 = load i32, i32* %i, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %43

; <label>:34                                      ; preds = %31
  %35 = load i32, i32* %i, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %7, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %i, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %7, i64 %41
  store i32 %38, i32* %42, align 4
  br label %43

; <label>:43                                      ; preds = %34, %31
  %44 = load i32, i32* %i, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %i, align 4
  br label %19

; <label>:46                                      ; preds = %29
  %47 = load i32, i32* %key, align 4
  %48 = load i32, i32* %i, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %7, i64 %50
  store i32 %47, i32* %51, align 4
  br label %52

; <label>:52                                      ; preds = %46
  %53 = load i32, i32* %j, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %j, align 4
  br label %8

; <label>:55                                      ; preds = %8
  store i32 1, i32* %k, align 4
  br label %56

; <label>:56                                      ; preds = %73, %55
  %57 = load i32, i32* %k, align 4
  %58 = load i32, i32* %SIZE, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %76

; <label>:60                                      ; preds = %56
  %61 = load i32, i32* %k, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %7, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %k, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %7, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp sle i32 %65, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %71)
  br label %73

; <label>:73                                      ; preds = %60
  %74 = load i32, i32* %k, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %k, align 4
  br label %56

; <label>:76                                      ; preds = %56
  store i32 0, i32* %1
  %77 = load i8*, i8** %2
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %1
  ret i32 %78
}

declare i32 @__VERIFIER_nondet_uint(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

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
