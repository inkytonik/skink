; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

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
define i32 @main() #0 {
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
  %17 = alloca i32, align 4
  %tagbuf_len = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 0, i32* %17
  call void @llvm.dbg.declare(metadata i32* %tagbuf_len, metadata !27, metadata !16), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %t, metadata !29, metadata !16), !dbg !30
  %18 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !31
  store i32 %18, i32* %tagbuf_len, align 4, !dbg !32
  %19 = load i32, i32* %tagbuf_len, align 4, !dbg !33
  %20 = icmp sge i32 %19, 1, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %16, metadata !15, metadata !16), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %15, metadata !15, metadata !16), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %14, metadata !15, metadata !16), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %13, metadata !15, metadata !16), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %12, metadata !15, metadata !16), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %11, metadata !15, metadata !16), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %10, metadata !15, metadata !16), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %9, metadata !15, metadata !16), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %8, metadata !15, metadata !16), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %7, metadata !15, metadata !16), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %6, metadata !15, metadata !16), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %5, metadata !15, metadata !16), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !16), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %3, metadata !15, metadata !16), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !16), !dbg !76
  call void @llvm.dbg.declare(metadata i32* %1, metadata !15, metadata !16), !dbg !78
  br i1 %20, label %21, label %22, !dbg !80

; <label>:21                                      ; preds = %0
  br label %23, !dbg !80

; <label>:22                                      ; preds = %0
  br label %206, !dbg !81

; <label>:23                                      ; preds = %21
  store i32 0, i32* %t, align 4, !dbg !82
  %24 = load i32, i32* %tagbuf_len, align 4, !dbg !83
  %25 = add nsw i32 %24, -1, !dbg !83
  store i32 %25, i32* %tagbuf_len, align 4, !dbg !83
  br label %26, !dbg !84

; <label>:26                                      ; preds = %__VERIFIER_assert.exit3, %23
  %27 = load i32, i32* %t, align 4, !dbg !85
  %28 = load i32, i32* %tagbuf_len, align 4, !dbg !86
  %29 = icmp eq i32 %27, %28, !dbg !87
  br i1 %29, label %30, label %48, !dbg !88

; <label>:30                                      ; preds = %26
  %31 = load i32, i32* %t, align 4, !dbg !89
  %32 = icmp sle i32 0, %31, !dbg !90
  %33 = zext i1 %32 to i32, !dbg !90
  %34 = bitcast i32* %16 to i8*, !dbg !91
  call void @llvm.lifetime.start(i64 4, i8* %34), !dbg !91
  store i32 %33, i32* %16, align 4, !dbg !91
  %35 = load i32, i32* %16, align 4, !dbg !92
  %36 = icmp ne i32 %35, 0, !dbg !93
  br i1 %36, label %__VERIFIER_assert.exit, label %37, !dbg !94

; <label>:37                                      ; preds = %30
  call void @__VERIFIER_error() #3, !dbg !95
  br label %__VERIFIER_assert.exit, !dbg !96

__VERIFIER_assert.exit:                           ; preds = %30, %37
  %38 = bitcast i32* %16 to i8*, !dbg !97
  call void @llvm.lifetime.end(i64 4, i8* %38), !dbg !97
  %39 = load i32, i32* %t, align 4, !dbg !98
  %40 = load i32, i32* %tagbuf_len, align 4, !dbg !99
  %41 = icmp sle i32 %39, %40, !dbg !100
  %42 = zext i1 %41 to i32, !dbg !100
  %43 = bitcast i32* %15 to i8*, !dbg !101
  call void @llvm.lifetime.start(i64 4, i8* %43), !dbg !101
  store i32 %42, i32* %15, align 4, !dbg !101
  %44 = load i32, i32* %15, align 4, !dbg !102
  %45 = icmp ne i32 %44, 0, !dbg !103
  br i1 %45, label %__VERIFIER_assert.exit1, label %46, !dbg !104

; <label>:46                                      ; preds = %__VERIFIER_assert.exit
  call void @__VERIFIER_error() #3, !dbg !105
  br label %__VERIFIER_assert.exit1, !dbg !106

__VERIFIER_assert.exit1:                          ; preds = %__VERIFIER_assert.exit, %46
  %47 = bitcast i32* %15 to i8*, !dbg !107
  call void @llvm.lifetime.end(i64 4, i8* %47), !dbg !107
  br label %206, !dbg !108

; <label>:48                                      ; preds = %26
  %49 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !109
  %50 = icmp ne i32 %49, 0, !dbg !109
  br i1 %50, label %51, label %52, !dbg !111

; <label>:51                                      ; preds = %48
  br label %72, !dbg !112

; <label>:52                                      ; preds = %48
  %53 = load i32, i32* %t, align 4, !dbg !114
  %54 = icmp sle i32 0, %53, !dbg !115
  %55 = zext i1 %54 to i32, !dbg !115
  %56 = bitcast i32* %14 to i8*, !dbg !116
  call void @llvm.lifetime.start(i64 4, i8* %56), !dbg !116
  store i32 %55, i32* %14, align 4, !dbg !116
  %57 = load i32, i32* %14, align 4, !dbg !117
  %58 = icmp ne i32 %57, 0, !dbg !118
  br i1 %58, label %__VERIFIER_assert.exit2, label %59, !dbg !119

; <label>:59                                      ; preds = %52
  call void @__VERIFIER_error() #3, !dbg !120
  br label %__VERIFIER_assert.exit2, !dbg !121

__VERIFIER_assert.exit2:                          ; preds = %52, %59
  %60 = bitcast i32* %14 to i8*, !dbg !122
  call void @llvm.lifetime.end(i64 4, i8* %60), !dbg !122
  %61 = load i32, i32* %t, align 4, !dbg !123
  %62 = load i32, i32* %tagbuf_len, align 4, !dbg !124
  %63 = icmp sle i32 %61, %62, !dbg !125
  %64 = zext i1 %63 to i32, !dbg !125
  %65 = bitcast i32* %13 to i8*, !dbg !126
  call void @llvm.lifetime.start(i64 4, i8* %65), !dbg !126
  store i32 %64, i32* %13, align 4, !dbg !126
  %66 = load i32, i32* %13, align 4, !dbg !127
  %67 = icmp ne i32 %66, 0, !dbg !128
  br i1 %67, label %__VERIFIER_assert.exit3, label %68, !dbg !129

; <label>:68                                      ; preds = %__VERIFIER_assert.exit2
  call void @__VERIFIER_error() #3, !dbg !130
  br label %__VERIFIER_assert.exit3, !dbg !131

__VERIFIER_assert.exit3:                          ; preds = %__VERIFIER_assert.exit2, %68
  %69 = bitcast i32* %13 to i8*, !dbg !132
  call void @llvm.lifetime.end(i64 4, i8* %69), !dbg !132
  %70 = load i32, i32* %t, align 4, !dbg !133
  %71 = add nsw i32 %70, 1, !dbg !133
  store i32 %71, i32* %t, align 4, !dbg !133
  br label %26, !dbg !84

; <label>:72                                      ; preds = %51
  %73 = load i32, i32* %t, align 4, !dbg !134
  %74 = icmp sle i32 0, %73, !dbg !135
  %75 = zext i1 %74 to i32, !dbg !135
  %76 = bitcast i32* %12 to i8*, !dbg !136
  call void @llvm.lifetime.start(i64 4, i8* %76), !dbg !136
  store i32 %75, i32* %12, align 4, !dbg !136
  %77 = load i32, i32* %12, align 4, !dbg !137
  %78 = icmp ne i32 %77, 0, !dbg !138
  br i1 %78, label %__VERIFIER_assert.exit4, label %79, !dbg !139

; <label>:79                                      ; preds = %72
  call void @__VERIFIER_error() #3, !dbg !140
  br label %__VERIFIER_assert.exit4, !dbg !141

__VERIFIER_assert.exit4:                          ; preds = %72, %79
  %80 = bitcast i32* %12 to i8*, !dbg !142
  call void @llvm.lifetime.end(i64 4, i8* %80), !dbg !142
  %81 = load i32, i32* %t, align 4, !dbg !143
  %82 = load i32, i32* %tagbuf_len, align 4, !dbg !144
  %83 = icmp sle i32 %81, %82, !dbg !145
  %84 = zext i1 %83 to i32, !dbg !145
  %85 = bitcast i32* %11 to i8*, !dbg !146
  call void @llvm.lifetime.start(i64 4, i8* %85), !dbg !146
  store i32 %84, i32* %11, align 4, !dbg !146
  %86 = load i32, i32* %11, align 4, !dbg !147
  %87 = icmp ne i32 %86, 0, !dbg !148
  br i1 %87, label %__VERIFIER_assert.exit5, label %88, !dbg !149

; <label>:88                                      ; preds = %__VERIFIER_assert.exit4
  call void @__VERIFIER_error() #3, !dbg !150
  br label %__VERIFIER_assert.exit5, !dbg !151

__VERIFIER_assert.exit5:                          ; preds = %__VERIFIER_assert.exit4, %88
  %89 = bitcast i32* %11 to i8*, !dbg !152
  call void @llvm.lifetime.end(i64 4, i8* %89), !dbg !152
  %90 = load i32, i32* %t, align 4, !dbg !153
  %91 = add nsw i32 %90, 1, !dbg !153
  store i32 %91, i32* %t, align 4, !dbg !153
  br label %92, !dbg !154

; <label>:92                                      ; preds = %__VERIFIER_assert.exit13, %__VERIFIER_assert.exit5
  %93 = load i32, i32* %t, align 4, !dbg !155
  %94 = load i32, i32* %tagbuf_len, align 4, !dbg !156
  %95 = icmp eq i32 %93, %94, !dbg !157
  br i1 %95, label %96, label %114, !dbg !158

; <label>:96                                      ; preds = %92
  %97 = load i32, i32* %t, align 4, !dbg !159
  %98 = icmp sle i32 0, %97, !dbg !160
  %99 = zext i1 %98 to i32, !dbg !160
  %100 = bitcast i32* %10 to i8*, !dbg !161
  call void @llvm.lifetime.start(i64 4, i8* %100), !dbg !161
  store i32 %99, i32* %10, align 4, !dbg !161
  %101 = load i32, i32* %10, align 4, !dbg !162
  %102 = icmp ne i32 %101, 0, !dbg !163
  br i1 %102, label %__VERIFIER_assert.exit6, label %103, !dbg !164

; <label>:103                                     ; preds = %96
  call void @__VERIFIER_error() #3, !dbg !165
  br label %__VERIFIER_assert.exit6, !dbg !166

__VERIFIER_assert.exit6:                          ; preds = %96, %103
  %104 = bitcast i32* %10 to i8*, !dbg !167
  call void @llvm.lifetime.end(i64 4, i8* %104), !dbg !167
  %105 = load i32, i32* %t, align 4, !dbg !168
  %106 = load i32, i32* %tagbuf_len, align 4, !dbg !169
  %107 = icmp sle i32 %105, %106, !dbg !170
  %108 = zext i1 %107 to i32, !dbg !170
  %109 = bitcast i32* %9 to i8*, !dbg !171
  call void @llvm.lifetime.start(i64 4, i8* %109), !dbg !171
  store i32 %108, i32* %9, align 4, !dbg !171
  %110 = load i32, i32* %9, align 4, !dbg !172
  %111 = icmp ne i32 %110, 0, !dbg !173
  br i1 %111, label %__VERIFIER_assert.exit7, label %112, !dbg !174

; <label>:112                                     ; preds = %__VERIFIER_assert.exit6
  call void @__VERIFIER_error() #3, !dbg !175
  br label %__VERIFIER_assert.exit7, !dbg !176

__VERIFIER_assert.exit7:                          ; preds = %__VERIFIER_assert.exit6, %112
  %113 = bitcast i32* %9 to i8*, !dbg !177
  call void @llvm.lifetime.end(i64 4, i8* %113), !dbg !177
  br label %206, !dbg !178

; <label>:114                                     ; preds = %92
  %115 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !179
  %116 = icmp ne i32 %115, 0, !dbg !179
  br i1 %116, label %117, label %163, !dbg !180

; <label>:117                                     ; preds = %114
  %118 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !181
  %119 = icmp ne i32 %118, 0, !dbg !181
  br i1 %119, label %120, label %162, !dbg !182

; <label>:120                                     ; preds = %117
  %121 = load i32, i32* %t, align 4, !dbg !183
  %122 = icmp sle i32 0, %121, !dbg !184
  %123 = zext i1 %122 to i32, !dbg !184
  %124 = bitcast i32* %8 to i8*, !dbg !185
  call void @llvm.lifetime.start(i64 4, i8* %124), !dbg !185
  store i32 %123, i32* %8, align 4, !dbg !185
  %125 = load i32, i32* %8, align 4, !dbg !186
  %126 = icmp ne i32 %125, 0, !dbg !187
  br i1 %126, label %__VERIFIER_assert.exit8, label %127, !dbg !188

; <label>:127                                     ; preds = %120
  call void @__VERIFIER_error() #3, !dbg !189
  br label %__VERIFIER_assert.exit8, !dbg !190

__VERIFIER_assert.exit8:                          ; preds = %120, %127
  %128 = bitcast i32* %8 to i8*, !dbg !191
  call void @llvm.lifetime.end(i64 4, i8* %128), !dbg !191
  %129 = load i32, i32* %t, align 4, !dbg !192
  %130 = load i32, i32* %tagbuf_len, align 4, !dbg !193
  %131 = icmp sle i32 %129, %130, !dbg !194
  %132 = zext i1 %131 to i32, !dbg !194
  %133 = bitcast i32* %7 to i8*, !dbg !195
  call void @llvm.lifetime.start(i64 4, i8* %133), !dbg !195
  store i32 %132, i32* %7, align 4, !dbg !195
  %134 = load i32, i32* %7, align 4, !dbg !196
  %135 = icmp ne i32 %134, 0, !dbg !197
  br i1 %135, label %__VERIFIER_assert.exit9, label %136, !dbg !198

; <label>:136                                     ; preds = %__VERIFIER_assert.exit8
  call void @__VERIFIER_error() #3, !dbg !199
  br label %__VERIFIER_assert.exit9, !dbg !200

__VERIFIER_assert.exit9:                          ; preds = %__VERIFIER_assert.exit8, %136
  %137 = bitcast i32* %7 to i8*, !dbg !201
  call void @llvm.lifetime.end(i64 4, i8* %137), !dbg !201
  %138 = load i32, i32* %t, align 4, !dbg !202
  %139 = add nsw i32 %138, 1, !dbg !202
  store i32 %139, i32* %t, align 4, !dbg !202
  %140 = load i32, i32* %t, align 4, !dbg !203
  %141 = load i32, i32* %tagbuf_len, align 4, !dbg !204
  %142 = icmp eq i32 %140, %141, !dbg !205
  br i1 %142, label %143, label %161, !dbg !206

; <label>:143                                     ; preds = %__VERIFIER_assert.exit9
  %144 = load i32, i32* %t, align 4, !dbg !207
  %145 = icmp sle i32 0, %144, !dbg !208
  %146 = zext i1 %145 to i32, !dbg !208
  %147 = bitcast i32* %6 to i8*, !dbg !209
  call void @llvm.lifetime.start(i64 4, i8* %147), !dbg !209
  store i32 %146, i32* %6, align 4, !dbg !209
  %148 = load i32, i32* %6, align 4, !dbg !210
  %149 = icmp ne i32 %148, 0, !dbg !211
  br i1 %149, label %__VERIFIER_assert.exit10, label %150, !dbg !212

; <label>:150                                     ; preds = %143
  call void @__VERIFIER_error() #3, !dbg !213
  br label %__VERIFIER_assert.exit10, !dbg !214

__VERIFIER_assert.exit10:                         ; preds = %143, %150
  %151 = bitcast i32* %6 to i8*, !dbg !215
  call void @llvm.lifetime.end(i64 4, i8* %151), !dbg !215
  %152 = load i32, i32* %t, align 4, !dbg !216
  %153 = load i32, i32* %tagbuf_len, align 4, !dbg !217
  %154 = icmp sle i32 %152, %153, !dbg !218
  %155 = zext i1 %154 to i32, !dbg !218
  %156 = bitcast i32* %5 to i8*, !dbg !219
  call void @llvm.lifetime.start(i64 4, i8* %156), !dbg !219
  store i32 %155, i32* %5, align 4, !dbg !219
  %157 = load i32, i32* %5, align 4, !dbg !220
  %158 = icmp ne i32 %157, 0, !dbg !221
  br i1 %158, label %__VERIFIER_assert.exit11, label %159, !dbg !222

; <label>:159                                     ; preds = %__VERIFIER_assert.exit10
  call void @__VERIFIER_error() #3, !dbg !223
  br label %__VERIFIER_assert.exit11, !dbg !224

__VERIFIER_assert.exit11:                         ; preds = %__VERIFIER_assert.exit10, %159
  %160 = bitcast i32* %5 to i8*, !dbg !225
  call void @llvm.lifetime.end(i64 4, i8* %160), !dbg !225
  br label %206, !dbg !226

; <label>:161                                     ; preds = %__VERIFIER_assert.exit9
  br label %162, !dbg !227

; <label>:162                                     ; preds = %161, %117
  br label %168, !dbg !228

; <label>:163                                     ; preds = %114
  %164 = call i32 (...) @__VERIFIER_nondet_int(), !dbg !229
  %165 = icmp ne i32 %164, 0, !dbg !229
  br i1 %165, label %166, label %167, !dbg !231

; <label>:166                                     ; preds = %163
  br label %188, !dbg !232

; <label>:167                                     ; preds = %163
  br label %168

; <label>:168                                     ; preds = %167, %162
  %169 = load i32, i32* %t, align 4, !dbg !234
  %170 = icmp sle i32 0, %169, !dbg !235
  %171 = zext i1 %170 to i32, !dbg !235
  %172 = bitcast i32* %4 to i8*, !dbg !236
  call void @llvm.lifetime.start(i64 4, i8* %172), !dbg !236
  store i32 %171, i32* %4, align 4, !dbg !236
  %173 = load i32, i32* %4, align 4, !dbg !237
  %174 = icmp ne i32 %173, 0, !dbg !238
  br i1 %174, label %__VERIFIER_assert.exit12, label %175, !dbg !239

; <label>:175                                     ; preds = %168
  call void @__VERIFIER_error() #3, !dbg !240
  br label %__VERIFIER_assert.exit12, !dbg !241

__VERIFIER_assert.exit12:                         ; preds = %168, %175
  %176 = bitcast i32* %4 to i8*, !dbg !242
  call void @llvm.lifetime.end(i64 4, i8* %176), !dbg !242
  %177 = load i32, i32* %t, align 4, !dbg !243
  %178 = load i32, i32* %tagbuf_len, align 4, !dbg !244
  %179 = icmp sle i32 %177, %178, !dbg !245
  %180 = zext i1 %179 to i32, !dbg !245
  %181 = bitcast i32* %3 to i8*, !dbg !246
  call void @llvm.lifetime.start(i64 4, i8* %181), !dbg !246
  store i32 %180, i32* %3, align 4, !dbg !246
  %182 = load i32, i32* %3, align 4, !dbg !247
  %183 = icmp ne i32 %182, 0, !dbg !248
  br i1 %183, label %__VERIFIER_assert.exit13, label %184, !dbg !249

; <label>:184                                     ; preds = %__VERIFIER_assert.exit12
  call void @__VERIFIER_error() #3, !dbg !250
  br label %__VERIFIER_assert.exit13, !dbg !251

__VERIFIER_assert.exit13:                         ; preds = %__VERIFIER_assert.exit12, %184
  %185 = bitcast i32* %3 to i8*, !dbg !252
  call void @llvm.lifetime.end(i64 4, i8* %185), !dbg !252
  %186 = load i32, i32* %t, align 4, !dbg !253
  %187 = add nsw i32 %186, 1, !dbg !253
  store i32 %187, i32* %t, align 4, !dbg !253
  br label %92, !dbg !154

; <label>:188                                     ; preds = %166
  %189 = load i32, i32* %t, align 4, !dbg !254
  %190 = icmp sle i32 0, %189, !dbg !255
  %191 = zext i1 %190 to i32, !dbg !255
  %192 = bitcast i32* %2 to i8*, !dbg !256
  call void @llvm.lifetime.start(i64 4, i8* %192), !dbg !256
  store i32 %191, i32* %2, align 4, !dbg !256
  %193 = load i32, i32* %2, align 4, !dbg !257
  %194 = icmp ne i32 %193, 0, !dbg !258
  br i1 %194, label %__VERIFIER_assert.exit14, label %195, !dbg !259

; <label>:195                                     ; preds = %188
  call void @__VERIFIER_error() #3, !dbg !260
  br label %__VERIFIER_assert.exit14, !dbg !261

__VERIFIER_assert.exit14:                         ; preds = %188, %195
  %196 = bitcast i32* %2 to i8*, !dbg !262
  call void @llvm.lifetime.end(i64 4, i8* %196), !dbg !262
  %197 = load i32, i32* %t, align 4, !dbg !263
  %198 = load i32, i32* %tagbuf_len, align 4, !dbg !264
  %199 = icmp sle i32 %197, %198, !dbg !265
  %200 = zext i1 %199 to i32, !dbg !265
  %201 = bitcast i32* %1 to i8*, !dbg !266
  call void @llvm.lifetime.start(i64 4, i8* %201), !dbg !266
  store i32 %200, i32* %1, align 4, !dbg !266
  %202 = load i32, i32* %1, align 4, !dbg !267
  %203 = icmp ne i32 %202, 0, !dbg !268
  br i1 %203, label %__VERIFIER_assert.exit15, label %204, !dbg !269

; <label>:204                                     ; preds = %__VERIFIER_assert.exit14
  call void @__VERIFIER_error() #3, !dbg !270
  br label %__VERIFIER_assert.exit15, !dbg !271

__VERIFIER_assert.exit15:                         ; preds = %__VERIFIER_assert.exit14, %204
  %205 = bitcast i32* %1 to i8*, !dbg !272
  call void @llvm.lifetime.end(i64 4, i8* %205), !dbg !272
  br label %206, !dbg !266

; <label>:206                                     ; preds = %__VERIFIER_assert.exit15, %__VERIFIER_assert.exit11, %__VERIFIER_assert.exit7, %__VERIFIER_assert.exit1, %22
  ret i32 0, !dbg !273
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
!1 = !DIFile(filename: "programs/svcomp16/loop-invgen/apache-get-tag_true-unreach-call.i", directory: ".")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "__VERIFIER_assert", scope: !1, file: !1, line: 3, type: !5, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: void (i32)* @__VERIFIER_assert, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 11, isOptimized: false, function: i32 ()* @main, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!7}
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
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tagbuf_len", scope: !8, file: !1, line: 12, type: !7)
!28 = !DILocation(line: 12, column: 7, scope: !8)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !8, file: !1, line: 13, type: !7)
!30 = !DILocation(line: 13, column: 7, scope: !8)
!31 = !DILocation(line: 14, column: 16, scope: !8)
!32 = !DILocation(line: 14, column: 14, scope: !8)
!33 = !DILocation(line: 15, column: 6, scope: !34)
!34 = distinct !DILexicalBlock(scope: !8, file: !1, line: 15, column: 6)
!35 = !DILocation(line: 15, column: 17, scope: !34)
!36 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !37)
!37 = distinct !DILocation(line: 20, column: 7, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 19, column: 26)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 19, column: 9)
!40 = distinct !DILexicalBlock(scope: !8, file: !1, line: 18, column: 13)
!41 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !42)
!42 = distinct !DILocation(line: 21, column: 7, scope: !38)
!43 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !44)
!44 = distinct !DILocation(line: 27, column: 6, scope: !40)
!45 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !46)
!46 = distinct !DILocation(line: 28, column: 6, scope: !40)
!47 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !48)
!48 = distinct !DILocation(line: 31, column: 4, scope: !8)
!49 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !50)
!50 = distinct !DILocation(line: 32, column: 4, scope: !8)
!51 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !52)
!52 = distinct !DILocation(line: 36, column: 7, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 35, column: 26)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 35, column: 9)
!55 = distinct !DILexicalBlock(scope: !8, file: !1, line: 34, column: 13)
!56 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !57)
!57 = distinct !DILocation(line: 37, column: 7, scope: !53)
!58 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !59)
!59 = distinct !DILocation(line: 42, column: 3, scope: !60)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 41, column: 37)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 41, column: 12)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 40, column: 34)
!63 = distinct !DILexicalBlock(scope: !55, file: !1, line: 40, column: 9)
!64 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !65)
!65 = distinct !DILocation(line: 43, column: 2, scope: !60)
!66 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !67)
!67 = distinct !DILocation(line: 46, column: 4, scope: !68)
!68 = distinct !DILexicalBlock(scope: !69, file: !1, line: 45, column: 30)
!69 = distinct !DILexicalBlock(scope: !60, file: !1, line: 45, column: 13)
!70 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !71)
!71 = distinct !DILocation(line: 47, column: 4, scope: !68)
!72 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !73)
!73 = distinct !DILocation(line: 55, column: 5, scope: !55)
!74 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !75)
!75 = distinct !DILocation(line: 56, column: 5, scope: !55)
!76 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !77)
!77 = distinct !DILocation(line: 59, column: 3, scope: !8)
!78 = !DILocation(line: 3, column: 28, scope: !4, inlinedAt: !79)
!79 = distinct !DILocation(line: 60, column: 3, scope: !8)
!80 = !DILocation(line: 15, column: 6, scope: !8)
!81 = !DILocation(line: 15, column: 29, scope: !34)
!82 = !DILocation(line: 16, column: 5, scope: !8)
!83 = !DILocation(line: 17, column: 3, scope: !8)
!84 = !DILocation(line: 18, column: 3, scope: !8)
!85 = !DILocation(line: 19, column: 9, scope: !39)
!86 = !DILocation(line: 19, column: 14, scope: !39)
!87 = !DILocation(line: 19, column: 11, scope: !39)
!88 = !DILocation(line: 19, column: 9, scope: !40)
!89 = !DILocation(line: 20, column: 30, scope: !38)
!90 = !DILocation(line: 20, column: 27, scope: !38)
!91 = !DILocation(line: 20, column: 7, scope: !38)
!92 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !37)
!93 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !37)
!94 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !37)
!95 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !37)
!96 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !37)
!97 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !37)
!98 = !DILocation(line: 21, column: 25, scope: !38)
!99 = !DILocation(line: 21, column: 30, scope: !38)
!100 = !DILocation(line: 21, column: 27, scope: !38)
!101 = !DILocation(line: 21, column: 7, scope: !38)
!102 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !42)
!103 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !42)
!104 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !42)
!105 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !42)
!106 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !42)
!107 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !42)
!108 = !DILocation(line: 22, column: 7, scope: !38)
!109 = !DILocation(line: 24, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !40, file: !1, line: 24, column: 9)
!111 = !DILocation(line: 24, column: 9, scope: !40)
!112 = !DILocation(line: 25, column: 7, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !1, line: 24, column: 34)
!114 = !DILocation(line: 27, column: 29, scope: !40)
!115 = !DILocation(line: 27, column: 26, scope: !40)
!116 = !DILocation(line: 27, column: 6, scope: !40)
!117 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !44)
!118 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !44)
!119 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !44)
!120 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !44)
!121 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !44)
!122 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !44)
!123 = !DILocation(line: 28, column: 24, scope: !40)
!124 = !DILocation(line: 28, column: 29, scope: !40)
!125 = !DILocation(line: 28, column: 26, scope: !40)
!126 = !DILocation(line: 28, column: 6, scope: !40)
!127 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !46)
!128 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !46)
!129 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !46)
!130 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !46)
!131 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !46)
!132 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !46)
!133 = !DILocation(line: 29, column: 6, scope: !40)
!134 = !DILocation(line: 31, column: 27, scope: !8)
!135 = !DILocation(line: 31, column: 24, scope: !8)
!136 = !DILocation(line: 31, column: 4, scope: !8)
!137 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !48)
!138 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !48)
!139 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !48)
!140 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !48)
!141 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !48)
!142 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !48)
!143 = !DILocation(line: 32, column: 22, scope: !8)
!144 = !DILocation(line: 32, column: 27, scope: !8)
!145 = !DILocation(line: 32, column: 24, scope: !8)
!146 = !DILocation(line: 32, column: 4, scope: !8)
!147 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !50)
!148 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !50)
!149 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !50)
!150 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !50)
!151 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !50)
!152 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !50)
!153 = !DILocation(line: 33, column: 4, scope: !8)
!154 = !DILocation(line: 34, column: 3, scope: !8)
!155 = !DILocation(line: 35, column: 9, scope: !54)
!156 = !DILocation(line: 35, column: 14, scope: !54)
!157 = !DILocation(line: 35, column: 11, scope: !54)
!158 = !DILocation(line: 35, column: 9, scope: !55)
!159 = !DILocation(line: 36, column: 30, scope: !53)
!160 = !DILocation(line: 36, column: 27, scope: !53)
!161 = !DILocation(line: 36, column: 7, scope: !53)
!162 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !52)
!163 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !52)
!164 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !52)
!165 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !52)
!166 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !52)
!167 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !52)
!168 = !DILocation(line: 37, column: 25, scope: !53)
!169 = !DILocation(line: 37, column: 30, scope: !53)
!170 = !DILocation(line: 37, column: 27, scope: !53)
!171 = !DILocation(line: 37, column: 7, scope: !53)
!172 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !57)
!173 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !57)
!174 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !57)
!175 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !57)
!176 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !57)
!177 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !57)
!178 = !DILocation(line: 38, column: 7, scope: !53)
!179 = !DILocation(line: 40, column: 9, scope: !63)
!180 = !DILocation(line: 40, column: 9, scope: !55)
!181 = !DILocation(line: 41, column: 12, scope: !61)
!182 = !DILocation(line: 41, column: 12, scope: !62)
!183 = !DILocation(line: 42, column: 26, scope: !60)
!184 = !DILocation(line: 42, column: 23, scope: !60)
!185 = !DILocation(line: 42, column: 3, scope: !60)
!186 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !59)
!187 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !59)
!188 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !59)
!189 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !59)
!190 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !59)
!191 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !59)
!192 = !DILocation(line: 43, column: 20, scope: !60)
!193 = !DILocation(line: 43, column: 25, scope: !60)
!194 = !DILocation(line: 43, column: 22, scope: !60)
!195 = !DILocation(line: 43, column: 2, scope: !60)
!196 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !65)
!197 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !65)
!198 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !65)
!199 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !65)
!200 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !65)
!201 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !65)
!202 = !DILocation(line: 44, column: 10, scope: !60)
!203 = !DILocation(line: 45, column: 13, scope: !69)
!204 = !DILocation(line: 45, column: 18, scope: !69)
!205 = !DILocation(line: 45, column: 15, scope: !69)
!206 = !DILocation(line: 45, column: 13, scope: !60)
!207 = !DILocation(line: 46, column: 27, scope: !68)
!208 = !DILocation(line: 46, column: 24, scope: !68)
!209 = !DILocation(line: 46, column: 4, scope: !68)
!210 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !67)
!211 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !67)
!212 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !67)
!213 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !67)
!214 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !67)
!215 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !67)
!216 = !DILocation(line: 47, column: 22, scope: !68)
!217 = !DILocation(line: 47, column: 27, scope: !68)
!218 = !DILocation(line: 47, column: 24, scope: !68)
!219 = !DILocation(line: 47, column: 4, scope: !68)
!220 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !71)
!221 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !71)
!222 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !71)
!223 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !71)
!224 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !71)
!225 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !71)
!226 = !DILocation(line: 48, column: 11, scope: !68)
!227 = !DILocation(line: 50, column: 7, scope: !60)
!228 = !DILocation(line: 51, column: 5, scope: !62)
!229 = !DILocation(line: 52, column: 15, scope: !230)
!230 = distinct !DILexicalBlock(scope: !63, file: !1, line: 52, column: 15)
!231 = !DILocation(line: 52, column: 15, scope: !63)
!232 = !DILocation(line: 53, column: 7, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !1, line: 52, column: 40)
!234 = !DILocation(line: 55, column: 28, scope: !55)
!235 = !DILocation(line: 55, column: 25, scope: !55)
!236 = !DILocation(line: 55, column: 5, scope: !55)
!237 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !73)
!238 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !73)
!239 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !73)
!240 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !73)
!241 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !73)
!242 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !73)
!243 = !DILocation(line: 56, column: 23, scope: !55)
!244 = !DILocation(line: 56, column: 28, scope: !55)
!245 = !DILocation(line: 56, column: 25, scope: !55)
!246 = !DILocation(line: 56, column: 5, scope: !55)
!247 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !75)
!248 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !75)
!249 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !75)
!250 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !75)
!251 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !75)
!252 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !75)
!253 = !DILocation(line: 57, column: 6, scope: !55)
!254 = !DILocation(line: 59, column: 26, scope: !8)
!255 = !DILocation(line: 59, column: 23, scope: !8)
!256 = !DILocation(line: 59, column: 3, scope: !8)
!257 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !77)
!258 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !77)
!259 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !77)
!260 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !77)
!261 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !77)
!262 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !77)
!263 = !DILocation(line: 60, column: 21, scope: !8)
!264 = !DILocation(line: 60, column: 26, scope: !8)
!265 = !DILocation(line: 60, column: 23, scope: !8)
!266 = !DILocation(line: 60, column: 3, scope: !8)
!267 = !DILocation(line: 4, column: 9, scope: !19, inlinedAt: !79)
!268 = !DILocation(line: 4, column: 8, scope: !19, inlinedAt: !79)
!269 = !DILocation(line: 4, column: 7, scope: !4, inlinedAt: !79)
!270 = !DILocation(line: 5, column: 12, scope: !24, inlinedAt: !79)
!271 = !DILocation(line: 6, column: 3, scope: !24, inlinedAt: !79)
!272 = !DILocation(line: 7, column: 3, scope: !4, inlinedAt: !79)
!273 = !DILocation(line: 62, column: 3, scope: !8)
