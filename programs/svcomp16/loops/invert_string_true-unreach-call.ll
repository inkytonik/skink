; ModuleID = 'invert_string_true-unreach-call.i'
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
  call void (...) @__VERIFIER_error() #4
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
  %max = alloca i32, align 4
  %saved_stack = alloca i8*
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 5, i32* %max, align 4
  %0 = load i32, i32* %max, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack
  %vla = alloca i8, i64 %1, align 16
  %3 = load i32, i32* %max, align 4
  %4 = zext i32 %3 to i64
  %vla1 = alloca i8, i64 %4, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %max, align 4
  %cmp = icmp ult i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call signext i8 (...) @__VERIFIER_nondet_char()
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, i8* %vla, i64 %idxprom
  store i8 %call, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %max, align 4
  %sub = sub i32 %9, 1
  %idxprom2 = zext i32 %sub to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %vla, i64 %idxprom2
  store i8 0, i8* %arrayidx3, align 1
  store i32 0, i32* %j, align 4
  %10 = load i32, i32* %max, align 4
  %sub4 = sub i32 %10, 1
  store i32 %sub4, i32* %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.end
  %11 = load i32, i32* %i, align 4
  %cmp6 = icmp sge i32 %11, 0
  br i1 %cmp6, label %for.body7, label %for.end14

for.body7:                                        ; preds = %for.cond5
  %12 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %vla, i64 %idxprom8
  %13 = load i8, i8* %arrayidx9, align 1
  %14 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %vla1, i64 %idxprom10
  store i8 %13, i8* %arrayidx11, align 1
  %15 = load i32, i32* %j, align 4
  %inc12 = add nsw i32 %15, 1
  store i32 %inc12, i32* %j, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body7
  %16 = load i32, i32* %i, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond5

for.end14:                                        ; preds = %for.cond5
  %17 = load i32, i32* %max, align 4
  %sub15 = sub i32 %17, 1
  store i32 %sub15, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc27, %for.end14
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %max, align 4
  %cmp17 = icmp ult i32 %18, %19
  br i1 %cmp17, label %for.body18, label %for.end29

for.body18:                                       ; preds = %for.cond16
  %20 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds i8, i8* %vla, i64 %idxprom19
  %21 = load i8, i8* %arrayidx20, align 1
  %conv = sext i8 %21 to i32
  %22 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds i8, i8* %vla1, i64 %idxprom21
  %23 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %23 to i32
  %cmp24 = icmp eq i32 %conv, %conv23
  %conv25 = zext i1 %cmp24 to i32
  call void @__VERIFIER_assert(i32 %conv25)
  %24 = load i32, i32* %j, align 4
  %dec26 = add nsw i32 %24, -1
  store i32 %dec26, i32* %j, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %25 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %25, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond16

for.end29:                                        ; preds = %for.cond16
  %26 = load i8*, i8** %saved_stack
  call void @llvm.stackrestore(i8* %26)
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare signext i8 @__VERIFIER_nondet_char(...) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
