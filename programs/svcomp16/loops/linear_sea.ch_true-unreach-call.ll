; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@SIZE = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define i32 @linear_search(i32* %a, i32 %n, i32 %q) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %a, i32** %2, align 8
  store i32 %n, i32* %3, align 4
  store i32 %q, i32* %4, align 4
  store i32 0, i32* %j, align 4
  br label %5

; <label>:5                                       ; preds = %19, %0
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %17

; <label>:9                                       ; preds = %5
  %10 = load i32, i32* %j, align 4
  %11 = zext i32 %10 to i64
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 %11
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %9, %5
  %18 = phi i1 [ false, %5 ], [ %16, %9 ]
  br i1 %18, label %19, label %22

; <label>:19                                      ; preds = %17
  %20 = load i32, i32* %j, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %j, align 4
  br label %5

; <label>:22                                      ; preds = %17
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* @SIZE, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %22
  store i32 1, i32* %1
  br label %28

; <label>:27                                      ; preds = %22
  store i32 0, i32* %1
  br label %28

; <label>:28                                      ; preds = %27, %26
  %29 = load i32, i32* %1
  ret i32 %29
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %j.i = alloca i32, align 4
  %5 = alloca i8*
  %6 = call i32 (...) @__VERIFIER_nondet_uint()
  %7 = udiv i32 %6, 8
  %8 = add i32 %7, 1
  store i32 %8, i32* @SIZE, align 4
  %9 = load i32, i32* @SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5
  %12 = alloca i32, i64 %10, align 16
  %13 = load i32, i32* @SIZE, align 4
  %14 = udiv i32 %13, 2
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  store i32 3, i32* %16, align 4
  %17 = load i32, i32* @SIZE, align 4
  %18 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18)
  %19 = bitcast i32** %2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19)
  %20 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20)
  %21 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21)
  %22 = bitcast i32* %j.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22)
  store i32* %12, i32** %2, align 8
  store i32 %17, i32* %3, align 4
  store i32 3, i32* %4, align 4
  store i32 0, i32* %j.i, align 4
  br label %23

; <label>:23                                      ; preds = %37, %0
  %24 = load i32, i32* %j.i, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %35

; <label>:27                                      ; preds = %23
  %28 = load i32, i32* %j.i, align 4
  %29 = zext i32 %28 to i64
  %30 = load i32*, i32** %2, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 %29
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %32, %33
  br label %35

; <label>:35                                      ; preds = %27, %23
  %36 = phi i1 [ false, %23 ], [ %34, %27 ]
  br i1 %36, label %37, label %40

; <label>:37                                      ; preds = %35
  %38 = load i32, i32* %j.i, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %j.i, align 4
  br label %23

; <label>:40                                      ; preds = %35
  %41 = load i32, i32* %j.i, align 4
  %42 = load i32, i32* @SIZE, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %40
  store i32 1, i32* %1
  br label %linear_search.exit

; <label>:45                                      ; preds = %40
  store i32 0, i32* %1
  br label %linear_search.exit

linear_search.exit:                               ; preds = %44, %45
  %46 = load i32, i32* %1
  %47 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47)
  %48 = bitcast i32** %2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48)
  %49 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49)
  %50 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50)
  %51 = bitcast i32* %j.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51)
  %52 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %46)
  %53 = load i8*, i8** %5
  call void @llvm.stackrestore(i8* %53)
  ret i32 0
}

declare i32 @__VERIFIER_nondet_uint(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare i32 @__VERIFIER_assert(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
