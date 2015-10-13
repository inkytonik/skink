; ModuleID = 'trex04_true-unreach-call_false-termination.i'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
entry:
  %cond.addr = alloca i32, align 4
  store i32 %cond, i32* %cond.addr, align 4
  %0 = load i32, i32* %cond.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %ERROR

ERROR:                                            ; preds = %if.then
  call void (...) @__VERIFIER_error() #3
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind ssp uwtable
define void @foo() #0 {
entry:
  %y = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  store i32 0, i32* %y, align 4
  %call = call i32 (...) @__VERIFIER_nondet_bool()
  store i32 %call, i32* %c1, align 4
  %call1 = call i32 (...) @__VERIFIER_nondet_bool()
  store i32 %call1, i32* %c2, align 4
  %0 = load i32, i32* %c1, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %y, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %c2, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %3 = load i32, i32* %y, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %y, align 4
  br label %if.end4

if.else:                                          ; preds = %if.end
  %4 = load i32, i32* %y, align 4
  %add = add nsw i32 %4, 10
  store i32 %add, i32* %y, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  ret void
}

declare i32 @__VERIFIER_nondet_bool(...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %d = alloca i32, align 4
  %x = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 1, i32* %d, align 4
  %call = call i32 (...) @__VERIFIER_nondet_bool()
  store i32 %call, i32* %c1, align 4
  %call1 = call i32 (...) @__VERIFIER_nondet_bool()
  store i32 %call1, i32* %c2, align 4
  %0 = load i32, i32* %c1, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %d, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %d, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %c2, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @foo()
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %call5 = call i32 (...) @__VERIFIER_nondet_bool()
  store i32 %call5, i32* %c1, align 4
  %call6 = call i32 (...) @__VERIFIER_nondet_bool()
  store i32 %call6, i32* %c2, align 4
  %3 = load i32, i32* %c1, align 4
  %tobool7 = icmp ne i32 %3, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @foo()
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end4
  %4 = load i32, i32* %c2, align 4
  %tobool10 = icmp ne i32 %4, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %5 = load i32, i32* %d, align 4
  %sub12 = sub nsw i32 %5, 1
  store i32 %sub12, i32* %d, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end13
  %6 = load i32, i32* %x, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %d, align 4
  %sub14 = sub nsw i32 %7, %8
  store i32 %sub14, i32* %x, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %x, align 4
  %cmp15 = icmp sle i32 %9, 0
  %conv = zext i1 %cmp15 to i32
  call void @__VERIFIER_assert(i32 %conv)
  %10 = load i32, i32* %retval
  ret i32 %10
}

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
