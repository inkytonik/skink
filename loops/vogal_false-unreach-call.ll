; ModuleID = 'vogal_false-unreach-call.i'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@main.vetor_vogais = private unnamed_addr constant [11 x i8] c"aAeEiIoOuU\00", align 1

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
  %string_entrada = alloca [10 x i8], align 1
  %vetor_vogais = alloca [11 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cont = alloca i32, align 4
  %tam_string = alloca i32, align 4
  %n_caracter = alloca i32, align 4
  %cont_aux = alloca i32, align 4
  store i32 0, i32* %retval
  %0 = bitcast [11 x i8]* %vetor_vogais to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @main.vetor_vogais, i32 0, i32 0), i64 11, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call signext i8 (...) @__VERIFIER_nondet_char()
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x i8], [10 x i8]* %string_entrada, i32 0, i64 %idxprom
  store i8 %call, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds [10 x i8], [10 x i8]* %string_entrada, i32 0, i64 9
  store i8 0, i8* %arrayidx1, align 1
  store i32 0, i32* %n_caracter, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %4 = load i32, i32* %n_caracter, align 4
  %idxprom2 = zext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [10 x i8], [10 x i8]* %string_entrada, i32 0, i64 %idxprom2
  %5 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %5 to i32
  %cmp4 = icmp ne i32 %conv, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %n_caracter, align 4
  %inc6 = add i32 %6, 1
  store i32 %inc6, i32* %n_caracter, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cont, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc27, %while.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n_caracter, align 4
  %cmp8 = icmp ult i32 %7, %8
  br i1 %cmp8, label %for.body10, label %for.end29

for.body10:                                       ; preds = %for.cond7
  store i32 0, i32* %j, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc24, %for.body10
  %9 = load i32, i32* %j, align 4
  %cmp12 = icmp ult i32 %9, 8
  br i1 %cmp12, label %for.body14, label %for.end26

for.body14:                                       ; preds = %for.cond11
  %10 = load i32, i32* %i, align 4
  %idxprom15 = zext i32 %10 to i64
  %arrayidx16 = getelementptr inbounds [10 x i8], [10 x i8]* %string_entrada, i32 0, i64 %idxprom15
  %11 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %11 to i32
  %12 = load i32, i32* %j, align 4
  %idxprom18 = zext i32 %12 to i64
  %arrayidx19 = getelementptr inbounds [11 x i8], [11 x i8]* %vetor_vogais, i32 0, i64 %idxprom18
  %13 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %13 to i32
  %cmp21 = icmp eq i32 %conv17, %conv20
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %for.body14
  %14 = load i32, i32* %cont, align 4
  %inc23 = add i32 %14, 1
  store i32 %inc23, i32* %cont, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body14
  br label %for.inc24

for.inc24:                                        ; preds = %if.end
  %15 = load i32, i32* %j, align 4
  %inc25 = add i32 %15, 1
  store i32 %inc25, i32* %j, align 4
  br label %for.cond11

for.end26:                                        ; preds = %for.cond11
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %16 = load i32, i32* %i, align 4
  %inc28 = add i32 %16, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond7

for.end29:                                        ; preds = %for.cond7
  store i32 0, i32* %i, align 4
  store i32 0, i32* %cont_aux, align 4
  br label %while.cond30

while.cond30:                                     ; preds = %for.end54, %for.end29
  %17 = load i32, i32* %i, align 4
  %idxprom31 = zext i32 %17 to i64
  %arrayidx32 = getelementptr inbounds [10 x i8], [10 x i8]* %string_entrada, i32 0, i64 %idxprom31
  %18 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %18 to i32
  %cmp34 = icmp ne i32 %conv33, 0
  br i1 %cmp34, label %while.body36, label %while.end56

while.body36:                                     ; preds = %while.cond30
  store i32 0, i32* %j, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc52, %while.body36
  %19 = load i32, i32* %j, align 4
  %cmp38 = icmp ult i32 %19, 10
  br i1 %cmp38, label %for.body40, label %for.end54

for.body40:                                       ; preds = %for.cond37
  %20 = load i32, i32* %i, align 4
  %idxprom41 = zext i32 %20 to i64
  %arrayidx42 = getelementptr inbounds [10 x i8], [10 x i8]* %string_entrada, i32 0, i64 %idxprom41
  %21 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %21 to i32
  %22 = load i32, i32* %j, align 4
  %idxprom44 = zext i32 %22 to i64
  %arrayidx45 = getelementptr inbounds [11 x i8], [11 x i8]* %vetor_vogais, i32 0, i64 %idxprom44
  %23 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %23 to i32
  %cmp47 = icmp eq i32 %conv43, %conv46
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %for.body40
  %24 = load i32, i32* %cont_aux, align 4
  %inc50 = add nsw i32 %24, 1
  store i32 %inc50, i32* %cont_aux, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %for.body40
  br label %for.inc52

for.inc52:                                        ; preds = %if.end51
  %25 = load i32, i32* %j, align 4
  %inc53 = add i32 %25, 1
  store i32 %inc53, i32* %j, align 4
  br label %for.cond37

for.end54:                                        ; preds = %for.cond37
  %26 = load i32, i32* %i, align 4
  %inc55 = add i32 %26, 1
  store i32 %inc55, i32* %i, align 4
  br label %while.cond30

while.end56:                                      ; preds = %while.cond30
  %27 = load i32, i32* %cont_aux, align 4
  %28 = load i32, i32* %cont, align 4
  %cmp57 = icmp eq i32 %27, %28
  %conv58 = zext i1 %cmp57 to i32
  call void @__VERIFIER_assert(i32 %conv58)
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare signext i8 @__VERIFIER_nondet_char(...) #3

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
