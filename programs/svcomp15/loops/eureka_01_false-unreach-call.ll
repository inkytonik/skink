; ModuleID = 'eureka_01_false-unreach-call.i'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@INFINITY = global i32 899, align 4
@main.Source = private unnamed_addr constant [20 x i32] [i32 0, i32 4, i32 1, i32 1, i32 0, i32 0, i32 1, i32 3, i32 4, i32 4, i32 2, i32 2, i32 3, i32 0, i32 0, i32 3, i32 1, i32 2, i32 2, i32 3], align 16
@main.Dest = private unnamed_addr constant [20 x i32] [i32 1, i32 3, i32 4, i32 1, i32 1, i32 4, i32 3, i32 4, i32 3, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 0, i32 2, i32 1, i32 0, i32 4], align 16
@main.Weight = private unnamed_addr constant [20 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19], align 16

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
  call void (...) @__VERIFIER_error() #4
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
entry:
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
  %call = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %call, i32* %nodecount, align 4
  %call1 = call i32 (...) @__VERIFIER_nondet_int()
  store i32 %call1, i32* %edgecount, align 4
  %0 = load i32, i32* %nodecount, align 4
  %cmp = icmp sle i32 0, %0
  %conv = zext i1 %cmp to i32
  %cmp2 = icmp sle i32 %conv, 4
  %conv3 = zext i1 %cmp2 to i32
  %call4 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*)(i32 %conv3)
  %1 = load i32, i32* %edgecount, align 4
  %cmp5 = icmp sle i32 0, %1
  %conv6 = zext i1 %cmp5 to i32
  %cmp7 = icmp sle i32 %conv6, 19
  %conv8 = zext i1 %cmp7 to i32
  %call9 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*)(i32 %conv8)
  store i32 0, i32* %source, align 4
  %2 = bitcast [20 x i32]* %Source to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([20 x i32]* @main.Source to i8*), i64 80, i32 16, i1 false)
  %3 = bitcast [20 x i32]* %Dest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast ([20 x i32]* @main.Dest to i8*), i64 80, i32 16, i1 false)
  %4 = bitcast [20 x i32]* %Weight to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ([20 x i32]* @main.Weight to i8*), i64 80, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %nodecount, align 4
  %cmp10 = icmp slt i32 %5, %6
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %source, align 4
  %cmp12 = icmp eq i32 %7, %8
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %10 = load i32, i32* @INFINITY, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom14
  store i32 %10, i32* %arrayidx15, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc43, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %nodecount, align 4
  %cmp17 = icmp slt i32 %13, %14
  br i1 %cmp17, label %for.body19, label %for.end45

for.body19:                                       ; preds = %for.cond16
  store i32 0, i32* %j, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc40, %for.body19
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %edgecount, align 4
  %cmp21 = icmp slt i32 %15, %16
  br i1 %cmp21, label %for.body23, label %for.end42

for.body23:                                       ; preds = %for.cond20
  %17 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %17 to i64
  %arrayidx25 = getelementptr inbounds [20 x i32], [20 x i32]* %Dest, i32 0, i64 %idxprom24
  %18 = load i32, i32* %arrayidx25, align 4
  store i32 %18, i32* %x, align 4
  %19 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [20 x i32], [20 x i32]* %Source, i32 0, i64 %idxprom26
  %20 = load i32, i32* %arrayidx27, align 4
  store i32 %20, i32* %y, align 4
  %21 = load i32, i32* %x, align 4
  %idxprom28 = sext i32 %21 to i64
  %arrayidx29 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom28
  %22 = load i32, i32* %arrayidx29, align 4
  %23 = load i32, i32* %y, align 4
  %idxprom30 = sext i32 %23 to i64
  %arrayidx31 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom30
  %24 = load i32, i32* %arrayidx31, align 4
  %25 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %25 to i64
  %arrayidx33 = getelementptr inbounds [20 x i32], [20 x i32]* %Weight, i32 0, i64 %idxprom32
  %26 = load i32, i32* %arrayidx33, align 4
  %add = add nsw i32 %24, %26
  %cmp34 = icmp sgt i32 %22, %add
  br i1 %cmp34, label %if.then36, label %if.end39

if.then36:                                        ; preds = %for.body23
  %27 = load i32, i32* %x, align 4
  %idxprom37 = sext i32 %27 to i64
  %arrayidx38 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom37
  store i32 -1, i32* %arrayidx38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %for.body23
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39
  %28 = load i32, i32* %j, align 4
  %inc41 = add nsw i32 %28, 1
  store i32 %inc41, i32* %j, align 4
  br label %for.cond20

for.end42:                                        ; preds = %for.cond20
  br label %for.inc43

for.inc43:                                        ; preds = %for.end42
  %29 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %29, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond16

for.end45:                                        ; preds = %for.cond16
  store i32 0, i32* %i, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc65, %for.end45
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %edgecount, align 4
  %cmp47 = icmp slt i32 %30, %31
  br i1 %cmp47, label %for.body49, label %for.end67

for.body49:                                       ; preds = %for.cond46
  %32 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %32 to i64
  %arrayidx51 = getelementptr inbounds [20 x i32], [20 x i32]* %Dest, i32 0, i64 %idxprom50
  %33 = load i32, i32* %arrayidx51, align 4
  store i32 %33, i32* %x, align 4
  %34 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %34 to i64
  %arrayidx53 = getelementptr inbounds [20 x i32], [20 x i32]* %Source, i32 0, i64 %idxprom52
  %35 = load i32, i32* %arrayidx53, align 4
  store i32 %35, i32* %y, align 4
  %36 = load i32, i32* %x, align 4
  %idxprom54 = sext i32 %36 to i64
  %arrayidx55 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom54
  %37 = load i32, i32* %arrayidx55, align 4
  %38 = load i32, i32* %y, align 4
  %idxprom56 = sext i32 %38 to i64
  %arrayidx57 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom56
  %39 = load i32, i32* %arrayidx57, align 4
  %40 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %40 to i64
  %arrayidx59 = getelementptr inbounds [20 x i32], [20 x i32]* %Weight, i32 0, i64 %idxprom58
  %41 = load i32, i32* %arrayidx59, align 4
  %add60 = add nsw i32 %39, %41
  %cmp61 = icmp sgt i32 %37, %add60
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %for.body49
  br label %for.end78

if.end64:                                         ; preds = %for.body49
  br label %for.inc65

for.inc65:                                        ; preds = %if.end64
  %42 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %42, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond46

for.end67:                                        ; preds = %for.cond46
  store i32 0, i32* %i, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc76, %for.end67
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %nodecount, align 4
  %cmp69 = icmp slt i32 %43, %44
  br i1 %cmp69, label %for.body71, label %for.end78

for.body71:                                       ; preds = %for.cond68
  %45 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %45 to i64
  %arrayidx73 = getelementptr inbounds [5 x i32], [5 x i32]* %distance, i32 0, i64 %idxprom72
  %46 = load i32, i32* %arrayidx73, align 4
  %cmp74 = icmp sge i32 %46, 0
  %conv75 = zext i1 %cmp74 to i32
  call void @__VERIFIER_assert(i32 %conv75)
  br label %for.inc76

for.inc76:                                        ; preds = %for.body71
  %47 = load i32, i32* %i, align 4
  %inc77 = add nsw i32 %47, 1
  store i32 %inc77, i32* %i, align 4
  br label %for.cond68

for.end78:                                        ; preds = %if.then63, %for.cond68
  ret void
}

declare i32 @__VERIFIER_nondet_int(...) #2

declare i32 @__VERIFIER_assume(...) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
