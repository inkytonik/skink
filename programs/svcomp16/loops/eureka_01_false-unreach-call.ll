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
  %call = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %call, i32* %nodecount, align 4
  %call1 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %call1, i32* %edgecount, align 4
  %0 = load i32, i32* %nodecount, align 4
  %cmp = icmp sle i32 0, %0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %nodecount, align 4
  %cmp2 = icmp sle i32 %1, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  call void @__VERIFIER_assume(i32 %land.ext)
  %3 = load i32, i32* %edgecount, align 4
  %cmp3 = icmp sle i32 0, %3
  br i1 %cmp3, label %land.rhs4, label %land.end6

land.rhs4:                                        ; preds = %land.end
  %4 = load i32, i32* %edgecount, align 4
  %cmp5 = icmp sle i32 %4, 19
  br label %land.end6

land.end6:                                        ; preds = %land.rhs4, %land.end
  %5 = phi i1 [ false, %land.end ], [ %cmp5, %land.rhs4 ]
  %land.ext7 = zext i1 %5 to i32
  call void @__VERIFIER_assume(i32 %land.ext7)
  store i32 0, i32* %source, align 4
  %6 = bitcast [20 x i32]* %Source to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast ([20 x i32]* @main.Source to i8*), i64 80, i32 16, i1 false)
  %7 = bitcast [20 x i32]* %Dest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([20 x i32]* @main.Dest to i8*), i64 80, i32 16, i1 false)
  %8 = bitcast [20 x i32]* %Weight to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([20 x i32]* @main.Weight to i8*), i64 80, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end6
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %nodecount, align 4
  %cmp8 = icmp slt i32 %9, %10
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %source, align 4
  %cmp9 = icmp eq i32 %11, %12
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %14 = load i32, i32* @INFINITY, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom10
  store i32 %14, i32* %arrayidx11, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc36, %for.end
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %nodecount, align 4
  %cmp13 = icmp slt i32 %17, %18
  br i1 %cmp13, label %for.body14, label %for.end38

for.body14:                                       ; preds = %for.cond12
  store i32 0, i32* %j, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc33, %for.body14
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %edgecount, align 4
  %cmp16 = icmp slt i32 %19, %20
  br i1 %cmp16, label %for.body17, label %for.end35

for.body17:                                       ; preds = %for.cond15
  %21 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %21 to i64
  %arrayidx19 = getelementptr inbounds [20 x i32], [20 x i32]* %Dest, i32 0, i64 %idxprom18
  %22 = load i32, i32* %arrayidx19, align 4
  store i32 %22, i32* %x, align 4
  %23 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %23 to i64
  %arrayidx21 = getelementptr inbounds [20 x i32], [20 x i32]* %Source, i32 0, i64 %idxprom20
  %24 = load i32, i32* %arrayidx21, align 4
  store i32 %24, i32* %y, align 4
  %25 = load i32, i32* %x, align 4
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom22
  %26 = load i32, i32* %arrayidx23, align 4
  %27 = load i32, i32* %y, align 4
  %idxprom24 = sext i32 %27 to i64
  %arrayidx25 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom24
  %28 = load i32, i32* %arrayidx25, align 4
  %29 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %29 to i64
  %arrayidx27 = getelementptr inbounds [20 x i32], [20 x i32]* %Weight, i32 0, i64 %idxprom26
  %30 = load i32, i32* %arrayidx27, align 4
  %add = add nsw i32 %28, %30
  %cmp28 = icmp sgt i32 %26, %add
  br i1 %cmp28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %for.body17
  %31 = load i32, i32* %x, align 4
  %idxprom30 = sext i32 %31 to i64
  %arrayidx31 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom30
  store i32 -1, i32* %arrayidx31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %for.body17
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %32 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %32, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond15

for.end35:                                        ; preds = %for.cond15
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %33 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %33, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond12

for.end38:                                        ; preds = %for.cond12
  store i32 0, i32* %i, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc56, %for.end38
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %edgecount, align 4
  %cmp40 = icmp slt i32 %34, %35
  br i1 %cmp40, label %for.body41, label %for.end58

for.body41:                                       ; preds = %for.cond39
  %36 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %36 to i64
  %arrayidx43 = getelementptr inbounds [20 x i32], [20 x i32]* %Dest, i32 0, i64 %idxprom42
  %37 = load i32, i32* %arrayidx43, align 4
  store i32 %37, i32* %x, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %38 to i64
  %arrayidx45 = getelementptr inbounds [20 x i32], [20 x i32]* %Source, i32 0, i64 %idxprom44
  %39 = load i32, i32* %arrayidx45, align 4
  store i32 %39, i32* %y, align 4
  %40 = load i32, i32* %x, align 4
  %idxprom46 = sext i32 %40 to i64
  %arrayidx47 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom46
  %41 = load i32, i32* %arrayidx47, align 4
  %42 = load i32, i32* %y, align 4
  %idxprom48 = sext i32 %42 to i64
  %arrayidx49 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom48
  %43 = load i32, i32* %arrayidx49, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %44 to i64
  %arrayidx51 = getelementptr inbounds [20 x i32], [20 x i32]* %Weight, i32 0, i64 %idxprom50
  %45 = load i32, i32* %arrayidx51, align 4
  %add52 = add nsw i32 %43, %45
  %cmp53 = icmp sgt i32 %41, %add52
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %for.body41
  store i32 0, i32* %retval
  br label %return

if.end55:                                         ; preds = %for.body41
  br label %for.inc56

for.inc56:                                        ; preds = %if.end55
  %46 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %46, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond39

for.end58:                                        ; preds = %for.cond39
  store i32 0, i32* %i, align 4
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc66, %for.end58
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %nodecount, align 4
  %cmp60 = icmp slt i32 %47, %48
  br i1 %cmp60, label %for.body61, label %for.end68

for.body61:                                       ; preds = %for.cond59
  %49 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %49 to i64
  %arrayidx63 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom62
  %50 = load i32, i32* %arrayidx63, align 4
  %cmp64 = icmp sge i32 %50, 0
  %conv = zext i1 %cmp64 to i32
  %call65 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv)
  br label %for.inc66

for.inc66:                                        ; preds = %for.body61
  %51 = load i32, i32* %i, align 4
  %inc67 = add nsw i32 %51, 1
  store i32 %inc67, i32* %i, align 4
  br label %for.cond59

for.end68:                                        ; preds = %for.cond59
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end68, %if.then54
  %52 = load i32, i32* %retval
  ret i32 %52
}

declare i32 @__VERIFIER_nondet_int(...) #1

declare void @__VERIFIER_assume(i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
