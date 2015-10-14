; ModuleID = 'veris.c_OpenSER__cases1_stripFullBoth_arr_true-unreach-call.i'
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
  call void (...) @__VERIFIER_error() #3
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
  %A = alloca [9 x i8], align 1
  store i32 0, i32* %retval
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* %A, i32 0, i64 8
  store i8 0, i8* %arrayidx, align 1
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %A, i32 0, i32 0
  %call = call i32 @parse_expression_list(i8* %arraydecay)
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @parse_expression_list(i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %start = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %str2 = alloca [2 x i8], align 1
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %start, align 4
  store i32 -1, i32* %i, align 4
  store i32 -1, i32* %j, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %1 = load i32, i32* %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  switch i32 %conv, label %sw.epilog [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb
  %5 = load i32, i32* %start, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i8*, i8** %str.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 %idxprom1
  %7 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv3, 32
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %8 = load i32, i32* %start, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load i8*, i8** %str.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 %idxprom5
  %10 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv7, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %11 = phi i1 [ true, %while.cond ], [ %cmp8, %lor.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %12 = load i32, i32* %start, align 4
  %inc10 = add nsw i32 %12, 1
  store i32 %inc10, i32* %start, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %13 = load i32, i32* %start, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load i8*, i8** %str.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 %idxprom11
  %15 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %15 to i32
  %cmp14 = icmp eq i32 %conv13, 34
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %while.end
  %16 = load i32, i32* %start, align 4
  %inc17 = add nsw i32 %16, 1
  store i32 %inc17, i32* %start, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %while.end
  %17 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %17, 1
  store i32 %sub, i32* %j, align 4
  br label %while.cond19

while.cond19:                                     ; preds = %while.body34, %if.end18
  %18 = load i32, i32* %j, align 4
  %cmp20 = icmp slt i32 0, %18
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond19
  %19 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %19 to i64
  %20 = load i8*, i8** %str.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %20, i64 %idxprom22
  %21 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %21 to i32
  %cmp25 = icmp eq i32 %conv24, 32
  br i1 %cmp25, label %lor.end33, label %lor.rhs27

lor.rhs27:                                        ; preds = %land.rhs
  %22 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %22 to i64
  %23 = load i8*, i8** %str.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %23, i64 %idxprom28
  %24 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %24 to i32
  %cmp31 = icmp eq i32 %conv30, 9
  br label %lor.end33

lor.end33:                                        ; preds = %lor.rhs27, %land.rhs
  %25 = phi i1 [ true, %land.rhs ], [ %cmp31, %lor.rhs27 ]
  br label %land.end

land.end:                                         ; preds = %lor.end33, %while.cond19
  %26 = phi i1 [ false, %while.cond19 ], [ %25, %lor.end33 ]
  br i1 %26, label %while.body34, label %while.end35

while.body34:                                     ; preds = %land.end
  %27 = load i32, i32* %j, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond19

while.end35:                                      ; preds = %land.end
  %28 = load i32, i32* %j, align 4
  %cmp36 = icmp slt i32 0, %28
  br i1 %cmp36, label %land.lhs.true, label %if.end45

land.lhs.true:                                    ; preds = %while.end35
  %29 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %29 to i64
  %30 = load i8*, i8** %str.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %30, i64 %idxprom38
  %31 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %31 to i32
  %cmp41 = icmp eq i32 %conv40, 34
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %land.lhs.true
  %32 = load i32, i32* %j, align 4
  %dec44 = add nsw i32 %32, -1
  store i32 %dec44, i32* %j, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %land.lhs.true, %while.end35
  %33 = load i32, i32* %start, align 4
  %34 = load i32, i32* %j, align 4
  %cmp46 = icmp sle i32 %33, %34
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end45
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %start, align 4
  %sub49 = sub nsw i32 %35, %36
  %add = add nsw i32 %sub49, 1
  %cmp50 = icmp sge i32 %add, 2
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.then48
  store i32 -1, i32* %retval
  br label %return

if.end53:                                         ; preds = %if.then48
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %str2, i32 0, i32 0
  %37 = load i8*, i8** %str.addr, align 8
  %38 = load i32, i32* %start, align 4
  %idx.ext = sext i32 %38 to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %start, align 4
  %sub54 = sub nsw i32 %39, %40
  %add55 = add nsw i32 %sub54, 1
  %call = call i8* @r_strncpy(i8* %arraydecay, i8* %add.ptr, i32 %add55)
  %41 = load i32, i32* %j, align 4
  %42 = load i32, i32* %start, align 4
  %sub56 = sub nsw i32 %41, %42
  %add57 = add nsw i32 %sub56, 1
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds [2 x i8], [2 x i8]* %str2, i32 0, i64 %idxprom58
  store i8 0, i8* %arrayidx59, align 1
  br label %if.end60

if.else:                                          ; preds = %if.end45
  store i32 -1, i32* %retval
  br label %return

if.end60:                                         ; preds = %if.end53
  %43 = load i32, i32* %i, align 4
  %add61 = add nsw i32 %43, 1
  store i32 %add61, i32* %start, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end60, %do.body
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %44 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %44 to i64
  %45 = load i8*, i8** %str.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %45, i64 %idxprom62
  %46 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %46 to i32
  %cmp65 = icmp ne i32 %conv64, 0
  br i1 %cmp65, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else, %if.then52, %if.then
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare i8* @r_strncpy(i8*, i8*, i32) #2

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
