; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %SIZE = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %2 = alloca i8*
  %menor = alloca i32, align 4
  store i32 0, i32* %1
  store i32 1, i32* %SIZE, align 4
  %3 = load i32, i32* %SIZE, align 4
  %4 = zext i32 %3 to i64
  %5 = call i8* @llvm.stacksave()
  store i8* %5, i8** %2
  %6 = alloca i32, i64 %4, align 16
  %7 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %7, i32* %menor, align 4
  store i32 0, i32* %j, align 4
  br label %8

; <label>:8                                       ; preds = %29, %0
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %SIZE, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %32

; <label>:12                                      ; preds = %8
  %13 = call i32 (...) @__VERIFIER_nondet_int()
  %14 = load i32, i32* %j, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %6, i64 %15
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* %j, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %6, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %menor, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %28

; <label>:23                                      ; preds = %12
  %24 = load i32, i32* %j, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %6, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %menor, align 4
  br label %28

; <label>:28                                      ; preds = %23, %12
  br label %29

; <label>:29                                      ; preds = %28
  %30 = load i32, i32* %j, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %j, align 4
  br label %8

; <label>:32                                      ; preds = %8
  %33 = getelementptr inbounds i32, i32* %6, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %menor, align 4
  %36 = icmp sgt i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %37)
  store i32 0, i32* %1
  %39 = load i8*, i8** %2
  call void @llvm.stackrestore(i8* %39)
  %40 = load i32, i32* %1
  ret i32 %40
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
