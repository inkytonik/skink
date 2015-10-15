; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@n = global i32 5, align 4
@array = common global [5 x i32] zeroinitializer, align 16

; Function Attrs: nounwind ssp uwtable
define void @SelectionSort() #0 {
entry:
  %lh = alloca i32, align 4
  %rh = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 0, i32* %lh, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, i32* %lh, align 4
  %1 = load i32, i32* @n, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %lh, align 4
  store i32 %2, i32* %rh, align 4
  %3 = load i32, i32* %lh, align 4
  %add = add nsw i32 %3, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @n, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* @array, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32, i32* %rh, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [5 x i32], [5 x i32]* @array, i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp slt i32 %7, %9
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %10 = load i32, i32* %i, align 4
  store i32 %10, i32* %rh, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %12 = load i32, i32* %lh, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [5 x i32], [5 x i32]* @array, i32 0, i64 %idxprom7
  %13 = load i32, i32* %arrayidx8, align 4
  store i32 %13, i32* %temp, align 4
  %14 = load i32, i32* %rh, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds [5 x i32], [5 x i32]* @array, i32 0, i64 %idxprom9
  %15 = load i32, i32* %arrayidx10, align 4
  %16 = load i32, i32* %lh, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds [5 x i32], [5 x i32]* @array, i32 0, i64 %idxprom11
  store i32 %15, i32* %arrayidx12, align 4
  %17 = load i32, i32* %temp, align 4
  %18 = load i32, i32* %rh, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [5 x i32], [5 x i32]* @array, i32 0, i64 %idxprom13
  store i32 %17, i32* %arrayidx14, align 4
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %19 = load i32, i32* %lh, align 4
  %inc16 = add nsw i32 %19, 1
  store i32 %inc16, i32* %lh, align 4
  br label %for.cond

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array = alloca [5 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %array, i32 0, i64 %idxprom
  store i32 %1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @SelectionSort()
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.end
  %4 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %4, 5
  br i1 %cmp2, label %for.body3, label %for.end8

for.body3:                                        ; preds = %for.cond1
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [5 x i32], [5 x i32]* %array, i32 0, i64 %idxprom4
  %6 = load i32, i32* %arrayidx5, align 4
  %7 = load i32, i32* %i, align 4
  %cmp6 = icmp eq i32 %6, %7
  %conv = zext i1 %cmp6 to i32
  %call = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body3
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1

for.end8:                                         ; preds = %for.cond1
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
