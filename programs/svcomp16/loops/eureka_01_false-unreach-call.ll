; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@INFINITY = global i32 899, align 4
@main.Source = private unnamed_addr constant [20 x i32] [i32 0, i32 4, i32 1, i32 1, i32 0, i32 0, i32 1, i32 3, i32 4, i32 4, i32 2, i32 2, i32 3, i32 0, i32 0, i32 3, i32 1, i32 2, i32 2, i32 3], align 16
@main.Dest = private unnamed_addr constant [20 x i32] [i32 1, i32 3, i32 4, i32 1, i32 1, i32 4, i32 3, i32 4, i32 3, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 0, i32 2, i32 1, i32 0, i32 4], align 16
@main.Weight = private unnamed_addr constant [20 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19], align 16

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %nodecount = alloca i32, align 4
  %edgecount = alloca i32, align 4
  %source = alloca i32, align 4
  %Source = alloca [20 x i32], align 16
  %Dest = alloca [20 x i32], align 16
  %Weight = alloca [20 x i32], align 16
  %distance = alloca [5 x i32], align 16
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %1
  %2 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %2, i32* %nodecount, align 4
  %3 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %3, i32* %edgecount, align 4
  %4 = load i32, i32* %nodecount, align 4
  %5 = icmp sle i32 0, %4
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %nodecount, align 4
  %8 = icmp sle i32 %7, 4
  br label %9

; <label>:9                                       ; preds = %6, %0
  %10 = phi i1 [ false, %0 ], [ %8, %6 ]
  %11 = zext i1 %10 to i32
  call void @__VERIFIER_assume(i32 %11)
  %12 = load i32, i32* %edgecount, align 4
  %13 = icmp sle i32 0, %12
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %9
  %15 = load i32, i32* %edgecount, align 4
  %16 = icmp sle i32 %15, 19
  br label %17

; <label>:17                                      ; preds = %14, %9
  %18 = phi i1 [ false, %9 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  call void @__VERIFIER_assume(i32 %19)
  store i32 0, i32* %source, align 4
  %20 = bitcast [20 x i32]* %Source to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* bitcast ([20 x i32]* @main.Source to i8*), i64 80, i32 16, i1 false)
  %21 = bitcast [20 x i32]* %Dest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* bitcast ([20 x i32]* @main.Dest to i8*), i64 80, i32 16, i1 false)
  %22 = bitcast [20 x i32]* %Weight to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* bitcast ([20 x i32]* @main.Weight to i8*), i64 80, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %23

; <label>:23                                      ; preds = %41, %17
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %nodecount, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %44

; <label>:27                                      ; preds = %23
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %source, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

; <label>:31                                      ; preds = %27
  %32 = load i32, i32* %i, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %33
  store i32 0, i32* %34, align 4
  br label %40

; <label>:35                                      ; preds = %27
  %36 = load i32, i32* @INFINITY, align 4
  %37 = load i32, i32* %i, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %38
  store i32 %36, i32* %39, align 4
  br label %40

; <label>:40                                      ; preds = %35, %31
  br label %41

; <label>:41                                      ; preds = %40
  %42 = load i32, i32* %i, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %i, align 4
  br label %23

; <label>:44                                      ; preds = %23
  store i32 0, i32* %i, align 4
  br label %45

; <label>:45                                      ; preds = %86, %44
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %nodecount, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %89

; <label>:49                                      ; preds = %45
  store i32 0, i32* %j, align 4
  br label %50

; <label>:50                                      ; preds = %82, %49
  %51 = load i32, i32* %j, align 4
  %52 = load i32, i32* %edgecount, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %85

; <label>:54                                      ; preds = %50
  %55 = load i32, i32* %j, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [20 x i32], [20 x i32]* %Dest, i32 0, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %x, align 4
  %59 = load i32, i32* %j, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [20 x i32], [20 x i32]* %Source, i32 0, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %y, align 4
  %63 = load i32, i32* %x, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %y, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %j, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [20 x i32], [20 x i32]* %Weight, i32 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %70, %74
  %76 = icmp sgt i32 %66, %75
  br i1 %76, label %77, label %81

; <label>:77                                      ; preds = %54
  %78 = load i32, i32* %x, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %79
  store i32 -1, i32* %80, align 4
  br label %81

; <label>:81                                      ; preds = %77, %54
  br label %82

; <label>:82                                      ; preds = %81
  %83 = load i32, i32* %j, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %j, align 4
  br label %50

; <label>:85                                      ; preds = %50
  br label %86

; <label>:86                                      ; preds = %85
  %87 = load i32, i32* %i, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %i, align 4
  br label %45

; <label>:89                                      ; preds = %45
  store i32 0, i32* %i, align 4
  br label %90

; <label>:90                                      ; preds = %119, %89
  %91 = load i32, i32* %i, align 4
  %92 = load i32, i32* %edgecount, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %122

; <label>:94                                      ; preds = %90
  %95 = load i32, i32* %i, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [20 x i32], [20 x i32]* %Dest, i32 0, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %x, align 4
  %99 = load i32, i32* %i, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [20 x i32], [20 x i32]* %Source, i32 0, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %y, align 4
  %103 = load i32, i32* %x, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %y, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %i, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [20 x i32], [20 x i32]* %Weight, i32 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %110, %114
  %116 = icmp sgt i32 %106, %115
  br i1 %116, label %117, label %118

; <label>:117                                     ; preds = %94
  store i32 0, i32* %1
  br label %139

; <label>:118                                     ; preds = %94
  br label %119

; <label>:119                                     ; preds = %118
  %120 = load i32, i32* %i, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %i, align 4
  br label %90

; <label>:122                                     ; preds = %90
  store i32 0, i32* %i, align 4
  br label %123

; <label>:123                                     ; preds = %135, %122
  %124 = load i32, i32* %i, align 4
  %125 = load i32, i32* %nodecount, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %138

; <label>:127                                     ; preds = %123
  %128 = load i32, i32* %i, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp sge i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %133)
  br label %135

; <label>:135                                     ; preds = %127
  %136 = load i32, i32* %i, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %i, align 4
  br label %123

; <label>:138                                     ; preds = %123
  store i32 0, i32* %1
  br label %139

; <label>:139                                     ; preds = %138, %117
  %140 = load i32, i32* %1
  ret i32 %140
}

declare i32 @__VERIFIER_nondet_int(...) #1

declare void @__VERIFIER_assume(i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
