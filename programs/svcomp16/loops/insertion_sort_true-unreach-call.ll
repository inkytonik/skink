; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %SIZE = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %key = alloca i32, align 4
  %saved_stack = alloca i8*
  store i32 0, i32* %retval
  %call = call i32 (...) @__VERIFIER_nondet_uint()
  store i32 %call, i32* %SIZE, align 4
  %0 = load i32, i32* %SIZE, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack
  %vla = alloca i32, i64 %1, align 16
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %SIZE, align 4
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  store i32 %6, i32* %key, align 4
  %7 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %7, 1
  store i32 %sub, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %8 = load i32, i32* %i, align 4
  %cmp1 = icmp sge i32 %8, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %vla, i64 %idxprom2
  %10 = load i32, i32* %arrayidx3, align 4
  %11 = load i32, i32* %key, align 4
  %cmp4 = icmp sgt i32 %10, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %vla, i64 %idxprom5
  %14 = load i32, i32* %arrayidx6, align 4
  %15 = load i32, i32* %i, align 4
  %add = add nsw i32 %15, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %vla, i64 %idxprom7
  store i32 %14, i32* %arrayidx8, align 4
  %16 = load i32, i32* %i, align 4
  %sub9 = sub nsw i32 %16, 1
  store i32 %sub9, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load i32, i32* %key, align 4
  %18 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %18, 1
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %vla, i64 %idxprom11
  store i32 %17, i32* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %19 = load i32, i32* %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %k, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc23, %for.end
  %20 = load i32, i32* %k, align 4
  %21 = load i32, i32* %SIZE, align 4
  %cmp14 = icmp ult i32 %20, %21
  br i1 %cmp14, label %for.body15, label %for.end25

for.body15:                                       ; preds = %for.cond13
  %22 = load i32, i32* %k, align 4
  %sub16 = sub nsw i32 %22, 1
  %idxprom17 = sext i32 %sub16 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %vla, i64 %idxprom17
  %23 = load i32, i32* %arrayidx18, align 4
  %24 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %24 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %vla, i64 %idxprom19
  %25 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp sle i32 %23, %25
  %conv = zext i1 %cmp21 to i32
  %call22 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv)
  br label %for.inc23

for.inc23:                                        ; preds = %for.body15
  %26 = load i32, i32* %k, align 4
  %inc24 = add nsw i32 %26, 1
  store i32 %inc24, i32* %k, align 4
  br label %for.cond13

for.end25:                                        ; preds = %for.cond13
  store i32 0, i32* %retval
  %27 = load i8*, i8** %saved_stack
  call void @llvm.stackrestore(i8* %27)
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare i32 @__VERIFIER_nondet_uint(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare i32 @__VERIFIER_assert(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
