; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@SIZE = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define i32 @linear_search(i32* %a, i32 %n, i32 %q) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %q.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %q, i32* %q.addr, align 4
  store i32 0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %j, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %q.addr, align 4
  %cmp1 = icmp ne i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i32, i32* %j, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* @SIZE, align 4
  %cmp2 = icmp ult i32 %8, %9
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval.i = alloca i32, align 4
  %a.addr.i = alloca i32*, align 8
  %n.addr.i = alloca i32, align 4
  %q.addr.i = alloca i32, align 4
  %j.i = alloca i32, align 4
  %saved_stack = alloca i8*
  %call = call i32 (...) @__VERIFIER_nondet_uint()
  %div = udiv i32 %call, 8
  %add = add i32 %div, 1
  store i32 %add, i32* @SIZE, align 4
  %0 = load i32, i32* @SIZE, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack
  %vla = alloca i32, i64 %1, align 16
  %3 = load i32, i32* @SIZE, align 4
  %div1 = udiv i32 %3, 2
  %idxprom = zext i32 %div1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 3, i32* %arrayidx, align 4
  %4 = load i32, i32* @SIZE, align 4
  %5 = bitcast i32* %retval.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5)
  %6 = bitcast i32** %a.addr.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6)
  %7 = bitcast i32* %n.addr.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7)
  %8 = bitcast i32* %q.addr.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8)
  %9 = bitcast i32* %j.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9)
  store i32* %vla, i32** %a.addr.i, align 8
  store i32 %4, i32* %n.addr.i, align 4
  store i32 3, i32* %q.addr.i, align 4
  store i32 0, i32* %j.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %entry
  %10 = load i32, i32* %j.i, align 4
  %11 = load i32, i32* %n.addr.i, align 4
  %cmp.i = icmp ult i32 %10, %11
  br i1 %cmp.i, label %land.rhs.i, label %land.end.i

land.rhs.i:                                       ; preds = %while.cond.i
  %12 = load i32, i32* %j.i, align 4
  %idxprom.i = zext i32 %12 to i64
  %13 = load i32*, i32** %a.addr.i, align 8
  %arrayidx.i = getelementptr inbounds i32, i32* %13, i64 %idxprom.i
  %14 = load i32, i32* %arrayidx.i, align 4
  %15 = load i32, i32* %q.addr.i, align 4
  %cmp1.i = icmp ne i32 %14, %15
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %while.cond.i
  %16 = phi i1 [ false, %while.cond.i ], [ %cmp1.i, %land.rhs.i ]
  br i1 %16, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %land.end.i
  %17 = load i32, i32* %j.i, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, i32* %j.i, align 4
  br label %while.cond.i

while.end.i:                                      ; preds = %land.end.i
  %18 = load i32, i32* %j.i, align 4
  %19 = load i32, i32* @SIZE, align 4
  %cmp2.i = icmp ult i32 %18, %19
  br i1 %cmp2.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.end.i
  store i32 1, i32* %retval.i
  br label %linear_search.exit

if.else.i:                                        ; preds = %while.end.i
  store i32 0, i32* %retval.i
  br label %linear_search.exit

linear_search.exit:                               ; preds = %if.then.i, %if.else.i
  %20 = load i32, i32* %retval.i
  %21 = bitcast i32* %retval.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21)
  %22 = bitcast i32** %a.addr.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22)
  %23 = bitcast i32* %n.addr.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23)
  %24 = bitcast i32* %q.addr.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24)
  %25 = bitcast i32* %j.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25)
  %call3 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %20)
  %26 = load i8*, i8** %saved_stack
  call void @llvm.stackrestore(i8* %26)
  ret i32 0
}

declare i32 @__VERIFIER_nondet_uint(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare i32 @__VERIFIER_assert(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
