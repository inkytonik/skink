; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @func(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %cmp = icmp eq i32 %0, 0
  %conv = zext i1 %cmp to i32
  %call = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv)
  %1 = load i32, i32* %i.addr, align 4
  %add = add nsw i32 %1, 1
  ret i32 %add
}

declare i32 @__VERIFIER_assert(...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %i.addr.i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = bitcast i32* %i.addr.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0)
  store i32 42, i32* %i.addr.i, align 4
  %1 = load i32, i32* %i.addr.i, align 4
  %cmp.i = icmp eq i32 %1, 0
  %conv.i = zext i1 %cmp.i to i32
  %call.i = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv.i) #2
  %2 = load i32, i32* %i.addr.i, align 4
  %add.i = add nsw i32 %2, 1
  %3 = bitcast i32* %i.addr.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %3)
  store i32 %add.i, i32* %j, align 4
  ret i32 0
}

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
