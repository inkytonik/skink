; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@a = common global [50 x [50 x double]] zeroinitializer, align 16
@b = common global [50 x double] zeroinitializer, align 16
@x = common global [50 x double] zeroinitializer, align 16

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nmax = alloca i32, align 4
  %n = alloca i32, align 4
  %chkerr = alloca i32, align 4
  %eps = alloca double, align 8
  %w = alloca double, align 8
  store i32 0, i32* %retval
  store i32 50, i32* %nmax, align 4
  store i32 5, i32* %n, align 4
  store double 1.000000e-06, double* %eps, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %w, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n, align 4
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  %5 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %5, 1
  %add5 = add nsw i32 %add, %add4
  %conv = sitofp i32 %add5 to double
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom6
  %arrayidx7 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx, i32 0, i64 %idxprom
  store double %conv, double* %arrayidx7, align 8
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %j, align 4
  %cmp8 = icmp eq i32 %8, %9
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %10 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx12, i32 0, i64 %idxprom10
  %12 = load double, double* %arrayidx13, align 8
  %mul = fmul double %12, 1.000000e+01
  store double %mul, double* %arrayidx13, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %13 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx16, i32 0, i64 %idxprom14
  %15 = load double, double* %arrayidx17, align 8
  %16 = load double, double* %w, align 8
  %add18 = fadd double %16, %15
  store double %add18, double* %w, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %18 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %18, 50
  %conv20 = zext i1 %cmp19 to i32
  %call = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %conv20)
  %19 = load double, double* %w, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds [50 x double], [50 x double]* @b, i32 0, i64 %idxprom21
  store double %19, double* %arrayidx22, align 8
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %21, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond

for.end25:                                        ; preds = %for.cond
  %22 = load i32, i32* %nmax, align 4
  %23 = load i32, i32* %n, align 4
  %24 = load double, double* %eps, align 8
  %call26 = call i32 @ludcmp(i32 %22, i32 %23, double %24)
  store i32 %call26, i32* %chkerr, align 4
  ret i32 0
}

declare i32 @__VERIFIER_assert(...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @ludcmp(i32 %nmax, i32 %n, double %eps) #0 {
entry:
  %n.addr.i = alloca double, align 8
  %f.i = alloca double, align 8
  %retval = alloca i32, align 4
  %nmax.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %eps.addr = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %w = alloca double, align 8
  %y = alloca [100 x double], align 16
  store i32 %nmax, i32* %nmax.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store double %eps, double* %eps.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %0, 99
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load double, double* %eps.addr, align 8
  %cmp1 = fcmp ole double %1, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 999, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc74, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end76

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom3
  %arrayidx4 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx, i32 0, i64 %idxprom
  %6 = load double, double* %arrayidx4, align 8
  %7 = bitcast double* %n.addr.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7)
  %8 = bitcast double* %f.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8)
  store double %6, double* %n.addr.i, align 8
  %9 = load double, double* %n.addr.i, align 8
  %cmp.i = fcmp oge double %9, 0.000000e+00
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  %10 = load double, double* %n.addr.i, align 8
  store double %10, double* %f.i, align 8
  br label %fabs.exit

if.else.i:                                        ; preds = %for.body
  %11 = load double, double* %n.addr.i, align 8
  %sub.i = fsub double -0.000000e+00, %11
  store double %sub.i, double* %f.i, align 8
  br label %fabs.exit

fabs.exit:                                        ; preds = %if.then.i, %if.else.i
  %12 = load double, double* %f.i, align 8
  %13 = bitcast double* %n.addr.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13)
  %14 = bitcast double* %f.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14)
  %15 = load double, double* %eps.addr, align 8
  %cmp5 = fcmp ole double %12, %15
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %fabs.exit
  store i32 1, i32* %retval
  br label %return

if.end7:                                          ; preds = %fabs.exit
  %16 = load i32, i32* %i, align 4
  %add = add nsw i32 %16, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc37, %if.end7
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %n.addr, align 4
  %cmp9 = icmp sle i32 %17, %18
  br i1 %cmp9, label %for.body10, label %for.end39

for.body10:                                       ; preds = %for.cond8
  %19 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx13, i32 0, i64 %idxprom11
  %21 = load double, double* %arrayidx14, align 8
  store double %21, double* %w, align 8
  %22 = load i32, i32* %i, align 4
  %cmp15 = icmp ne i32 %22, 0
  br i1 %cmp15, label %if.then16, label %if.end28

if.then16:                                        ; preds = %for.body10
  store i32 0, i32* %k, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %if.then16
  %23 = load i32, i32* %k, align 4
  %24 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %23, %24
  br i1 %cmp18, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond17
  %25 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %25 to i64
  %26 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %26 to i64
  %arrayidx22 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx22, i32 0, i64 %idxprom20
  %27 = load double, double* %arrayidx23, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %28 to i64
  %29 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx26, i32 0, i64 %idxprom24
  %30 = load double, double* %arrayidx27, align 8
  %mul = fmul double %27, %30
  %31 = load double, double* %w, align 8
  %sub = fsub double %31, %mul
  store double %sub, double* %w, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body19
  %32 = load i32, i32* %k, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond17

for.end:                                          ; preds = %for.cond17
  br label %if.end28

if.end28:                                         ; preds = %for.end, %for.body10
  %33 = load double, double* %w, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %34 to i64
  %35 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %35 to i64
  %arrayidx31 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx31, i32 0, i64 %idxprom29
  %36 = load double, double* %arrayidx32, align 8
  %div = fdiv double %33, %36
  %37 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %37 to i64
  %38 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %38 to i64
  %arrayidx35 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx35, i32 0, i64 %idxprom33
  store double %div, double* %arrayidx36, align 8
  br label %for.inc37

for.inc37:                                        ; preds = %if.end28
  %39 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %39, 1
  store i32 %inc38, i32* %j, align 4
  br label %for.cond8

for.end39:                                        ; preds = %for.cond8
  %40 = load i32, i32* %i, align 4
  %add40 = add nsw i32 %40, 1
  store i32 %add40, i32* %j, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc71, %for.end39
  %41 = load i32, i32* %j, align 4
  %42 = load i32, i32* %n.addr, align 4
  %cmp42 = icmp sle i32 %41, %42
  br i1 %cmp42, label %for.body43, label %for.end73

for.body43:                                       ; preds = %for.cond41
  %43 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %43 to i64
  %44 = load i32, i32* %i, align 4
  %add45 = add nsw i32 %44, 1
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom46
  %arrayidx48 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx47, i32 0, i64 %idxprom44
  %45 = load double, double* %arrayidx48, align 8
  store double %45, double* %w, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc63, %for.body43
  %46 = load i32, i32* %k, align 4
  %47 = load i32, i32* %i, align 4
  %cmp50 = icmp sle i32 %46, %47
  br i1 %cmp50, label %for.body51, label %for.end65

for.body51:                                       ; preds = %for.cond49
  %48 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %48 to i64
  %49 = load i32, i32* %i, align 4
  %add53 = add nsw i32 %49, 1
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom54
  %arrayidx56 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx55, i32 0, i64 %idxprom52
  %50 = load double, double* %arrayidx56, align 8
  %51 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %51 to i64
  %52 = load i32, i32* %k, align 4
  %idxprom58 = sext i32 %52 to i64
  %arrayidx59 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom58
  %arrayidx60 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx59, i32 0, i64 %idxprom57
  %53 = load double, double* %arrayidx60, align 8
  %mul61 = fmul double %50, %53
  %54 = load double, double* %w, align 8
  %sub62 = fsub double %54, %mul61
  store double %sub62, double* %w, align 8
  br label %for.inc63

for.inc63:                                        ; preds = %for.body51
  %55 = load i32, i32* %k, align 4
  %inc64 = add nsw i32 %55, 1
  store i32 %inc64, i32* %k, align 4
  br label %for.cond49

for.end65:                                        ; preds = %for.cond49
  %56 = load double, double* %w, align 8
  %57 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %57 to i64
  %58 = load i32, i32* %i, align 4
  %add67 = add nsw i32 %58, 1
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom68
  %arrayidx70 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx69, i32 0, i64 %idxprom66
  store double %56, double* %arrayidx70, align 8
  br label %for.inc71

for.inc71:                                        ; preds = %for.end65
  %59 = load i32, i32* %j, align 4
  %inc72 = add nsw i32 %59, 1
  store i32 %inc72, i32* %j, align 4
  br label %for.cond41

for.end73:                                        ; preds = %for.cond41
  br label %for.inc74

for.inc74:                                        ; preds = %for.end73
  %60 = load i32, i32* %i, align 4
  %inc75 = add nsw i32 %60, 1
  store i32 %inc75, i32* %i, align 4
  br label %for.cond

for.end76:                                        ; preds = %for.cond
  %61 = load double, double* getelementptr inbounds ([50 x double], [50 x double]* @b, i32 0, i64 0), align 8
  %arrayidx77 = getelementptr inbounds [100 x double], [100 x double]* %y, i32 0, i64 0
  store double %61, double* %arrayidx77, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc99, %for.end76
  %62 = load i32, i32* %i, align 4
  %63 = load i32, i32* %n.addr, align 4
  %cmp79 = icmp sle i32 %62, %63
  br i1 %cmp79, label %for.body80, label %for.end101

for.body80:                                       ; preds = %for.cond78
  %64 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %64 to i64
  %arrayidx82 = getelementptr inbounds [50 x double], [50 x double]* @b, i32 0, i64 %idxprom81
  %65 = load double, double* %arrayidx82, align 8
  store double %65, double* %w, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc94, %for.body80
  %66 = load i32, i32* %j, align 4
  %67 = load i32, i32* %i, align 4
  %cmp84 = icmp slt i32 %66, %67
  br i1 %cmp84, label %for.body85, label %for.end96

for.body85:                                       ; preds = %for.cond83
  %68 = load i32, i32* %j, align 4
  %idxprom86 = sext i32 %68 to i64
  %69 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %69 to i64
  %arrayidx88 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom87
  %arrayidx89 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx88, i32 0, i64 %idxprom86
  %70 = load double, double* %arrayidx89, align 8
  %71 = load i32, i32* %j, align 4
  %idxprom90 = sext i32 %71 to i64
  %arrayidx91 = getelementptr inbounds [100 x double], [100 x double]* %y, i32 0, i64 %idxprom90
  %72 = load double, double* %arrayidx91, align 8
  %mul92 = fmul double %70, %72
  %73 = load double, double* %w, align 8
  %sub93 = fsub double %73, %mul92
  store double %sub93, double* %w, align 8
  br label %for.inc94

for.inc94:                                        ; preds = %for.body85
  %74 = load i32, i32* %j, align 4
  %inc95 = add nsw i32 %74, 1
  store i32 %inc95, i32* %j, align 4
  br label %for.cond83

for.end96:                                        ; preds = %for.cond83
  %75 = load double, double* %w, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %76 to i64
  %arrayidx98 = getelementptr inbounds [100 x double], [100 x double]* %y, i32 0, i64 %idxprom97
  store double %75, double* %arrayidx98, align 8
  br label %for.inc99

for.inc99:                                        ; preds = %for.end96
  %77 = load i32, i32* %i, align 4
  %inc100 = add nsw i32 %77, 1
  store i32 %inc100, i32* %i, align 4
  br label %for.cond78

for.end101:                                       ; preds = %for.cond78
  %78 = load i32, i32* %n.addr, align 4
  %idxprom102 = sext i32 %78 to i64
  %arrayidx103 = getelementptr inbounds [100 x double], [100 x double]* %y, i32 0, i64 %idxprom102
  %79 = load double, double* %arrayidx103, align 8
  %80 = load i32, i32* %n.addr, align 4
  %idxprom104 = sext i32 %80 to i64
  %81 = load i32, i32* %n.addr, align 4
  %idxprom105 = sext i32 %81 to i64
  %arrayidx106 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom105
  %arrayidx107 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx106, i32 0, i64 %idxprom104
  %82 = load double, double* %arrayidx107, align 8
  %div108 = fdiv double %79, %82
  %83 = load i32, i32* %n.addr, align 4
  %idxprom109 = sext i32 %83 to i64
  %arrayidx110 = getelementptr inbounds [50 x double], [50 x double]* @x, i32 0, i64 %idxprom109
  store double %div108, double* %arrayidx110, align 8
  %84 = load i32, i32* %n.addr, align 4
  %sub111 = sub nsw i32 %84, 1
  store i32 %sub111, i32* %i, align 4
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc139, %for.end101
  %85 = load i32, i32* %i, align 4
  %cmp113 = icmp sge i32 %85, 0
  br i1 %cmp113, label %for.body114, label %for.end140

for.body114:                                      ; preds = %for.cond112
  %86 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %86 to i64
  %arrayidx116 = getelementptr inbounds [100 x double], [100 x double]* %y, i32 0, i64 %idxprom115
  %87 = load double, double* %arrayidx116, align 8
  store double %87, double* %w, align 8
  %88 = load i32, i32* %i, align 4
  %add117 = add nsw i32 %88, 1
  store i32 %add117, i32* %j, align 4
  br label %for.cond118

for.cond118:                                      ; preds = %for.inc129, %for.body114
  %89 = load i32, i32* %j, align 4
  %90 = load i32, i32* %n.addr, align 4
  %cmp119 = icmp sle i32 %89, %90
  br i1 %cmp119, label %for.body120, label %for.end131

for.body120:                                      ; preds = %for.cond118
  %91 = load i32, i32* %j, align 4
  %idxprom121 = sext i32 %91 to i64
  %92 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %92 to i64
  %arrayidx123 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom122
  %arrayidx124 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx123, i32 0, i64 %idxprom121
  %93 = load double, double* %arrayidx124, align 8
  %94 = load i32, i32* %j, align 4
  %idxprom125 = sext i32 %94 to i64
  %arrayidx126 = getelementptr inbounds [50 x double], [50 x double]* @x, i32 0, i64 %idxprom125
  %95 = load double, double* %arrayidx126, align 8
  %mul127 = fmul double %93, %95
  %96 = load double, double* %w, align 8
  %sub128 = fsub double %96, %mul127
  store double %sub128, double* %w, align 8
  br label %for.inc129

for.inc129:                                       ; preds = %for.body120
  %97 = load i32, i32* %j, align 4
  %inc130 = add nsw i32 %97, 1
  store i32 %inc130, i32* %j, align 4
  br label %for.cond118

for.end131:                                       ; preds = %for.cond118
  %98 = load double, double* %w, align 8
  %99 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %99 to i64
  %100 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %100 to i64
  %arrayidx134 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom133
  %arrayidx135 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx134, i32 0, i64 %idxprom132
  %101 = load double, double* %arrayidx135, align 8
  %div136 = fdiv double %98, %101
  %102 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %102 to i64
  %arrayidx138 = getelementptr inbounds [50 x double], [50 x double]* @x, i32 0, i64 %idxprom137
  store double %div136, double* %arrayidx138, align 8
  br label %for.inc139

for.inc139:                                       ; preds = %for.end131
  %103 = load i32, i32* %i, align 4
  %dec = add nsw i32 %103, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond112

for.end140:                                       ; preds = %for.cond112
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end140, %if.then6, %if.then
  %104 = load i32, i32* %retval
  ret i32 %104
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
