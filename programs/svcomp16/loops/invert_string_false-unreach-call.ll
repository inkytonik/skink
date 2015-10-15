; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %MAX = alloca i32, align 4
  %saved_stack = alloca i8*
  %cont = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 (...) @__VERIFIER_nondet_uint()
  store i32 %call, i32* %MAX, align 4
  %0 = load i32, i32* %MAX, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack
  %vla = alloca i8, i64 %1, align 16
  %3 = load i32, i32* %MAX, align 4
  %4 = zext i32 %3 to i64
  %vla1 = alloca i8, i64 %4, align 16
  store i32 0, i32* %cont, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %MAX, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call signext i8 (...) @__VERIFIER_nondet_char()
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, i8* %vla, i64 %idxprom
  store i8 %call2, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %MAX, align 4
  %sub = sub nsw i32 %9, 1
  %idxprom3 = sext i32 %sub to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %vla, i64 %idxprom3
  store i8 0, i8* %arrayidx4, align 1
  store i32 0, i32* %j, align 4
  %10 = load i32, i32* %MAX, align 4
  %sub5 = sub nsw i32 %10, 1
  store i32 %sub5, i32* %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc13, %for.end
  %11 = load i32, i32* %i, align 4
  %cmp7 = icmp sge i32 %11, 0
  br i1 %cmp7, label %for.body8, label %for.end14

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds i8, i8* %vla, i64 0
  %12 = load i8, i8* %arrayidx9, align 1
  %13 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %vla1, i64 %idxprom10
  store i8 %12, i8* %arrayidx11, align 1
  %14 = load i32, i32* %j, align 4
  %inc12 = add nsw i32 %14, 1
  store i32 %inc12, i32* %j, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body8
  %15 = load i32, i32* %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond6

for.end14:                                        ; preds = %for.cond6
  %16 = load i32, i32* %MAX, align 4
  %sub15 = sub nsw i32 %16, 1
  store i32 %sub15, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc28, %for.end14
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %MAX, align 4
  %cmp17 = icmp slt i32 %17, %18
  br i1 %cmp17, label %for.body18, label %for.end30

for.body18:                                       ; preds = %for.cond16
  %19 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds i8, i8* %vla, i64 %idxprom19
  %20 = load i8, i8* %arrayidx20, align 1
  %conv = sext i8 %20 to i32
  %21 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds i8, i8* %vla1, i64 %idxprom21
  %22 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %22 to i32
  %cmp24 = icmp eq i32 %conv, %conv23
  %conv25 = zext i1 %cmp24 to i32
  %call26 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv25)
  %23 = load i32, i32* %j, align 4
  %dec27 = add nsw i32 %23, -1
  store i32 %dec27, i32* %j, align 4
  br label %for.inc28

for.inc28:                                        ; preds = %for.body18
  %24 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %24, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond16

for.end30:                                        ; preds = %for.cond16
  %25 = load i8*, i8** %saved_stack
  call void @llvm.stackrestore(i8* %25)
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i32 @__VERIFIER_nondet_uint(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare signext i8 @__VERIFIER_nondet_char(...) #1

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
