; ModuleID = 'veris.c_sendmail__tTflag_arr_one_loop_true-unreach-call.i'
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
  call void (...) @__VERIFIER_error() #2
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
  %in = alloca [11 x i8], align 1
  %s = alloca i8*, align 8
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %idx_in = alloca i32, align 4
  store i32 0, i32* %retval
  %arrayidx = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 10
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %idx_in, align 4
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i32 0
  store i8* %arraydecay, i8** %s, align 8
  store i32 0, i32* %i, align 4
  %0 = load i32, i32* %idx_in, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx1 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx1, align 1
  store i8 %1, i8* %c, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8, i8* %c, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp sle i32 48, %conv
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i8, i8* %c, align 1
  %conv3 = zext i8 %3 to i32
  %cmp4 = icmp sle i32 %conv3, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i8, i8* %c, align 1
  %conv6 = zext i8 %5 to i32
  %sub = sub nsw i32 %conv6, 48
  store i32 %sub, i32* %j, align 4
  %6 = load i32, i32* %i, align 4
  %mul = mul i32 %6, 10
  %7 = load i32, i32* %j, align 4
  %add = add i32 %mul, %7
  store i32 %add, i32* %i, align 4
  %8 = load i32, i32* %idx_in, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %idx_in, align 4
  %9 = load i32, i32* %idx_in, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 %idxprom7
  %10 = load i8, i8* %arrayidx8, align 1
  store i8 %10, i8* %c, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* %i, align 4
  %cmp9 = icmp uge i32 %11, 0
  %conv10 = zext i1 %cmp9 to i32
  call void @__VERIFIER_assert(i32 %conv10)
  ret i32 0
}

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
