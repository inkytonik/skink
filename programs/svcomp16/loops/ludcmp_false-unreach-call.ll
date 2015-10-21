; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@a = common global [50 x [50 x double]] zeroinitializer, align 16
@b = common global [50 x double] zeroinitializer, align 16
@x = common global [50 x double] zeroinitializer, align 16

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nmax = alloca i32, align 4
  %n = alloca i32, align 4
  %chkerr = alloca i32, align 4
  %eps = alloca double, align 8
  %w = alloca double, align 8
  store i32 0, i32* %1
  store i32 50, i32* %nmax, align 4
  store i32 5, i32* %n, align 4
  store double 1.000000e-06, double* %eps, align 8
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %58, %0
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %5 = icmp sle i32 %3, %4
  br i1 %5, label %6, label %61

; <label>:6                                       ; preds = %2
  store double 0.000000e+00, double* %w, align 8
  store i32 0, i32* %j, align 4
  br label %7

; <label>:7                                       ; preds = %46, %6
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %n, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %49

; <label>:11                                      ; preds = %7
  %12 = load i32, i32* %i, align 4
  %13 = add nsw i32 %12, 1
  %14 = load i32, i32* %j, align 4
  %15 = add nsw i32 %14, 1
  %16 = add nsw i32 %13, %15
  %17 = sitofp i32 %16 to double
  %18 = load i32, i32* %j, align 4
  %19 = sext i32 %18 to i64
  %20 = load i32, i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %21
  %23 = getelementptr inbounds [50 x double], [50 x double]* %22, i32 0, i64 %19
  store double %17, double* %23, align 8
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %j, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %36

; <label>:27                                      ; preds = %11
  %28 = load i32, i32* %j, align 4
  %29 = sext i32 %28 to i64
  %30 = load i32, i32* %i, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %31
  %33 = getelementptr inbounds [50 x double], [50 x double]* %32, i32 0, i64 %29
  %34 = load double, double* %33, align 8
  %35 = fmul double %34, 1.000000e+01
  store double %35, double* %33, align 8
  br label %36

; <label>:36                                      ; preds = %27, %11
  %37 = load i32, i32* %j, align 4
  %38 = sext i32 %37 to i64
  %39 = load i32, i32* %i, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %40
  %42 = getelementptr inbounds [50 x double], [50 x double]* %41, i32 0, i64 %38
  %43 = load double, double* %42, align 8
  %44 = load double, double* %w, align 8
  %45 = fadd double %44, %43
  store double %45, double* %w, align 8
  br label %46

; <label>:46                                      ; preds = %36
  %47 = load i32, i32* %j, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %j, align 4
  br label %7

; <label>:49                                      ; preds = %7
  %50 = load i32, i32* %i, align 4
  %51 = icmp eq i32 %50, 2
  %52 = zext i1 %51 to i32
  %53 = call i32 (i32, ...) bitcast (i32 (...)* @__VERIFIER_assert to i32 (i32, ...)*)(i32 %52)
  %54 = load double, double* %w, align 8
  %55 = load i32, i32* %i, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [50 x double], [50 x double]* @b, i32 0, i64 %56
  store double %54, double* %57, align 8
  br label %58

; <label>:58                                      ; preds = %49
  %59 = load i32, i32* %i, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %i, align 4
  br label %2

; <label>:61                                      ; preds = %2
  %62 = load i32, i32* %nmax, align 4
  %63 = load i32, i32* %n, align 4
  %64 = load double, double* %eps, align 8
  %65 = call i32 @ludcmp(i32 %62, i32 %63, double %64)
  store i32 %65, i32* %chkerr, align 4
  ret i32 0
}

declare i32 @__VERIFIER_assert(...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @ludcmp(i32 %nmax, i32 %n, double %eps) #0 {
  %1 = alloca double, align 8
  %f.i = alloca double, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %w = alloca double, align 8
  %y = alloca [100 x double], align 16
  store i32 %nmax, i32* %3, align 4
  store i32 %n, i32* %4, align 4
  store double %eps, double* %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 99
  br i1 %7, label %11, label %8

; <label>:8                                       ; preds = %0
  %9 = load double, double* %5, align 8
  %10 = fcmp ole double %9, 0.000000e+00
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %8, %0
  store i32 999, i32* %2
  br label %270

; <label>:12                                      ; preds = %8
  store i32 0, i32* %i, align 4
  br label %13

; <label>:13                                      ; preds = %158, %12
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %161

; <label>:17                                      ; preds = %13
  %18 = load i32, i32* %i, align 4
  %19 = sext i32 %18 to i64
  %20 = load i32, i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %21
  %23 = getelementptr inbounds [50 x double], [50 x double]* %22, i32 0, i64 %19
  %24 = load double, double* %23, align 8
  %25 = bitcast double* %1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25)
  %26 = bitcast double* %f.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26)
  store double %24, double* %1, align 8
  %27 = load double, double* %1, align 8
  %28 = fcmp oge double %27, 0.000000e+00
  br i1 %28, label %29, label %31

; <label>:29                                      ; preds = %17
  %30 = load double, double* %1, align 8
  store double %30, double* %f.i, align 8
  br label %fabs.exit

; <label>:31                                      ; preds = %17
  %32 = load double, double* %1, align 8
  %33 = fsub double -0.000000e+00, %32
  store double %33, double* %f.i, align 8
  br label %fabs.exit

fabs.exit:                                        ; preds = %29, %31
  %34 = load double, double* %f.i, align 8
  %35 = bitcast double* %1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35)
  %36 = bitcast double* %f.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36)
  %37 = load double, double* %5, align 8
  %38 = fcmp ole double %34, %37
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %fabs.exit
  store i32 1, i32* %2
  br label %270

; <label>:40                                      ; preds = %fabs.exit
  %41 = load i32, i32* %i, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %j, align 4
  br label %43

; <label>:43                                      ; preds = %100, %40
  %44 = load i32, i32* %j, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %103

; <label>:47                                      ; preds = %43
  %48 = load i32, i32* %i, align 4
  %49 = sext i32 %48 to i64
  %50 = load i32, i32* %j, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %51
  %53 = getelementptr inbounds [50 x double], [50 x double]* %52, i32 0, i64 %49
  %54 = load double, double* %53, align 8
  store double %54, double* %w, align 8
  %55 = load i32, i32* %i, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %84

; <label>:57                                      ; preds = %47
  store i32 0, i32* %k, align 4
  br label %58

; <label>:58                                      ; preds = %80, %57
  %59 = load i32, i32* %k, align 4
  %60 = load i32, i32* %i, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %83

; <label>:62                                      ; preds = %58
  %63 = load i32, i32* %k, align 4
  %64 = sext i32 %63 to i64
  %65 = load i32, i32* %j, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %66
  %68 = getelementptr inbounds [50 x double], [50 x double]* %67, i32 0, i64 %64
  %69 = load double, double* %68, align 8
  %70 = load i32, i32* %i, align 4
  %71 = sext i32 %70 to i64
  %72 = load i32, i32* %k, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %73
  %75 = getelementptr inbounds [50 x double], [50 x double]* %74, i32 0, i64 %71
  %76 = load double, double* %75, align 8
  %77 = fmul double %69, %76
  %78 = load double, double* %w, align 8
  %79 = fsub double %78, %77
  store double %79, double* %w, align 8
  br label %80

; <label>:80                                      ; preds = %62
  %81 = load i32, i32* %k, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %k, align 4
  br label %58

; <label>:83                                      ; preds = %58
  br label %84

; <label>:84                                      ; preds = %83, %47
  %85 = load double, double* %w, align 8
  %86 = load i32, i32* %i, align 4
  %87 = sext i32 %86 to i64
  %88 = load i32, i32* %i, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %89
  %91 = getelementptr inbounds [50 x double], [50 x double]* %90, i32 0, i64 %87
  %92 = load double, double* %91, align 8
  %93 = fdiv double %85, %92
  %94 = load i32, i32* %i, align 4
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %j, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %97
  %99 = getelementptr inbounds [50 x double], [50 x double]* %98, i32 0, i64 %95
  store double %93, double* %99, align 8
  br label %100

; <label>:100                                     ; preds = %84
  %101 = load i32, i32* %j, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %j, align 4
  br label %43

; <label>:103                                     ; preds = %43
  %104 = load i32, i32* %i, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %j, align 4
  br label %106

; <label>:106                                     ; preds = %154, %103
  %107 = load i32, i32* %j, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %157

; <label>:110                                     ; preds = %106
  %111 = load i32, i32* %j, align 4
  %112 = sext i32 %111 to i64
  %113 = load i32, i32* %i, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %115
  %117 = getelementptr inbounds [50 x double], [50 x double]* %116, i32 0, i64 %112
  %118 = load double, double* %117, align 8
  store double %118, double* %w, align 8
  store i32 0, i32* %k, align 4
  br label %119

; <label>:119                                     ; preds = %142, %110
  %120 = load i32, i32* %k, align 4
  %121 = load i32, i32* %i, align 4
  %122 = icmp sle i32 %120, %121
  br i1 %122, label %123, label %145

; <label>:123                                     ; preds = %119
  %124 = load i32, i32* %k, align 4
  %125 = sext i32 %124 to i64
  %126 = load i32, i32* %i, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %128
  %130 = getelementptr inbounds [50 x double], [50 x double]* %129, i32 0, i64 %125
  %131 = load double, double* %130, align 8
  %132 = load i32, i32* %j, align 4
  %133 = sext i32 %132 to i64
  %134 = load i32, i32* %k, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %135
  %137 = getelementptr inbounds [50 x double], [50 x double]* %136, i32 0, i64 %133
  %138 = load double, double* %137, align 8
  %139 = fmul double %131, %138
  %140 = load double, double* %w, align 8
  %141 = fsub double %140, %139
  store double %141, double* %w, align 8
  br label %142

; <label>:142                                     ; preds = %123
  %143 = load i32, i32* %k, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %k, align 4
  br label %119

; <label>:145                                     ; preds = %119
  %146 = load double, double* %w, align 8
  %147 = load i32, i32* %j, align 4
  %148 = sext i32 %147 to i64
  %149 = load i32, i32* %i, align 4
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %151
  %153 = getelementptr inbounds [50 x double], [50 x double]* %152, i32 0, i64 %148
  store double %146, double* %153, align 8
  br label %154

; <label>:154                                     ; preds = %145
  %155 = load i32, i32* %j, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %j, align 4
  br label %106

; <label>:157                                     ; preds = %106
  br label %158

; <label>:158                                     ; preds = %157
  %159 = load i32, i32* %i, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %i, align 4
  br label %13

; <label>:161                                     ; preds = %13
  %162 = load double, double* getelementptr inbounds ([50 x double], [50 x double]* @b, i32 0, i64 0), align 8
  %163 = getelementptr inbounds [100 x double], [100 x double]* %y, i32 0, i64 0
  store double %162, double* %163, align 8
  store i32 1, i32* %i, align 4
  br label %164

; <label>:164                                     ; preds = %200, %161
  %165 = load i32, i32* %i, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp sle i32 %165, %166
  br i1 %167, label %168, label %203

; <label>:168                                     ; preds = %164
  %169 = load i32, i32* %i, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [50 x double], [50 x double]* @b, i32 0, i64 %170
  %172 = load double, double* %171, align 8
  store double %172, double* %w, align 8
  store i32 0, i32* %j, align 4
  br label %173

; <label>:173                                     ; preds = %192, %168
  %174 = load i32, i32* %j, align 4
  %175 = load i32, i32* %i, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %195

; <label>:177                                     ; preds = %173
  %178 = load i32, i32* %j, align 4
  %179 = sext i32 %178 to i64
  %180 = load i32, i32* %i, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %181
  %183 = getelementptr inbounds [50 x double], [50 x double]* %182, i32 0, i64 %179
  %184 = load double, double* %183, align 8
  %185 = load i32, i32* %j, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [100 x double], [100 x double]* %y, i32 0, i64 %186
  %188 = load double, double* %187, align 8
  %189 = fmul double %184, %188
  %190 = load double, double* %w, align 8
  %191 = fsub double %190, %189
  store double %191, double* %w, align 8
  br label %192

; <label>:192                                     ; preds = %177
  %193 = load i32, i32* %j, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %j, align 4
  br label %173

; <label>:195                                     ; preds = %173
  %196 = load double, double* %w, align 8
  %197 = load i32, i32* %i, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [100 x double], [100 x double]* %y, i32 0, i64 %198
  store double %196, double* %199, align 8
  br label %200

; <label>:200                                     ; preds = %195
  %201 = load i32, i32* %i, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %i, align 4
  br label %164

; <label>:203                                     ; preds = %164
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [100 x double], [100 x double]* %y, i32 0, i64 %205
  %207 = load double, double* %206, align 8
  %208 = load i32, i32* %4, align 4
  %209 = sext i32 %208 to i64
  %210 = load i32, i32* %4, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %211
  %213 = getelementptr inbounds [50 x double], [50 x double]* %212, i32 0, i64 %209
  %214 = load double, double* %213, align 8
  %215 = fdiv double %207, %214
  %216 = load i32, i32* %4, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [50 x double], [50 x double]* @x, i32 0, i64 %217
  store double %215, double* %218, align 8
  %219 = load i32, i32* %4, align 4
  %220 = sub nsw i32 %219, 1
  store i32 %220, i32* %i, align 4
  br label %221

; <label>:221                                     ; preds = %266, %203
  %222 = load i32, i32* %i, align 4
  %223 = icmp sge i32 %222, 0
  br i1 %223, label %224, label %269

; <label>:224                                     ; preds = %221
  %225 = load i32, i32* %i, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [100 x double], [100 x double]* %y, i32 0, i64 %226
  %228 = load double, double* %227, align 8
  store double %228, double* %w, align 8
  %229 = load i32, i32* %i, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %j, align 4
  br label %231

; <label>:231                                     ; preds = %250, %224
  %232 = load i32, i32* %j, align 4
  %233 = load i32, i32* %4, align 4
  %234 = icmp sle i32 %232, %233
  br i1 %234, label %235, label %253

; <label>:235                                     ; preds = %231
  %236 = load i32, i32* %j, align 4
  %237 = sext i32 %236 to i64
  %238 = load i32, i32* %i, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %239
  %241 = getelementptr inbounds [50 x double], [50 x double]* %240, i32 0, i64 %237
  %242 = load double, double* %241, align 8
  %243 = load i32, i32* %j, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [50 x double], [50 x double]* @x, i32 0, i64 %244
  %246 = load double, double* %245, align 8
  %247 = fmul double %242, %246
  %248 = load double, double* %w, align 8
  %249 = fsub double %248, %247
  store double %249, double* %w, align 8
  br label %250

; <label>:250                                     ; preds = %235
  %251 = load i32, i32* %j, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %j, align 4
  br label %231

; <label>:253                                     ; preds = %231
  %254 = load double, double* %w, align 8
  %255 = load i32, i32* %i, align 4
  %256 = sext i32 %255 to i64
  %257 = load i32, i32* %i, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i32 0, i64 %258
  %260 = getelementptr inbounds [50 x double], [50 x double]* %259, i32 0, i64 %256
  %261 = load double, double* %260, align 8
  %262 = fdiv double %254, %261
  %263 = load i32, i32* %i, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [50 x double], [50 x double]* @x, i32 0, i64 %264
  store double %262, double* %265, align 8
  br label %266

; <label>:266                                     ; preds = %253
  %267 = load i32, i32* %i, align 4
  %268 = add nsw i32 %267, -1
  store i32 %268, i32* %i, align 4
  br label %221

; <label>:269                                     ; preds = %221
  store i32 0, i32* %2
  br label %270

; <label>:270                                     ; preds = %269, %39, %11
  %271 = load i32, i32* %2
  ret i32 %271
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
