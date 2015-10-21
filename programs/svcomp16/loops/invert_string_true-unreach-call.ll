; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %max = alloca i32, align 4
  %2 = alloca i8*
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %1
  store i32 5, i32* %max, align 4
  %3 = load i32, i32* %max, align 4
  %4 = zext i32 %3 to i64
  %5 = call i8* @llvm.stacksave()
  store i8* %5, i8** %2
  %6 = alloca i8, i64 %4, align 16
  %7 = load i32, i32* %max, align 4
  %8 = zext i32 %7 to i64
  %9 = alloca i8, i64 %8, align 16
  store i32 0, i32* %i, align 4
  br label %10

; <label>:10                                      ; preds = %19, %0
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %max, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %10
  %15 = call signext i8 (...) @__VERIFIER_nondet_char()
  %16 = load i32, i32* %i, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %6, i64 %17
  store i8 %15, i8* %18, align 1
  br label %19

; <label>:19                                      ; preds = %14
  %20 = load i32, i32* %i, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %i, align 4
  br label %10

; <label>:22                                      ; preds = %10
  %23 = load i32, i32* %max, align 4
  %24 = sub i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %6, i64 %25
  store i8 0, i8* %26, align 1
  store i32 0, i32* %j, align 4
  %27 = load i32, i32* %max, align 4
  %28 = sub i32 %27, 1
  store i32 %28, i32* %i, align 4
  br label %29

; <label>:29                                      ; preds = %42, %22
  %30 = load i32, i32* %i, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %45

; <label>:32                                      ; preds = %29
  %33 = load i32, i32* %i, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %6, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = load i32, i32* %j, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %9, i64 %38
  store i8 %36, i8* %39, align 1
  %40 = load i32, i32* %j, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %j, align 4
  br label %42

; <label>:42                                      ; preds = %32
  %43 = load i32, i32* %i, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %i, align 4
  br label %29

; <label>:45                                      ; preds = %29
  %46 = load i32, i32* %max, align 4
  %47 = sub i32 %46, 1
  store i32 %47, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %48

; <label>:48                                      ; preds = %68, %45
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %max, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %71

; <label>:52                                      ; preds = %48
  %53 = load i32, i32* %i, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %6, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = load i32, i32* %j, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %9, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %57, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %64)
  %66 = load i32, i32* %j, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %j, align 4
  br label %68

; <label>:68                                      ; preds = %52
  %69 = load i32, i32* %i, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %i, align 4
  br label %48

; <label>:71                                      ; preds = %48
  %72 = load i8*, i8** %2
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %1
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare signext i8 @__VERIFIER_nondet_char(...) #2

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
