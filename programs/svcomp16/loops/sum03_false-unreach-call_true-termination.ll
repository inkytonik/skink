; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %sn = alloca i32, align 4
  %loop1 = alloca i32, align 4
  %n1 = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %sn, align 4
  %2 = call i32 (...) @__VERIFIER_nondet_uint()
  store i32 %2, i32* %loop1, align 4
  %3 = call i32 (...) @__VERIFIER_nondet_uint()
  store i32 %3, i32* %n1, align 4
  store i32 0, i32* %x, align 4
  br label %4

; <label>:4                                       ; preds = %20, %0
  %5 = load i32, i32* %x, align 4
  %6 = icmp ult i32 %5, 10
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %4
  %8 = load i32, i32* %sn, align 4
  %9 = add nsw i32 %8, 2
  store i32 %9, i32* %sn, align 4
  br label %10

; <label>:10                                      ; preds = %7, %4
  %11 = load i32, i32* %x, align 4
  %12 = add i32 %11, 1
  store i32 %12, i32* %x, align 4
  %13 = load i32, i32* %sn, align 4
  %14 = load i32, i32* %x, align 4
  %15 = mul i32 %14, 2
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %20, label %17

; <label>:17                                      ; preds = %10
  %18 = load i32, i32* %sn, align 4
  %19 = icmp eq i32 %18, 0
  br label %20

; <label>:20                                      ; preds = %17, %10
  %21 = phi i1 [ true, %10 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %22)
  br label %4
                                                  ; No predecessors!
  %25 = load i32, i32* %1
  ret i32 %25
}

declare i32 @__VERIFIER_nondet_uint(...) #1

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
