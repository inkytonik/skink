; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %M = alloca i32, align 4
  %saved_stack = alloca i8*
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 (...) @__VERIFIER_nondet_uint()
  store i32 %call, i32* %M, align 4
  %0 = load i32, i32* %M, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack
  %vla = alloca i32, i64 %1, align 16
  %3 = load i32, i32* %M, align 4
  %4 = zext i32 %3 to i64
  %vla1 = alloca i32, i64 %4, align 16
  %5 = load i32, i32* %M, align 4
  %6 = zext i32 %5 to i64
  %vla2 = alloca i32, i64 %6, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %M, align 4
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call i32 @__VERIFIER_nondet_int()
  %9 = load i32, i32* %i, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 %call3, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc10, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %M, align 4
  %cmp5 = icmp ult i32 %11, %12
  br i1 %cmp5, label %for.body6, label %for.end12

for.body6:                                        ; preds = %for.cond4
  %call7 = call i32 @__VERIFIER_nondet_int()
  %13 = load i32, i32* %i, align 4
  %idxprom8 = zext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %vla1, i64 %idxprom8
  store i32 %call7, i32* %arrayidx9, align 4
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %14 = load i32, i32* %i, align 4
  %inc11 = add i32 %14, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond4

for.end12:                                        ; preds = %for.cond4
  store i32 0, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc22, %for.end12
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %M, align 4
  %cmp14 = icmp ult i32 %15, %16
  br i1 %cmp14, label %for.body15, label %for.end24

for.body15:                                       ; preds = %for.cond13
  %17 = load i32, i32* %i, align 4
  %idxprom16 = zext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %vla, i64 %idxprom16
  %18 = load i32, i32* %arrayidx17, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %vla1, i64 %idxprom18
  %20 = load i32, i32* %arrayidx19, align 4
  %add = add nsw i32 %18, %20
  %21 = load i32, i32* %i, align 4
  %idxprom20 = zext i32 %21 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom20
  store i32 %add, i32* %arrayidx21, align 4
  br label %for.inc22

for.inc22:                                        ; preds = %for.body15
  %22 = load i32, i32* %i, align 4
  %inc23 = add i32 %22, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond13

for.end24:                                        ; preds = %for.cond13
  store i32 0, i32* %i, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc37, %for.end24
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %M, align 4
  %cmp26 = icmp ult i32 %23, %24
  br i1 %cmp26, label %for.body27, label %for.end39

for.body27:                                       ; preds = %for.cond25
  %25 = load i32, i32* %i, align 4
  %idxprom28 = zext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom28
  %26 = load i32, i32* %arrayidx29, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom30 = zext i32 %27 to i64
  %arrayidx31 = getelementptr inbounds i32, i32* %vla, i64 %idxprom30
  %28 = load i32, i32* %arrayidx31, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom32 = zext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %vla1, i64 %idxprom32
  %30 = load i32, i32* %arrayidx33, align 4
  %add34 = add nsw i32 %28, %30
  %cmp35 = icmp eq i32 %26, %add34
  %conv = zext i1 %cmp35 to i32
  %call36 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv)
  br label %for.inc37

for.inc37:                                        ; preds = %for.body27
  %31 = load i32, i32* %i, align 4
  %inc38 = add i32 %31, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond25

for.end39:                                        ; preds = %for.cond25
  %32 = load i8*, i8** %saved_stack
  call void @llvm.stackrestore(i8* %32)
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare i32 @__VERIFIER_nondet_uint(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare i32 @__VERIFIER_nondet_int() #1

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
