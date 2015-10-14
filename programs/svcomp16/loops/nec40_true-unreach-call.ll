; ModuleID = 'nec40_true-unreach-call.i'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@k = common global i32 0, align 4
@i = common global i32 0, align 4
@x = common global [100 x i8] zeroinitializer, align 16
@y = common global [100 x i8] zeroinitializer, align 16
@j = common global i32 0, align 4

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
  store i32 0, i32* %retval
  %call = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %call, i32* @k, align 4
  store i32 0, i32* @i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x i8], [100 x i8]* @x, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* @i, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [100 x i8], [100 x i8]* @x, i32 0, i64 %idxprom2
  %3 = load i8, i8* %arrayidx3, align 1
  %4 = load i32, i32* @i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [100 x i8], [100 x i8]* @y, i32 0, i64 %idxprom4
  store i8 %3, i8* %arrayidx5, align 1
  %5 = load i32, i32* @i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* @i, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [100 x i8], [100 x i8]* @y, i32 0, i64 %idxprom6
  store i8 0, i8* %arrayidx7, align 1
  %7 = load i32, i32* @k, align 4
  %cmp8 = icmp sge i32 %7, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %while.end
  %8 = load i32, i32* @k, align 4
  %9 = load i32, i32* @i, align 4
  %cmp10 = icmp slt i32 %8, %9
  br i1 %cmp10, label %if.then, label %if.end18

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32, i32* @k, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [100 x i8], [100 x i8]* @y, i32 0, i64 %idxprom12
  %11 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %11 to i32
  %cmp15 = icmp ne i32 %conv14, 0
  br i1 %cmp15, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.then
  call void @__VERIFIER_assert(i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then
  br label %if.end18

if.end18:                                         ; preds = %if.end, %land.lhs.true, %while.end
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int(...) #2

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
