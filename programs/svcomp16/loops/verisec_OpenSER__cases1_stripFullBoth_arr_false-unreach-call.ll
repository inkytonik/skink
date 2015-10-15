; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval.i = alloca i32, align 4
  %str.addr.i = alloca i8*, align 8
  %start.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %j.i = alloca i32, align 4
  %str2.i = alloca [2 x i8], align 1
  %retval = alloca i32, align 4
  %A = alloca [9 x i8], align 1
  store i32 0, i32* %retval
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* %A, i32 0, i64 8
  store i8 0, i8* %arrayidx, align 1
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %A, i32 0, i32 0
  %0 = bitcast i32* %retval.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0)
  %1 = bitcast i8** %str.addr.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1)
  %2 = bitcast i32* %start.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2)
  %3 = bitcast i32* %i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3)
  %4 = bitcast i32* %j.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4)
  %5 = bitcast [2 x i8]* %str2.i to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5)
  store i8* %arraydecay, i8** %str.addr.i, align 8
  store i32 0, i32* %start.i, align 4
  store i32 -1, i32* %i.i, align 4
  store i32 -1, i32* %j.i, align 4
  %6 = load i8*, i8** %str.addr.i, align 8
  %tobool.i = icmp ne i8* %6, null
  br i1 %tobool.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  store i32 -1, i32* %retval.i
  br label %parse_expression_list.exit

if.end.i:                                         ; preds = %entry
  br label %do.body.i

do.body.i:                                        ; preds = %sw.epilog.i, %if.end.i
  %7 = load i32, i32* %i.i, align 4
  %inc.i = add nsw i32 %7, 1
  store i32 %inc.i, i32* %i.i, align 4
  %8 = load i32, i32* %i.i, align 4
  %idxprom.i = sext i32 %8 to i64
  %9 = load i8*, i8** %str.addr.i, align 8
  %arrayidx.i = getelementptr inbounds i8, i8* %9, i64 %idxprom.i
  %10 = load i8, i8* %arrayidx.i, align 1
  %conv.i = sext i8 %10 to i32
  %cond = icmp eq i32 %conv.i, 0
  br i1 %cond, label %sw.bb.i, label %sw.epilog.i

sw.bb.i:                                          ; preds = %do.body.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %sw.bb.i
  %11 = load i32, i32* %start.i, align 4
  %idxprom1.i = sext i32 %11 to i64
  %12 = load i8*, i8** %str.addr.i, align 8
  %arrayidx2.i = getelementptr inbounds i8, i8* %12, i64 %idxprom1.i
  %13 = load i8, i8* %arrayidx2.i, align 1
  %conv3.i = sext i8 %13 to i32
  %cmp.i = icmp eq i32 %conv3.i, 32
  br i1 %cmp.i, label %lor.end.i, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %while.cond.i
  %14 = load i32, i32* %start.i, align 4
  %idxprom5.i = sext i32 %14 to i64
  %15 = load i8*, i8** %str.addr.i, align 8
  %arrayidx6.i = getelementptr inbounds i8, i8* %15, i64 %idxprom5.i
  %16 = load i8, i8* %arrayidx6.i, align 1
  %conv7.i = sext i8 %16 to i32
  %cmp8.i = icmp eq i32 %conv7.i, 9
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %while.cond.i
  %17 = phi i1 [ true, %while.cond.i ], [ %cmp8.i, %lor.rhs.i ]
  br i1 %17, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %lor.end.i
  %18 = load i32, i32* %start.i, align 4
  %inc10.i = add nsw i32 %18, 1
  store i32 %inc10.i, i32* %start.i, align 4
  br label %while.cond.i

while.end.i:                                      ; preds = %lor.end.i
  %19 = load i32, i32* %start.i, align 4
  %idxprom11.i = sext i32 %19 to i64
  %20 = load i8*, i8** %str.addr.i, align 8
  %arrayidx12.i = getelementptr inbounds i8, i8* %20, i64 %idxprom11.i
  %21 = load i8, i8* %arrayidx12.i, align 1
  %conv13.i = sext i8 %21 to i32
  %cmp14.i = icmp eq i32 %conv13.i, 34
  br i1 %cmp14.i, label %if.then16.i, label %if.end18.i

if.then16.i:                                      ; preds = %while.end.i
  %22 = load i32, i32* %start.i, align 4
  %inc17.i = add nsw i32 %22, 1
  store i32 %inc17.i, i32* %start.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %while.end.i
  %23 = load i32, i32* %i.i, align 4
  %sub.i = sub nsw i32 %23, 1
  store i32 %sub.i, i32* %j.i, align 4
  br label %while.cond19.i

while.cond19.i:                                   ; preds = %while.body34.i, %if.end18.i
  %24 = load i32, i32* %j.i, align 4
  %cmp20.i = icmp slt i32 0, %24
  br i1 %cmp20.i, label %land.rhs.i, label %land.end.i

land.rhs.i:                                       ; preds = %while.cond19.i
  %25 = load i32, i32* %j.i, align 4
  %idxprom22.i = sext i32 %25 to i64
  %26 = load i8*, i8** %str.addr.i, align 8
  %arrayidx23.i = getelementptr inbounds i8, i8* %26, i64 %idxprom22.i
  %27 = load i8, i8* %arrayidx23.i, align 1
  %conv24.i = sext i8 %27 to i32
  %cmp25.i = icmp eq i32 %conv24.i, 32
  br i1 %cmp25.i, label %lor.end33.i, label %lor.rhs27.i

lor.rhs27.i:                                      ; preds = %land.rhs.i
  %28 = load i32, i32* %j.i, align 4
  %idxprom28.i = sext i32 %28 to i64
  %29 = load i8*, i8** %str.addr.i, align 8
  %arrayidx29.i = getelementptr inbounds i8, i8* %29, i64 %idxprom28.i
  %30 = load i8, i8* %arrayidx29.i, align 1
  %conv30.i = sext i8 %30 to i32
  %cmp31.i = icmp eq i32 %conv30.i, 9
  br label %lor.end33.i

lor.end33.i:                                      ; preds = %lor.rhs27.i, %land.rhs.i
  %31 = phi i1 [ true, %land.rhs.i ], [ %cmp31.i, %lor.rhs27.i ]
  br label %land.end.i

land.end.i:                                       ; preds = %lor.end33.i, %while.cond19.i
  %32 = phi i1 [ false, %while.cond19.i ], [ %31, %lor.end33.i ]
  br i1 %32, label %while.body34.i, label %while.end35.i

while.body34.i:                                   ; preds = %land.end.i
  %33 = load i32, i32* %j.i, align 4
  %dec.i = add nsw i32 %33, -1
  store i32 %dec.i, i32* %j.i, align 4
  br label %while.cond19.i

while.end35.i:                                    ; preds = %land.end.i
  %34 = load i32, i32* %j.i, align 4
  %cmp36.i = icmp slt i32 0, %34
  br i1 %cmp36.i, label %land.lhs.true.i, label %if.end45.i

land.lhs.true.i:                                  ; preds = %while.end35.i
  %35 = load i32, i32* %j.i, align 4
  %idxprom38.i = sext i32 %35 to i64
  %36 = load i8*, i8** %str.addr.i, align 8
  %arrayidx39.i = getelementptr inbounds i8, i8* %36, i64 %idxprom38.i
  %37 = load i8, i8* %arrayidx39.i, align 1
  %conv40.i = sext i8 %37 to i32
  %cmp41.i = icmp eq i32 %conv40.i, 34
  br i1 %cmp41.i, label %if.then43.i, label %if.end45.i

if.then43.i:                                      ; preds = %land.lhs.true.i
  %38 = load i32, i32* %j.i, align 4
  %dec44.i = add nsw i32 %38, -1
  store i32 %dec44.i, i32* %j.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then43.i, %land.lhs.true.i, %while.end35.i
  %39 = load i32, i32* %start.i, align 4
  %40 = load i32, i32* %j.i, align 4
  %cmp46.i = icmp sle i32 %39, %40
  br i1 %cmp46.i, label %if.then48.i, label %if.else.i

if.then48.i:                                      ; preds = %if.end45.i
  %arraydecay.i = getelementptr inbounds [2 x i8], [2 x i8]* %str2.i, i32 0, i32 0
  %41 = load i8*, i8** %str.addr.i, align 8
  %42 = load i32, i32* %start.i, align 4
  %idx.ext.i = sext i32 %42 to i64
  %add.ptr.i = getelementptr inbounds i8, i8* %41, i64 %idx.ext.i
  %43 = load i32, i32* %j.i, align 4
  %44 = load i32, i32* %start.i, align 4
  %sub49.i = sub nsw i32 %43, %44
  %add.i = add nsw i32 %sub49.i, 1
  %call.i = call i8* @r_strncpy(i8* %arraydecay.i, i8* %add.ptr.i, i32 %add.i) #2
  %45 = load i32, i32* %j.i, align 4
  %46 = load i32, i32* %start.i, align 4
  %sub50.i = sub nsw i32 %45, %46
  %add51.i = add nsw i32 %sub50.i, 1
  %cmp52.i = icmp slt i32 %add51.i, 2
  %conv53.i = zext i1 %cmp52.i to i32
  %call54.i = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv53.i) #2
  %47 = load i32, i32* %j.i, align 4
  %48 = load i32, i32* %start.i, align 4
  %sub55.i = sub nsw i32 %47, %48
  %add56.i = add nsw i32 %sub55.i, 1
  %idxprom57.i = sext i32 %add56.i to i64
  %arrayidx58.i = getelementptr inbounds [2 x i8], [2 x i8]* %str2.i, i32 0, i64 %idxprom57.i
  store i8 0, i8* %arrayidx58.i, align 1
  %49 = load i32, i32* %i.i, align 4
  %add60.i = add nsw i32 %49, 1
  store i32 %add60.i, i32* %start.i, align 4
  br label %sw.epilog.i

if.else.i:                                        ; preds = %if.end45.i
  store i32 -1, i32* %retval.i
  br label %parse_expression_list.exit

sw.epilog.i:                                      ; preds = %do.body.i, %if.then48.i
  %50 = load i32, i32* %i.i, align 4
  %idxprom61.i = sext i32 %50 to i64
  %51 = load i8*, i8** %str.addr.i, align 8
  %arrayidx62.i = getelementptr inbounds i8, i8* %51, i64 %idxprom61.i
  %52 = load i8, i8* %arrayidx62.i, align 1
  %conv63.i = sext i8 %52 to i32
  %cmp64.i = icmp ne i32 %conv63.i, 0
  br i1 %cmp64.i, label %do.body.i, label %do.end.i

do.end.i:                                         ; preds = %sw.epilog.i
  store i32 0, i32* %retval.i
  br label %parse_expression_list.exit

parse_expression_list.exit:                       ; preds = %if.then.i, %if.else.i, %do.end.i
  %53 = load i32, i32* %retval.i
  %54 = bitcast i32* %retval.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54)
  %55 = bitcast i8** %str.addr.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55)
  %56 = bitcast i32* %start.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56)
  %57 = bitcast i32* %i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57)
  %58 = bitcast i32* %j.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58)
  %59 = bitcast [2 x i8]* %str2.i to i8*
  call void @llvm.lifetime.end(i64 2, i8* %59)
  ret i32 0
}

declare i8* @r_strncpy(i8*, i8*, i32) #1

declare i32 @__VERIFIER_assert(...) #1

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
