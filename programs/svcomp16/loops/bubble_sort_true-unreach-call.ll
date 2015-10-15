; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @bubblesort(i32 %size, i32* %item) #0 {
entry:
  %size.addr = alloca i32, align 4
  %item.addr = alloca i32*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32* %item, i32** %item.addr, align 8
  store i32 1, i32* %a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, i32* %a, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %b, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %b, align 4
  %4 = load i32, i32* %a, align 4
  %cmp2 = icmp sge i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %5 = load i32, i32* %b, align 4
  %sub4 = sub nsw i32 %5, 1
  %6 = load i32, i32* %size.addr, align 4
  %cmp5 = icmp slt i32 %sub4, %6
  br i1 %cmp5, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %for.body3
  %7 = load i32, i32* %b, align 4
  %8 = load i32, i32* %size.addr, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %if.then, label %if.end22

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32, i32* %b, align 4
  %sub7 = sub nsw i32 %9, 1
  %idxprom = sext i32 %sub7 to i64
  %10 = load i32*, i32** %item.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %12 = load i32, i32* %b, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load i32*, i32** %item.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %13, i64 %idxprom8
  %14 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp sgt i32 %11, %14
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then
  %15 = load i32, i32* %b, align 4
  %sub12 = sub nsw i32 %15, 1
  %idxprom13 = sext i32 %sub12 to i64
  %16 = load i32*, i32** %item.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %16, i64 %idxprom13
  %17 = load i32, i32* %arrayidx14, align 4
  store i32 %17, i32* %t, align 4
  %18 = load i32, i32* %b, align 4
  %idxprom15 = sext i32 %18 to i64
  %19 = load i32*, i32** %item.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %19, i64 %idxprom15
  %20 = load i32, i32* %arrayidx16, align 4
  %21 = load i32, i32* %b, align 4
  %sub17 = sub nsw i32 %21, 1
  %idxprom18 = sext i32 %sub17 to i64
  %22 = load i32*, i32** %item.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %22, i64 %idxprom18
  store i32 %20, i32* %arrayidx19, align 4
  %23 = load i32, i32* %t, align 4
  %24 = load i32, i32* %b, align 4
  %idxprom20 = sext i32 %24 to i64
  %25 = load i32*, i32** %item.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %25, i64 %idxprom20
  store i32 %23, i32* %arrayidx21, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then
  br label %if.end22

if.end22:                                         ; preds = %if.end, %land.lhs.true, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %26 = load i32, i32* %b, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %b, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %27 = load i32, i32* %a, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %a, align 4
  br label %for.cond

for.end24:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @bubblesort1(i32 %size, i32* %item) #0 {
entry:
  %size.addr = alloca i32, align 4
  %item.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %pivot = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32* %item, i32** %item.addr, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %item.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %pivot, align 4
  %5 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %6 = load i32, i32* %i, align 4
  %cmp1 = icmp sge i32 %6, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load i32*, i32** %item.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom2
  %9 = load i32, i32* %arrayidx3, align 4
  %10 = load i32, i32* %pivot, align 4
  %cmp4 = icmp sgt i32 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load i32*, i32** %item.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 %idxprom5
  %14 = load i32, i32* %arrayidx6, align 4
  %15 = load i32, i32* %i, align 4
  %add = add nsw i32 %15, 1
  %idxprom7 = sext i32 %add to i64
  %16 = load i32*, i32** %item.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %16, i64 %idxprom7
  store i32 %14, i32* %arrayidx8, align 4
  %17 = load i32, i32* %i, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %18 = load i32, i32* %pivot, align 4
  %19 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %19, 1
  %idxprom10 = sext i32 %add9 to i64
  %20 = load i32*, i32** %item.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %20, i64 %idxprom10
  store i32 %18, i32* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @q1(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %N = alloca i32, align 4
  %saved_stack = alloca i8*
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %call, i32* %N, align 4
  %1 = load i32, i32* %N, align 4
  %2 = zext i32 %1 to i64
  %3 = call i8* @llvm.stacksave()
  store i8* %3, i8** %saved_stack
  %vla = alloca i32, i64 %2, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %N, align 4
  %cmp1 = icmp slt i32 %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 %6, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc14, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %N, align 4
  %cmp3 = icmp slt i32 %9, %10
  br i1 %cmp3, label %for.body4, label %for.end16

for.body4:                                        ; preds = %for.cond2
  %11 = load i32, i32* %i, align 4
  %call5 = call i32 (...) @__VERIFIER_nondet_int()
  %12 = load i32, i32* %N, align 4
  %13 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, %13
  %rem = srem i32 %call5, %sub
  %add = add nsw i32 %11, %rem
  store i32 %add, i32* %r, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %vla, i64 %idxprom6
  %15 = load i32, i32* %arrayidx7, align 4
  store i32 %15, i32* %temp, align 4
  %16 = load i32, i32* %r, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %vla, i64 %idxprom8
  %17 = load i32, i32* %arrayidx9, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %vla, i64 %idxprom10
  store i32 %17, i32* %arrayidx11, align 4
  %19 = load i32, i32* %temp, align 4
  %20 = load i32, i32* %r, align 4
  %idxprom12 = sext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %vla, i64 %idxprom12
  store i32 %19, i32* %arrayidx13, align 4
  br label %for.inc14

for.inc14:                                        ; preds = %for.body4
  %21 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %21, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond2

for.end16:                                        ; preds = %for.cond2
  %22 = load i32, i32* %N, align 4
  call void @bubblesort(i32 %22, i32* %vla)
  %23 = load i8*, i8** %saved_stack
  call void @llvm.stackrestore(i8* %23)
  br label %return

return:                                           ; preds = %for.end16, %if.then
  ret void
}

declare i32 @__VERIFIER_nondet_int(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  call void @q1(i32 %0, i8** %1)
  ret i32 0
}

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
