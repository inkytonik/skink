; ModuleID = 'trex01_true-unreach-call.i'
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
define void @f(i32 %d) #0 {
entry:
  %d.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %k = alloca i32, align 4
  %z = alloca i32, align 4
  %c = alloca i8, align 1
  store i32 %d, i32* %d.addr, align 4
  store i32 1, i32* %z, align 4
  br label %L1

L1:                                               ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %L1
  %0 = load i32, i32* %z, align 4
  %1 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %z, align 4
  %mul = mul nsw i32 2, %2
  store i32 %mul, i32* %z, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* %z, align 4
  %cmp1 = icmp sge i32 %3, 1
  %conv = zext i1 %cmp1 to i32
  call void @__VERIFIER_assert(i32 %conv)
  br label %L2

L2:                                               ; preds = %while.end
  br label %while.cond2

while.cond2:                                      ; preds = %if.end, %L2
  %4 = load i32, i32* %x, align 4
  %cmp3 = icmp sgt i32 %4, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond2
  %5 = load i32, i32* %y, align 4
  %cmp5 = icmp sgt i32 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond2
  %6 = phi i1 [ false, %while.cond2 ], [ %cmp5, %land.rhs ]
  br i1 %6, label %while.body7, label %while.end12

while.body7:                                      ; preds = %land.end
  %call = call zeroext i1 (...) @__VERIFIER_nondet_bool()
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %c, align 1
  %7 = load i8, i8* %c, align 1
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body7
  br label %P1

P1:                                               ; preds = %if.then
  %8 = load i32, i32* %x, align 4
  %9 = load i32, i32* %d.addr, align 4
  %sub = sub nsw i32 %8, %9
  store i32 %sub, i32* %x, align 4
  %call8 = call zeroext i1 (...) @__VERIFIER_nondet_bool()
  %conv9 = zext i1 %call8 to i32
  store i32 %conv9, i32* %y, align 4
  %10 = load i32, i32* %z, align 4
  %sub10 = sub nsw i32 %10, 1
  store i32 %sub10, i32* %z, align 4
  br label %if.end

if.else:                                          ; preds = %while.body7
  %11 = load i32, i32* %y, align 4
  %12 = load i32, i32* %d.addr, align 4
  %sub11 = sub nsw i32 %11, %12
  store i32 %sub11, i32* %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %P1
  br label %while.cond2

while.end12:                                      ; preds = %land.end
  ret void
}

declare zeroext i1 @__VERIFIER_nondet_bool(...) #2

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
entry:
  %c = alloca i8, align 1
  %call = call zeroext i1 (...) @__VERIFIER_nondet_bool()
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %c, align 1
  %0 = load i8, i8* %c, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @f(i32 1)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @f(i32 2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
