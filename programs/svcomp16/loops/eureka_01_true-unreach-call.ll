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
  store i32 5, i32* %nodecount, align 4
  store i32 20, i32* %edgecount, align 4
  store i32 0, i32* %source, align 4
  %2 = bitcast [20 x i32]* %Source to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([20 x i32]* @main.Source to i8*), i64 80, i32 16, i1 false)
  %3 = bitcast [20 x i32]* %Dest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast ([20 x i32]* @main.Dest to i8*), i64 80, i32 16, i1 false)
  %4 = bitcast [20 x i32]* %Weight to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ([20 x i32]* @main.Weight to i8*), i64 80, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %5

; <label>:5                                       ; preds = %23, %0
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %nodecount, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %26

; <label>:9                                       ; preds = %5
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %source, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

; <label>:13                                      ; preds = %9
  %14 = load i32, i32* %i, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %15
  store i32 0, i32* %16, align 4
  br label %22

; <label>:17                                      ; preds = %9
  %18 = load i32, i32* @INFINITY, align 4
  %19 = load i32, i32* %i, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %20
  store i32 %18, i32* %21, align 4
  br label %22

; <label>:22                                      ; preds = %17, %13
  br label %23

; <label>:23                                      ; preds = %22
  %24 = load i32, i32* %i, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %i, align 4
  br label %5

; <label>:26                                      ; preds = %5
  store i32 0, i32* %i, align 4
  br label %27

; <label>:27                                      ; preds = %77, %26
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %nodecount, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %80

; <label>:31                                      ; preds = %27
  store i32 0, i32* %j, align 4
  br label %32

; <label>:32                                      ; preds = %73, %31
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %edgecount, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %76

; <label>:36                                      ; preds = %32
  %37 = load i32, i32* %j, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [20 x i32], [20 x i32]* %Dest, i32 0, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %x, align 4
  %41 = load i32, i32* %j, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [20 x i32], [20 x i32]* %Source, i32 0, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %y, align 4
  %45 = load i32, i32* %x, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %y, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %j, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [20 x i32], [20 x i32]* %Weight, i32 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %52, %56
  %58 = icmp sgt i32 %48, %57
  br i1 %58, label %59, label %72

; <label>:59                                      ; preds = %36
  %60 = load i32, i32* %y, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %j, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [20 x i32], [20 x i32]* %Weight, i32 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %63, %67
  %69 = load i32, i32* %x, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %70
  store i32 %68, i32* %71, align 4
  br label %72

; <label>:72                                      ; preds = %59, %36
  br label %73

; <label>:73                                      ; preds = %72
  %74 = load i32, i32* %j, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %j, align 4
  br label %32

; <label>:76                                      ; preds = %32
  br label %77

; <label>:77                                      ; preds = %76
  %78 = load i32, i32* %i, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %i, align 4
  br label %27

; <label>:80                                      ; preds = %27
  store i32 0, i32* %i, align 4
  br label %81

; <label>:81                                      ; preds = %110, %80
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %edgecount, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %113

; <label>:85                                      ; preds = %81
  %86 = load i32, i32* %i, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [20 x i32], [20 x i32]* %Dest, i32 0, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %x, align 4
  %90 = load i32, i32* %i, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [20 x i32], [20 x i32]* %Source, i32 0, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %y, align 4
  %94 = load i32, i32* %x, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %y, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %i, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [20 x i32], [20 x i32]* %Weight, i32 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %101, %105
  %107 = icmp sgt i32 %97, %106
  br i1 %107, label %108, label %109

; <label>:108                                     ; preds = %85
  store i32 0, i32* %1
  br label %130

; <label>:109                                     ; preds = %85
  br label %110

; <label>:110                                     ; preds = %109
  %111 = load i32, i32* %i, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %i, align 4
  br label %81

; <label>:113                                     ; preds = %81
  store i32 0, i32* %i, align 4
  br label %114

; <label>:114                                     ; preds = %126, %113
  %115 = load i32, i32* %i, align 4
  %116 = load i32, i32* %nodecount, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %129

; <label>:118                                     ; preds = %114
  %119 = load i32, i32* %i, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp sge i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %124)
  br label %126

; <label>:126                                     ; preds = %118
  %127 = load i32, i32* %i, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %i, align 4
  br label %114

; <label>:129                                     ; preds = %114
  store i32 0, i32* %1
  br label %130

; <label>:130                                     ; preds = %129, %108
  %131 = load i32, i32* %1
  ret i32 %131
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @__VERIFIER_assert(...) #2

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
