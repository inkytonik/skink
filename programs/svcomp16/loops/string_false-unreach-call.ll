; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %string_A = alloca [5 x i8], align 1
  %string_B = alloca [5 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nc_A = alloca i32, align 4
  %nc_B = alloca i32, align 4
  %found = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %found, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call signext i8 (...) @__VERIFIER_nondet_char()
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %string_A, i32 0, i64 %idxprom
  store i8 %call, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds [5 x i8], [5 x i8]* %string_A, i32 0, i64 4
  %3 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %3 to i32
  %cmp2 = icmp eq i32 %conv, 0
  %conv3 = zext i1 %cmp2 to i32
  call void @__VERIFIER_assume(i32 %conv3)
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc11, %for.end
  %4 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %4, 5
  br i1 %cmp5, label %for.body7, label %for.end13

for.body7:                                        ; preds = %for.cond4
  %call8 = call signext i8 (...) @__VERIFIER_nondet_char()
  %5 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %5 to i64
  %arrayidx10 = getelementptr inbounds [5 x i8], [5 x i8]* %string_B, i32 0, i64 %idxprom9
  store i8 %call8, i8* %arrayidx10, align 1
  br label %for.inc11

for.inc11:                                        ; preds = %for.body7
  %6 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %6, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond4

for.end13:                                        ; preds = %for.cond4
  %arrayidx14 = getelementptr inbounds [5 x i8], [5 x i8]* %string_B, i32 0, i64 4
  %7 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %7 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  %conv17 = zext i1 %cmp16 to i32
  call void @__VERIFIER_assume(i32 %conv17)
  store i32 0, i32* %nc_A, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end13
  %8 = load i32, i32* %nc_A, align 4
  %idxprom18 = sext i32 %8 to i64
  %arrayidx19 = getelementptr inbounds [5 x i8], [5 x i8]* %string_A, i32 0, i64 %idxprom18
  %9 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %9 to i32
  %cmp21 = icmp ne i32 %conv20, 0
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %nc_A, align 4
  %inc23 = add nsw i32 %10, 1
  store i32 %inc23, i32* %nc_A, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %nc_B, align 4
  br label %while.cond24

while.cond24:                                     ; preds = %while.body30, %while.end
  %11 = load i32, i32* %nc_B, align 4
  %idxprom25 = sext i32 %11 to i64
  %arrayidx26 = getelementptr inbounds [5 x i8], [5 x i8]* %string_B, i32 0, i64 %idxprom25
  %12 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %12 to i32
  %cmp28 = icmp ne i32 %conv27, 0
  br i1 %cmp28, label %while.body30, label %while.end32

while.body30:                                     ; preds = %while.cond24
  %13 = load i32, i32* %nc_B, align 4
  %inc31 = add nsw i32 %13, 1
  store i32 %inc31, i32* %nc_B, align 4
  br label %while.cond24

while.end32:                                      ; preds = %while.cond24
  %14 = load i32, i32* %nc_B, align 4
  %15 = load i32, i32* %nc_A, align 4
  %cmp33 = icmp sge i32 %14, %15
  %conv34 = zext i1 %cmp33 to i32
  call void @__VERIFIER_assume(i32 %conv34)
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond35

while.cond35:                                     ; preds = %if.end, %while.end32
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %nc_A, align 4
  %cmp36 = icmp slt i32 %16, %17
  br i1 %cmp36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond35
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* %nc_B, align 4
  %cmp38 = icmp slt i32 %18, %19
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond35
  %20 = phi i1 [ false, %while.cond35 ], [ %cmp38, %land.rhs ]
  br i1 %20, label %while.body40, label %while.end51

while.body40:                                     ; preds = %land.end
  %21 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %21 to i64
  %arrayidx42 = getelementptr inbounds [5 x i8], [5 x i8]* %string_A, i32 0, i64 %idxprom41
  %22 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %22 to i32
  %23 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %23 to i64
  %arrayidx45 = getelementptr inbounds [5 x i8], [5 x i8]* %string_B, i32 0, i64 %idxprom44
  %24 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %24 to i32
  %cmp47 = icmp eq i32 %conv43, %conv46
  br i1 %cmp47, label %if.then, label %if.else

if.then:                                          ; preds = %while.body40
  %25 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %25, 1
  store i32 %inc49, i32* %i, align 4
  %26 = load i32, i32* %j, align 4
  %inc50 = add nsw i32 %26, 1
  store i32 %inc50, i32* %j, align 4
  br label %if.end

if.else:                                          ; preds = %while.body40
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %27, %28
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond35

while.end51:                                      ; preds = %land.end
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %nc_B, align 4
  %sub52 = sub nsw i32 %30, 1
  %cmp53 = icmp sgt i32 %29, %sub52
  %conv54 = zext i1 %cmp53 to i32
  %31 = load i32, i32* %i, align 4
  %shl = shl i32 %conv54, %31
  store i32 %shl, i32* %found, align 4
  %32 = load i32, i32* %found, align 4
  %cmp55 = icmp eq i32 %32, 0
  br i1 %cmp55, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.end51
  %33 = load i32, i32* %found, align 4
  %cmp57 = icmp eq i32 %33, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.end51
  %34 = phi i1 [ true, %while.end51 ], [ %cmp57, %lor.rhs ]
  %lor.ext = zext i1 %34 to i32
  %call59 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %lor.ext)
  ret i32 0
}

declare signext i8 @__VERIFIER_nondet_char(...) #1

declare void @__VERIFIER_assume(i32) #1

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
