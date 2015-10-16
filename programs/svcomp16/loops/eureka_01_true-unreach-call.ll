; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@INFINITY = global i32 899, align 4
@main.Source = private unnamed_addr constant [20 x i32] [i32 0, i32 4, i32 1, i32 1, i32 0, i32 0, i32 1, i32 3, i32 4, i32 4, i32 2, i32 2, i32 3, i32 0, i32 0, i32 3, i32 1, i32 2, i32 2, i32 3], align 16
@main.Dest = private unnamed_addr constant [20 x i32] [i32 1, i32 3, i32 4, i32 1, i32 1, i32 4, i32 3, i32 4, i32 3, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 0, i32 2, i32 1, i32 0, i32 4], align 16
@main.Weight = private unnamed_addr constant [20 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19], align 16

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %nodecount = alloca i32, align 4
  %edgecount = alloca i32, align 4
  %source = alloca i32, align 4
  %Source = alloca [20 x i32], align 16
  %Dest = alloca [20 x i32], align 16
  %Weight = alloca [20 x i32], align 16
  %distance = alloca [5 x i32], align 16
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 5, i32* %nodecount, align 4
  store i32 20, i32* %edgecount, align 4
  store i32 0, i32* %source, align 4
  %0 = bitcast [20 x i32]* %Source to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([20 x i32]* @main.Source to i8*), i64 80, i32 16, i1 false)
  %1 = bitcast [20 x i32]* %Dest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([20 x i32]* @main.Dest to i8*), i64 80, i32 16, i1 false)
  %2 = bitcast [20 x i32]* %Weight to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([20 x i32]* @main.Weight to i8*), i64 80, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %nodecount, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %source, align 4
  %cmp1 = icmp eq i32 %5, %6
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %8 = load i32, i32* @INFINITY, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom2
  store i32 %8, i32* %arrayidx3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc33, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %nodecount, align 4
  %cmp5 = icmp slt i32 %11, %12
  br i1 %cmp5, label %for.body6, label %for.end35

for.body6:                                        ; preds = %for.cond4
  store i32 0, i32* %j, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc30, %for.body6
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %edgecount, align 4
  %cmp8 = icmp slt i32 %13, %14
  br i1 %cmp8, label %for.body9, label %for.end32

for.body9:                                        ; preds = %for.cond7
  %15 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [20 x i32], [20 x i32]* %Dest, i32 0, i64 %idxprom10
  %16 = load i32, i32* %arrayidx11, align 4
  store i32 %16, i32* %x, align 4
  %17 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds [20 x i32], [20 x i32]* %Source, i32 0, i64 %idxprom12
  %18 = load i32, i32* %arrayidx13, align 4
  store i32 %18, i32* %y, align 4
  %19 = load i32, i32* %x, align 4
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom14
  %20 = load i32, i32* %arrayidx15, align 4
  %21 = load i32, i32* %y, align 4
  %idxprom16 = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom16
  %22 = load i32, i32* %arrayidx17, align 4
  %23 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %23 to i64
  %arrayidx19 = getelementptr inbounds [20 x i32], [20 x i32]* %Weight, i32 0, i64 %idxprom18
  %24 = load i32, i32* %arrayidx19, align 4
  %add = add nsw i32 %22, %24
  %cmp20 = icmp sgt i32 %20, %add
  br i1 %cmp20, label %if.then21, label %if.end29

if.then21:                                        ; preds = %for.body9
  %25 = load i32, i32* %y, align 4
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom22
  %26 = load i32, i32* %arrayidx23, align 4
  %27 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %27 to i64
  %arrayidx25 = getelementptr inbounds [20 x i32], [20 x i32]* %Weight, i32 0, i64 %idxprom24
  %28 = load i32, i32* %arrayidx25, align 4
  %add26 = add nsw i32 %26, %28
  %29 = load i32, i32* %x, align 4
  %idxprom27 = sext i32 %29 to i64
  %arrayidx28 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom27
  store i32 %add26, i32* %arrayidx28, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then21, %for.body9
  br label %for.inc30

for.inc30:                                        ; preds = %if.end29
  %30 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %30, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond7

for.end32:                                        ; preds = %for.cond7
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %31 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %31, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond4

for.end35:                                        ; preds = %for.cond4
  store i32 0, i32* %i, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc53, %for.end35
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %edgecount, align 4
  %cmp37 = icmp slt i32 %32, %33
  br i1 %cmp37, label %for.body38, label %for.end55

for.body38:                                       ; preds = %for.cond36
  %34 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %34 to i64
  %arrayidx40 = getelementptr inbounds [20 x i32], [20 x i32]* %Dest, i32 0, i64 %idxprom39
  %35 = load i32, i32* %arrayidx40, align 4
  store i32 %35, i32* %x, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %36 to i64
  %arrayidx42 = getelementptr inbounds [20 x i32], [20 x i32]* %Source, i32 0, i64 %idxprom41
  %37 = load i32, i32* %arrayidx42, align 4
  store i32 %37, i32* %y, align 4
  %38 = load i32, i32* %x, align 4
  %idxprom43 = sext i32 %38 to i64
  %arrayidx44 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom43
  %39 = load i32, i32* %arrayidx44, align 4
  %40 = load i32, i32* %y, align 4
  %idxprom45 = sext i32 %40 to i64
  %arrayidx46 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom45
  %41 = load i32, i32* %arrayidx46, align 4
  %42 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %42 to i64
  %arrayidx48 = getelementptr inbounds [20 x i32], [20 x i32]* %Weight, i32 0, i64 %idxprom47
  %43 = load i32, i32* %arrayidx48, align 4
  %add49 = add nsw i32 %41, %43
  %cmp50 = icmp sgt i32 %39, %add49
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %for.body38
  store i32 0, i32* %retval
  br label %return

if.end52:                                         ; preds = %for.body38
  br label %for.inc53

for.inc53:                                        ; preds = %if.end52
  %44 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %44, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond36

for.end55:                                        ; preds = %for.cond36
  store i32 0, i32* %i, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc62, %for.end55
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %nodecount, align 4
  %cmp57 = icmp slt i32 %45, %46
  br i1 %cmp57, label %for.body58, label %for.end64

for.body58:                                       ; preds = %for.cond56
  %47 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %47 to i64
  %arrayidx60 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom59
  %48 = load i32, i32* %arrayidx60, align 4
  %cmp61 = icmp sge i32 %48, 0
  %conv = zext i1 %cmp61 to i32
  %call = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv)
  br label %for.inc62

for.inc62:                                        ; preds = %for.body58
  %49 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %49, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond56

for.end64:                                        ; preds = %for.cond56
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end64, %if.then51
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @__VERIFIER_assert(...) #2

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
