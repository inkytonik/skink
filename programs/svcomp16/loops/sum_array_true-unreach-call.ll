; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %M = alloca i32, align 4
  %2 = alloca i8*
  %i = alloca i32, align 4
  store i32 0, i32* %1
  %3 = call i32 (...) @__VERIFIER_nondet_uint()
  store i32 %3, i32* %M, align 4
  %4 = load i32, i32* %M, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %2
  %7 = alloca i32, i64 %5, align 16
  %8 = load i32, i32* %M, align 4
  %9 = zext i32 %8 to i64
  %10 = alloca i32, i64 %9, align 16
  %11 = load i32, i32* %M, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i32, i64 %12, align 16
  store i32 0, i32* %i, align 4
  br label %14

; <label>:14                                      ; preds = %23, %0
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %M, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %26

; <label>:18                                      ; preds = %14
  %19 = call i32 @__VERIFIER_nondet_int()
  %20 = load i32, i32* %i, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %7, i64 %21
  store i32 %19, i32* %22, align 4
  br label %23

; <label>:23                                      ; preds = %18
  %24 = load i32, i32* %i, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %i, align 4
  br label %14

; <label>:26                                      ; preds = %14
  store i32 0, i32* %i, align 4
  br label %27

; <label>:27                                      ; preds = %36, %26
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %M, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %39

; <label>:31                                      ; preds = %27
  %32 = call i32 @__VERIFIER_nondet_int()
  %33 = load i32, i32* %i, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %10, i64 %34
  store i32 %32, i32* %35, align 4
  br label %36

; <label>:36                                      ; preds = %31
  %37 = load i32, i32* %i, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %i, align 4
  br label %27

; <label>:39                                      ; preds = %27
  store i32 0, i32* %i, align 4
  br label %40

; <label>:40                                      ; preds = %57, %39
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %M, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %60

; <label>:44                                      ; preds = %40
  %45 = load i32, i32* %i, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %7, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %i, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %10, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %48, %52
  %54 = load i32, i32* %i, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %13, i64 %55
  store i32 %53, i32* %56, align 4
  br label %57

; <label>:57                                      ; preds = %44
  %58 = load i32, i32* %i, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %i, align 4
  br label %40

; <label>:60                                      ; preds = %40
  store i32 0, i32* %i, align 4
  br label %61

; <label>:61                                      ; preds = %82, %60
  %62 = load i32, i32* %i, align 4
  %63 = load i32, i32* %M, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %85

; <label>:65                                      ; preds = %61
  %66 = load i32, i32* %i, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %13, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %i, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %7, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %i, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %10, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %73, %77
  %79 = icmp eq i32 %69, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %80)
  br label %82

; <label>:82                                      ; preds = %65
  %83 = load i32, i32* %i, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %i, align 4
  br label %61

; <label>:85                                      ; preds = %61
  %86 = load i8*, i8** %2
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %1
  ret i32 %87
}

declare i32 @__VERIFIER_nondet_uint(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare i32 @__VERIFIER_nondet_int() #1

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
