; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@main.vetor_vogais = private unnamed_addr constant [11 x i8] c"aAeEiIoOuU\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %string_entrada = alloca [10 x i8], align 1
  %vetor_vogais = alloca [11 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cont = alloca i32, align 4
  %tam_string = alloca i32, align 4
  %n_caracter = alloca i32, align 4
  %cont_aux = alloca i32, align 4
  store i32 0, i32* %1
  %2 = bitcast [11 x i8]* %vetor_vogais to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @main.vetor_vogais, i32 0, i32 0), i64 11, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %11, %0
  %4 = load i32, i32* %i, align 4
  %5 = icmp ult i32 %4, 10
  br i1 %5, label %6, label %14

; <label>:6                                       ; preds = %3
  %7 = call signext i8 (...) @__VERIFIER_nondet_char()
  %8 = load i32, i32* %i, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %string_entrada, i32 0, i64 %9
  store i8 %7, i8* %10, align 1
  br label %11

; <label>:11                                      ; preds = %6
  %12 = load i32, i32* %i, align 4
  %13 = add i32 %12, 1
  store i32 %13, i32* %i, align 4
  br label %3

; <label>:14                                      ; preds = %3
  %15 = getelementptr inbounds [10 x i8], [10 x i8]* %string_entrada, i32 0, i64 9
  store i8 0, i8* %15, align 1
  store i32 0, i32* %n_caracter, align 4
  br label %16

; <label>:16                                      ; preds = %23, %14
  %17 = load i32, i32* %n_caracter, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [10 x i8], [10 x i8]* %string_entrada, i32 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

; <label>:23                                      ; preds = %16
  %24 = load i32, i32* %n_caracter, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %n_caracter, align 4
  br label %16

; <label>:26                                      ; preds = %16
  store i32 0, i32* %cont, align 4
  store i32 0, i32* %i, align 4
  br label %27

; <label>:27                                      ; preds = %55, %26
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %n_caracter, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %58

; <label>:31                                      ; preds = %27
  store i32 0, i32* %j, align 4
  br label %32

; <label>:32                                      ; preds = %51, %31
  %33 = load i32, i32* %j, align 4
  %34 = icmp ult i32 %33, 8
  br i1 %34, label %35, label %54

; <label>:35                                      ; preds = %32
  %36 = load i32, i32* %i, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [10 x i8], [10 x i8]* %string_entrada, i32 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = load i32, i32* %j, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [11 x i8], [11 x i8]* %vetor_vogais, i32 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %40, %45
  br i1 %46, label %47, label %50

; <label>:47                                      ; preds = %35
  %48 = load i32, i32* %cont, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %cont, align 4
  br label %50

; <label>:50                                      ; preds = %47, %35
  br label %51

; <label>:51                                      ; preds = %50
  %52 = load i32, i32* %j, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %j, align 4
  br label %32

; <label>:54                                      ; preds = %32
  br label %55

; <label>:55                                      ; preds = %54
  %56 = load i32, i32* %i, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %i, align 4
  br label %27

; <label>:58                                      ; preds = %27
  store i32 0, i32* %i, align 4
  store i32 0, i32* %cont_aux, align 4
  br label %59

; <label>:59                                      ; preds = %89, %58
  %60 = load i32, i32* %i, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [10 x i8], [10 x i8]* %string_entrada, i32 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %92

; <label>:66                                      ; preds = %59
  store i32 0, i32* %j, align 4
  br label %67

; <label>:67                                      ; preds = %86, %66
  %68 = load i32, i32* %j, align 4
  %69 = icmp ult i32 %68, 10
  br i1 %69, label %70, label %89

; <label>:70                                      ; preds = %67
  %71 = load i32, i32* %i, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [10 x i8], [10 x i8]* %string_entrada, i32 0, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = load i32, i32* %j, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [11 x i8], [11 x i8]* %vetor_vogais, i32 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %75, %80
  br i1 %81, label %82, label %85

; <label>:82                                      ; preds = %70
  %83 = load i32, i32* %cont_aux, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %cont_aux, align 4
  br label %85

; <label>:85                                      ; preds = %82, %70
  br label %86

; <label>:86                                      ; preds = %85
  %87 = load i32, i32* %j, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %j, align 4
  br label %67

; <label>:89                                      ; preds = %67
  %90 = load i32, i32* %i, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %i, align 4
  br label %59

; <label>:92                                      ; preds = %59
  %93 = load i32, i32* %cont_aux, align 4
  %94 = load i32, i32* %cont, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %96)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare signext i8 @__VERIFIER_nondet_char(...) #2

declare i32 @__VERIFIER_assert(...) #2

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
