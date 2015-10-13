; ModuleID = 'verisec_NetBSD-libc__loop_false-unreach-call.i'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@tmp = common global i32* null, align 8

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
  call void (...) @__VERIFIER_error() #2
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @glob2(i32* %pathbuf, i32* %pathlim) #0 {
entry:
  %pathbuf.addr = alloca i32*, align 8
  %pathlim.addr = alloca i32*, align 8
  %p = alloca i32*, align 8
  store i32* %pathbuf, i32** %pathbuf.addr, align 8
  store i32* %pathlim, i32** %pathlim.addr, align 8
  %0 = load i32*, i32** %pathbuf.addr, align 8
  store i32* %0, i32** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32*, i32** %p, align 8
  %2 = load i32*, i32** %pathlim.addr, align 8
  %cmp = icmp ule i32* %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %p, align 8
  %4 = load i32*, i32** @tmp, align 8
  %cmp1 = icmp ule i32* %3, %4
  %conv = zext i1 %cmp1 to i32
  call void @__VERIFIER_assert(i32 %conv)
  %5 = load i32*, i32** %p, align 8
  store i32 1, i32* %5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32*, i32** %p, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %incdec.ptr, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %pathbuf = alloca [2 x i32], align 4
  %bound = alloca i32*, align 8
  store i32 0, i32* %retval
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %pathbuf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay, i64 8
  %add.ptr1 = getelementptr inbounds i32, i32* %add.ptr, i64 -1
  store i32* %add.ptr1, i32** %bound, align 8
  %arraydecay2 = getelementptr inbounds [2 x i32], [2 x i32]* %pathbuf, i32 0, i32 0
  %add.ptr3 = getelementptr inbounds i32, i32* %arraydecay2, i64 2
  %add.ptr4 = getelementptr inbounds i32, i32* %add.ptr3, i64 -1
  store i32* %add.ptr4, i32** @tmp, align 8
  %arraydecay5 = getelementptr inbounds [2 x i32], [2 x i32]* %pathbuf, i32 0, i32 0
  %0 = load i32*, i32** %bound, align 8
  %call = call i32 @glob2(i32* %arraydecay5, i32* %0)
  ret i32 0
}

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
