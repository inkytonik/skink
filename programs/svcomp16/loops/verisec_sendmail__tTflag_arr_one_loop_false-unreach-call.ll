; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

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
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call signext i8 (...) @__VERIFIER_nondet_char()
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 %idxprom
  store i8 %call, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 10
  store i8 0, i8* %arrayidx1, align 1
  store i32 0, i32* %idx_in, align 4
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i32 0
  store i8* %arraydecay, i8** %s, align 8
  store i32 0, i32* %i, align 4
  %3 = load i32, i32* %idx_in, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 %idxprom2
  %4 = load i8, i8* %arrayidx3, align 1
  store i8 %4, i8* %c, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %5 = load i8, i8* %c, align 1
  %conv = zext i8 %5 to i32
  %cmp4 = icmp sle i32 48, %conv
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i8, i8* %c, align 1
  %conv6 = zext i8 %6 to i32
  %cmp7 = icmp sle i32 %conv6, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i8, i8* %c, align 1
  %conv9 = zext i8 %8 to i32
  %sub = sub nsw i32 %conv9, 48
  store i32 %sub, i32* %j, align 4
  %9 = load i32, i32* %i, align 4
  %mul = mul i32 %9, 10
  %10 = load i32, i32* %j, align 4
  %add = add i32 %mul, %10
  store i32 %add, i32* %i, align 4
  %11 = load i32, i32* %idx_in, align 4
  %inc10 = add nsw i32 %11, 1
  store i32 %inc10, i32* %idx_in, align 4
  %12 = load i32, i32* %idx_in, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [11 x i8], [11 x i8]* %in, i32 0, i64 %idxprom11
  %13 = load i8, i8* %arrayidx12, align 1
  store i8 %13, i8* %c, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load i32, i32* %i, align 4
  %cmp13 = icmp sge i32 %14, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv14)
  ret i32 0
}

declare signext i8 @__VERIFIER_nondet_char(...) #1

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
