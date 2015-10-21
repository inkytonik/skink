; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %start.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %j.i = alloca i32, align 4
  %str2.i = alloca [2 x i8], align 1
  %3 = alloca i32, align 4
  %A = alloca [9 x i8], align 1
  store i32 0, i32* %3
  %4 = getelementptr inbounds [9 x i8], [9 x i8]* %A, i32 0, i64 8
  store i8 0, i8* %4, align 1
  %5 = getelementptr inbounds [9 x i8], [9 x i8]* %A, i32 0, i32 0
  %6 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6)
  %7 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7)
  %8 = bitcast i32* %start.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8)
  %9 = bitcast i32* %i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9)
  %10 = bitcast i32* %j.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10)
  %11 = bitcast [2 x i8]* %str2.i to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11)
  store i8* %5, i8** %2, align 8
  store i32 0, i32* %start.i, align 4
  store i32 -1, i32* %i.i, align 4
  store i32 -1, i32* %j.i, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

; <label>:14                                      ; preds = %0
  store i32 -1, i32* %1
  br label %parse_expression_list.exit

; <label>:15                                      ; preds = %0
  br label %16

; <label>:16                                      ; preds = %132, %15
  %17 = load i32, i32* %i.i, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %i.i, align 4
  %19 = load i32, i32* %i.i, align 4
  %20 = sext i32 %19 to i64
  %21 = load i8*, i8** %2, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 %20
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %cond = icmp eq i32 %24, 0
  br i1 %cond, label %25, label %132

; <label>:25                                      ; preds = %16
  br label %26

; <label>:26                                      ; preds = %44, %25
  %27 = load i32, i32* %start.i, align 4
  %28 = sext i32 %27 to i64
  %29 = load i8*, i8** %2, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 %28
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 32
  br i1 %33, label %42, label %34

; <label>:34                                      ; preds = %26
  %35 = load i32, i32* %start.i, align 4
  %36 = sext i32 %35 to i64
  %37 = load i8*, i8** %2, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 9
  br label %42

; <label>:42                                      ; preds = %34, %26
  %43 = phi i1 [ true, %26 ], [ %41, %34 ]
  br i1 %43, label %44, label %47

; <label>:44                                      ; preds = %42
  %45 = load i32, i32* %start.i, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %start.i, align 4
  br label %26

; <label>:47                                      ; preds = %42
  %48 = load i32, i32* %start.i, align 4
  %49 = sext i32 %48 to i64
  %50 = load i8*, i8** %2, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 %49
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 34
  br i1 %54, label %55, label %58

; <label>:55                                      ; preds = %47
  %56 = load i32, i32* %start.i, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %start.i, align 4
  br label %58

; <label>:58                                      ; preds = %55, %47
  %59 = load i32, i32* %i.i, align 4
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %j.i, align 4
  br label %61

; <label>:61                                      ; preds = %84, %58
  %62 = load i32, i32* %j.i, align 4
  %63 = icmp slt i32 0, %62
  br i1 %63, label %64, label %82

; <label>:64                                      ; preds = %61
  %65 = load i32, i32* %j.i, align 4
  %66 = sext i32 %65 to i64
  %67 = load i8*, i8** %2, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 32
  br i1 %71, label %80, label %72

; <label>:72                                      ; preds = %64
  %73 = load i32, i32* %j.i, align 4
  %74 = sext i32 %73 to i64
  %75 = load i8*, i8** %2, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 %74
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 9
  br label %80

; <label>:80                                      ; preds = %72, %64
  %81 = phi i1 [ true, %64 ], [ %79, %72 ]
  br label %82

; <label>:82                                      ; preds = %80, %61
  %83 = phi i1 [ false, %61 ], [ %81, %80 ]
  br i1 %83, label %84, label %87

; <label>:84                                      ; preds = %82
  %85 = load i32, i32* %j.i, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %j.i, align 4
  br label %61

; <label>:87                                      ; preds = %82
  %88 = load i32, i32* %j.i, align 4
  %89 = icmp slt i32 0, %88
  br i1 %89, label %90, label %101

; <label>:90                                      ; preds = %87
  %91 = load i32, i32* %j.i, align 4
  %92 = sext i32 %91 to i64
  %93 = load i8*, i8** %2, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 %92
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 34
  br i1 %97, label %98, label %101

; <label>:98                                      ; preds = %90
  %99 = load i32, i32* %j.i, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %j.i, align 4
  br label %101

; <label>:101                                     ; preds = %98, %90, %87
  %102 = load i32, i32* %start.i, align 4
  %103 = load i32, i32* %j.i, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %131

; <label>:105                                     ; preds = %101
  %106 = load i32, i32* %j.i, align 4
  %107 = load i32, i32* %start.i, align 4
  %108 = sub nsw i32 %106, %107
  %109 = add nsw i32 %108, 1
  %110 = icmp sge i32 %109, 2
  br i1 %110, label %111, label %112

; <label>:111                                     ; preds = %105
  store i32 -1, i32* %1
  br label %parse_expression_list.exit

; <label>:112                                     ; preds = %105
  %113 = getelementptr inbounds [2 x i8], [2 x i8]* %str2.i, i32 0, i32 0
  %114 = load i8*, i8** %2, align 8
  %115 = load i32, i32* %start.i, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i32, i32* %j.i, align 4
  %119 = load i32, i32* %start.i, align 4
  %120 = sub nsw i32 %118, %119
  %121 = add nsw i32 %120, 1
  %122 = call i8* @r_strncpy(i8* %113, i8* %117, i32 %121) #2
  %123 = load i32, i32* %j.i, align 4
  %124 = load i32, i32* %start.i, align 4
  %125 = sub nsw i32 %123, %124
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [2 x i8], [2 x i8]* %str2.i, i32 0, i64 %127
  store i8 0, i8* %128, align 1
  %129 = load i32, i32* %i.i, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %start.i, align 4
  br label %132

; <label>:131                                     ; preds = %101
  store i32 -1, i32* %1
  br label %parse_expression_list.exit

; <label>:132                                     ; preds = %16, %112
  %133 = load i32, i32* %i.i, align 4
  %134 = sext i32 %133 to i64
  %135 = load i8*, i8** %2, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 %134
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %16, label %140

; <label>:140                                     ; preds = %132
  store i32 0, i32* %1
  br label %parse_expression_list.exit

parse_expression_list.exit:                       ; preds = %14, %111, %131, %140
  %141 = load i32, i32* %1
  %142 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142)
  %143 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143)
  %144 = bitcast i32* %start.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144)
  %145 = bitcast i32* %i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145)
  %146 = bitcast i32* %j.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146)
  %147 = bitcast [2 x i8]* %str2.i to i8*
  call void @llvm.lifetime.end(i64 2, i8* %147)
  ret i32 0
}

declare i8* @r_strncpy(i8*, i8*, i32) #1

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
