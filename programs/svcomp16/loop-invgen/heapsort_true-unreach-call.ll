; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind ssp uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
  %1 = alloca i32, align 4
  store i32 %cond, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !18, metadata !19), !dbg !20
  %2 = load i32, i32* %1, align 4, !dbg !21
  %3 = icmp ne i32 %2, 0, !dbg !23
  br i1 %3, label %6, label %4, !dbg !24

; <label>:4                                       ; preds = %0
  br label %5, !dbg !25

; <label>:5                                       ; preds = %4
  call void @__VERIFIER_error(), !dbg !26
  br label %6, !dbg !28

; <label>:6                                       ; preds = %5, %0
  ret void, !dbg !29
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @__VERIFIER_error() #2

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %n = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %15
  store i32 %argc, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !30, metadata !19), !dbg !31
  store i8** %argv, i8*** %17, align 8
  call void @llvm.dbg.declare(metadata i8*** %17, metadata !32, metadata !19), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %n, metadata !34, metadata !19), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %l, metadata !36, metadata !19), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %r, metadata !38, metadata !19), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %i, metadata !40, metadata !19), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %j, metadata !42, metadata !19), !dbg !43
  %18 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !44
  store i32 %18, i32* %n, align 4, !dbg !45
  %19 = load i32, i32* %n, align 4, !dbg !46
  %20 = icmp sle i32 1, %19, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %14, metadata !18, metadata !19), !dbg !48
  call void @llvm.dbg.declare(metadata i32* %13, metadata !18, metadata !19), !dbg !54
  call void @llvm.dbg.declare(metadata i32* %12, metadata !18, metadata !19), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %11, metadata !18, metadata !19), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %10, metadata !18, metadata !19), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %9, metadata !18, metadata !19), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %8, metadata !18, metadata !19), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %7, metadata !18, metadata !19), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %6, metadata !18, metadata !19), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %5, metadata !18, metadata !19), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %4, metadata !18, metadata !19), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %3, metadata !18, metadata !19), !dbg !76
  call void @llvm.dbg.declare(metadata i32* %2, metadata !18, metadata !19), !dbg !78
  call void @llvm.dbg.declare(metadata i32* %1, metadata !18, metadata !19), !dbg !81
  br i1 %20, label %21, label %24, !dbg !83

; <label>:21                                      ; preds = %0
  %22 = load i32, i32* %n, align 4, !dbg !84
  %23 = icmp sle i32 %22, 1000000, !dbg !85
  br label %24

; <label>:24                                      ; preds = %21, %0
  %25 = phi i1 [ false, %0 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32, !dbg !83
  call void @__VERIFIER_assume(i32 %26), !dbg !86
  %27 = load i32, i32* %n, align 4, !dbg !87
  %28 = sdiv i32 %27, 2, !dbg !88
  %29 = add nsw i32 %28, 1, !dbg !89
  store i32 %29, i32* %l, align 4, !dbg !90
  %30 = load i32, i32* %n, align 4, !dbg !91
  store i32 %30, i32* %r, align 4, !dbg !92
  %31 = load i32, i32* %l, align 4, !dbg !93
  %32 = icmp sgt i32 %31, 1, !dbg !95
  br i1 %32, label %33, label %36, !dbg !96

; <label>:33                                      ; preds = %24
  %34 = load i32, i32* %l, align 4, !dbg !97
  %35 = add nsw i32 %34, -1, !dbg !97
  store i32 %35, i32* %l, align 4, !dbg !97
  br label %39, !dbg !99

; <label>:36                                      ; preds = %24
  %37 = load i32, i32* %r, align 4, !dbg !100
  %38 = add nsw i32 %37, -1, !dbg !100
  store i32 %38, i32* %r, align 4, !dbg !100
  br label %39

; <label>:39                                      ; preds = %36, %33
  br label %40, !dbg !102

; <label>:40                                      ; preds = %200, %39
  %41 = load i32, i32* %r, align 4, !dbg !103
  %42 = icmp sgt i32 %41, 1, !dbg !104
  br i1 %42, label %43, label %201, !dbg !102

; <label>:43                                      ; preds = %40
  %44 = load i32, i32* %l, align 4, !dbg !105
  store i32 %44, i32* %i, align 4, !dbg !106
  %45 = load i32, i32* %l, align 4, !dbg !107
  %46 = mul nsw i32 2, %45, !dbg !108
  store i32 %46, i32* %j, align 4, !dbg !109
  br label %47, !dbg !110

; <label>:47                                      ; preds = %__VERIFIER_assert.exit9, %43
  %48 = load i32, i32* %j, align 4, !dbg !111
  %49 = load i32, i32* %r, align 4, !dbg !112
  %50 = icmp sle i32 %48, %49, !dbg !113
  br i1 %50, label %51, label %157, !dbg !110

; <label>:51                                      ; preds = %47
  %52 = load i32, i32* %j, align 4, !dbg !114
  %53 = load i32, i32* %r, align 4, !dbg !115
  %54 = icmp slt i32 %52, %53, !dbg !116
  br i1 %54, label %55, label %98, !dbg !117

; <label>:55                                      ; preds = %51
  %56 = load i32, i32* %j, align 4, !dbg !118
  %57 = icmp sle i32 1, %56, !dbg !119
  %58 = zext i1 %57 to i32, !dbg !119
  %59 = bitcast i32* %14 to i8*, !dbg !120
  call void @llvm.lifetime.start(i64 4, i8* %59), !dbg !120
  store i32 %58, i32* %14, align 4, !dbg !120
  %60 = load i32, i32* %14, align 4, !dbg !121
  %61 = icmp ne i32 %60, 0, !dbg !122
  br i1 %61, label %__VERIFIER_assert.exit, label %62, !dbg !123

; <label>:62                                      ; preds = %55
  call void @__VERIFIER_error() #3, !dbg !124
  br label %__VERIFIER_assert.exit, !dbg !125

__VERIFIER_assert.exit:                           ; preds = %55, %62
  %63 = bitcast i32* %14 to i8*, !dbg !126
  call void @llvm.lifetime.end(i64 4, i8* %63), !dbg !126
  %64 = load i32, i32* %j, align 4, !dbg !127
  %65 = load i32, i32* %n, align 4, !dbg !128
  %66 = icmp sle i32 %64, %65, !dbg !129
  %67 = zext i1 %66 to i32, !dbg !129
  %68 = bitcast i32* %13 to i8*, !dbg !130
  call void @llvm.lifetime.start(i64 4, i8* %68), !dbg !130
  store i32 %67, i32* %13, align 4, !dbg !130
  %69 = load i32, i32* %13, align 4, !dbg !131
  %70 = icmp ne i32 %69, 0, !dbg !132
  br i1 %70, label %__VERIFIER_assert.exit1, label %71, !dbg !133

; <label>:71                                      ; preds = %__VERIFIER_assert.exit
  call void @__VERIFIER_error() #3, !dbg !134
  br label %__VERIFIER_assert.exit1, !dbg !135

__VERIFIER_assert.exit1:                          ; preds = %__VERIFIER_assert.exit, %71
  %72 = bitcast i32* %13 to i8*, !dbg !136
  call void @llvm.lifetime.end(i64 4, i8* %72), !dbg !136
  %73 = load i32, i32* %j, align 4, !dbg !137
  %74 = add nsw i32 %73, 1, !dbg !138
  %75 = icmp sle i32 1, %74, !dbg !139
  %76 = zext i1 %75 to i32, !dbg !139
  %77 = bitcast i32* %12 to i8*, !dbg !140
  call void @llvm.lifetime.start(i64 4, i8* %77), !dbg !140
  store i32 %76, i32* %12, align 4, !dbg !140
  %78 = load i32, i32* %12, align 4, !dbg !141
  %79 = icmp ne i32 %78, 0, !dbg !142
  br i1 %79, label %__VERIFIER_assert.exit2, label %80, !dbg !143

; <label>:80                                      ; preds = %__VERIFIER_assert.exit1
  call void @__VERIFIER_error() #3, !dbg !144
  br label %__VERIFIER_assert.exit2, !dbg !145

__VERIFIER_assert.exit2:                          ; preds = %__VERIFIER_assert.exit1, %80
  %81 = bitcast i32* %12 to i8*, !dbg !146
  call void @llvm.lifetime.end(i64 4, i8* %81), !dbg !146
  %82 = load i32, i32* %j, align 4, !dbg !147
  %83 = add nsw i32 %82, 1, !dbg !148
  %84 = load i32, i32* %n, align 4, !dbg !149
  %85 = icmp sle i32 %83, %84, !dbg !150
  %86 = zext i1 %85 to i32, !dbg !150
  %87 = bitcast i32* %11 to i8*, !dbg !151
  call void @llvm.lifetime.start(i64 4, i8* %87), !dbg !151
  store i32 %86, i32* %11, align 4, !dbg !151
  %88 = load i32, i32* %11, align 4, !dbg !152
  %89 = icmp ne i32 %88, 0, !dbg !153
  br i1 %89, label %__VERIFIER_assert.exit3, label %90, !dbg !154

; <label>:90                                      ; preds = %__VERIFIER_assert.exit2
  call void @__VERIFIER_error() #3, !dbg !155
  br label %__VERIFIER_assert.exit3, !dbg !156

__VERIFIER_assert.exit3:                          ; preds = %__VERIFIER_assert.exit2, %90
  %91 = bitcast i32* %11 to i8*, !dbg !157
  call void @llvm.lifetime.end(i64 4, i8* %91), !dbg !157
  %92 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !158
  %93 = icmp ne i32 %92, 0, !dbg !158
  br i1 %93, label %94, label %97, !dbg !160

; <label>:94                                      ; preds = %__VERIFIER_assert.exit3
  %95 = load i32, i32* %j, align 4, !dbg !161
  %96 = add nsw i32 %95, 1, !dbg !162
  store i32 %96, i32* %j, align 4, !dbg !163
  br label %97, !dbg !164

; <label>:97                                      ; preds = %94, %__VERIFIER_assert.exit3
  br label %98, !dbg !165

; <label>:98                                      ; preds = %97, %51
  %99 = load i32, i32* %j, align 4, !dbg !166
  %100 = icmp sle i32 1, %99, !dbg !167
  %101 = zext i1 %100 to i32, !dbg !167
  %102 = bitcast i32* %10 to i8*, !dbg !168
  call void @llvm.lifetime.start(i64 4, i8* %102), !dbg !168
  store i32 %101, i32* %10, align 4, !dbg !168
  %103 = load i32, i32* %10, align 4, !dbg !169
  %104 = icmp ne i32 %103, 0, !dbg !170
  br i1 %104, label %__VERIFIER_assert.exit4, label %105, !dbg !171

; <label>:105                                     ; preds = %98
  call void @__VERIFIER_error() #3, !dbg !172
  br label %__VERIFIER_assert.exit4, !dbg !173

__VERIFIER_assert.exit4:                          ; preds = %98, %105
  %106 = bitcast i32* %10 to i8*, !dbg !174
  call void @llvm.lifetime.end(i64 4, i8* %106), !dbg !174
  %107 = load i32, i32* %j, align 4, !dbg !175
  %108 = load i32, i32* %n, align 4, !dbg !176
  %109 = icmp sle i32 %107, %108, !dbg !177
  %110 = zext i1 %109 to i32, !dbg !177
  %111 = bitcast i32* %9 to i8*, !dbg !178
  call void @llvm.lifetime.start(i64 4, i8* %111), !dbg !178
  store i32 %110, i32* %9, align 4, !dbg !178
  %112 = load i32, i32* %9, align 4, !dbg !179
  %113 = icmp ne i32 %112, 0, !dbg !180
  br i1 %113, label %__VERIFIER_assert.exit5, label %114, !dbg !181

; <label>:114                                     ; preds = %__VERIFIER_assert.exit4
  call void @__VERIFIER_error() #3, !dbg !182
  br label %__VERIFIER_assert.exit5, !dbg !183

__VERIFIER_assert.exit5:                          ; preds = %__VERIFIER_assert.exit4, %114
  %115 = bitcast i32* %9 to i8*, !dbg !184
  call void @llvm.lifetime.end(i64 4, i8* %115), !dbg !184
  %116 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !185
  %117 = icmp ne i32 %116, 0, !dbg !185
  br i1 %117, label %118, label %119, !dbg !187

; <label>:118                                     ; preds = %__VERIFIER_assert.exit5
  br label %157, !dbg !188

; <label>:119                                     ; preds = %__VERIFIER_assert.exit5
  %120 = load i32, i32* %i, align 4, !dbg !190
  %121 = icmp sle i32 1, %120, !dbg !191
  %122 = zext i1 %121 to i32, !dbg !191
  %123 = bitcast i32* %8 to i8*, !dbg !192
  call void @llvm.lifetime.start(i64 4, i8* %123), !dbg !192
  store i32 %122, i32* %8, align 4, !dbg !192
  %124 = load i32, i32* %8, align 4, !dbg !193
  %125 = icmp ne i32 %124, 0, !dbg !194
  br i1 %125, label %__VERIFIER_assert.exit6, label %126, !dbg !195

; <label>:126                                     ; preds = %119
  call void @__VERIFIER_error() #3, !dbg !196
  br label %__VERIFIER_assert.exit6, !dbg !197

__VERIFIER_assert.exit6:                          ; preds = %119, %126
  %127 = bitcast i32* %8 to i8*, !dbg !198
  call void @llvm.lifetime.end(i64 4, i8* %127), !dbg !198
  %128 = load i32, i32* %i, align 4, !dbg !199
  %129 = load i32, i32* %n, align 4, !dbg !200
  %130 = icmp sle i32 %128, %129, !dbg !201
  %131 = zext i1 %130 to i32, !dbg !201
  %132 = bitcast i32* %7 to i8*, !dbg !202
  call void @llvm.lifetime.start(i64 4, i8* %132), !dbg !202
  store i32 %131, i32* %7, align 4, !dbg !202
  %133 = load i32, i32* %7, align 4, !dbg !203
  %134 = icmp ne i32 %133, 0, !dbg !204
  br i1 %134, label %__VERIFIER_assert.exit7, label %135, !dbg !205

; <label>:135                                     ; preds = %__VERIFIER_assert.exit6
  call void @__VERIFIER_error() #3, !dbg !206
  br label %__VERIFIER_assert.exit7, !dbg !207

__VERIFIER_assert.exit7:                          ; preds = %__VERIFIER_assert.exit6, %135
  %136 = bitcast i32* %7 to i8*, !dbg !208
  call void @llvm.lifetime.end(i64 4, i8* %136), !dbg !208
  %137 = load i32, i32* %j, align 4, !dbg !209
  %138 = icmp sle i32 1, %137, !dbg !210
  %139 = zext i1 %138 to i32, !dbg !210
  %140 = bitcast i32* %6 to i8*, !dbg !211
  call void @llvm.lifetime.start(i64 4, i8* %140), !dbg !211
  store i32 %139, i32* %6, align 4, !dbg !211
  %141 = load i32, i32* %6, align 4, !dbg !212
  %142 = icmp ne i32 %141, 0, !dbg !213
  br i1 %142, label %__VERIFIER_assert.exit8, label %143, !dbg !214

; <label>:143                                     ; preds = %__VERIFIER_assert.exit7
  call void @__VERIFIER_error() #3, !dbg !215
  br label %__VERIFIER_assert.exit8, !dbg !216

__VERIFIER_assert.exit8:                          ; preds = %__VERIFIER_assert.exit7, %143
  %144 = bitcast i32* %6 to i8*, !dbg !217
  call void @llvm.lifetime.end(i64 4, i8* %144), !dbg !217
  %145 = load i32, i32* %j, align 4, !dbg !218
  %146 = load i32, i32* %n, align 4, !dbg !219
  %147 = icmp sle i32 %145, %146, !dbg !220
  %148 = zext i1 %147 to i32, !dbg !220
  %149 = bitcast i32* %5 to i8*, !dbg !221
  call void @llvm.lifetime.start(i64 4, i8* %149), !dbg !221
  store i32 %148, i32* %5, align 4, !dbg !221
  %150 = load i32, i32* %5, align 4, !dbg !222
  %151 = icmp ne i32 %150, 0, !dbg !223
  br i1 %151, label %__VERIFIER_assert.exit9, label %152, !dbg !224

; <label>:152                                     ; preds = %__VERIFIER_assert.exit8
  call void @__VERIFIER_error() #3, !dbg !225
  br label %__VERIFIER_assert.exit9, !dbg !226

__VERIFIER_assert.exit9:                          ; preds = %__VERIFIER_assert.exit8, %152
  %153 = bitcast i32* %5 to i8*, !dbg !227
  call void @llvm.lifetime.end(i64 4, i8* %153), !dbg !227
  %154 = load i32, i32* %j, align 4, !dbg !228
  store i32 %154, i32* %i, align 4, !dbg !229
  %155 = load i32, i32* %j, align 4, !dbg !230
  %156 = mul nsw i32 2, %155, !dbg !231
  store i32 %156, i32* %j, align 4, !dbg !232
  br label %47, !dbg !110

; <label>:157                                     ; preds = %118, %47
  %158 = load i32, i32* %l, align 4, !dbg !233
  %159 = icmp sgt i32 %158, 1, !dbg !234
  br i1 %159, label %160, label %180, !dbg !235

; <label>:160                                     ; preds = %157
  %161 = load i32, i32* %l, align 4, !dbg !236
  %162 = icmp sle i32 1, %161, !dbg !237
  %163 = zext i1 %162 to i32, !dbg !237
  %164 = bitcast i32* %4 to i8*, !dbg !238
  call void @llvm.lifetime.start(i64 4, i8* %164), !dbg !238
  store i32 %163, i32* %4, align 4, !dbg !238
  %165 = load i32, i32* %4, align 4, !dbg !239
  %166 = icmp ne i32 %165, 0, !dbg !240
  br i1 %166, label %__VERIFIER_assert.exit10, label %167, !dbg !241

; <label>:167                                     ; preds = %160
  call void @__VERIFIER_error() #3, !dbg !242
  br label %__VERIFIER_assert.exit10, !dbg !243

__VERIFIER_assert.exit10:                         ; preds = %160, %167
  %168 = bitcast i32* %4 to i8*, !dbg !244
  call void @llvm.lifetime.end(i64 4, i8* %168), !dbg !244
  %169 = load i32, i32* %l, align 4, !dbg !245
  %170 = load i32, i32* %n, align 4, !dbg !246
  %171 = icmp sle i32 %169, %170, !dbg !247
  %172 = zext i1 %171 to i32, !dbg !247
  %173 = bitcast i32* %3 to i8*, !dbg !248
  call void @llvm.lifetime.start(i64 4, i8* %173), !dbg !248
  store i32 %172, i32* %3, align 4, !dbg !248
  %174 = load i32, i32* %3, align 4, !dbg !249
  %175 = icmp ne i32 %174, 0, !dbg !250
  br i1 %175, label %__VERIFIER_assert.exit11, label %176, !dbg !251

; <label>:176                                     ; preds = %__VERIFIER_assert.exit10
  call void @__VERIFIER_error() #3, !dbg !252
  br label %__VERIFIER_assert.exit11, !dbg !253

__VERIFIER_assert.exit11:                         ; preds = %__VERIFIER_assert.exit10, %176
  %177 = bitcast i32* %3 to i8*, !dbg !254
  call void @llvm.lifetime.end(i64 4, i8* %177), !dbg !254
  %178 = load i32, i32* %l, align 4, !dbg !255
  %179 = add nsw i32 %178, -1, !dbg !255
  store i32 %179, i32* %l, align 4, !dbg !255
  br label %200, !dbg !256

; <label>:180                                     ; preds = %157
  %181 = load i32, i32* %r, align 4, !dbg !257
  %182 = icmp sle i32 1, %181, !dbg !258
  %183 = zext i1 %182 to i32, !dbg !258
  %184 = bitcast i32* %2 to i8*, !dbg !259
  call void @llvm.lifetime.start(i64 4, i8* %184), !dbg !259
  store i32 %183, i32* %2, align 4, !dbg !259
  %185 = load i32, i32* %2, align 4, !dbg !260
  %186 = icmp ne i32 %185, 0, !dbg !261
  br i1 %186, label %__VERIFIER_assert.exit12, label %187, !dbg !262

; <label>:187                                     ; preds = %180
  call void @__VERIFIER_error() #3, !dbg !263
  br label %__VERIFIER_assert.exit12, !dbg !264

__VERIFIER_assert.exit12:                         ; preds = %180, %187
  %188 = bitcast i32* %2 to i8*, !dbg !265
  call void @llvm.lifetime.end(i64 4, i8* %188), !dbg !265
  %189 = load i32, i32* %r, align 4, !dbg !266
  %190 = load i32, i32* %n, align 4, !dbg !267
  %191 = icmp sle i32 %189, %190, !dbg !268
  %192 = zext i1 %191 to i32, !dbg !268
  %193 = bitcast i32* %1 to i8*, !dbg !269
  call void @llvm.lifetime.start(i64 4, i8* %193), !dbg !269
  store i32 %192, i32* %1, align 4, !dbg !269
  %194 = load i32, i32* %1, align 4, !dbg !270
  %195 = icmp ne i32 %194, 0, !dbg !271
  br i1 %195, label %__VERIFIER_assert.exit13, label %196, !dbg !272

; <label>:196                                     ; preds = %__VERIFIER_assert.exit12
  call void @__VERIFIER_error() #3, !dbg !273
  br label %__VERIFIER_assert.exit13, !dbg !274

__VERIFIER_assert.exit13:                         ; preds = %__VERIFIER_assert.exit12, %196
  %197 = bitcast i32* %1 to i8*, !dbg !275
  call void @llvm.lifetime.end(i64 4, i8* %197), !dbg !275
  %198 = load i32, i32* %r, align 4, !dbg !276
  %199 = add nsw i32 %198, -1, !dbg !276
  store i32 %199, i32* %r, align 4, !dbg !276
  br label %200

; <label>:200                                     ; preds = %__VERIFIER_assert.exit13, %__VERIFIER_assert.exit11
  br label %40, !dbg !102

; <label>:201                                     ; preds = %40
  ret i32 0, !dbg !277
}

declare i32 @__VERIFIER_nondet_int(...) #2

declare void @__VERIFIER_assume(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "../sv-comp-2016/c/loop-invgen/heapsort_true-unreach-call.i", directory: "/Users/franck/development/perentiemq")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: false, function: i32 (i32, i8**)* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7, !7, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !{i32 2, !"Dwarf Version", i32 2}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"PIC Level", i32 2}
!17 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 3, type: !7)
!19 = !DIExpression()
!20 = !DILocation(line: 3, column: 28, scope: !4)
!21 = !DILocation(line: 4, column: 9, scope: !22)
!22 = distinct !DILexicalBlock(scope: !4, file: !1, line: 4, column: 7)
!23 = !DILocation(line: 4, column: 8, scope: !22)
!24 = !DILocation(line: 4, column: 7, scope: !4)
!25 = !DILocation(line: 4, column: 16, scope: !22)
!26 = !DILocation(line: 5, column: 12, scope: !27)
!27 = distinct !DILexicalBlock(scope: !22, file: !1, line: 4, column: 16)
!28 = !DILocation(line: 6, column: 3, scope: !27)
!29 = !DILocation(line: 7, column: 3, scope: !4)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !8, file: !1, line: 10, type: !7)
!31 = !DILocation(line: 10, column: 15, scope: !8)
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !8, file: !1, line: 10, type: !11)
!33 = !DILocation(line: 10, column: 27, scope: !8)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !8, file: !1, line: 11, type: !7)
!35 = !DILocation(line: 11, column: 7, scope: !8)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !8, file: !1, line: 11, type: !7)
!37 = !DILocation(line: 11, column: 9, scope: !8)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !8, file: !1, line: 11, type: !7)
!39 = !DILocation(line: 11, column: 11, scope: !8)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 11, type: !7)
!41 = !DILocation(line: 11, column: 13, scope: !8)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 11, type: !7)
!43 = !DILocation(line: 11, column: 15, scope: !8)
!44 = !DILocation(line: 12, column: 7, scope: !8)
!45 = !DILocation(line: 12, column: 5, scope: !8)
!46 = !DILocation(line: 13, column: 26, scope: !8)
!47 = !DILocation(line: 13, column: 23, scope: !8)
!48 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !49)
!49 = distinct !DILocation(line: 26, column: 2, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 25, column: 18)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 25, column: 11)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 24, column: 19)
!53 = distinct !DILexicalBlock(scope: !8, file: !1, line: 21, column: 16)
!54 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !55)
!55 = distinct !DILocation(line: 27, column: 2, scope: !50)
!56 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !57)
!57 = distinct !DILocation(line: 28, column: 2, scope: !50)
!58 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !59)
!59 = distinct !DILocation(line: 29, column: 2, scope: !50)
!60 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !61)
!61 = distinct !DILocation(line: 33, column: 7, scope: !52)
!62 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !63)
!63 = distinct !DILocation(line: 34, column: 7, scope: !52)
!64 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !65)
!65 = distinct !DILocation(line: 38, column: 7, scope: !52)
!66 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !67)
!67 = distinct !DILocation(line: 39, column: 7, scope: !52)
!68 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !69)
!69 = distinct !DILocation(line: 40, column: 7, scope: !52)
!70 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !71)
!71 = distinct !DILocation(line: 41, column: 7, scope: !52)
!72 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !73)
!73 = distinct !DILocation(line: 46, column: 7, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !1, line: 45, column: 15)
!75 = distinct !DILexicalBlock(scope: !53, file: !1, line: 45, column: 8)
!76 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !77)
!77 = distinct !DILocation(line: 47, column: 7, scope: !74)
!78 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !79)
!79 = distinct !DILocation(line: 50, column: 7, scope: !80)
!80 = distinct !DILexicalBlock(scope: !75, file: !1, line: 49, column: 12)
!81 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !82)
!82 = distinct !DILocation(line: 51, column: 7, scope: !80)
!83 = !DILocation(line: 13, column: 28, scope: !8)
!84 = !DILocation(line: 13, column: 31, scope: !8)
!85 = !DILocation(line: 13, column: 33, scope: !8)
!86 = !DILocation(line: 13, column: 3, scope: !8)
!87 = !DILocation(line: 14, column: 7, scope: !8)
!88 = !DILocation(line: 14, column: 8, scope: !8)
!89 = !DILocation(line: 14, column: 11, scope: !8)
!90 = !DILocation(line: 14, column: 5, scope: !8)
!91 = !DILocation(line: 15, column: 7, scope: !8)
!92 = !DILocation(line: 15, column: 5, scope: !8)
!93 = !DILocation(line: 16, column: 6, scope: !94)
!94 = distinct !DILexicalBlock(scope: !8, file: !1, line: 16, column: 6)
!95 = !DILocation(line: 16, column: 7, scope: !94)
!96 = !DILocation(line: 16, column: 6, scope: !8)
!97 = !DILocation(line: 17, column: 6, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 16, column: 11)
!99 = !DILocation(line: 18, column: 3, scope: !98)
!100 = !DILocation(line: 19, column: 6, scope: !101)
!101 = distinct !DILexicalBlock(scope: !94, file: !1, line: 18, column: 10)
!102 = !DILocation(line: 21, column: 3, scope: !8)
!103 = !DILocation(line: 21, column: 9, scope: !8)
!104 = !DILocation(line: 21, column: 11, scope: !8)
!105 = !DILocation(line: 22, column: 9, scope: !53)
!106 = !DILocation(line: 22, column: 7, scope: !53)
!107 = !DILocation(line: 23, column: 11, scope: !53)
!108 = !DILocation(line: 23, column: 10, scope: !53)
!109 = !DILocation(line: 23, column: 7, scope: !53)
!110 = !DILocation(line: 24, column: 5, scope: !53)
!111 = !DILocation(line: 24, column: 11, scope: !53)
!112 = !DILocation(line: 24, column: 16, scope: !53)
!113 = !DILocation(line: 24, column: 13, scope: !53)
!114 = !DILocation(line: 25, column: 11, scope: !51)
!115 = !DILocation(line: 25, column: 15, scope: !51)
!116 = !DILocation(line: 25, column: 13, scope: !51)
!117 = !DILocation(line: 25, column: 11, scope: !52)
!118 = !DILocation(line: 26, column: 25, scope: !50)
!119 = !DILocation(line: 26, column: 22, scope: !50)
!120 = !DILocation(line: 26, column: 2, scope: !50)
!121 = !DILocation(line: 4, column: 9, scope: !22, inlinedAt: !49)
!122 = !DILocation(line: 4, column: 8, scope: !22, inlinedAt: !49)
!123 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !49)
!124 = !DILocation(line: 5, column: 12, scope: !27, inlinedAt: !49)
!125 = !DILocation(line: 6, column: 3, scope: !27, inlinedAt: !49)
!126 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !49)
!127 = !DILocation(line: 27, column: 20, scope: !50)
!128 = !DILocation(line: 27, column: 25, scope: !50)
!129 = !DILocation(line: 27, column: 22, scope: !50)
!130 = !DILocation(line: 27, column: 2, scope: !50)
!131 = !DILocation(line: 4, column: 9, scope: !22, inlinedAt: !55)
!132 = !DILocation(line: 4, column: 8, scope: !22, inlinedAt: !55)
!133 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !55)
!134 = !DILocation(line: 5, column: 12, scope: !27, inlinedAt: !55)
!135 = !DILocation(line: 6, column: 3, scope: !27, inlinedAt: !55)
!136 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !55)
!137 = !DILocation(line: 28, column: 25, scope: !50)
!138 = !DILocation(line: 28, column: 26, scope: !50)
!139 = !DILocation(line: 28, column: 22, scope: !50)
!140 = !DILocation(line: 28, column: 2, scope: !50)
!141 = !DILocation(line: 4, column: 9, scope: !22, inlinedAt: !57)
!142 = !DILocation(line: 4, column: 8, scope: !22, inlinedAt: !57)
!143 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !57)
!144 = !DILocation(line: 5, column: 12, scope: !27, inlinedAt: !57)
!145 = !DILocation(line: 6, column: 3, scope: !27, inlinedAt: !57)
!146 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !57)
!147 = !DILocation(line: 29, column: 20, scope: !50)
!148 = !DILocation(line: 29, column: 21, scope: !50)
!149 = !DILocation(line: 29, column: 27, scope: !50)
!150 = !DILocation(line: 29, column: 24, scope: !50)
!151 = !DILocation(line: 29, column: 2, scope: !50)
!152 = !DILocation(line: 4, column: 9, scope: !22, inlinedAt: !59)
!153 = !DILocation(line: 4, column: 8, scope: !22, inlinedAt: !59)
!154 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !59)
!155 = !DILocation(line: 5, column: 12, scope: !27, inlinedAt: !59)
!156 = !DILocation(line: 6, column: 3, scope: !27, inlinedAt: !59)
!157 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !59)
!158 = !DILocation(line: 30, column: 6, scope: !159)
!159 = distinct !DILexicalBlock(scope: !50, file: !1, line: 30, column: 6)
!160 = !DILocation(line: 30, column: 6, scope: !50)
!161 = !DILocation(line: 31, column: 8, scope: !159)
!162 = !DILocation(line: 31, column: 10, scope: !159)
!163 = !DILocation(line: 31, column: 6, scope: !159)
!164 = !DILocation(line: 31, column: 4, scope: !159)
!165 = !DILocation(line: 32, column: 7, scope: !50)
!166 = !DILocation(line: 33, column: 30, scope: !52)
!167 = !DILocation(line: 33, column: 27, scope: !52)
!168 = !DILocation(line: 33, column: 7, scope: !52)
!169 = !DILocation(line: 4, column: 9, scope: !22, inlinedAt: !61)
!170 = !DILocation(line: 4, column: 8, scope: !22, inlinedAt: !61)
!171 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !61)
!172 = !DILocation(line: 5, column: 12, scope: !27, inlinedAt: !61)
!173 = !DILocation(line: 6, column: 3, scope: !27, inlinedAt: !61)
!174 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !61)
!175 = !DILocation(line: 34, column: 25, scope: !52)
!176 = !DILocation(line: 34, column: 30, scope: !52)
!177 = !DILocation(line: 34, column: 27, scope: !52)
!178 = !DILocation(line: 34, column: 7, scope: !52)
!179 = !DILocation(line: 4, column: 9, scope: !22, inlinedAt: !63)
!180 = !DILocation(line: 4, column: 8, scope: !22, inlinedAt: !63)
!181 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !63)
!182 = !DILocation(line: 5, column: 12, scope: !27, inlinedAt: !63)
!183 = !DILocation(line: 6, column: 3, scope: !27, inlinedAt: !63)
!184 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !63)
!185 = !DILocation(line: 35, column: 11, scope: !186)
!186 = distinct !DILexicalBlock(scope: !52, file: !1, line: 35, column: 11)
!187 = !DILocation(line: 35, column: 11, scope: !52)
!188 = !DILocation(line: 36, column: 8, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !1, line: 35, column: 37)
!190 = !DILocation(line: 38, column: 30, scope: !52)
!191 = !DILocation(line: 38, column: 27, scope: !52)
!192 = !DILocation(line: 38, column: 7, scope: !52)
!193 = !DILocation(line: 4, column: 9, scope: !22, inlinedAt: !65)
!194 = !DILocation(line: 4, column: 8, scope: !22, inlinedAt: !65)
!195 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !65)
!196 = !DILocation(line: 5, column: 12, scope: !27, inlinedAt: !65)
!197 = !DILocation(line: 6, column: 3, scope: !27, inlinedAt: !65)
!198 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !65)
!199 = !DILocation(line: 39, column: 25, scope: !52)
!200 = !DILocation(line: 39, column: 30, scope: !52)
!201 = !DILocation(line: 39, column: 27, scope: !52)
!202 = !DILocation(line: 39, column: 7, scope: !52)
!203 = !DILocation(line: 4, column: 9, scope: !22, inlinedAt: !67)
!204 = !DILocation(line: 4, column: 8, scope: !22, inlinedAt: !67)
!205 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !67)
!206 = !DILocation(line: 5, column: 12, scope: !27, inlinedAt: !67)
!207 = !DILocation(line: 6, column: 3, scope: !27, inlinedAt: !67)
!208 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !67)
!209 = !DILocation(line: 40, column: 30, scope: !52)
!210 = !DILocation(line: 40, column: 27, scope: !52)
!211 = !DILocation(line: 40, column: 7, scope: !52)
!212 = !DILocation(line: 4, column: 9, scope: !22, inlinedAt: !69)
!213 = !DILocation(line: 4, column: 8, scope: !22, inlinedAt: !69)
!214 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !69)
!215 = !DILocation(line: 5, column: 12, scope: !27, inlinedAt: !69)
!216 = !DILocation(line: 6, column: 3, scope: !27, inlinedAt: !69)
!217 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !69)
!218 = !DILocation(line: 41, column: 25, scope: !52)
!219 = !DILocation(line: 41, column: 30, scope: !52)
!220 = !DILocation(line: 41, column: 27, scope: !52)
!221 = !DILocation(line: 41, column: 7, scope: !52)
!222 = !DILocation(line: 4, column: 9, scope: !22, inlinedAt: !71)
!223 = !DILocation(line: 4, column: 8, scope: !22, inlinedAt: !71)
!224 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !71)
!225 = !DILocation(line: 5, column: 12, scope: !27, inlinedAt: !71)
!226 = !DILocation(line: 6, column: 3, scope: !27, inlinedAt: !71)
!227 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !71)
!228 = !DILocation(line: 42, column: 11, scope: !52)
!229 = !DILocation(line: 42, column: 9, scope: !52)
!230 = !DILocation(line: 43, column: 13, scope: !52)
!231 = !DILocation(line: 43, column: 12, scope: !52)
!232 = !DILocation(line: 43, column: 9, scope: !52)
!233 = !DILocation(line: 45, column: 8, scope: !75)
!234 = !DILocation(line: 45, column: 10, scope: !75)
!235 = !DILocation(line: 45, column: 8, scope: !53)
!236 = !DILocation(line: 46, column: 30, scope: !74)
!237 = !DILocation(line: 46, column: 27, scope: !74)
!238 = !DILocation(line: 46, column: 7, scope: !74)
!239 = !DILocation(line: 4, column: 9, scope: !22, inlinedAt: !73)
!240 = !DILocation(line: 4, column: 8, scope: !22, inlinedAt: !73)
!241 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !73)
!242 = !DILocation(line: 5, column: 12, scope: !27, inlinedAt: !73)
!243 = !DILocation(line: 6, column: 3, scope: !27, inlinedAt: !73)
!244 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !73)
!245 = !DILocation(line: 47, column: 25, scope: !74)
!246 = !DILocation(line: 47, column: 30, scope: !74)
!247 = !DILocation(line: 47, column: 27, scope: !74)
!248 = !DILocation(line: 47, column: 7, scope: !74)
!249 = !DILocation(line: 4, column: 9, scope: !22, inlinedAt: !77)
!250 = !DILocation(line: 4, column: 8, scope: !22, inlinedAt: !77)
!251 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !77)
!252 = !DILocation(line: 5, column: 12, scope: !27, inlinedAt: !77)
!253 = !DILocation(line: 6, column: 3, scope: !27, inlinedAt: !77)
!254 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !77)
!255 = !DILocation(line: 48, column: 8, scope: !74)
!256 = !DILocation(line: 49, column: 5, scope: !74)
!257 = !DILocation(line: 50, column: 30, scope: !80)
!258 = !DILocation(line: 50, column: 27, scope: !80)
!259 = !DILocation(line: 50, column: 7, scope: !80)
!260 = !DILocation(line: 4, column: 9, scope: !22, inlinedAt: !79)
!261 = !DILocation(line: 4, column: 8, scope: !22, inlinedAt: !79)
!262 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !79)
!263 = !DILocation(line: 5, column: 12, scope: !27, inlinedAt: !79)
!264 = !DILocation(line: 6, column: 3, scope: !27, inlinedAt: !79)
!265 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !79)
!266 = !DILocation(line: 51, column: 25, scope: !80)
!267 = !DILocation(line: 51, column: 30, scope: !80)
!268 = !DILocation(line: 51, column: 27, scope: !80)
!269 = !DILocation(line: 51, column: 7, scope: !80)
!270 = !DILocation(line: 4, column: 9, scope: !22, inlinedAt: !82)
!271 = !DILocation(line: 4, column: 8, scope: !22, inlinedAt: !82)
!272 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !82)
!273 = !DILocation(line: 5, column: 12, scope: !27, inlinedAt: !82)
!274 = !DILocation(line: 6, column: 3, scope: !27, inlinedAt: !82)
!275 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !82)
!276 = !DILocation(line: 52, column: 8, scope: !80)
!277 = !DILocation(line: 55, column: 3, scope: !8)
