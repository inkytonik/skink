; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@tmp = common global i32* null, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @glob2(i32* %pathbuf, i32* %pathlim) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %p = alloca i32*, align 8
  store i32* %pathbuf, i32** %1, align 8
  store i32* %pathlim, i32** %2, align 8
  %3 = load i32*, i32** %1, align 8
  store i32* %3, i32** %p, align 8
  br label %4

; <label>:4                                       ; preds = %15, %0
  %5 = load i32*, i32** %p, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = icmp ule i32* %5, %6
  br i1 %7, label %8, label %18

; <label>:8                                       ; preds = %4
  %9 = load i32*, i32** %p, align 8
  %10 = load i32*, i32** @tmp, align 8
  %11 = icmp ule i32* %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %12)
  %14 = load i32*, i32** %p, align 8
  store i32 1, i32* %14, align 4
  br label %15

; <label>:15                                      ; preds = %8
  %16 = load i32*, i32** %p, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %p, align 8
  br label %4

; <label>:18                                      ; preds = %4
  ret i32 0
}

declare i32 @__VERIFIER_assert(...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %p.i = alloca i32*, align 8
  %3 = alloca i32, align 4
  %pathbuf = alloca [2 x i32], align 4
  %bound = alloca i32*, align 8
  store i32 0, i32* %3
  %4 = getelementptr inbounds [2 x i32], [2 x i32]* %pathbuf, i32 0, i32 0
  %5 = getelementptr inbounds i32, i32* %4, i64 2
  %6 = getelementptr inbounds i32, i32* %5, i64 -1
  store i32* %6, i32** %bound, align 8
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %pathbuf, i32 0, i32 0
  %8 = getelementptr inbounds i32, i32* %7, i64 2
  %9 = getelementptr inbounds i32, i32* %8, i64 -1
  store i32* %9, i32** @tmp, align 8
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %pathbuf, i32 0, i32 0
  %11 = load i32*, i32** %bound, align 8
  %12 = bitcast i32** %1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12)
  %13 = bitcast i32** %2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13)
  %14 = bitcast i32** %p.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14)
  store i32* %10, i32** %1, align 8
  store i32* %11, i32** %2, align 8
  %15 = load i32*, i32** %1, align 8
  store i32* %15, i32** %p.i, align 8
  br label %16

; <label>:16                                      ; preds = %20, %0
  %17 = load i32*, i32** %p.i, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = icmp ule i32* %17, %18
  br i1 %19, label %20, label %glob2.exit

; <label>:20                                      ; preds = %16
  %21 = load i32*, i32** %p.i, align 8
  %22 = load i32*, i32** @tmp, align 8
  %23 = icmp ule i32* %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %24) #2
  %26 = load i32*, i32** %p.i, align 8
  store i32 1, i32* %26, align 4
  %27 = load i32*, i32** %p.i, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %p.i, align 8
  br label %16

glob2.exit:                                       ; preds = %16
  %29 = bitcast i32** %1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29)
  %30 = bitcast i32** %2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30)
  %31 = bitcast i32** %p.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31)
  ret i32 0
}

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
