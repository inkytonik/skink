; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@main.vogal_array = private unnamed_addr constant [11 x i8] c"aAeEiIoOuU\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %input_string = alloca [5 x i8], align 1
  %vogal_array = alloca [11 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cont = alloca i32, align 4
  %tam_string = alloca i32, align 4
  %n_caracter = alloca i32, align 4
  %cont_aux = alloca i32, align 4
  store i32 0, i32* %1
  %2 = bitcast [11 x i8]* %vogal_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @main.vogal_array, i32 0, i32 0), i64 11, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %11, %0
  %4 = load i32, i32* %i, align 4
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %6, label %14

; <label>:6                                       ; preds = %3
  %7 = call signext i8 (...) @__VERIFIER_nondet_char()
  %8 = load i32, i32* %i, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [5 x i8], [5 x i8]* %input_string, i32 0, i64 %9
  store i8 %7, i8* %10, align 1
  br label %11

; <label>:11                                      ; preds = %6
  %12 = load i32, i32* %i, align 4
  %13 = add i32 %12, 1
  store i32 %13, i32* %i, align 4
  br label %3

; <label>:14                                      ; preds = %3
  %15 = getelementptr inbounds [5 x i8], [5 x i8]* %input_string, i32 0, i64 4
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  call void @__VERIFIER_assume(i32 %19)
  store i32 0, i32* %n_caracter, align 4
  br label %20

; <label>:20                                      ; preds = %27, %14
  %21 = load i32, i32* %n_caracter, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %input_string, i32 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

; <label>:27                                      ; preds = %20
  %28 = load i32, i32* %n_caracter, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %n_caracter, align 4
  br label %20

; <label>:30                                      ; preds = %20
  store i32 0, i32* %cont, align 4
  store i32 0, i32* %i, align 4
  br label %31

; <label>:31                                      ; preds = %59, %30
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %n_caracter, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %62

; <label>:35                                      ; preds = %31
  store i32 0, i32* %j, align 4
  br label %36

; <label>:36                                      ; preds = %55, %35
  %37 = load i32, i32* %j, align 4
  %38 = icmp ult i32 %37, 2
  br i1 %38, label %39, label %58

; <label>:39                                      ; preds = %36
  %40 = load i32, i32* %i, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [5 x i8], [5 x i8]* %input_string, i32 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = load i32, i32* %j, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [11 x i8], [11 x i8]* %vogal_array, i32 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %44, %49
  br i1 %50, label %51, label %54

; <label>:51                                      ; preds = %39
  %52 = load i32, i32* %cont, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %cont, align 4
  br label %54

; <label>:54                                      ; preds = %51, %39
  br label %55

; <label>:55                                      ; preds = %54
  %56 = load i32, i32* %j, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %j, align 4
  br label %36

; <label>:58                                      ; preds = %36
  br label %59

; <label>:59                                      ; preds = %58
  %60 = load i32, i32* %i, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %i, align 4
  br label %31

; <label>:62                                      ; preds = %31
  store i32 0, i32* %i, align 4
  store i32 0, i32* %cont_aux, align 4
  br label %63

; <label>:63                                      ; preds = %93, %62
  %64 = load i32, i32* %i, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [5 x i8], [5 x i8]* %input_string, i32 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %96

; <label>:70                                      ; preds = %63
  store i32 0, i32* %j, align 4
  br label %71

; <label>:71                                      ; preds = %90, %70
  %72 = load i32, i32* %j, align 4
  %73 = icmp ult i32 %72, 2
  br i1 %73, label %74, label %93

; <label>:74                                      ; preds = %71
  %75 = load i32, i32* %i, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [5 x i8], [5 x i8]* %input_string, i32 0, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = load i32, i32* %j, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [11 x i8], [11 x i8]* %vogal_array, i32 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %79, %84
  br i1 %85, label %86, label %89

; <label>:86                                      ; preds = %74
  %87 = load i32, i32* %cont_aux, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %cont_aux, align 4
  br label %89

; <label>:89                                      ; preds = %86, %74
  br label %90

; <label>:90                                      ; preds = %89
  %91 = load i32, i32* %j, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %j, align 4
  br label %71

; <label>:93                                      ; preds = %71
  %94 = load i32, i32* %i, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %i, align 4
  br label %63

; <label>:96                                      ; preds = %63
  %97 = load i32, i32* %cont_aux, align 4
  %98 = load i32, i32* %cont, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %100)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare signext i8 @__VERIFIER_nondet_char(...) #2

declare void @__VERIFIER_assume(i32) #2

declare i32 @__VERIFIER_assert(...) #2

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
