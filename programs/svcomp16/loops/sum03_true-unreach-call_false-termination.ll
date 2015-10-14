; ModuleID = 'sum03_true-unreach-call_false-termination.i'
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
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sn = alloca i32, align 4
  %loop1 = alloca i32, align 4
  %n1 = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %sn, align 4
  %call = call i32 (...) @__VERIFIER_nondet_uint()
  store i32 %call, i32* %loop1, align 4
  %call1 = call i32 (...) @__VERIFIER_nondet_uint()
  store i32 %call1, i32* %n1, align 4
  store i32 0, i32* %x, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %lor.end
  %0 = load i32, i32* %sn, align 4
  %add = add nsw i32 %0, 2
  store i32 %add, i32* %sn, align 4
  %1 = load i32, i32* %x, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %x, align 4
  %2 = load i32, i32* %sn, align 4
  %3 = load i32, i32* %x, align 4
  %mul = mul i32 %3, 2
  %cmp = icmp eq i32 %2, %mul
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.body
  %4 = load i32, i32* %sn, align 4
  %cmp2 = icmp eq i32 %4, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.body
  %5 = phi i1 [ true, %while.body ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  call void @__VERIFIER_assert(i32 %lor.ext)
  br label %while.body

return:                                           ; No predecessors!
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @__VERIFIER_nondet_uint(...) #2

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
