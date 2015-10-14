; ModuleID = 'src/test/scala/au/edu/mq/comp/perentiemq/simple-example-programs/C/simple-if.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %i, align 4
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp sgt i32 %1, 0
  %conv = zext i1 %cmp1 to i32
  %call = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp sgt i32 %2, 0
  br i1 %cmp2, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %3 = load i32, i32* %i, align 4
  %cmp5 = icmp sgt i32 %3, 0
  %conv6 = zext i1 %cmp5 to i32
  %call7 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv6)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

declare i32 @__VERIFIER_assert(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (http://llvm.org/git/clang.git fb7d1d842ea81555a442590e2b5293618e1eaa67) (http://llvm.org/git/llvm.git df57a6779d4438ca07ca2b6e2ae4a452155c2496)"}
