; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %tmp = alloca i8, align 1
  store i32 0, i32* %retval
  %call = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %call, i32* %x, align 4
  %call1 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %call1, i32* %y, align 4
  %call2 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %call2, i32* %z, align 4
  %0 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %0, 100
  %conv = zext i1 %cmp to i32
  call void @__VERIFIER_assume(i32 %conv)
  %1 = load i32, i32* %z, align 4
  %cmp3 = icmp slt i32 %1, 100
  %conv4 = zext i1 %cmp3 to i32
  call void @__VERIFIER_assume(i32 %conv4)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, i32* %x, align 4
  %cmp5 = icmp slt i32 %2, 100
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %z, align 4
  %cmp7 = icmp slt i32 100, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call9 = call zeroext i1 (...) @__VERIFIER_nondet_bool()
  %frombool = zext i1 %call9 to i8
  store i8 %frombool, i8* %tmp, align 1
  %5 = load i8, i8* %tmp, align 1
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load i32, i32* %x, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %x, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %7 = load i32, i32* %x, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %x, align 4
  %8 = load i32, i32* %z, align 4
  %dec10 = add nsw i32 %8, -1
  store i32 %dec10, i32* %z, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i32, i32* %x, align 4
  %cmp11 = icmp sge i32 %9, 100
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.end
  %10 = load i32, i32* %z, align 4
  %cmp13 = icmp sle i32 %10, 100
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.end
  %11 = phi i1 [ true, %while.end ], [ %cmp13, %lor.rhs ]
  %lor.ext = zext i1 %11 to i32
  %call15 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %lor.ext)
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int(...) #1

declare void @__VERIFIER_assume(i32) #1

declare zeroext i1 @__VERIFIER_nondet_bool(...) #1

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
