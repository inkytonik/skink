; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @bar(i8* %x) #0 {
  %1 = alloca i8*, align 8
  store i8* %x, i8** %1, align 8
  %2 = call i32 @__VERIFIER_nondet_int()
  ret i32 %2
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind ssp uwtable
define i32 @foo(i32* %x) #0 {
  %1 = alloca i32*, align 8
  store i32* %x, i32** %1, align 8
  %2 = call i32 @__VERIFIER_nondet_int()
  %3 = load i32*, i32** %1, align 8
  store i32 %2, i32* %3, align 4
  %4 = load i32*, i32** %1, align 8
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ret = alloca i32, align 4
  %offset = alloca i32, align 4
  %tmp_cnt = alloca i32, align 4
  %tel_data = alloca i32, align 4
  %klen = alloca i32, align 4
  %x = alloca [1000 x i8], align 16
  store i32 0, i32* %3
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %13, %0
  %5 = load i32, i32* %i, align 4
  %6 = icmp slt i32 %5, 1000
  br i1 %6, label %7, label %16

; <label>:7                                       ; preds = %4
  %8 = call i32 @__VERIFIER_nondet_int()
  %9 = trunc i32 %8 to i8
  %10 = load i32, i32* %i, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [1000 x i8], [1000 x i8]* %x, i32 0, i64 %11
  store i8 %9, i8* %12, align 1
  br label %13

; <label>:13                                      ; preds = %7
  %14 = load i32, i32* %i, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %i, align 4
  br label %4

; <label>:16                                      ; preds = %4
  store i32 0, i32* %i, align 4
  br label %17

; <label>:17                                      ; preds = %115, %16
  %18 = load i32, i32* %i, align 4
  %19 = icmp slt i32 %18, 1000
  br i1 %19, label %20, label %118

; <label>:20                                      ; preds = %17
  %21 = call i32 @__VERIFIER_nondet_int()
  store i32 %21, i32* %ret, align 4
  %22 = load i32, i32* %ret, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %20
  store i32 -1, i32* %3
  br label %128

; <label>:25                                      ; preds = %20
  %26 = call i32 @__VERIFIER_nondet_int()
  store i32 %26, i32* %tmp_cnt, align 4
  %27 = load i32, i32* %tmp_cnt, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %25
  store i32 -1, i32* %3
  br label %128

; <label>:30                                      ; preds = %25
  store i32 0, i32* %offset, align 4
  br label %31

; <label>:31                                      ; preds = %111, %30
  %32 = load i32, i32* %offset, align 4
  %33 = load i32, i32* %tmp_cnt, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %114

; <label>:35                                      ; preds = %31
  %36 = bitcast i32** %2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36)
  store i32* %tel_data, i32** %2, align 8
  %37 = call i32 @__VERIFIER_nondet_int() #2
  %38 = load i32*, i32** %2, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* %39, align 4
  %41 = bitcast i32** %2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41)
  store i32 %40, i32* %ret, align 4
  %42 = load i32, i32* %ret, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

; <label>:44                                      ; preds = %35
  %45 = load i32, i32* %ret, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %44, %35
  store i32 1, i32* %3
  br label %128

; <label>:48                                      ; preds = %44
  %49 = load i32, i32* %ret, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %48
  br label %111

; <label>:52                                      ; preds = %48
  br label %53

; <label>:53                                      ; preds = %52
  store i32 0, i32* %j, align 4
  br label %54

; <label>:54                                      ; preds = %81, %53
  %55 = load i32, i32* %j, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1000 x i8], [1000 x i8]* %x, i32 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %84

; <label>:61                                      ; preds = %54
  %62 = load i32, i32* %i, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [1000 x i8], [1000 x i8]* %x, i32 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %80

; <label>:68                                      ; preds = %61
  %69 = load i32, i32* %i, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [1000 x i8], [1000 x i8]* %x, i32 0, i64 %70
  %72 = load i32, i32* %i, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [1000 x i8], [1000 x i8]* %x, i32 0, i64 %74
  %76 = load i32, i32* %i, align 4
  %77 = add nsw i32 %76, 1
  %78 = sub nsw i32 1001, %77
  %79 = sext i32 %78 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %71, i8* %75, i64 %79, i32 1, i1 false)
  br label %80

; <label>:80                                      ; preds = %68, %61
  br label %81

; <label>:81                                      ; preds = %80
  %82 = load i32, i32* %j, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %j, align 4
  br label %54

; <label>:84                                      ; preds = %54
  %85 = getelementptr inbounds [1000 x i8], [1000 x i8]* %x, i32 0, i32 0
  %86 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86)
  store i8* %85, i8** %1, align 8
  %87 = call i32 @__VERIFIER_nondet_int() #2
  %88 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88)
  store i32 %87, i32* %ret, align 4
  %89 = load i32, i32* %ret, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %84
  br label %111

; <label>:92                                      ; preds = %84
  %93 = getelementptr inbounds [1000 x i8], [1000 x i8]* %x, i32 0, i32 0
  %94 = call i64 @strlen(i8* %93) #4
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %klen, align 4
  %96 = load i32, i32* %klen, align 4
  %97 = icmp sgt i32 %96, 20
  br i1 %97, label %98, label %102

; <label>:98                                      ; preds = %92
  %99 = load i32, i32* %i, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [1000 x i8], [1000 x i8]* %x, i32 0, i64 %100
  store i8 0, i8* %101, align 1
  br label %110

; <label>:102                                     ; preds = %92
  %103 = load i32, i32* %klen, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %109

; <label>:105                                     ; preds = %102
  %106 = load i32, i32* %i, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [1000 x i8], [1000 x i8]* %x, i32 0, i64 %107
  store i8 -1, i8* %108, align 1
  br label %109

; <label>:109                                     ; preds = %105, %102
  br label %110

; <label>:110                                     ; preds = %109, %98
  br label %111

; <label>:111                                     ; preds = %110, %91, %51
  %112 = load i32, i32* %offset, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %offset, align 4
  br label %31

; <label>:114                                     ; preds = %31
  br label %115

; <label>:115                                     ; preds = %114
  %116 = load i32, i32* %i, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %i, align 4
  br label %17

; <label>:118                                     ; preds = %17
  %119 = load i32, i32* %offset, align 4
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %124

; <label>:121                                     ; preds = %118
  %122 = load i32, i32* %offset, align 4
  %123 = icmp sle i32 %122, 1000
  br label %124

; <label>:124                                     ; preds = %121, %118
  %125 = phi i1 [ false, %118 ], [ %123, %121 ]
  %126 = zext i1 %125 to i32
  %127 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %126)
  store i32 1, i32* %3
  br label %128

; <label>:128                                     ; preds = %124, %47, %29, %24
  %129 = load i32, i32* %3
  ret i32 %129
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @__VERIFIER_assert(...) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
