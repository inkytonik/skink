; ModuleID = 'lu.cmp_true-unreach-call.i'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@a = common global [50 x [50 x double]] zeroinitializer, align 16
@b = common global [50 x double] zeroinitializer, align 16
@x = common global [50 x double] zeroinitializer, align 16

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
  call void @__VERIFIER_assert(i32 %conv20)
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
  %call = call i32 @ludcmp(i32 %22, i32 %23, double %24)
  store i32 %call, i32* %chkerr, align 4
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define i32 @ludcmp(i32 %nmax, i32 %n, double %eps) #0 {
entry:
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
  %call = call double @fabs(double %6)
  %7 = load double, double* %eps.addr, align 8
  %cmp5 = fcmp ole double %call, %7
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end7:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %add = add nsw i32 %8, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc37, %if.end7
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %n.addr, align 4
  %cmp9 = icmp sle i32 %9, %10
  br i1 %cmp9, label %for.body10, label %for.end39

for.body10:                                       ; preds = %for.cond8
  %11 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %11 to i64
  %12 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx13, i32 0, i64 %idxprom11
  %13 = load double, double* %arrayidx14, align 8
  store double %13, double* %w, align 8
  %14 = load i32, i32* %i, align 4
  %cmp15 = icmp ne i32 %14, 0
  br i1 %cmp15, label %if.then16, label %if.end28

if.then16:                                        ; preds = %for.body10
  store i32 0, i32* %k, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %if.then16
  %15 = load i32, i32* %k, align 4
  %16 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %15, %16
  br i1 %cmp18, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond17
  %17 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %17 to i64
  %18 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %18 to i64
  %arrayidx22 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx22, i32 0, i64 %idxprom20
  %19 = load double, double* %arrayidx23, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %20 to i64
  %21 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx26, i32 0, i64 %idxprom24
  %22 = load double, double* %arrayidx27, align 8
  %mul = fmul double %19, %22
  %23 = load double, double* %w, align 8
  %sub = fsub double %23, %mul
  store double %sub, double* %w, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body19
  %24 = load i32, i32* %k, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond17

for.end:                                          ; preds = %for.cond17
  br label %if.end28

if.end28:                                         ; preds = %for.end, %for.body10
  %25 = load double, double* %w, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %26 to i64
  %27 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %27 to i64
  %arrayidx31 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx31, i32 0, i64 %idxprom29
  %28 = load double, double* %arrayidx32, align 8
  %div = fdiv double %25, %28
  %29 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %29 to i64
  %30 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx35, i32 0, i64 %idxprom33
  store double %div, double* %arrayidx36, align 8
  br label %for.inc37

for.inc37:                                        ; preds = %if.end28
  %31 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %31, 1
  store i32 %inc38, i32* %j, align 4
  br label %for.cond8

for.end39:                                        ; preds = %for.cond8
  %32 = load i32, i32* %i, align 4
  %add40 = add nsw i32 %32, 1
  store i32 %add40, i32* %j, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc71, %for.end39
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %n.addr, align 4
  %cmp42 = icmp sle i32 %33, %34
  br i1 %cmp42, label %for.body43, label %for.end73

for.body43:                                       ; preds = %for.cond41
  %35 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %35 to i64
  %36 = load i32, i32* %i, align 4
  %add45 = add nsw i32 %36, 1
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom46
  %arrayidx48 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx47, i32 0, i64 %idxprom44
  %37 = load double, double* %arrayidx48, align 8
  store double %37, double* %w, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc63, %for.body43
  %38 = load i32, i32* %k, align 4
  %39 = load i32, i32* %i, align 4
  %cmp50 = icmp sle i32 %38, %39
  br i1 %cmp50, label %for.body51, label %for.end65

for.body51:                                       ; preds = %for.cond49
  %40 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %40 to i64
  %41 = load i32, i32* %i, align 4
  %add53 = add nsw i32 %41, 1
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom54
  %arrayidx56 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx55, i32 0, i64 %idxprom52
  %42 = load double, double* %arrayidx56, align 8
  %43 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %43 to i64
  %44 = load i32, i32* %k, align 4
  %idxprom58 = sext i32 %44 to i64
  %arrayidx59 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom58
  %arrayidx60 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx59, i32 0, i64 %idxprom57
  %45 = load double, double* %arrayidx60, align 8
  %mul61 = fmul double %42, %45
  %46 = load double, double* %w, align 8
  %sub62 = fsub double %46, %mul61
  store double %sub62, double* %w, align 8
  br label %for.inc63

for.inc63:                                        ; preds = %for.body51
  %47 = load i32, i32* %k, align 4
  %inc64 = add nsw i32 %47, 1
  store i32 %inc64, i32* %k, align 4
  br label %for.cond49

for.end65:                                        ; preds = %for.cond49
  %48 = load double, double* %w, align 8
  %49 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %49 to i64
  %50 = load i32, i32* %i, align 4
  %add67 = add nsw i32 %50, 1
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom68
  %arrayidx70 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx69, i32 0, i64 %idxprom66
  store double %48, double* %arrayidx70, align 8
  br label %for.inc71

for.inc71:                                        ; preds = %for.end65
  %51 = load i32, i32* %j, align 4
  %inc72 = add nsw i32 %51, 1
  store i32 %inc72, i32* %j, align 4
  br label %for.cond41

for.end73:                                        ; preds = %for.cond41
  br label %for.inc74

for.inc74:                                        ; preds = %for.end73
  %52 = load i32, i32* %i, align 4
  %inc75 = add nsw i32 %52, 1
  store i32 %inc75, i32* %i, align 4
  br label %for.cond

for.end76:                                        ; preds = %for.cond
  %53 = load double, double* getelementptr inbounds ([50 x double], [50 x double]* @b, i32 0, i64 0), align 8
  %arrayidx77 = getelementptr inbounds [100 x double], [100 x double]* %y, i32 0, i64 0
  store double %53, double* %arrayidx77, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc99, %for.end76
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %n.addr, align 4
  %cmp79 = icmp sle i32 %54, %55
  br i1 %cmp79, label %for.body80, label %for.end101

for.body80:                                       ; preds = %for.cond78
  %56 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %56 to i64
  %arrayidx82 = getelementptr inbounds [50 x double], [50 x double]* @b, i32 0, i64 %idxprom81
  %57 = load double, double* %arrayidx82, align 8
  store double %57, double* %w, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc94, %for.body80
  %58 = load i32, i32* %j, align 4
  %59 = load i32, i32* %i, align 4
  %cmp84 = icmp slt i32 %58, %59
  br i1 %cmp84, label %for.body85, label %for.end96

for.body85:                                       ; preds = %for.cond83
  %60 = load i32, i32* %j, align 4
  %idxprom86 = sext i32 %60 to i64
  %61 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %61 to i64
  %arrayidx88 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom87
  %arrayidx89 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx88, i32 0, i64 %idxprom86
  %62 = load double, double* %arrayidx89, align 8
  %63 = load i32, i32* %j, align 4
  %idxprom90 = sext i32 %63 to i64
  %arrayidx91 = getelementptr inbounds [100 x double], [100 x double]* %y, i32 0, i64 %idxprom90
  %64 = load double, double* %arrayidx91, align 8
  %mul92 = fmul double %62, %64
  %65 = load double, double* %w, align 8
  %sub93 = fsub double %65, %mul92
  store double %sub93, double* %w, align 8
  br label %for.inc94

for.inc94:                                        ; preds = %for.body85
  %66 = load i32, i32* %j, align 4
  %inc95 = add nsw i32 %66, 1
  store i32 %inc95, i32* %j, align 4
  br label %for.cond83

for.end96:                                        ; preds = %for.cond83
  %67 = load double, double* %w, align 8
  %68 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %68 to i64
  %arrayidx98 = getelementptr inbounds [100 x double], [100 x double]* %y, i32 0, i64 %idxprom97
  store double %67, double* %arrayidx98, align 8
  br label %for.inc99

for.inc99:                                        ; preds = %for.end96
  %69 = load i32, i32* %i, align 4
  %inc100 = add nsw i32 %69, 1
  store i32 %inc100, i32* %i, align 4
  br label %for.cond78

for.end101:                                       ; preds = %for.cond78
  %70 = load i32, i32* %n.addr, align 4
  %idxprom102 = sext i32 %70 to i64
  %arrayidx103 = getelementptr inbounds [100 x double], [100 x double]* %y, i32 0, i64 %idxprom102
  %71 = load double, double* %arrayidx103, align 8
  %72 = load i32, i32* %n.addr, align 4
  %idxprom104 = sext i32 %72 to i64
  %73 = load i32, i32* %n.addr, align 4
  %idxprom105 = sext i32 %73 to i64
  %arrayidx106 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom105
  %arrayidx107 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx106, i32 0, i64 %idxprom104
  %74 = load double, double* %arrayidx107, align 8
  %div108 = fdiv double %71, %74
  %75 = load i32, i32* %n.addr, align 4
  %idxprom109 = sext i32 %75 to i64
  %arrayidx110 = getelementptr inbounds [50 x double], [50 x double]* @x, i32 0, i64 %idxprom109
  store double %div108, double* %arrayidx110, align 8
  %76 = load i32, i32* %n.addr, align 4
  %sub111 = sub nsw i32 %76, 1
  store i32 %sub111, i32* %i, align 4
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc139, %for.end101
  %77 = load i32, i32* %i, align 4
  %cmp113 = icmp sge i32 %77, 0
  br i1 %cmp113, label %for.body114, label %for.end140

for.body114:                                      ; preds = %for.cond112
  %78 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %78 to i64
  %arrayidx116 = getelementptr inbounds [100 x double], [100 x double]* %y, i32 0, i64 %idxprom115
  %79 = load double, double* %arrayidx116, align 8
  store double %79, double* %w, align 8
  %80 = load i32, i32* %i, align 4
  %add117 = add nsw i32 %80, 1
  store i32 %add117, i32* %j, align 4
  br label %for.cond118

for.cond118:                                      ; preds = %for.inc129, %for.body114
  %81 = load i32, i32* %j, align 4
  %82 = load i32, i32* %n.addr, align 4
  %cmp119 = icmp sle i32 %81, %82
  br i1 %cmp119, label %for.body120, label %for.end131

for.body120:                                      ; preds = %for.cond118
  %83 = load i32, i32* %j, align 4
  %idxprom121 = sext i32 %83 to i64
  %84 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %84 to i64
  %arrayidx123 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom122
  %arrayidx124 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx123, i32 0, i64 %idxprom121
  %85 = load double, double* %arrayidx124, align 8
  %86 = load i32, i32* %j, align 4
  %idxprom125 = sext i32 %86 to i64
  %arrayidx126 = getelementptr inbounds [50 x double], [50 x double]* @x, i32 0, i64 %idxprom125
  %87 = load double, double* %arrayidx126, align 8
  %mul127 = fmul double %85, %87
  %88 = load double, double* %w, align 8
  %sub128 = fsub double %88, %mul127
  store double %sub128, double* %w, align 8
  br label %for.inc129

for.inc129:                                       ; preds = %for.body120
  %89 = load i32, i32* %j, align 4
  %inc130 = add nsw i32 %89, 1
  store i32 %inc130, i32* %j, align 4
  br label %for.cond118

for.end131:                                       ; preds = %for.cond118
  %90 = load double, double* %w, align 8
  %91 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %91 to i64
  %92 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %92 to i64
  %arrayidx134 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %idxprom133
  %arrayidx135 = getelementptr inbounds [50 x double], [50 x double]* %arrayidx134, i32 0, i64 %idxprom132
  %93 = load double, double* %arrayidx135, align 8
  %div136 = fdiv double %90, %93
  %94 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %94 to i64
  %arrayidx138 = getelementptr inbounds [50 x double], [50 x double]* @x, i32 0, i64 %idxprom137
  store double %div136, double* %arrayidx138, align 8
  br label %for.inc139

for.inc139:                                       ; preds = %for.end131
  %95 = load i32, i32* %i, align 4
  %dec = add nsw i32 %95, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond112

for.end140:                                       ; preds = %for.cond112
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end140, %if.then6, %if.then
  %96 = load i32, i32* %retval
  ret i32 %96
}

; Function Attrs: nounwind ssp uwtable
define internal double @fabs(double %n) #0 {
entry:
  %n.addr = alloca double, align 8
  %f = alloca double, align 8
  store double %n, double* %n.addr, align 8
  %0 = load double, double* %n.addr, align 8
  %cmp = fcmp oge double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double, double* %n.addr, align 8
  store double %1, double* %f, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load double, double* %n.addr, align 8
  %sub = fsub double -0.000000e+00, %2
  store double %sub, double* %f, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load double, double* %f, align 8
  ret double %3
}

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
