; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %MAX = alloca i32, align 4
  %2 = alloca i8*
  %cont = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %1
  %3 = call i32 (...) @__VERIFIER_nondet_uint()
  store i32 %3, i32* %MAX, align 4
  %4 = load i32, i32* %MAX, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %2
  %7 = alloca i8, i64 %5, align 16
  %8 = load i32, i32* %MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = alloca i8, i64 %9, align 16
  store i32 0, i32* %cont, align 4
  store i32 0, i32* %i, align 4
  br label %11

; <label>:11                                      ; preds = %20, %0
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %MAX, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %23

; <label>:15                                      ; preds = %11
  %16 = call signext i8 (...) @__VERIFIER_nondet_char()
  %17 = load i32, i32* %i, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %7, i64 %18
  store i8 %16, i8* %19, align 1
  br label %20

; <label>:20                                      ; preds = %15
  %21 = load i32, i32* %i, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %i, align 4
  br label %11

; <label>:23                                      ; preds = %11
  %24 = load i32, i32* %MAX, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %7, i64 %26
  store i8 0, i8* %27, align 1
  store i32 0, i32* %j, align 4
  %28 = load i32, i32* %MAX, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %i, align 4
  br label %30

; <label>:30                                      ; preds = %41, %23
  %31 = load i32, i32* %i, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %44

; <label>:33                                      ; preds = %30
  %34 = getelementptr inbounds i8, i8* %7, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = load i32, i32* %j, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %10, i64 %37
  store i8 %35, i8* %38, align 1
  %39 = load i32, i32* %j, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %j, align 4
  br label %41

; <label>:41                                      ; preds = %33
  %42 = load i32, i32* %i, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %i, align 4
  br label %30

; <label>:44                                      ; preds = %30
  %45 = load i32, i32* %MAX, align 4
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %47

; <label>:47                                      ; preds = %67, %44
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %MAX, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %70

; <label>:51                                      ; preds = %47
  %52 = load i32, i32* %i, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %7, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i32, i32* %j, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %10, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %56, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %63)
  %65 = load i32, i32* %j, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %j, align 4
  br label %67

; <label>:67                                      ; preds = %51
  %68 = load i32, i32* %i, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %i, align 4
  br label %47

; <label>:70                                      ; preds = %47
  %71 = load i8*, i8** %2
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %1
  ret i32 %72
}

declare i32 @__VERIFIER_nondet_uint(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare signext i8 @__VERIFIER_nondet_char(...) #1

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
