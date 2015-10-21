; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %string_A = alloca [5 x i8], align 1
  %string_B = alloca [5 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nc_A = alloca i32, align 4
  %nc_B = alloca i32, align 4
  %found = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %found, align 4
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %10, %0
  %3 = load i32, i32* %i, align 4
  %4 = icmp slt i32 %3, 5
  br i1 %4, label %5, label %13

; <label>:5                                       ; preds = %2
  %6 = call signext i8 (...) @__VERIFIER_nondet_char()
  %7 = load i32, i32* %i, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [5 x i8], [5 x i8]* %string_A, i32 0, i64 %8
  store i8 %6, i8* %9, align 1
  br label %10

; <label>:10                                      ; preds = %5
  %11 = load i32, i32* %i, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %i, align 4
  br label %2

; <label>:13                                      ; preds = %2
  %14 = getelementptr inbounds [5 x i8], [5 x i8]* %string_A, i32 0, i64 4
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  call void @__VERIFIER_assume(i32 %18)
  store i32 0, i32* %i, align 4
  br label %19

; <label>:19                                      ; preds = %27, %13
  %20 = load i32, i32* %i, align 4
  %21 = icmp slt i32 %20, 5
  br i1 %21, label %22, label %30

; <label>:22                                      ; preds = %19
  %23 = call signext i8 (...) @__VERIFIER_nondet_char()
  %24 = load i32, i32* %i, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %string_B, i32 0, i64 %25
  store i8 %23, i8* %26, align 1
  br label %27

; <label>:27                                      ; preds = %22
  %28 = load i32, i32* %i, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %i, align 4
  br label %19

; <label>:30                                      ; preds = %19
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %string_B, i32 0, i64 4
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  call void @__VERIFIER_assume(i32 %35)
  store i32 0, i32* %nc_A, align 4
  br label %36

; <label>:36                                      ; preds = %43, %30
  %37 = load i32, i32* %nc_A, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [5 x i8], [5 x i8]* %string_A, i32 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

; <label>:43                                      ; preds = %36
  %44 = load i32, i32* %nc_A, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %nc_A, align 4
  br label %36

; <label>:46                                      ; preds = %36
  store i32 0, i32* %nc_B, align 4
  br label %47

; <label>:47                                      ; preds = %54, %46
  %48 = load i32, i32* %nc_B, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [5 x i8], [5 x i8]* %string_B, i32 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

; <label>:54                                      ; preds = %47
  %55 = load i32, i32* %nc_B, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %nc_B, align 4
  br label %47

; <label>:57                                      ; preds = %47
  %58 = load i32, i32* %nc_B, align 4
  %59 = load i32, i32* %nc_A, align 4
  %60 = icmp sge i32 %58, %59
  %61 = zext i1 %60 to i32
  call void @__VERIFIER_assume(i32 %61)
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %62

; <label>:62                                      ; preds = %94, %57
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %nc_A, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %70

; <label>:66                                      ; preds = %62
  %67 = load i32, i32* %j, align 4
  %68 = load i32, i32* %nc_B, align 4
  %69 = icmp slt i32 %67, %68
  br label %70

; <label>:70                                      ; preds = %66, %62
  %71 = phi i1 [ false, %62 ], [ %69, %66 ]
  br i1 %71, label %72, label %95

; <label>:72                                      ; preds = %70
  %73 = load i32, i32* %i, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [5 x i8], [5 x i8]* %string_A, i32 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = load i32, i32* %j, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [5 x i8], [5 x i8]* %string_B, i32 0, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %77, %82
  br i1 %83, label %84, label %89

; <label>:84                                      ; preds = %72
  %85 = load i32, i32* %i, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %i, align 4
  %87 = load i32, i32* %j, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %j, align 4
  br label %94

; <label>:89                                      ; preds = %72
  %90 = load i32, i32* %i, align 4
  %91 = load i32, i32* %j, align 4
  %92 = sub nsw i32 %90, %91
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %94

; <label>:94                                      ; preds = %89, %84
  br label %62

; <label>:95                                      ; preds = %70
  %96 = load i32, i32* %j, align 4
  %97 = load i32, i32* %nc_B, align 4
  %98 = sub nsw i32 %97, 1
  %99 = icmp sgt i32 %96, %98
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %found, align 4
  %101 = load i32, i32* %found, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

; <label>:103                                     ; preds = %95
  %104 = load i32, i32* %found, align 4
  %105 = icmp eq i32 %104, 1
  br label %106

; <label>:106                                     ; preds = %103, %95
  %107 = phi i1 [ true, %95 ], [ %105, %103 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %108)
  ret i32 0
}

declare signext i8 @__VERIFIER_nondet_char(...) #1

declare void @__VERIFIER_assume(i32) #1

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
