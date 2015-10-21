; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @bubblesort(i32 %size, i32* %item) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %size, i32* %1, align 4
  store i32* %item, i32** %2, align 8
  store i32 1, i32* %a, align 4
  br label %3

; <label>:3                                       ; preds = %64, %0
  %4 = load i32, i32* %a, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %67

; <label>:7                                       ; preds = %3
  %8 = load i32, i32* %1, align 4
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %b, align 4
  br label %10

; <label>:10                                      ; preds = %60, %7
  %11 = load i32, i32* %b, align 4
  %12 = load i32, i32* %a, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %63

; <label>:14                                      ; preds = %10
  %15 = load i32, i32* %b, align 4
  %16 = sub nsw i32 %15, 1
  %17 = load i32, i32* %1, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %59

; <label>:19                                      ; preds = %14
  %20 = load i32, i32* %b, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %59

; <label>:23                                      ; preds = %19
  %24 = load i32, i32* %b, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = load i32*, i32** %2, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 %26
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %b, align 4
  %31 = sext i32 %30 to i64
  %32 = load i32*, i32** %2, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 %31
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %29, %34
  br i1 %35, label %36, label %58

; <label>:36                                      ; preds = %23
  %37 = load i32, i32* %b, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = load i32*, i32** %2, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 %39
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %t, align 4
  %43 = load i32, i32* %b, align 4
  %44 = sext i32 %43 to i64
  %45 = load i32*, i32** %2, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 %44
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %b, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = load i32*, i32** %2, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 %50
  store i32 %47, i32* %52, align 4
  %53 = load i32, i32* %t, align 4
  %54 = load i32, i32* %b, align 4
  %55 = sext i32 %54 to i64
  %56 = load i32*, i32** %2, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 %55
  store i32 %53, i32* %57, align 4
  br label %58

; <label>:58                                      ; preds = %36, %23
  br label %59

; <label>:59                                      ; preds = %58, %19, %14
  br label %60

; <label>:60                                      ; preds = %59
  %61 = load i32, i32* %b, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %b, align 4
  br label %10

; <label>:63                                      ; preds = %10
  br label %64

; <label>:64                                      ; preds = %63
  %65 = load i32, i32* %a, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %a, align 4
  br label %3

; <label>:67                                      ; preds = %3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @bubblesort1(i32 %size, i32* %item) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %pivot = alloca i32, align 4
  store i32 %size, i32* %1, align 4
  store i32* %item, i32** %2, align 8
  store i32 1, i32* %j, align 4
  br label %3

; <label>:3                                       ; preds = %48, %0
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %51

; <label>:7                                       ; preds = %3
  %8 = load i32, i32* %j, align 4
  %9 = sext i32 %8 to i64
  %10 = load i32*, i32** %2, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 %9
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %pivot, align 4
  %13 = load i32, i32* %j, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %i, align 4
  br label %15

; <label>:15                                      ; preds = %28, %7
  %16 = load i32, i32* %i, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %26

; <label>:18                                      ; preds = %15
  %19 = load i32, i32* %i, align 4
  %20 = sext i32 %19 to i64
  %21 = load i32*, i32** %2, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 %20
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %pivot, align 4
  %25 = icmp sgt i32 %23, %24
  br label %26

; <label>:26                                      ; preds = %18, %15
  %27 = phi i1 [ false, %15 ], [ %25, %18 ]
  br i1 %27, label %28, label %41

; <label>:28                                      ; preds = %26
  %29 = load i32, i32* %i, align 4
  %30 = sext i32 %29 to i64
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 %30
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %i, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = load i32*, i32** %2, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 %36
  store i32 %33, i32* %38, align 4
  %39 = load i32, i32* %i, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %i, align 4
  br label %15

; <label>:41                                      ; preds = %26
  %42 = load i32, i32* %pivot, align 4
  %43 = load i32, i32* %i, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = load i32*, i32** %2, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 %45
  store i32 %42, i32* %47, align 4
  br label %48

; <label>:48                                      ; preds = %41
  %49 = load i32, i32* %j, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %j, align 4
  br label %3

; <label>:51                                      ; preds = %3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @q1(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %N = alloca i32, align 4
  %3 = alloca i8*
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %argc, i32* %1, align 4
  store i8** %argv, i8*** %2, align 8
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 2
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %59

; <label>:7                                       ; preds = %0
  %8 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %8, i32* %N, align 4
  %9 = load i32, i32* %N, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3
  %12 = alloca i32, i64 %10, align 16
  store i32 0, i32* %i, align 4
  br label %13

; <label>:13                                      ; preds = %22, %7
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %N, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %25

; <label>:17                                      ; preds = %13
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %i, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %12, i64 %20
  store i32 %18, i32* %21, align 4
  br label %22

; <label>:22                                      ; preds = %17
  %23 = load i32, i32* %i, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %i, align 4
  br label %13

; <label>:25                                      ; preds = %13
  store i32 0, i32* %i, align 4
  br label %26

; <label>:26                                      ; preds = %53, %25
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %N, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %56

; <label>:30                                      ; preds = %26
  %31 = load i32, i32* %i, align 4
  %32 = call i32 (...) @__VERIFIER_nondet_int()
  %33 = load i32, i32* %N, align 4
  %34 = load i32, i32* %i, align 4
  %35 = sub nsw i32 %33, %34
  %36 = srem i32 %32, %35
  %37 = add nsw i32 %31, %36
  store i32 %37, i32* %r, align 4
  %38 = load i32, i32* %i, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %12, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %temp, align 4
  %42 = load i32, i32* %r, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %12, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %i, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %12, i64 %47
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %temp, align 4
  %50 = load i32, i32* %r, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %12, i64 %51
  store i32 %49, i32* %52, align 4
  br label %53

; <label>:53                                      ; preds = %30
  %54 = load i32, i32* %i, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %i, align 4
  br label %26

; <label>:56                                      ; preds = %26
  %57 = load i32, i32* %N, align 4
  call void @bubblesort(i32 %57, i32* %12)
  %58 = load i8*, i8** %3
  call void @llvm.stackrestore(i8* %58)
  br label %59

; <label>:59                                      ; preds = %56, %6
  ret void
}

declare i32 @__VERIFIER_nondet_int(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = load i8**, i8*** %3, align 8
  call void @q1(i32 %4, i8** %5)
  ret i32 0
}

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
