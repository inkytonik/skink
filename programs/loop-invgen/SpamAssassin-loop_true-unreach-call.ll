; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind ssp uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
  %1 = alloca i32, align 4
  store i32 %cond, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !17
  %2 = load i32, i32* %1, align 4, !dbg !18
  %3 = icmp ne i32 %2, 0, !dbg !20
  br i1 %3, label %6, label %4, !dbg !21

; <label>:4                                       ; preds = %0
  br label %5, !dbg !22

; <label>:5                                       ; preds = %4
  call void @__VERIFIER_error(), !dbg !23
  br label %6, !dbg !25

; <label>:6                                       ; preds = %5, %0
  ret void, !dbg !26
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @__VERIFIER_error() #2

; Function Attrs: nounwind ssp uwtable
define void @main() #0 {
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
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %bufsize = alloca i32, align 4
  %limit = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %len, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %i, metadata !29, metadata !16), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %j, metadata !31, metadata !16), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %bufsize, metadata !33, metadata !16), !dbg !34
  %17 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !35
  store i32 %17, i32* %bufsize, align 4, !dbg !36
  %18 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !37
  store i32 %18, i32* %len, align 4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %limit, metadata !39, metadata !16), !dbg !40
  %19 = load i32, i32* %bufsize, align 4, !dbg !41
  %20 = sub nsw i32 %19, 4, !dbg !42
  store i32 %20, i32* %limit, align 4, !dbg !40
  %21 = load i32, i32* %bufsize, align 4, !dbg !43
  %22 = icmp slt i32 %21, 0, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %16, metadata !15, metadata !16), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %15, metadata !15, metadata !16), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %14, metadata !15, metadata !16), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %13, metadata !15, metadata !16), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %12, metadata !15, metadata !16), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %11, metadata !15, metadata !16), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %10, metadata !15, metadata !16), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %9, metadata !15, metadata !16), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %8, metadata !15, metadata !16), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %7, metadata !15, metadata !16), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %6, metadata !15, metadata !16), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %5, metadata !15, metadata !16), !dbg !76
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !16), !dbg !78
  call void @llvm.dbg.declare(metadata i32* %3, metadata !15, metadata !16), !dbg !81
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !16), !dbg !83
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !85
  br i1 %22, label %23, label %24, !dbg !87

; <label>:23                                      ; preds = %0
  br label %205, !dbg !88

; <label>:24                                      ; preds = %0
  store i32 0, i32* %i, align 4, !dbg !89
  br label %25, !dbg !90

; <label>:25                                      ; preds = %204, %24
  %26 = load i32, i32* %i, align 4, !dbg !91
  %27 = load i32, i32* %len, align 4, !dbg !92
  %28 = icmp slt i32 %26, %27, !dbg !93
  br i1 %28, label %29, label %205, !dbg !94

; <label>:29                                      ; preds = %25
  store i32 0, i32* %j, align 4, !dbg !95
  br label %30, !dbg !96

; <label>:30                                      ; preds = %203, %29
  %31 = load i32, i32* %i, align 4, !dbg !97
  %32 = load i32, i32* %len, align 4, !dbg !98
  %33 = icmp slt i32 %31, %32, !dbg !99
  br i1 %33, label %34, label %38, !dbg !100

; <label>:34                                      ; preds = %30
  %35 = load i32, i32* %j, align 4, !dbg !101
  %36 = load i32, i32* %limit, align 4, !dbg !102
  %37 = icmp slt i32 %35, %36, !dbg !103
  br label %38

; <label>:38                                      ; preds = %34, %30
  %39 = phi i1 [ false, %30 ], [ %37, %34 ]
  br i1 %39, label %40, label %204, !dbg !104

; <label>:40                                      ; preds = %38
  %41 = load i32, i32* %i, align 4, !dbg !105
  %42 = add nsw i32 %41, 1, !dbg !106
  %43 = load i32, i32* %len, align 4, !dbg !107
  %44 = icmp slt i32 %42, %43, !dbg !108
  br i1 %44, label %45, label %163, !dbg !109

; <label>:45                                      ; preds = %40
  %46 = load i32, i32* %i, align 4, !dbg !110
  %47 = add nsw i32 %46, 1, !dbg !111
  %48 = load i32, i32* %len, align 4, !dbg !112
  %49 = icmp slt i32 %47, %48, !dbg !113
  %50 = zext i1 %49 to i32, !dbg !113
  %51 = bitcast i32* %16 to i8*, !dbg !114
  call void @llvm.lifetime.start(i64 4, i8* %51), !dbg !114
  store i32 %50, i32* %16, align 4, !dbg !114
  %52 = load i32, i32* %16, align 4, !dbg !115
  %53 = icmp ne i32 %52, 0, !dbg !116
  br i1 %53, label %__VERIFIER_assert.exit, label %54, !dbg !117

; <label>:54                                      ; preds = %45
  call void @__VERIFIER_error() #3, !dbg !118
  br label %__VERIFIER_assert.exit, !dbg !119

__VERIFIER_assert.exit:                           ; preds = %45, %54
  %55 = bitcast i32* %16 to i8*, !dbg !120
  call void @llvm.lifetime.end(i64 4, i8* %55), !dbg !120
  %56 = load i32, i32* %i, align 4, !dbg !121
  %57 = icmp sle i32 0, %56, !dbg !122
  %58 = zext i1 %57 to i32, !dbg !122
  %59 = bitcast i32* %15 to i8*, !dbg !123
  call void @llvm.lifetime.start(i64 4, i8* %59), !dbg !123
  store i32 %58, i32* %15, align 4, !dbg !123
  %60 = load i32, i32* %15, align 4, !dbg !124
  %61 = icmp ne i32 %60, 0, !dbg !125
  br i1 %61, label %__VERIFIER_assert.exit1, label %62, !dbg !126

; <label>:62                                      ; preds = %__VERIFIER_assert.exit
  call void @__VERIFIER_error() #3, !dbg !127
  br label %__VERIFIER_assert.exit1, !dbg !128

__VERIFIER_assert.exit1:                          ; preds = %__VERIFIER_assert.exit, %62
  %63 = bitcast i32* %15 to i8*, !dbg !129
  call void @llvm.lifetime.end(i64 4, i8* %63), !dbg !129
  %64 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !130
  %65 = icmp ne i32 %64, 0, !dbg !130
  br i1 %65, label %66, label %67, !dbg !132

; <label>:66                                      ; preds = %__VERIFIER_assert.exit1
  br label %164, !dbg !133

; <label>:67                                      ; preds = %__VERIFIER_assert.exit1
  %68 = load i32, i32* %i, align 4, !dbg !134
  %69 = load i32, i32* %len, align 4, !dbg !135
  %70 = icmp slt i32 %68, %69, !dbg !136
  %71 = zext i1 %70 to i32, !dbg !136
  %72 = bitcast i32* %14 to i8*, !dbg !137
  call void @llvm.lifetime.start(i64 4, i8* %72), !dbg !137
  store i32 %71, i32* %14, align 4, !dbg !137
  %73 = load i32, i32* %14, align 4, !dbg !138
  %74 = icmp ne i32 %73, 0, !dbg !139
  br i1 %74, label %__VERIFIER_assert.exit2, label %75, !dbg !140

; <label>:75                                      ; preds = %67
  call void @__VERIFIER_error() #3, !dbg !141
  br label %__VERIFIER_assert.exit2, !dbg !142

__VERIFIER_assert.exit2:                          ; preds = %67, %75
  %76 = bitcast i32* %14 to i8*, !dbg !143
  call void @llvm.lifetime.end(i64 4, i8* %76), !dbg !143
  %77 = load i32, i32* %i, align 4, !dbg !144
  %78 = icmp sle i32 0, %77, !dbg !145
  %79 = zext i1 %78 to i32, !dbg !145
  %80 = bitcast i32* %13 to i8*, !dbg !146
  call void @llvm.lifetime.start(i64 4, i8* %80), !dbg !146
  store i32 %79, i32* %13, align 4, !dbg !146
  %81 = load i32, i32* %13, align 4, !dbg !147
  %82 = icmp ne i32 %81, 0, !dbg !148
  br i1 %82, label %__VERIFIER_assert.exit3, label %83, !dbg !149

; <label>:83                                      ; preds = %__VERIFIER_assert.exit2
  call void @__VERIFIER_error() #3, !dbg !150
  br label %__VERIFIER_assert.exit3, !dbg !151

__VERIFIER_assert.exit3:                          ; preds = %__VERIFIER_assert.exit2, %83
  %84 = bitcast i32* %13 to i8*, !dbg !152
  call void @llvm.lifetime.end(i64 4, i8* %84), !dbg !152
  %85 = load i32, i32* %j, align 4, !dbg !153
  %86 = load i32, i32* %bufsize, align 4, !dbg !154
  %87 = icmp slt i32 %85, %86, !dbg !155
  %88 = zext i1 %87 to i32, !dbg !155
  %89 = bitcast i32* %12 to i8*, !dbg !156
  call void @llvm.lifetime.start(i64 4, i8* %89), !dbg !156
  store i32 %88, i32* %12, align 4, !dbg !156
  %90 = load i32, i32* %12, align 4, !dbg !157
  %91 = icmp ne i32 %90, 0, !dbg !158
  br i1 %91, label %__VERIFIER_assert.exit4, label %92, !dbg !159

; <label>:92                                      ; preds = %__VERIFIER_assert.exit3
  call void @__VERIFIER_error() #3, !dbg !160
  br label %__VERIFIER_assert.exit4, !dbg !161

__VERIFIER_assert.exit4:                          ; preds = %__VERIFIER_assert.exit3, %92
  %93 = bitcast i32* %12 to i8*, !dbg !162
  call void @llvm.lifetime.end(i64 4, i8* %93), !dbg !162
  %94 = load i32, i32* %j, align 4, !dbg !163
  %95 = icmp sle i32 0, %94, !dbg !164
  %96 = zext i1 %95 to i32, !dbg !164
  %97 = bitcast i32* %11 to i8*, !dbg !165
  call void @llvm.lifetime.start(i64 4, i8* %97), !dbg !165
  store i32 %96, i32* %11, align 4, !dbg !165
  %98 = load i32, i32* %11, align 4, !dbg !166
  %99 = icmp ne i32 %98, 0, !dbg !167
  br i1 %99, label %__VERIFIER_assert.exit5, label %100, !dbg !168

; <label>:100                                     ; preds = %__VERIFIER_assert.exit4
  call void @__VERIFIER_error() #3, !dbg !169
  br label %__VERIFIER_assert.exit5, !dbg !170

__VERIFIER_assert.exit5:                          ; preds = %__VERIFIER_assert.exit4, %100
  %101 = bitcast i32* %11 to i8*, !dbg !171
  call void @llvm.lifetime.end(i64 4, i8* %101), !dbg !171
  %102 = load i32, i32* %j, align 4, !dbg !172
  %103 = add nsw i32 %102, 1, !dbg !172
  store i32 %103, i32* %j, align 4, !dbg !172
  %104 = load i32, i32* %i, align 4, !dbg !173
  %105 = add nsw i32 %104, 1, !dbg !173
  store i32 %105, i32* %i, align 4, !dbg !173
  %106 = load i32, i32* %i, align 4, !dbg !174
  %107 = load i32, i32* %len, align 4, !dbg !175
  %108 = icmp slt i32 %106, %107, !dbg !176
  %109 = zext i1 %108 to i32, !dbg !176
  %110 = bitcast i32* %10 to i8*, !dbg !177
  call void @llvm.lifetime.start(i64 4, i8* %110), !dbg !177
  store i32 %109, i32* %10, align 4, !dbg !177
  %111 = load i32, i32* %10, align 4, !dbg !178
  %112 = icmp ne i32 %111, 0, !dbg !179
  br i1 %112, label %__VERIFIER_assert.exit6, label %113, !dbg !180

; <label>:113                                     ; preds = %__VERIFIER_assert.exit5
  call void @__VERIFIER_error() #3, !dbg !181
  br label %__VERIFIER_assert.exit6, !dbg !182

__VERIFIER_assert.exit6:                          ; preds = %__VERIFIER_assert.exit5, %113
  %114 = bitcast i32* %10 to i8*, !dbg !183
  call void @llvm.lifetime.end(i64 4, i8* %114), !dbg !183
  %115 = load i32, i32* %i, align 4, !dbg !184
  %116 = icmp sle i32 0, %115, !dbg !185
  %117 = zext i1 %116 to i32, !dbg !185
  %118 = bitcast i32* %9 to i8*, !dbg !186
  call void @llvm.lifetime.start(i64 4, i8* %118), !dbg !186
  store i32 %117, i32* %9, align 4, !dbg !186
  %119 = load i32, i32* %9, align 4, !dbg !187
  %120 = icmp ne i32 %119, 0, !dbg !188
  br i1 %120, label %__VERIFIER_assert.exit7, label %121, !dbg !189

; <label>:121                                     ; preds = %__VERIFIER_assert.exit6
  call void @__VERIFIER_error() #3, !dbg !190
  br label %__VERIFIER_assert.exit7, !dbg !191

__VERIFIER_assert.exit7:                          ; preds = %__VERIFIER_assert.exit6, %121
  %122 = bitcast i32* %9 to i8*, !dbg !192
  call void @llvm.lifetime.end(i64 4, i8* %122), !dbg !192
  %123 = load i32, i32* %j, align 4, !dbg !193
  %124 = load i32, i32* %bufsize, align 4, !dbg !194
  %125 = icmp slt i32 %123, %124, !dbg !195
  %126 = zext i1 %125 to i32, !dbg !195
  %127 = bitcast i32* %8 to i8*, !dbg !196
  call void @llvm.lifetime.start(i64 4, i8* %127), !dbg !196
  store i32 %126, i32* %8, align 4, !dbg !196
  %128 = load i32, i32* %8, align 4, !dbg !197
  %129 = icmp ne i32 %128, 0, !dbg !198
  br i1 %129, label %__VERIFIER_assert.exit8, label %130, !dbg !199

; <label>:130                                     ; preds = %__VERIFIER_assert.exit7
  call void @__VERIFIER_error() #3, !dbg !200
  br label %__VERIFIER_assert.exit8, !dbg !201

__VERIFIER_assert.exit8:                          ; preds = %__VERIFIER_assert.exit7, %130
  %131 = bitcast i32* %8 to i8*, !dbg !202
  call void @llvm.lifetime.end(i64 4, i8* %131), !dbg !202
  %132 = load i32, i32* %j, align 4, !dbg !203
  %133 = icmp sle i32 0, %132, !dbg !204
  %134 = zext i1 %133 to i32, !dbg !204
  %135 = bitcast i32* %7 to i8*, !dbg !205
  call void @llvm.lifetime.start(i64 4, i8* %135), !dbg !205
  store i32 %134, i32* %7, align 4, !dbg !205
  %136 = load i32, i32* %7, align 4, !dbg !206
  %137 = icmp ne i32 %136, 0, !dbg !207
  br i1 %137, label %__VERIFIER_assert.exit9, label %138, !dbg !208

; <label>:138                                     ; preds = %__VERIFIER_assert.exit8
  call void @__VERIFIER_error() #3, !dbg !209
  br label %__VERIFIER_assert.exit9, !dbg !210

__VERIFIER_assert.exit9:                          ; preds = %__VERIFIER_assert.exit8, %138
  %139 = bitcast i32* %7 to i8*, !dbg !211
  call void @llvm.lifetime.end(i64 4, i8* %139), !dbg !211
  %140 = load i32, i32* %j, align 4, !dbg !212
  %141 = add nsw i32 %140, 1, !dbg !212
  store i32 %141, i32* %j, align 4, !dbg !212
  %142 = load i32, i32* %i, align 4, !dbg !213
  %143 = add nsw i32 %142, 1, !dbg !213
  store i32 %143, i32* %i, align 4, !dbg !213
  %144 = load i32, i32* %j, align 4, !dbg !214
  %145 = load i32, i32* %bufsize, align 4, !dbg !215
  %146 = icmp slt i32 %144, %145, !dbg !216
  %147 = zext i1 %146 to i32, !dbg !216
  %148 = bitcast i32* %6 to i8*, !dbg !217
  call void @llvm.lifetime.start(i64 4, i8* %148), !dbg !217
  store i32 %147, i32* %6, align 4, !dbg !217
  %149 = load i32, i32* %6, align 4, !dbg !218
  %150 = icmp ne i32 %149, 0, !dbg !219
  br i1 %150, label %__VERIFIER_assert.exit10, label %151, !dbg !220

; <label>:151                                     ; preds = %__VERIFIER_assert.exit9
  call void @__VERIFIER_error() #3, !dbg !221
  br label %__VERIFIER_assert.exit10, !dbg !222

__VERIFIER_assert.exit10:                         ; preds = %__VERIFIER_assert.exit9, %151
  %152 = bitcast i32* %6 to i8*, !dbg !223
  call void @llvm.lifetime.end(i64 4, i8* %152), !dbg !223
  %153 = load i32, i32* %j, align 4, !dbg !224
  %154 = icmp sle i32 0, %153, !dbg !225
  %155 = zext i1 %154 to i32, !dbg !225
  %156 = bitcast i32* %5 to i8*, !dbg !226
  call void @llvm.lifetime.start(i64 4, i8* %156), !dbg !226
  store i32 %155, i32* %5, align 4, !dbg !226
  %157 = load i32, i32* %5, align 4, !dbg !227
  %158 = icmp ne i32 %157, 0, !dbg !228
  br i1 %158, label %__VERIFIER_assert.exit11, label %159, !dbg !229

; <label>:159                                     ; preds = %__VERIFIER_assert.exit10
  call void @__VERIFIER_error() #3, !dbg !230
  br label %__VERIFIER_assert.exit11, !dbg !231

__VERIFIER_assert.exit11:                         ; preds = %__VERIFIER_assert.exit10, %159
  %160 = bitcast i32* %5 to i8*, !dbg !232
  call void @llvm.lifetime.end(i64 4, i8* %160), !dbg !232
  %161 = load i32, i32* %j, align 4, !dbg !233
  %162 = add nsw i32 %161, 1, !dbg !233
  store i32 %162, i32* %j, align 4, !dbg !233
  br label %203, !dbg !234

; <label>:163                                     ; preds = %40
  br label %164, !dbg !235

; <label>:164                                     ; preds = %163, %66
  %165 = load i32, i32* %i, align 4, !dbg !236
  %166 = load i32, i32* %len, align 4, !dbg !237
  %167 = icmp slt i32 %165, %166, !dbg !238
  %168 = zext i1 %167 to i32, !dbg !238
  %169 = bitcast i32* %4 to i8*, !dbg !239
  call void @llvm.lifetime.start(i64 4, i8* %169), !dbg !239
  store i32 %168, i32* %4, align 4, !dbg !239
  %170 = load i32, i32* %4, align 4, !dbg !240
  %171 = icmp ne i32 %170, 0, !dbg !241
  br i1 %171, label %__VERIFIER_assert.exit12, label %172, !dbg !242

; <label>:172                                     ; preds = %164
  call void @__VERIFIER_error() #3, !dbg !243
  br label %__VERIFIER_assert.exit12, !dbg !244

__VERIFIER_assert.exit12:                         ; preds = %164, %172
  %173 = bitcast i32* %4 to i8*, !dbg !245
  call void @llvm.lifetime.end(i64 4, i8* %173), !dbg !245
  %174 = load i32, i32* %i, align 4, !dbg !246
  %175 = icmp sle i32 0, %174, !dbg !247
  %176 = zext i1 %175 to i32, !dbg !247
  %177 = bitcast i32* %3 to i8*, !dbg !248
  call void @llvm.lifetime.start(i64 4, i8* %177), !dbg !248
  store i32 %176, i32* %3, align 4, !dbg !248
  %178 = load i32, i32* %3, align 4, !dbg !249
  %179 = icmp ne i32 %178, 0, !dbg !250
  br i1 %179, label %__VERIFIER_assert.exit13, label %180, !dbg !251

; <label>:180                                     ; preds = %__VERIFIER_assert.exit12
  call void @__VERIFIER_error() #3, !dbg !252
  br label %__VERIFIER_assert.exit13, !dbg !253

__VERIFIER_assert.exit13:                         ; preds = %__VERIFIER_assert.exit12, %180
  %181 = bitcast i32* %3 to i8*, !dbg !254
  call void @llvm.lifetime.end(i64 4, i8* %181), !dbg !254
  %182 = load i32, i32* %j, align 4, !dbg !255
  %183 = load i32, i32* %bufsize, align 4, !dbg !256
  %184 = icmp slt i32 %182, %183, !dbg !257
  %185 = zext i1 %184 to i32, !dbg !257
  %186 = bitcast i32* %2 to i8*, !dbg !258
  call void @llvm.lifetime.start(i64 4, i8* %186), !dbg !258
  store i32 %185, i32* %2, align 4, !dbg !258
  %187 = load i32, i32* %2, align 4, !dbg !259
  %188 = icmp ne i32 %187, 0, !dbg !260
  br i1 %188, label %__VERIFIER_assert.exit14, label %189, !dbg !261

; <label>:189                                     ; preds = %__VERIFIER_assert.exit13
  call void @__VERIFIER_error() #3, !dbg !262
  br label %__VERIFIER_assert.exit14, !dbg !263

__VERIFIER_assert.exit14:                         ; preds = %__VERIFIER_assert.exit13, %189
  %190 = bitcast i32* %2 to i8*, !dbg !264
  call void @llvm.lifetime.end(i64 4, i8* %190), !dbg !264
  %191 = load i32, i32* %j, align 4, !dbg !265
  %192 = icmp sle i32 0, %191, !dbg !266
  %193 = zext i1 %192 to i32, !dbg !266
  %194 = bitcast i32* %1 to i8*, !dbg !267
  call void @llvm.lifetime.start(i64 4, i8* %194), !dbg !267
  store i32 %193, i32* %1, align 4, !dbg !267
  %195 = load i32, i32* %1, align 4, !dbg !268
  %196 = icmp ne i32 %195, 0, !dbg !269
  br i1 %196, label %__VERIFIER_assert.exit15, label %197, !dbg !270

; <label>:197                                     ; preds = %__VERIFIER_assert.exit14
  call void @__VERIFIER_error() #3, !dbg !271
  br label %__VERIFIER_assert.exit15, !dbg !272

__VERIFIER_assert.exit15:                         ; preds = %__VERIFIER_assert.exit14, %197
  %198 = bitcast i32* %1 to i8*, !dbg !273
  call void @llvm.lifetime.end(i64 4, i8* %198), !dbg !273
  %199 = load i32, i32* %j, align 4, !dbg !274
  %200 = add nsw i32 %199, 1, !dbg !274
  store i32 %200, i32* %j, align 4, !dbg !274
  %201 = load i32, i32* %i, align 4, !dbg !275
  %202 = add nsw i32 %201, 1, !dbg !275
  store i32 %202, i32* %i, align 4, !dbg !275
  br label %203

; <label>:203                                     ; preds = %__VERIFIER_assert.exit15, %__VERIFIER_assert.exit11
  br label %30, !dbg !276

; <label>:204                                     ; preds = %38
  br label %25, !dbg !277

; <label>:205                                     ; preds = %25, %23
  ret void, !dbg !278
}

declare i32 @__VERIFIER_nondet_int(...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "../../sv-comp-2016/c/loop-invgen/SpamAssassin-loop_true-unreach-call.i", directory: "/Users/franck/development/perentiemq/programs")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 11, isOptimized: false, function: void ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{null}
!11 = !{i32 2, !"Dwarf Version", i32 2}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"PIC Level", i32 2}
!14 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cond", arg: 1, scope: !4, file: !1, line: 3, type: !7)
!16 = !DIExpression()
!17 = !DILocation(line: 3, column: 28, scope: !4)
!18 = !DILocation(line: 4, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !4, file: !1, line: 4, column: 7)
!20 = !DILocation(line: 4, column: 8, scope: !19)
!21 = !DILocation(line: 4, column: 7, scope: !4)
!22 = !DILocation(line: 4, column: 16, scope: !19)
!23 = !DILocation(line: 5, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 4, column: 16)
!25 = !DILocation(line: 6, column: 3, scope: !24)
!26 = !DILocation(line: 7, column: 3, scope: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !8, file: !1, line: 12, type: !7)
!28 = !DILocation(line: 12, column: 7, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 13, type: !7)
!30 = !DILocation(line: 13, column: 7, scope: !8)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !8, file: !1, line: 14, type: !7)
!32 = !DILocation(line: 14, column: 7, scope: !8)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bufsize", scope: !8, file: !1, line: 15, type: !7)
!34 = !DILocation(line: 15, column: 7, scope: !8)
!35 = !DILocation(line: 16, column: 13, scope: !8)
!36 = !DILocation(line: 16, column: 11, scope: !8)
!37 = !DILocation(line: 17, column: 9, scope: !8)
!38 = !DILocation(line: 17, column: 7, scope: !8)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "limit", scope: !8, file: !1, line: 18, type: !7)
!40 = !DILocation(line: 18, column: 7, scope: !8)
!41 = !DILocation(line: 18, column: 15, scope: !8)
!42 = !DILocation(line: 18, column: 23, scope: !8)
!43 = !DILocation(line: 19, column: 7, scope: !44)
!44 = distinct !DILexicalBlock(scope: !8, file: !1, line: 19, column: 7)
!45 = !DILocation(line: 19, column: 15, scope: !44)
!46 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !47)
!47 = distinct !DILocation(line: 23, column: 2, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 22, column: 23)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 22, column: 11)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 21, column: 40)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 21, column: 5)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 21, column: 5)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 20, column: 26)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 20, column: 3)
!55 = distinct !DILexicalBlock(scope: !8, file: !1, line: 20, column: 3)
!56 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !57)
!57 = distinct !DILocation(line: 24, column: 2, scope: !48)
!58 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !59)
!59 = distinct !DILocation(line: 26, column: 9, scope: !48)
!60 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !61)
!61 = distinct !DILocation(line: 27, column: 2, scope: !48)
!62 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !63)
!63 = distinct !DILocation(line: 28, column: 9, scope: !48)
!64 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !65)
!65 = distinct !DILocation(line: 29, column: 2, scope: !48)
!66 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !67)
!67 = distinct !DILocation(line: 32, column: 9, scope: !48)
!68 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !69)
!69 = distinct !DILocation(line: 33, column: 2, scope: !48)
!70 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !71)
!71 = distinct !DILocation(line: 34, column: 9, scope: !48)
!72 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !73)
!73 = distinct !DILocation(line: 35, column: 2, scope: !48)
!74 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !75)
!75 = distinct !DILocation(line: 38, column: 9, scope: !48)
!76 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !77)
!77 = distinct !DILocation(line: 39, column: 2, scope: !48)
!78 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !79)
!79 = distinct !DILocation(line: 43, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !49, file: !1, line: 41, column: 14)
!81 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !82)
!82 = distinct !DILocation(line: 44, column: 2, scope: !80)
!83 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !84)
!84 = distinct !DILocation(line: 45, column: 9, scope: !80)
!85 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !86)
!86 = distinct !DILocation(line: 46, column: 2, scope: !80)
!87 = !DILocation(line: 19, column: 7, scope: !8)
!88 = !DILocation(line: 19, column: 20, scope: !44)
!89 = !DILocation(line: 20, column: 10, scope: !55)
!90 = !DILocation(line: 20, column: 8, scope: !55)
!91 = !DILocation(line: 20, column: 15, scope: !54)
!92 = !DILocation(line: 20, column: 19, scope: !54)
!93 = !DILocation(line: 20, column: 17, scope: !54)
!94 = !DILocation(line: 20, column: 3, scope: !55)
!95 = !DILocation(line: 21, column: 12, scope: !52)
!96 = !DILocation(line: 21, column: 10, scope: !52)
!97 = !DILocation(line: 21, column: 17, scope: !51)
!98 = !DILocation(line: 21, column: 21, scope: !51)
!99 = !DILocation(line: 21, column: 19, scope: !51)
!100 = !DILocation(line: 21, column: 25, scope: !51)
!101 = !DILocation(line: 21, column: 28, scope: !51)
!102 = !DILocation(line: 21, column: 32, scope: !51)
!103 = !DILocation(line: 21, column: 30, scope: !51)
!104 = !DILocation(line: 21, column: 5, scope: !52)
!105 = !DILocation(line: 22, column: 11, scope: !49)
!106 = !DILocation(line: 22, column: 13, scope: !49)
!107 = !DILocation(line: 22, column: 19, scope: !49)
!108 = !DILocation(line: 22, column: 17, scope: !49)
!109 = !DILocation(line: 22, column: 11, scope: !50)
!110 = !DILocation(line: 23, column: 20, scope: !48)
!111 = !DILocation(line: 23, column: 21, scope: !48)
!112 = !DILocation(line: 23, column: 24, scope: !48)
!113 = !DILocation(line: 23, column: 23, scope: !48)
!114 = !DILocation(line: 23, column: 2, scope: !48)
!115 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !47)
!116 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !47)
!117 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !47)
!118 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !47)
!119 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !47)
!120 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !47)
!121 = !DILocation(line: 24, column: 23, scope: !48)
!122 = !DILocation(line: 24, column: 21, scope: !48)
!123 = !DILocation(line: 24, column: 2, scope: !48)
!124 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !57)
!125 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !57)
!126 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !57)
!127 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !57)
!128 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !57)
!129 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !57)
!130 = !DILocation(line: 25, column: 6, scope: !131)
!131 = distinct !DILexicalBlock(scope: !48, file: !1, line: 25, column: 6)
!132 = !DILocation(line: 25, column: 6, scope: !48)
!133 = !DILocation(line: 25, column: 32, scope: !131)
!134 = !DILocation(line: 26, column: 27, scope: !48)
!135 = !DILocation(line: 26, column: 29, scope: !48)
!136 = !DILocation(line: 26, column: 28, scope: !48)
!137 = !DILocation(line: 26, column: 9, scope: !48)
!138 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !59)
!139 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !59)
!140 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !59)
!141 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !59)
!142 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !59)
!143 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !59)
!144 = !DILocation(line: 27, column: 23, scope: !48)
!145 = !DILocation(line: 27, column: 21, scope: !48)
!146 = !DILocation(line: 27, column: 2, scope: !48)
!147 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !61)
!148 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !61)
!149 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !61)
!150 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !61)
!151 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !61)
!152 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !61)
!153 = !DILocation(line: 28, column: 27, scope: !48)
!154 = !DILocation(line: 28, column: 29, scope: !48)
!155 = !DILocation(line: 28, column: 28, scope: !48)
!156 = !DILocation(line: 28, column: 9, scope: !48)
!157 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !63)
!158 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !63)
!159 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !63)
!160 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !63)
!161 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !63)
!162 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !63)
!163 = !DILocation(line: 29, column: 23, scope: !48)
!164 = !DILocation(line: 29, column: 21, scope: !48)
!165 = !DILocation(line: 29, column: 2, scope: !48)
!166 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !65)
!167 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !65)
!168 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !65)
!169 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !65)
!170 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !65)
!171 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !65)
!172 = !DILocation(line: 30, column: 10, scope: !48)
!173 = !DILocation(line: 31, column: 10, scope: !48)
!174 = !DILocation(line: 32, column: 27, scope: !48)
!175 = !DILocation(line: 32, column: 29, scope: !48)
!176 = !DILocation(line: 32, column: 28, scope: !48)
!177 = !DILocation(line: 32, column: 9, scope: !48)
!178 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !67)
!179 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !67)
!180 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !67)
!181 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !67)
!182 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !67)
!183 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !67)
!184 = !DILocation(line: 33, column: 23, scope: !48)
!185 = !DILocation(line: 33, column: 21, scope: !48)
!186 = !DILocation(line: 33, column: 2, scope: !48)
!187 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !69)
!188 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !69)
!189 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !69)
!190 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !69)
!191 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !69)
!192 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !69)
!193 = !DILocation(line: 34, column: 27, scope: !48)
!194 = !DILocation(line: 34, column: 29, scope: !48)
!195 = !DILocation(line: 34, column: 28, scope: !48)
!196 = !DILocation(line: 34, column: 9, scope: !48)
!197 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !71)
!198 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !71)
!199 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !71)
!200 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !71)
!201 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !71)
!202 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !71)
!203 = !DILocation(line: 35, column: 23, scope: !48)
!204 = !DILocation(line: 35, column: 21, scope: !48)
!205 = !DILocation(line: 35, column: 2, scope: !48)
!206 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !73)
!207 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !73)
!208 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !73)
!209 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !73)
!210 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !73)
!211 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !73)
!212 = !DILocation(line: 36, column: 10, scope: !48)
!213 = !DILocation(line: 37, column: 10, scope: !48)
!214 = !DILocation(line: 38, column: 27, scope: !48)
!215 = !DILocation(line: 38, column: 29, scope: !48)
!216 = !DILocation(line: 38, column: 28, scope: !48)
!217 = !DILocation(line: 38, column: 9, scope: !48)
!218 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !75)
!219 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !75)
!220 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !75)
!221 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !75)
!222 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !75)
!223 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !75)
!224 = !DILocation(line: 39, column: 23, scope: !48)
!225 = !DILocation(line: 39, column: 21, scope: !48)
!226 = !DILocation(line: 39, column: 2, scope: !48)
!227 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !77)
!228 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !77)
!229 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !77)
!230 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !77)
!231 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !77)
!232 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !77)
!233 = !DILocation(line: 40, column: 10, scope: !48)
!234 = !DILocation(line: 41, column: 7, scope: !48)
!235 = !DILocation(line: 41, column: 14, scope: !49)
!236 = !DILocation(line: 43, column: 27, scope: !80)
!237 = !DILocation(line: 43, column: 29, scope: !80)
!238 = !DILocation(line: 43, column: 28, scope: !80)
!239 = !DILocation(line: 43, column: 9, scope: !80)
!240 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !79)
!241 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !79)
!242 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !79)
!243 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !79)
!244 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !79)
!245 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !79)
!246 = !DILocation(line: 44, column: 23, scope: !80)
!247 = !DILocation(line: 44, column: 21, scope: !80)
!248 = !DILocation(line: 44, column: 2, scope: !80)
!249 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !82)
!250 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !82)
!251 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !82)
!252 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !82)
!253 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !82)
!254 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !82)
!255 = !DILocation(line: 45, column: 27, scope: !80)
!256 = !DILocation(line: 45, column: 29, scope: !80)
!257 = !DILocation(line: 45, column: 28, scope: !80)
!258 = !DILocation(line: 45, column: 9, scope: !80)
!259 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !84)
!260 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !84)
!261 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !84)
!262 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !84)
!263 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !84)
!264 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !84)
!265 = !DILocation(line: 46, column: 23, scope: !80)
!266 = !DILocation(line: 46, column: 21, scope: !80)
!267 = !DILocation(line: 46, column: 2, scope: !80)
!268 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !86)
!269 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !86)
!270 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !86)
!271 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !86)
!272 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !86)
!273 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !86)
!274 = !DILocation(line: 47, column: 10, scope: !80)
!275 = !DILocation(line: 48, column: 10, scope: !80)
!276 = !DILocation(line: 21, column: 5, scope: !51)
!277 = !DILocation(line: 20, column: 3, scope: !54)
!278 = !DILocation(line: 52, column: 1, scope: !8)
