; ModuleID = 'trex03_true-unreach-call.i'
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
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %x3 = alloca i32, align 4
  %d1 = alloca i32, align 4
  %d2 = alloca i32, align 4
  %d3 = alloca i32, align 4
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  store i32 0, i32* %retval
  %call = call i32 (...) @__VERIFIER_nondet_uint()
  store i32 %call, i32* %x1, align 4
  %call1 = call i32 (...) @__VERIFIER_nondet_uint()
  store i32 %call1, i32* %x2, align 4
  %call2 = call i32 (...) @__VERIFIER_nondet_uint()
  store i32 %call2, i32* %x3, align 4
  store i32 1, i32* %d1, align 4
  store i32 1, i32* %d2, align 4
  store i32 1, i32* %d3, align 4
  %call3 = call zeroext i1 (...) @__VERIFIER_nondet_bool()
  %frombool = zext i1 %call3 to i8
  store i8 %frombool, i8* %c1, align 1
  %call4 = call zeroext i1 (...) @__VERIFIER_nondet_bool()
  %frombool5 = zext i1 %call4 to i8
  store i8 %frombool5, i8* %c2, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %entry
  %0 = load i32, i32* %x1, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %1 = load i32, i32* %x2, align 4
  %cmp6 = icmp ugt i32 %1, 0
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load i32, i32* %x3, align 4
  %cmp7 = icmp ugt i32 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %3 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i8, i8* %c1, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %x1, align 4
  %6 = load i32, i32* %d1, align 4
  %sub = sub i32 %5, %6
  store i32 %sub, i32* %x1, align 4
  br label %if.end13

if.else:                                          ; preds = %while.body
  %7 = load i8, i8* %c2, align 1
  %tobool8 = trunc i8 %7 to i1
  br i1 %tobool8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  %8 = load i32, i32* %x2, align 4
  %9 = load i32, i32* %d2, align 4
  %sub10 = sub i32 %8, %9
  store i32 %sub10, i32* %x2, align 4
  br label %if.end

if.else11:                                        ; preds = %if.else
  %10 = load i32, i32* %x3, align 4
  %11 = load i32, i32* %d3, align 4
  %sub12 = sub i32 %10, %11
  store i32 %sub12, i32* %x3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then9
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then
  %call14 = call zeroext i1 (...) @__VERIFIER_nondet_bool()
  %frombool15 = zext i1 %call14 to i8
  store i8 %frombool15, i8* %c1, align 1
  %call16 = call zeroext i1 (...) @__VERIFIER_nondet_bool()
  %frombool17 = zext i1 %call16 to i8
  store i8 %frombool17, i8* %c2, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i32, i32* %x1, align 4
  %cmp18 = icmp eq i32 %12, 0
  br i1 %cmp18, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %13 = load i32, i32* %x2, align 4
  %cmp19 = icmp eq i32 %13, 0
  br i1 %cmp19, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %14 = load i32, i32* %x3, align 4
  %cmp20 = icmp eq i32 %14, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.end
  %15 = phi i1 [ true, %lor.lhs.false ], [ true, %while.end ], [ %cmp20, %lor.rhs ]
  %lor.ext = zext i1 %15 to i32
  call void @__VERIFIER_assert(i32 %lor.ext)
  ret i32 0
}

declare i32 @__VERIFIER_nondet_uint(...) #2

declare zeroext i1 @__VERIFIER_nondet_bool(...) #2

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
