; ModuleID = 'nec20_false-unreach-call.i'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@b = common global i32 0, align 4

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
  %k = alloca i8, align 1
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca [1025 x i32], align 16
  store i32 0, i32* %retval
  %call = call zeroext i1 (...) @__VERIFIER_nondet_bool()
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %k, align 1
  %0 = load i8, i8* %k, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %n, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1023, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  %4 = load i32, i32* %j, align 4
  %add = add nsw i32 %4, 2
  store i32 %add, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [1025 x i32], [1025 x i32]* %a, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %6 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [1025 x i32], [1025 x i32]* %a, i32 0, i64 %idxprom1
  store i32 0, i32* %arrayidx2, align 4
  %7 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %7, 1025
  %conv = zext i1 %cmp3 to i32
  call void @__VERIFIER_assert(i32 %conv)
  %8 = load i32, i32* @b, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [1025 x i32], [1025 x i32]* %a, i32 0, i64 %idxprom4
  store i32 0, i32* %arrayidx5, align 4
  %9 = load i32, i32* @b, align 4
  %cmp6 = icmp sge i32 %9, 0
  br i1 %cmp6, label %land.lhs.true, label %if.else13

land.lhs.true:                                    ; preds = %while.end
  %10 = load i32, i32* @b, align 4
  %cmp8 = icmp slt i32 %10, 1023
  br i1 %cmp8, label %if.then10, label %if.else13

if.then10:                                        ; preds = %land.lhs.true
  %11 = load i32, i32* @b, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [1025 x i32], [1025 x i32]* %a, i32 0, i64 %idxprom11
  store i32 1, i32* %arrayidx12, align 4
  br label %if.end16

if.else13:                                        ; preds = %land.lhs.true, %while.end
  %12 = load i32, i32* @b, align 4
  %rem = srem i32 %12, 1023
  %idxprom14 = sext i32 %rem to i64
  %arrayidx15 = getelementptr inbounds [1025 x i32], [1025 x i32]* %a, i32 0, i64 %idxprom14
  store i32 1, i32* %arrayidx15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.then10
  ret i32 1
}

declare zeroext i1 @__VERIFIER_nondet_bool(...) #2

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
