; ModuleID = 'vogal_true-unreach-call.i'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@main.vogal_array = private unnamed_addr constant [11 x i8] c"aAeEiIoOuU\00", align 1

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
  %input_string = alloca [5 x i8], align 1
  %vogal_array = alloca [11 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cont = alloca i32, align 4
  %tam_string = alloca i32, align 4
  %n_caracter = alloca i32, align 4
  %cont_aux = alloca i32, align 4
  store i32 0, i32* %retval
  %0 = bitcast [11 x i8]* %vogal_array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @main.vogal_array, i32 0, i32 0), i64 11, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %1, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call signext i8 (...) @__VERIFIER_nondet_char()
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %input_string, i32 0, i64 %idxprom
  store i8 %call, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds [5 x i8], [5 x i8]* %input_string, i32 0, i64 4
  %4 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, 0
  %conv3 = zext i1 %cmp2 to i32
  call void @__VERIFIER_assume(i32 %conv3)
  store i32 0, i32* %n_caracter, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %5 = load i32, i32* %n_caracter, align 4
  %idxprom4 = zext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [5 x i8], [5 x i8]* %input_string, i32 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %6 to i32
  %cmp7 = icmp ne i32 %conv6, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %n_caracter, align 4
  %inc9 = add i32 %7, 1
  store i32 %inc9, i32* %n_caracter, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cont, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc30, %while.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %n_caracter, align 4
  %cmp11 = icmp ult i32 %8, %9
  br i1 %cmp11, label %for.body13, label %for.end32

for.body13:                                       ; preds = %for.cond10
  store i32 0, i32* %j, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc27, %for.body13
  %10 = load i32, i32* %j, align 4
  %cmp15 = icmp ult i32 %10, 2
  br i1 %cmp15, label %for.body17, label %for.end29

for.body17:                                       ; preds = %for.cond14
  %11 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %11 to i64
  %arrayidx19 = getelementptr inbounds [5 x i8], [5 x i8]* %input_string, i32 0, i64 %idxprom18
  %12 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %12 to i32
  %13 = load i32, i32* %j, align 4
  %idxprom21 = zext i32 %13 to i64
  %arrayidx22 = getelementptr inbounds [11 x i8], [11 x i8]* %vogal_array, i32 0, i64 %idxprom21
  %14 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %14 to i32
  %cmp24 = icmp eq i32 %conv20, %conv23
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %for.body17
  %15 = load i32, i32* %cont, align 4
  %inc26 = add i32 %15, 1
  store i32 %inc26, i32* %cont, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body17
  br label %for.inc27

for.inc27:                                        ; preds = %if.end
  %16 = load i32, i32* %j, align 4
  %inc28 = add i32 %16, 1
  store i32 %inc28, i32* %j, align 4
  br label %for.cond14

for.end29:                                        ; preds = %for.cond14
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %17 = load i32, i32* %i, align 4
  %inc31 = add i32 %17, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond10

for.end32:                                        ; preds = %for.cond10
  store i32 0, i32* %i, align 4
  store i32 0, i32* %cont_aux, align 4
  br label %while.cond33

while.cond33:                                     ; preds = %for.end57, %for.end32
  %18 = load i32, i32* %i, align 4
  %idxprom34 = zext i32 %18 to i64
  %arrayidx35 = getelementptr inbounds [5 x i8], [5 x i8]* %input_string, i32 0, i64 %idxprom34
  %19 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %19 to i32
  %cmp37 = icmp ne i32 %conv36, 0
  br i1 %cmp37, label %while.body39, label %while.end59

while.body39:                                     ; preds = %while.cond33
  store i32 0, i32* %j, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc55, %while.body39
  %20 = load i32, i32* %j, align 4
  %cmp41 = icmp ult i32 %20, 2
  br i1 %cmp41, label %for.body43, label %for.end57

for.body43:                                       ; preds = %for.cond40
  %21 = load i32, i32* %i, align 4
  %idxprom44 = zext i32 %21 to i64
  %arrayidx45 = getelementptr inbounds [5 x i8], [5 x i8]* %input_string, i32 0, i64 %idxprom44
  %22 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %22 to i32
  %23 = load i32, i32* %j, align 4
  %idxprom47 = zext i32 %23 to i64
  %arrayidx48 = getelementptr inbounds [11 x i8], [11 x i8]* %vogal_array, i32 0, i64 %idxprom47
  %24 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %24 to i32
  %cmp50 = icmp eq i32 %conv46, %conv49
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %for.body43
  %25 = load i32, i32* %cont_aux, align 4
  %inc53 = add nsw i32 %25, 1
  store i32 %inc53, i32* %cont_aux, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %for.body43
  br label %for.inc55

for.inc55:                                        ; preds = %if.end54
  %26 = load i32, i32* %j, align 4
  %inc56 = add i32 %26, 1
  store i32 %inc56, i32* %j, align 4
  br label %for.cond40

for.end57:                                        ; preds = %for.cond40
  %27 = load i32, i32* %i, align 4
  %inc58 = add i32 %27, 1
  store i32 %inc58, i32* %i, align 4
  br label %while.cond33

while.end59:                                      ; preds = %while.cond33
  %28 = load i32, i32* %cont_aux, align 4
  %29 = load i32, i32* %cont, align 4
  %cmp60 = icmp eq i32 %28, %29
  %conv61 = zext i1 %cmp60 to i32
  call void @__VERIFIER_assert(i32 %conv61)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare signext i8 @__VERIFIER_nondet_char(...) #3

declare void @__VERIFIER_assume(i32) #3

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
