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

; <label>:4                                       ; preds = %16, %0
  %5 = load i32, i32* %sn, align 4
  %6 = add nsw i32 %5, 2
  store i32 %6, i32* %sn, align 4
  %7 = load i32, i32* %x, align 4
  %8 = add i32 %7, 1
  store i32 %8, i32* %x, align 4
  %9 = load i32, i32* %sn, align 4
  %10 = load i32, i32* %x, align 4
  %11 = mul i32 %10, 2
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %16, label %13

; <label>:13                                      ; preds = %4
  %14 = load i32, i32* %sn, align 4
  %15 = icmp eq i32 %14, 0
  br label %16

; <label>:16                                      ; preds = %13, %4
  %17 = phi i1 [ true, %4 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %18)
  br label %4
                                                  ; No predecessors!
  %21 = load i32, i32* %1
  ret i32 %21
}

declare i32 @__VERIFIER_nondet_uint(...) #1

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
