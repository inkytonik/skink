; ModuleID = '<stdin>'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

%struct.ssl_method_st = type { i32, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, i8*)*, i32 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, %struct.ssl_method_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 (...)*, i64 (%struct.ssl_st*, i32, void (...)*)*, i64 (%struct.ssl_ctx_st*, i32, void (...)*)* }
%struct.ssl_st = type { i32, i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, i32, i32 (...)*, i32, i32, i32, i32, i32, i32, %struct.buf_mem_st*, i32, i32, i8*, i32, %struct.ssl2_state_st*, %struct.ssl3_state_st*, i32, i32, i32, i32, %struct.stack_st*, %struct.stack_st*, %struct.evp_cipher_ctx_st*, %struct.env_md_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, %struct.env_md_st*, %struct.comp_ctx_st*, %struct.cert_st*, i32, [32 x i8], %struct.ssl_session_st*, i32, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (...)*, i32, i32, %struct.ssl_ctx_st*, i32, i64, %struct.crypto_ex_data_st, %struct.stack_st*, i32, i64, i64, i32, i32 }
%struct.bio_st = type { %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st }
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, void (%struct.bio_st*, i32, i8*, i32, i64, i64)*)* }
%struct.buf_mem_st = type { i32, i8*, i32 }
%struct.ssl2_state_st = type { i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, [32 x i8], i32, [16 x i8], i32, [48 x i8], i64, i64, %struct.__anonstruct_tmp_38 }
%struct.__anonstruct_tmp_38 = type { i32, i32, i32, i32, i32, i32, [32 x i8], i32, i32, i32, i32 }
%struct.ssl3_state_st = type { i64, i32, [8 x i8], [36 x i8], [8 x i8], [36 x i8], [32 x i8], [32 x i8], %struct.ssl3_buffer_st, %struct.ssl3_buffer_st, %struct.ssl3_record_st, %struct.ssl3_record_st, [2 x i8], i32, [4 x i8], i32, i32, i32, i32, i32, i8*, %struct.env_md_ctx_st, %struct.env_md_ctx_st, i32, i32, i32, i32, [2 x i8], i32, i32, i32, i32, %struct.__anonstruct_tmp_39 }
%struct.ssl3_buffer_st = type { i8*, i32, i32 }
%struct.ssl3_record_st = type { i32, i32, i32, i8*, i8*, i8* }
%struct.env_md_ctx_st = type { %struct.env_md_st*, %union.__anonunion_md_22 }
%union.__anonunion_md_22 = type { %struct.MD2state_st }
%struct.MD2state_st = type { i32, [16 x i8], [16 x i32], [16 x i32] }
%struct.__anonstruct_tmp_39 = type { [72 x i8], [72 x i8], i32, [72 x i8], i32, i64, i32, %struct.ssl_cipher_st*, %struct.dh_st*, i32, i32, i32, i32, [7 x i8], %struct.stack_st*, i32, i32, i8*, %struct.evp_cipher_st*, %struct.env_md_st*, %struct.ssl_comp_st*, i32 }
%struct.ssl_cipher_st = type { i32, i8*, i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.dh_st = type { i32, i32, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bignum_st*, %struct.bignum_st*, i32, i8*, %struct.bignum_st*, %struct.bignum_st*, i8*, i32, %struct.bignum_st*, i32, %struct.crypto_ex_data_st, %struct.dh_method* }
%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.dh_method = type { i8*, i32 (%struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)*, i32, i8* }
%struct.bignum_ctx = type { i32, [16 x %struct.bignum_st], i32, i32, [12 x i32], i32 }
%struct.bn_mont_ctx_st = type { i32, %struct.bignum_st, %struct.bignum_st, %struct.bignum_st, i64, i32 }
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8* }
%struct.asn1_type_st = type { i32, %union.__anonunion_value_19 }
%union.__anonunion_value_19 = type { i8* }
%struct.ssl_comp_st = type { i32, i8*, %struct.comp_method_st* }
%struct.comp_method_st = type { i32, i8*, i32 (...)*, void (...)*, i32 (...)*, i32 (...)*, i64 (...)*, i64 (...)* }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, i32, i32, [8 x i8], [8 x i8], [8 x i8], i32, i8*, i32, %union.__anonunion_c_23 }
%union.__anonunion_c_23 = type { %struct.__anonstruct_des_ede_26, [3016 x i8] }
%struct.__anonstruct_des_ede_26 = type { [16 x %struct.des_ks_struct], [16 x %struct.des_ks_struct], [16 x %struct.des_ks_struct] }
%struct.des_ks_struct = type { %union.__anonunion_ks_20, i32 }
%union.__anonunion_ks_20 = type { [2 x i64] }
%struct.env_md_st = type { i32, i32, i32, void (...)*, void (...)*, void (...)*, i32 (...)*, i32 (...)*, [5 x i32], i32, i32 }
%struct.comp_ctx_st = type { %struct.comp_method_st*, i64, i64, i64, i64, %struct.crypto_ex_data_st }
%struct.cert_st = type { %struct.cert_pkey_st*, i32, i64, i64, %struct.rsa_st*, %struct.rsa_st* (%struct.ssl_st*, i32, i32)*, %struct.dh_st*, %struct.dh_st* (%struct.ssl_st*, i32, i32)*, [5 x %struct.cert_pkey_st], i32 }
%struct.cert_pkey_st = type { %struct.x509_st*, %struct.evp_pkey_st* }
%struct.x509_st = type { %struct.x509_cinf_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, i32, i8*, %struct.crypto_ex_data_st, i64, i64, i64, i64, i64, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, [20 x i8], %struct.x509_cert_aux_st* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.X509_name_st*, %struct.X509_val_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st* }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st*, i32, %struct.buf_mem_st*, i64 }
%struct.X509_pubkey_st = type { %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.AUTHORITY_KEYID_st = type opaque
%struct.x509_cert_aux_st = type { %struct.stack_st*, %struct.stack_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st* }
%struct.evp_pkey_st = type { i32, i32, i32, %union.__anonunion_pkey_21, i32, %struct.stack_st* }
%union.__anonunion_pkey_21 = type { i8* }
%struct.rsa_st = type { i32, i32, %struct.rsa_meth_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.crypto_ex_data_st, i32, i32, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, i8*, %struct.bn_blinding_st* }
%struct.rsa_meth_st = type { i8*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)*, i32, i8*, i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)* }
%struct.bn_blinding_st = type { i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st* }
%struct.ssl_session_st = type { i32, i32, [8 x i8], i32, [48 x i8], i32, [32 x i8], i32, [32 x i8], i32, %struct.sess_cert_st*, %struct.x509_st*, i64, i32, i64, i64, i32, %struct.ssl_cipher_st*, i64, %struct.stack_st*, %struct.crypto_ex_data_st, %struct.ssl_session_st*, %struct.ssl_session_st* }
%struct.sess_cert_st = type { %struct.stack_st*, i32, %struct.cert_pkey_st*, [5 x %struct.cert_pkey_st], %struct.rsa_st*, %struct.dh_st*, i32 }
%struct.x509_store_ctx_st = type { %struct.x509_store_st*, i32, %struct.x509_st*, %struct.stack_st*, i32, i32, i64, i64, i8*, i32 (%struct.x509_store_ctx_st*)*, {}*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, i32, i32, i32, %struct.stack_st*, i32, i32, %struct.x509_st*, %struct.x509_st*, %struct.crypto_ex_data_st }
%struct.x509_store_st = type { i32, %struct.stack_st*, %struct.stack_st*, i32 (%struct.x509_store_ctx_st*)*, {}*, %struct.crypto_ex_data_st, i32, i32 }
%struct.ssl_ctx_st = type { %struct.ssl_method_st*, i64, i64, %struct.stack_st*, %struct.stack_st*, %struct.x509_store_st*, %struct.lhash_st*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.__anonstruct_stats_37, i32, void (...)*, i32 (...)*, i8*, %struct.cert_st*, i32, i32, i32, i32, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32, i32, i32 (i8*, i32, i32, i8*)*, i8*, i32 (...)*, %struct.stack_st*, i32, %struct.crypto_ex_data_st, %struct.env_md_st*, %struct.env_md_st*, %struct.env_md_st*, %struct.stack_st*, %struct.stack_st* }
%struct.lhash_st = type { %struct.lhash_node_st**, i32 (...)*, i64 (...)*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.lhash_node_st = type { i8*, %struct.lhash_node_st*, i64 }
%struct.__anonstruct_stats_37 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.crypto_ex_data_st = type { %struct.stack_st*, i32 }
%struct.stack_st = type { i32, i8**, i32, i32, i32 (i8**, i8**)* }
%struct.ssl3_enc_method = type { i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, %struct.env_md_ctx_st*, %struct.env_md_ctx_st*, i8*, i32, i8*)*, i32, i32 (%struct.ssl_st*, %struct.env_md_ctx_st*, i8*)*, i8*, i32, i8*, i32, i32 (i32)* }

@init = internal global i32 1, align 4
@SSLv3_client_data = internal global %struct.ssl_method_st zeroinitializer, align 8

; Function Attrs: nounwind ssp uwtable
define %struct.ssl_method_st* @SSLv3_client_method() #0 {
  %tmp = alloca i8*, align 8
  %tmp___0 = alloca %struct.ssl_method_st*, align 8
  %1 = load i32, i32* @init, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %9

; <label>:3                                       ; preds = %0
  store i32 0, i32* @init, align 4
  %4 = call %struct.ssl_method_st* @sslv3_base_method()
  store %struct.ssl_method_st* %4, %struct.ssl_method_st** %tmp___0, align 8
  %5 = load %struct.ssl_method_st*, %struct.ssl_method_st** %tmp___0, align 8
  %6 = bitcast %struct.ssl_method_st* %5 to i8*
  store i8* %6, i8** %tmp, align 8
  %7 = load i8*, i8** %tmp, align 8
  %8 = call i8* @memcpy(i8* bitcast (%struct.ssl_method_st* @SSLv3_client_data to i8*), i8* %7, i32 200)
  store i32 (%struct.ssl_st*)* @ssl3_connect, i32 (%struct.ssl_st*)** getelementptr inbounds (%struct.ssl_method_st, %struct.ssl_method_st* @SSLv3_client_data, i32 0, i32 5), align 8
  store %struct.ssl_method_st* (i32)* @ssl3_get_client_method, %struct.ssl_method_st* (i32)** getelementptr inbounds (%struct.ssl_method_st, %struct.ssl_method_st* @SSLv3_client_data, i32 0, i32 19), align 8
  br label %10

; <label>:9                                       ; preds = %0
  br label %10

; <label>:10                                      ; preds = %9, %3
  ret %struct.ssl_method_st* @SSLv3_client_data
}

declare %struct.ssl_method_st* @sslv3_base_method() #1

declare i8* @memcpy(i8*, i8*, i32) #1

; Function Attrs: nounwind ssp uwtable
define i32 @ssl3_connect(%struct.ssl_st* %s) #0 {
  %1 = alloca %struct.ssl_st*, align 8
  %buf = alloca %struct.buf_mem_st*, align 8
  %tmp = alloca i64, align 8
  %l = alloca i64, align 8
  %num1 = alloca i64, align 8
  %cb = alloca void (...)*, align 8
  %ret = alloca i32, align 4
  %new_state = alloca i32, align 4
  %state = alloca i32, align 4
  %skip = alloca i32, align 4
  %tmp___0 = alloca i32*, align 8
  %tmp___1 = alloca i32, align 4
  %tmp___2 = alloca i32, align 4
  %tmp___3 = alloca i32, align 4
  %tmp___4 = alloca i32, align 4
  %tmp___5 = alloca i32, align 4
  %tmp___6 = alloca i32, align 4
  %tmp___7 = alloca i32, align 4
  %tmp___8 = alloca i32, align 4
  %tmp___9 = alloca i64, align 8
  %blastFlag = alloca i32, align 4
  store %struct.ssl_st* %s, %struct.ssl_st** %1, align 8
  store i32 0, i32* %blastFlag, align 4
  %2 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %2, i32 0, i32 13
  store i32 12292, i32* %3, align 4
  %4 = call i32 @__VERIFIER_nondet_int()
  %5 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %6 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %5, i32 0, i32 23
  store i32 %4, i32* %6, align 4
  %7 = call i32 @__VERIFIER_nondet_int()
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %tmp, align 8
  store void (...)* null, void (...)** %cb, align 8
  store i32 -1, i32* %ret, align 4
  store i32 0, i32* %skip, align 4
  %9 = load i32*, i32** %tmp___0, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %11 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %10, i32 0, i32 41
  %12 = load void (...)*, void (...)** %11, align 8
  %13 = ptrtoint void (...)* %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

; <label>:15                                      ; preds = %0
  %16 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %17 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %16, i32 0, i32 41
  %18 = load void (...)*, void (...)** %17, align 8
  store void (...)* %18, void (...)** %cb, align 8
  br label %35

; <label>:19                                      ; preds = %0
  %20 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %21 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %20, i32 0, i32 44
  %22 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %21, align 8
  %23 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %22, i32 0, i32 17
  %24 = load void (...)*, void (...)** %23, align 8
  %25 = ptrtoint void (...)* %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

; <label>:27                                      ; preds = %19
  %28 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %29 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %28, i32 0, i32 44
  %30 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %29, align 8
  %31 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %30, i32 0, i32 17
  %32 = load void (...)*, void (...)** %31, align 8
  store void (...)* %32, void (...)** %cb, align 8
  br label %34

; <label>:33                                      ; preds = %19
  br label %34

; <label>:34                                      ; preds = %33, %27
  br label %35

; <label>:35                                      ; preds = %34, %15
  %36 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %37 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %tmp___1, align 4
  %41 = and i32 %40, 12288
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

; <label>:43                                      ; preds = %35
  %44 = load i32, i32* %tmp___2, align 4
  %45 = and i32 %44, 16384
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %43
  br label %49

; <label>:48                                      ; preds = %43
  br label %49

; <label>:49                                      ; preds = %48, %47
  br label %51

; <label>:50                                      ; preds = %35
  br label %51

; <label>:51                                      ; preds = %50, %49
  br label %52

; <label>:52                                      ; preds = %863, %51
  br label %53

; <label>:53                                      ; preds = %52
  %54 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %55 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %54, i32 0, i32 13
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %state, align 4
  %57 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %58 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %57, i32 0, i32 13
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 12292
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %53
  br label %257

; <label>:62                                      ; preds = %53
  %63 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %64 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %63, i32 0, i32 13
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 16384
  br i1 %66, label %67, label %68

; <label>:67                                      ; preds = %62
  br label %269

; <label>:68                                      ; preds = %62
  %69 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %70 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 4096
  br i1 %72, label %73, label %74

; <label>:73                                      ; preds = %68
  br label %270

; <label>:74                                      ; preds = %68
  %75 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %76 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %75, i32 0, i32 13
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 20480
  br i1 %78, label %79, label %80

; <label>:79                                      ; preds = %74
  br label %271

; <label>:80                                      ; preds = %74
  %81 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %82 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %81, i32 0, i32 13
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 4099
  br i1 %84, label %85, label %86

; <label>:85                                      ; preds = %80
  br label %272

; <label>:86                                      ; preds = %80
  %87 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %88 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %87, i32 0, i32 13
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 4368
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %86
  br label %331

; <label>:92                                      ; preds = %86
  %93 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %94 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %93, i32 0, i32 13
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 4369
  br i1 %96, label %97, label %98

; <label>:97                                      ; preds = %92
  br label %332

; <label>:98                                      ; preds = %92
  %99 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %100 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %99, i32 0, i32 13
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 4384
  br i1 %102, label %103, label %104

; <label>:103                                     ; preds = %98
  br label %362

; <label>:104                                     ; preds = %98
  %105 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %106 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %105, i32 0, i32 13
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 4385
  br i1 %108, label %109, label %110

; <label>:109                                     ; preds = %104
  br label %363

; <label>:110                                     ; preds = %104
  %111 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %112 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %111, i32 0, i32 13
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 4400
  br i1 %114, label %115, label %116

; <label>:115                                     ; preds = %110
  br label %388

; <label>:116                                     ; preds = %110
  %117 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %118 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %117, i32 0, i32 13
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 4401
  br i1 %120, label %121, label %122

; <label>:121                                     ; preds = %116
  br label %389

; <label>:122                                     ; preds = %116
  %123 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %124 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %123, i32 0, i32 13
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 4416
  br i1 %126, label %127, label %128

; <label>:127                                     ; preds = %122
  br label %418

; <label>:128                                     ; preds = %122
  %129 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %130 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %129, i32 0, i32 13
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 4417
  br i1 %132, label %133, label %134

; <label>:133                                     ; preds = %128
  br label %419

; <label>:134                                     ; preds = %128
  %135 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %136 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %135, i32 0, i32 13
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 4432
  br i1 %138, label %139, label %140

; <label>:139                                     ; preds = %134
  br label %441

; <label>:140                                     ; preds = %134
  %141 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %142 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %141, i32 0, i32 13
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 4433
  br i1 %144, label %145, label %146

; <label>:145                                     ; preds = %140
  br label %442

; <label>:146                                     ; preds = %140
  %147 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %148 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %147, i32 0, i32 13
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 4448
  br i1 %150, label %151, label %152

; <label>:151                                     ; preds = %146
  br label %458

; <label>:152                                     ; preds = %146
  %153 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %154 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %153, i32 0, i32 13
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 4449
  br i1 %156, label %157, label %158

; <label>:157                                     ; preds = %152
  br label %459

; <label>:158                                     ; preds = %152
  %159 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %160 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %159, i32 0, i32 13
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 4464
  br i1 %162, label %163, label %164

; <label>:163                                     ; preds = %158
  br label %487

; <label>:164                                     ; preds = %158
  %165 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %166 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %165, i32 0, i32 13
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 4465
  br i1 %168, label %169, label %170

; <label>:169                                     ; preds = %164
  br label %488

; <label>:170                                     ; preds = %164
  %171 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %172 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %171, i32 0, i32 13
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 4466
  br i1 %174, label %175, label %176

; <label>:175                                     ; preds = %170
  br label %489

; <label>:176                                     ; preds = %170
  %177 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %178 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %177, i32 0, i32 13
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 4467
  br i1 %180, label %181, label %182

; <label>:181                                     ; preds = %176
  br label %490

; <label>:182                                     ; preds = %176
  %183 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %184 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %183, i32 0, i32 13
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 4480
  br i1 %186, label %187, label %188

; <label>:187                                     ; preds = %182
  br label %501

; <label>:188                                     ; preds = %182
  %189 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %190 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %189, i32 0, i32 13
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 4481
  br i1 %192, label %193, label %194

; <label>:193                                     ; preds = %188
  br label %502

; <label>:194                                     ; preds = %188
  %195 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %196 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %195, i32 0, i32 13
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 4496
  br i1 %198, label %199, label %200

; <label>:199                                     ; preds = %194
  br label %537

; <label>:200                                     ; preds = %194
  %201 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %202 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %201, i32 0, i32 13
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %203, 4497
  br i1 %204, label %205, label %206

; <label>:205                                     ; preds = %200
  br label %538

; <label>:206                                     ; preds = %200
  %207 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %208 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %207, i32 0, i32 13
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 4512
  br i1 %210, label %211, label %212

; <label>:211                                     ; preds = %206
  br label %553

; <label>:212                                     ; preds = %206
  %213 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %214 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %213, i32 0, i32 13
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 4513
  br i1 %216, label %217, label %218

; <label>:217                                     ; preds = %212
  br label %554

; <label>:218                                     ; preds = %212
  %219 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %220 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %219, i32 0, i32 13
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 4528
  br i1 %222, label %223, label %224

; <label>:223                                     ; preds = %218
  br label %614

; <label>:224                                     ; preds = %218
  %225 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %226 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %225, i32 0, i32 13
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %227, 4529
  br i1 %228, label %229, label %230

; <label>:229                                     ; preds = %224
  br label %615

; <label>:230                                     ; preds = %224
  %231 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %232 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %231, i32 0, i32 13
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, 4560
  br i1 %234, label %235, label %236

; <label>:235                                     ; preds = %230
  br label %671

; <label>:236                                     ; preds = %230
  %237 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %238 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %237, i32 0, i32 13
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %239, 4561
  br i1 %240, label %241, label %242

; <label>:241                                     ; preds = %236
  br label %672

; <label>:242                                     ; preds = %236
  %243 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %244 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %243, i32 0, i32 13
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %245, 4352
  br i1 %246, label %247, label %248

; <label>:247                                     ; preds = %242
  br label %692

; <label>:248                                     ; preds = %242
  %249 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %250 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %249, i32 0, i32 13
  %251 = load i32, i32* %250, align 4
  %252 = icmp eq i32 %251, 3
  br i1 %252, label %253, label %254

; <label>:253                                     ; preds = %248
  br label %722

; <label>:254                                     ; preds = %248
  br label %776
                                                  ; No predecessors!
  br i1 false, label %256, label %777

; <label>:256                                     ; preds = %255
  br label %257

; <label>:257                                     ; preds = %256, %61
  %258 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %259 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %258, i32 0, i32 10
  store i32 1, i32* %259, align 4
  %260 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %261 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %260, i32 0, i32 13
  store i32 4096, i32* %261, align 4
  %262 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %263 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %262, i32 0, i32 44
  %264 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %263, align 8
  %265 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %264, i32 0, i32 15
  %266 = getelementptr inbounds %struct.__anonstruct_stats_37, %struct.__anonstruct_stats_37* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %266, align 4
  br label %269

; <label>:269                                     ; preds = %257, %67
  br label %270

; <label>:270                                     ; preds = %269, %73
  br label %271

; <label>:271                                     ; preds = %270, %79
  br label %272

; <label>:272                                     ; preds = %271, %85
  %273 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %274 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %273, i32 0, i32 9
  store i32 0, i32* %274, align 4
  %275 = load void (...)*, void (...)** %cb, align 8
  %276 = ptrtoint void (...)* %275 to i64
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %279

; <label>:278                                     ; preds = %272
  br label %280

; <label>:279                                     ; preds = %272
  br label %280

; <label>:280                                     ; preds = %279, %278
  %281 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %282 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = and i32 %283, 65280
  %285 = icmp ne i32 %284, 768
  br i1 %285, label %286, label %287

; <label>:286                                     ; preds = %280
  store i32 -1, i32* %ret, align 4
  br label %865

; <label>:287                                     ; preds = %280
  br label %288

; <label>:288                                     ; preds = %287
  %289 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %290 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %289, i32 0, i32 1
  store i32 4096, i32* %290, align 4
  %291 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %292 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %291, i32 0, i32 15
  %293 = load %struct.buf_mem_st*, %struct.buf_mem_st** %292, align 8
  %294 = ptrtoint %struct.buf_mem_st* %293 to i64
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %296, label %306

; <label>:296                                     ; preds = %288
  %297 = call i32 @__VERIFIER_nondet_int()
  store i32 %297, i32* %tmp___3, align 4
  %298 = load i32, i32* %tmp___3, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %301, label %300

; <label>:300                                     ; preds = %296
  store i32 -1, i32* %ret, align 4
  br label %865

; <label>:301                                     ; preds = %296
  br label %302

; <label>:302                                     ; preds = %301
  %303 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf, align 8
  %304 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %305 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %304, i32 0, i32 15
  store %struct.buf_mem_st* %303, %struct.buf_mem_st** %305, align 8
  br label %307

; <label>:306                                     ; preds = %288
  br label %307

; <label>:307                                     ; preds = %306, %302
  %308 = call i32 @__VERIFIER_nondet_int()
  store i32 %308, i32* %tmp___4, align 4
  %309 = load i32, i32* %tmp___4, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %312, label %311

; <label>:311                                     ; preds = %307
  store i32 -1, i32* %ret, align 4
  br label %865

; <label>:312                                     ; preds = %307
  br label %313

; <label>:313                                     ; preds = %312
  %314 = call i32 @__VERIFIER_nondet_int()
  store i32 %314, i32* %tmp___5, align 4
  %315 = load i32, i32* %tmp___5, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %318, label %317

; <label>:317                                     ; preds = %313
  store i32 -1, i32* %ret, align 4
  br label %865

; <label>:318                                     ; preds = %313
  br label %319

; <label>:319                                     ; preds = %318
  %320 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %321 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %320, i32 0, i32 13
  store i32 4368, i32* %321, align 4
  %322 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %323 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %322, i32 0, i32 44
  %324 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %323, align 8
  %325 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %324, i32 0, i32 15
  %326 = getelementptr inbounds %struct.__anonstruct_stats_37, %struct.__anonstruct_stats_37* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %326, align 4
  %329 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %330 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %329, i32 0, i32 16
  store i32 0, i32* %330, align 4
  br label %778

; <label>:331                                     ; preds = %91
  br label %332

; <label>:332                                     ; preds = %331, %97
  %333 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %334 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %333, i32 0, i32 12
  store i32 0, i32* %334, align 4
  %335 = call i32 @__VERIFIER_nondet_int()
  store i32 %335, i32* %ret, align 4
  %336 = load i32, i32* %blastFlag, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %339

; <label>:338                                     ; preds = %332
  store i32 1, i32* %blastFlag, align 4
  br label %340

; <label>:339                                     ; preds = %332
  br label %340

; <label>:340                                     ; preds = %339, %338
  %341 = load i32, i32* %ret, align 4
  %342 = icmp sle i32 %341, 0
  br i1 %342, label %343, label %344

; <label>:343                                     ; preds = %340
  br label %865

; <label>:344                                     ; preds = %340
  br label %345

; <label>:345                                     ; preds = %344
  %346 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %347 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %346, i32 0, i32 13
  store i32 4384, i32* %347, align 4
  %348 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %349 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %348, i32 0, i32 16
  store i32 0, i32* %349, align 4
  %350 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %351 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %350, i32 0, i32 5
  %352 = load %struct.bio_st*, %struct.bio_st** %351, align 8
  %353 = ptrtoint %struct.bio_st* %352 to i64
  %354 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %355 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %354, i32 0, i32 4
  %356 = load %struct.bio_st*, %struct.bio_st** %355, align 8
  %357 = ptrtoint %struct.bio_st* %356 to i64
  %358 = icmp ne i64 %353, %357
  br i1 %358, label %359, label %360

; <label>:359                                     ; preds = %345
  br label %361

; <label>:360                                     ; preds = %345
  br label %361

; <label>:361                                     ; preds = %360, %359
  br label %778

; <label>:362                                     ; preds = %103
  br label %363

; <label>:363                                     ; preds = %362, %109
  %364 = call i32 @__VERIFIER_nondet_int()
  store i32 %364, i32* %ret, align 4
  %365 = load i32, i32* %blastFlag, align 4
  %366 = icmp eq i32 %365, 1
  br i1 %366, label %367, label %368

; <label>:367                                     ; preds = %363
  store i32 2, i32* %blastFlag, align 4
  br label %369

; <label>:368                                     ; preds = %363
  br label %369

; <label>:369                                     ; preds = %368, %367
  %370 = load i32, i32* %ret, align 4
  %371 = icmp sle i32 %370, 0
  br i1 %371, label %372, label %373

; <label>:372                                     ; preds = %369
  br label %865

; <label>:373                                     ; preds = %369
  br label %374

; <label>:374                                     ; preds = %373
  %375 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %376 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %375, i32 0, i32 23
  %377 = load i32, i32* %376, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %382

; <label>:379                                     ; preds = %374
  %380 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %381 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %380, i32 0, i32 13
  store i32 4560, i32* %381, align 4
  br label %385

; <label>:382                                     ; preds = %374
  %383 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %384 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %383, i32 0, i32 13
  store i32 4400, i32* %384, align 4
  br label %385

; <label>:385                                     ; preds = %382, %379
  %386 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %387 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %386, i32 0, i32 16
  store i32 0, i32* %387, align 4
  br label %778

; <label>:388                                     ; preds = %115
  br label %389

; <label>:389                                     ; preds = %388, %121
  %390 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %391 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %390, i32 0, i32 21
  %392 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %391, align 8
  %393 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %392, i32 0, i32 32
  %394 = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %393, i32 0, i32 7
  %395 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %394, align 8
  %396 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %395, i32 0, i32 3
  %397 = load i64, i64* %396, align 8
  %398 = and i64 %397, 256
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %401

; <label>:400                                     ; preds = %389
  store i32 1, i32* %skip, align 4
  br label %413

; <label>:401                                     ; preds = %389
  %402 = call i32 @__VERIFIER_nondet_int()
  store i32 %402, i32* %ret, align 4
  %403 = load i32, i32* %blastFlag, align 4
  %404 = icmp eq i32 %403, 2
  br i1 %404, label %405, label %406

; <label>:405                                     ; preds = %401
  store i32 3, i32* %blastFlag, align 4
  br label %407

; <label>:406                                     ; preds = %401
  br label %407

; <label>:407                                     ; preds = %406, %405
  %408 = load i32, i32* %ret, align 4
  %409 = icmp sle i32 %408, 0
  br i1 %409, label %410, label %411

; <label>:410                                     ; preds = %407
  br label %865

; <label>:411                                     ; preds = %407
  br label %412

; <label>:412                                     ; preds = %411
  br label %413

; <label>:413                                     ; preds = %412, %400
  %414 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %415 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %414, i32 0, i32 13
  store i32 4416, i32* %415, align 4
  %416 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %417 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %416, i32 0, i32 16
  store i32 0, i32* %417, align 4
  br label %778

; <label>:418                                     ; preds = %127
  br label %419

; <label>:419                                     ; preds = %418, %133
  %420 = call i32 @__VERIFIER_nondet_int()
  store i32 %420, i32* %ret, align 4
  %421 = load i32, i32* %blastFlag, align 4
  %422 = icmp eq i32 %421, 3
  br i1 %422, label %423, label %424

; <label>:423                                     ; preds = %419
  store i32 4, i32* %blastFlag, align 4
  br label %425

; <label>:424                                     ; preds = %419
  br label %425

; <label>:425                                     ; preds = %424, %423
  %426 = load i32, i32* %ret, align 4
  %427 = icmp sle i32 %426, 0
  br i1 %427, label %428, label %429

; <label>:428                                     ; preds = %425
  br label %865

; <label>:429                                     ; preds = %425
  br label %430

; <label>:430                                     ; preds = %429
  %431 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %432 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %431, i32 0, i32 13
  store i32 4432, i32* %432, align 4
  %433 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %434 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %433, i32 0, i32 16
  store i32 0, i32* %434, align 4
  %435 = call i32 @__VERIFIER_nondet_int()
  store i32 %435, i32* %tmp___6, align 4
  %436 = load i32, i32* %tmp___6, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %439, label %438

; <label>:438                                     ; preds = %430
  store i32 -1, i32* %ret, align 4
  br label %865

; <label>:439                                     ; preds = %430
  br label %440

; <label>:440                                     ; preds = %439
  br label %778

; <label>:441                                     ; preds = %139
  br label %442

; <label>:442                                     ; preds = %441, %145
  %443 = call i32 @__VERIFIER_nondet_int()
  store i32 %443, i32* %ret, align 4
  %444 = load i32, i32* %blastFlag, align 4
  %445 = icmp eq i32 %444, 5
  br i1 %445, label %446, label %447

; <label>:446                                     ; preds = %442
  br label %877

; <label>:447                                     ; preds = %442
  br label %448

; <label>:448                                     ; preds = %447
  %449 = load i32, i32* %ret, align 4
  %450 = icmp sle i32 %449, 0
  br i1 %450, label %451, label %452

; <label>:451                                     ; preds = %448
  br label %865

; <label>:452                                     ; preds = %448
  br label %453

; <label>:453                                     ; preds = %452
  %454 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %455 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %454, i32 0, i32 13
  store i32 4448, i32* %455, align 4
  %456 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %457 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %456, i32 0, i32 16
  store i32 0, i32* %457, align 4
  br label %778

; <label>:458                                     ; preds = %151
  br label %459

; <label>:459                                     ; preds = %458, %157
  %460 = call i32 @__VERIFIER_nondet_int()
  store i32 %460, i32* %ret, align 4
  %461 = load i32, i32* %blastFlag, align 4
  %462 = icmp eq i32 %461, 4
  br i1 %462, label %463, label %464

; <label>:463                                     ; preds = %459
  br label %877

; <label>:464                                     ; preds = %459
  br label %465

; <label>:465                                     ; preds = %464
  %466 = load i32, i32* %ret, align 4
  %467 = icmp sle i32 %466, 0
  br i1 %467, label %468, label %469

; <label>:468                                     ; preds = %465
  br label %865

; <label>:469                                     ; preds = %465
  br label %470

; <label>:470                                     ; preds = %469
  %471 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %472 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %471, i32 0, i32 21
  %473 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %472, align 8
  %474 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %473, i32 0, i32 32
  %475 = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %474, i32 0, i32 11
  %476 = load i32, i32* %475, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %481

; <label>:478                                     ; preds = %470
  %479 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %480 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %479, i32 0, i32 13
  store i32 4464, i32* %480, align 4
  br label %484

; <label>:481                                     ; preds = %470
  %482 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %483 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %482, i32 0, i32 13
  store i32 4480, i32* %483, align 4
  br label %484

; <label>:484                                     ; preds = %481, %478
  %485 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %486 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %485, i32 0, i32 16
  store i32 0, i32* %486, align 4
  br label %778

; <label>:487                                     ; preds = %163
  br label %488

; <label>:488                                     ; preds = %487, %169
  br label %489

; <label>:489                                     ; preds = %488, %175
  br label %490

; <label>:490                                     ; preds = %489, %181
  %491 = call i32 @__VERIFIER_nondet_int()
  store i32 %491, i32* %ret, align 4
  %492 = load i32, i32* %ret, align 4
  %493 = icmp sle i32 %492, 0
  br i1 %493, label %494, label %495

; <label>:494                                     ; preds = %490
  br label %865

; <label>:495                                     ; preds = %490
  br label %496

; <label>:496                                     ; preds = %495
  %497 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %498 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %497, i32 0, i32 13
  store i32 4480, i32* %498, align 4
  %499 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %500 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %499, i32 0, i32 16
  store i32 0, i32* %500, align 4
  br label %778

; <label>:501                                     ; preds = %187
  br label %502

; <label>:502                                     ; preds = %501, %193
  %503 = call i32 @__VERIFIER_nondet_int()
  store i32 %503, i32* %ret, align 4
  %504 = load i32, i32* %ret, align 4
  %505 = icmp sle i32 %504, 0
  br i1 %505, label %506, label %507

; <label>:506                                     ; preds = %502
  br label %865

; <label>:507                                     ; preds = %502
  br label %508

; <label>:508                                     ; preds = %507
  %509 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %510 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %509, i32 0, i32 21
  %511 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %510, align 8
  %512 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %511, i32 0, i32 32
  %513 = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %512, i32 0, i32 7
  %514 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %513, align 8
  %515 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %514, i32 0, i32 3
  %516 = load i64, i64* %515, align 8
  store i64 %516, i64* %l, align 8
  %517 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %518 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %517, i32 0, i32 21
  %519 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %518, align 8
  %520 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %519, i32 0, i32 32
  %521 = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %520, i32 0, i32 11
  %522 = load i32, i32* %521, align 4
  %523 = icmp eq i32 %522, 1
  br i1 %523, label %524, label %527

; <label>:524                                     ; preds = %508
  %525 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %526 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %525, i32 0, i32 13
  store i32 4496, i32* %526, align 4
  br label %534

; <label>:527                                     ; preds = %508
  %528 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %529 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %528, i32 0, i32 13
  store i32 4512, i32* %529, align 4
  %530 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %531 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %530, i32 0, i32 21
  %532 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %531, align 8
  %533 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %532, i32 0, i32 23
  store i32 0, i32* %533, align 4
  br label %534

; <label>:534                                     ; preds = %527, %524
  %535 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %536 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %535, i32 0, i32 16
  store i32 0, i32* %536, align 4
  br label %778

; <label>:537                                     ; preds = %199
  br label %538

; <label>:538                                     ; preds = %537, %205
  %539 = call i32 @__VERIFIER_nondet_int()
  store i32 %539, i32* %ret, align 4
  %540 = load i32, i32* %ret, align 4
  %541 = icmp sle i32 %540, 0
  br i1 %541, label %542, label %543

; <label>:542                                     ; preds = %538
  br label %865

; <label>:543                                     ; preds = %538
  br label %544

; <label>:544                                     ; preds = %543
  %545 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %546 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %545, i32 0, i32 13
  store i32 4512, i32* %546, align 4
  %547 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %548 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %547, i32 0, i32 16
  store i32 0, i32* %548, align 4
  %549 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %550 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %549, i32 0, i32 21
  %551 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %550, align 8
  %552 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %551, i32 0, i32 23
  store i32 0, i32* %552, align 4
  br label %778

; <label>:553                                     ; preds = %211
  br label %554

; <label>:554                                     ; preds = %553, %217
  %555 = call i32 @__VERIFIER_nondet_int()
  store i32 %555, i32* %ret, align 4
  %556 = load i32, i32* %ret, align 4
  %557 = icmp sle i32 %556, 0
  br i1 %557, label %558, label %559

; <label>:558                                     ; preds = %554
  br label %865

; <label>:559                                     ; preds = %554
  br label %560

; <label>:560                                     ; preds = %559
  %561 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %562 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %561, i32 0, i32 13
  store i32 4528, i32* %562, align 4
  %563 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %564 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %563, i32 0, i32 16
  store i32 0, i32* %564, align 4
  %565 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %566 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %565, i32 0, i32 21
  %567 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %566, align 8
  %568 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %567, i32 0, i32 32
  %569 = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %568, i32 0, i32 7
  %570 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %569, align 8
  %571 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %572 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %571, i32 0, i32 37
  %573 = load %struct.ssl_session_st*, %struct.ssl_session_st** %572, align 8
  %574 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %573, i32 0, i32 17
  store %struct.ssl_cipher_st* %570, %struct.ssl_cipher_st** %574, align 8
  %575 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %576 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %575, i32 0, i32 21
  %577 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %576, align 8
  %578 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %577, i32 0, i32 32
  %579 = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %578, i32 0, i32 20
  %580 = load %struct.ssl_comp_st*, %struct.ssl_comp_st** %579, align 8
  %581 = ptrtoint %struct.ssl_comp_st* %580 to i64
  %582 = icmp eq i64 %581, 0
  br i1 %582, label %583, label %588

; <label>:583                                     ; preds = %560
  %584 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %585 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %584, i32 0, i32 37
  %586 = load %struct.ssl_session_st*, %struct.ssl_session_st** %585, align 8
  %587 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %586, i32 0, i32 16
  store i32 0, i32* %587, align 4
  br label %601

; <label>:588                                     ; preds = %560
  %589 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %590 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %589, i32 0, i32 21
  %591 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %590, align 8
  %592 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %591, i32 0, i32 32
  %593 = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %592, i32 0, i32 20
  %594 = load %struct.ssl_comp_st*, %struct.ssl_comp_st** %593, align 8
  %595 = getelementptr inbounds %struct.ssl_comp_st, %struct.ssl_comp_st* %594, i32 0, i32 0
  %596 = load i32, i32* %595, align 4
  %597 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %598 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %597, i32 0, i32 37
  %599 = load %struct.ssl_session_st*, %struct.ssl_session_st** %598, align 8
  %600 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %599, i32 0, i32 16
  store i32 %596, i32* %600, align 4
  br label %601

; <label>:601                                     ; preds = %588, %583
  %602 = call i32 @__VERIFIER_nondet_int()
  store i32 %602, i32* %tmp___7, align 4
  %603 = load i32, i32* %tmp___7, align 4
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %606, label %605

; <label>:605                                     ; preds = %601
  store i32 -1, i32* %ret, align 4
  br label %865

; <label>:606                                     ; preds = %601
  br label %607

; <label>:607                                     ; preds = %606
  %608 = call i32 @__VERIFIER_nondet_int()
  store i32 %608, i32* %tmp___8, align 4
  %609 = load i32, i32* %tmp___8, align 4
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %612, label %611

; <label>:611                                     ; preds = %607
  store i32 -1, i32* %ret, align 4
  br label %865

; <label>:612                                     ; preds = %607
  br label %613

; <label>:613                                     ; preds = %612
  br label %778

; <label>:614                                     ; preds = %223
  br label %615

; <label>:615                                     ; preds = %614, %229
  %616 = call i32 @__VERIFIER_nondet_int()
  store i32 %616, i32* %ret, align 4
  %617 = load i32, i32* %ret, align 4
  %618 = icmp sle i32 %617, 0
  br i1 %618, label %619, label %620

; <label>:619                                     ; preds = %615
  br label %865

; <label>:620                                     ; preds = %615
  br label %621

; <label>:621                                     ; preds = %620
  %622 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %623 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %622, i32 0, i32 13
  store i32 4352, i32* %623, align 4
  %624 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %625 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %624, i32 0, i32 21
  %626 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %625, align 8
  %627 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %626, i32 0, i32 0
  %628 = load i64, i64* %627, align 8
  %629 = and i64 %628, -5
  store i64 %629, i64* %627, align 8
  %630 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %631 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %630, i32 0, i32 23
  %632 = load i32, i32* %631, align 4
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %634, label %662

; <label>:634                                     ; preds = %621
  %635 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %636 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %635, i32 0, i32 21
  %637 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %636, align 8
  %638 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %637, i32 0, i32 32
  %639 = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %638, i32 0, i32 9
  store i32 3, i32* %639, align 4
  %640 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %641 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %640, i32 0, i32 21
  %642 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %641, align 8
  %643 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %642, i32 0, i32 0
  %644 = load i64, i64* %643, align 8
  %645 = and i64 %644, 2
  %646 = icmp ne i64 %645, 0
  br i1 %646, label %647, label %660

; <label>:647                                     ; preds = %634
  %648 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %649 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %648, i32 0, i32 13
  store i32 3, i32* %649, align 4
  %650 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %651 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %650, i32 0, i32 21
  %652 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %651, align 8
  %653 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %652, i32 0, i32 0
  %654 = load i64, i64* %653, align 8
  %655 = or i64 %654, 4
  store i64 %655, i64* %653, align 8
  %656 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %657 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %656, i32 0, i32 21
  %658 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %657, align 8
  %659 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %658, i32 0, i32 1
  store i32 0, i32* %659, align 4
  br label %661

; <label>:660                                     ; preds = %634
  br label %661

; <label>:661                                     ; preds = %660, %647
  br label %668

; <label>:662                                     ; preds = %621
  %663 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %664 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %663, i32 0, i32 21
  %665 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %664, align 8
  %666 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %665, i32 0, i32 32
  %667 = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %666, i32 0, i32 9
  store i32 4560, i32* %667, align 4
  br label %668

; <label>:668                                     ; preds = %662, %661
  %669 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %670 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %669, i32 0, i32 16
  store i32 0, i32* %670, align 4
  br label %778

; <label>:671                                     ; preds = %235
  br label %672

; <label>:672                                     ; preds = %671, %241
  %673 = call i32 @__VERIFIER_nondet_int()
  store i32 %673, i32* %ret, align 4
  %674 = load i32, i32* %ret, align 4
  %675 = icmp sle i32 %674, 0
  br i1 %675, label %676, label %677

; <label>:676                                     ; preds = %672
  br label %865

; <label>:677                                     ; preds = %672
  br label %678

; <label>:678                                     ; preds = %677
  %679 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %680 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %679, i32 0, i32 23
  %681 = load i32, i32* %680, align 4
  %682 = icmp ne i32 %681, 0
  br i1 %682, label %683, label %686

; <label>:683                                     ; preds = %678
  %684 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %685 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %684, i32 0, i32 13
  store i32 4512, i32* %685, align 4
  br label %689

; <label>:686                                     ; preds = %678
  %687 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %688 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %687, i32 0, i32 13
  store i32 3, i32* %688, align 4
  br label %689

; <label>:689                                     ; preds = %686, %683
  %690 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %691 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %690, i32 0, i32 16
  store i32 0, i32* %691, align 4
  br label %778

; <label>:692                                     ; preds = %247
  %693 = call i32 @__VERIFIER_nondet_int()
  %694 = sext i32 %693 to i64
  store i64 %694, i64* %num1, align 8
  %695 = load i64, i64* %num1, align 8
  %696 = icmp sgt i64 %695, 0
  br i1 %696, label %697, label %712

; <label>:697                                     ; preds = %692
  %698 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %699 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %698, i32 0, i32 6
  store i32 2, i32* %699, align 4
  %700 = call i32 @__VERIFIER_nondet_int()
  %701 = sext i32 %700 to i64
  store i64 %701, i64* %tmp___9, align 8
  %702 = load i64, i64* %tmp___9, align 8
  %703 = trunc i64 %702 to i32
  %704 = sext i32 %703 to i64
  store i64 %704, i64* %num1, align 8
  %705 = load i64, i64* %num1, align 8
  %706 = icmp sle i64 %705, 0
  br i1 %706, label %707, label %708

; <label>:707                                     ; preds = %697
  store i32 -1, i32* %ret, align 4
  br label %865

; <label>:708                                     ; preds = %697
  br label %709

; <label>:709                                     ; preds = %708
  %710 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %711 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %710, i32 0, i32 6
  store i32 1, i32* %711, align 4
  br label %713

; <label>:712                                     ; preds = %692
  br label %713

; <label>:713                                     ; preds = %712, %709
  %714 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %715 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %714, i32 0, i32 21
  %716 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %715, align 8
  %717 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %716, i32 0, i32 32
  %718 = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %717, i32 0, i32 9
  %719 = load i32, i32* %718, align 4
  %720 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %721 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %720, i32 0, i32 13
  store i32 %719, i32* %721, align 4
  br label %778

; <label>:722                                     ; preds = %253
  %723 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %724 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %723, i32 0, i32 15
  %725 = load %struct.buf_mem_st*, %struct.buf_mem_st** %724, align 8
  %726 = ptrtoint %struct.buf_mem_st* %725 to i64
  %727 = icmp ne i64 %726, 0
  br i1 %727, label %728, label %731

; <label>:728                                     ; preds = %722
  %729 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %730 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %729, i32 0, i32 15
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %730, align 8
  br label %732

; <label>:731                                     ; preds = %722
  br label %732

; <label>:732                                     ; preds = %731, %728
  %733 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %734 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %733, i32 0, i32 21
  %735 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %734, align 8
  %736 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %735, i32 0, i32 0
  %737 = load i64, i64* %736, align 8
  %738 = and i64 %737, 4
  %739 = icmp ne i64 %738, 0
  br i1 %739, label %741, label %740

; <label>:740                                     ; preds = %732
  br label %742

; <label>:741                                     ; preds = %732
  br label %742

; <label>:742                                     ; preds = %741, %740
  %743 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %744 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %743, i32 0, i32 16
  store i32 0, i32* %744, align 4
  %745 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %746 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %745, i32 0, i32 10
  store i32 0, i32* %746, align 4
  %747 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %748 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %747, i32 0, i32 23
  %749 = load i32, i32* %748, align 4
  %750 = icmp ne i32 %749, 0
  br i1 %750, label %751, label %759

; <label>:751                                     ; preds = %742
  %752 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %753 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %752, i32 0, i32 44
  %754 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %753, align 8
  %755 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %754, i32 0, i32 15
  %756 = getelementptr inbounds %struct.__anonstruct_stats_37, %struct.__anonstruct_stats_37* %755, i32 0, i32 9
  %757 = load i32, i32* %756, align 4
  %758 = add nsw i32 %757, 1
  store i32 %758, i32* %756, align 4
  br label %760

; <label>:759                                     ; preds = %742
  br label %760

; <label>:760                                     ; preds = %759, %751
  store i32 1, i32* %ret, align 4
  %761 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %762 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %761, i32 0, i32 8
  store i32 (...)* bitcast (i32 (%struct.ssl_st*)* @ssl3_connect to i32 (...)*), i32 (...)** %762, align 8
  %763 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %764 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %763, i32 0, i32 44
  %765 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %764, align 8
  %766 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %765, i32 0, i32 15
  %767 = getelementptr inbounds %struct.__anonstruct_stats_37, %struct.__anonstruct_stats_37* %766, i32 0, i32 2
  %768 = load i32, i32* %767, align 4
  %769 = add nsw i32 %768, 1
  store i32 %769, i32* %767, align 4
  %770 = load void (...)*, void (...)** %cb, align 8
  %771 = ptrtoint void (...)* %770 to i64
  %772 = icmp ne i64 %771, 0
  br i1 %772, label %773, label %774

; <label>:773                                     ; preds = %760
  br label %775

; <label>:774                                     ; preds = %760
  br label %775

; <label>:775                                     ; preds = %774, %773
  br label %865

; <label>:776                                     ; preds = %254
  store i32 -1, i32* %ret, align 4
  br label %865

; <label>:777                                     ; preds = %255
  br label %778

; <label>:778                                     ; preds = %777, %713, %689, %668, %613, %544, %534, %496, %484, %453, %440, %413, %385, %361, %319
  br label %779

; <label>:779                                     ; preds = %778
  br label %780

; <label>:780                                     ; preds = %779
  br label %781

; <label>:781                                     ; preds = %780
  br label %782

; <label>:782                                     ; preds = %781
  br label %783

; <label>:783                                     ; preds = %782
  br label %784

; <label>:784                                     ; preds = %783
  br label %785

; <label>:785                                     ; preds = %784
  br label %786

; <label>:786                                     ; preds = %785
  br label %787

; <label>:787                                     ; preds = %786
  br label %788

; <label>:788                                     ; preds = %787
  br label %789

; <label>:789                                     ; preds = %788
  br label %790

; <label>:790                                     ; preds = %789
  br label %791

; <label>:791                                     ; preds = %790
  br label %792

; <label>:792                                     ; preds = %791
  br label %793

; <label>:793                                     ; preds = %792
  br label %794

; <label>:794                                     ; preds = %793
  br label %795

; <label>:795                                     ; preds = %794
  br label %796

; <label>:796                                     ; preds = %795
  br label %797

; <label>:797                                     ; preds = %796
  br label %798

; <label>:798                                     ; preds = %797
  br label %799

; <label>:799                                     ; preds = %798
  br label %800

; <label>:800                                     ; preds = %799
  br label %801

; <label>:801                                     ; preds = %800
  br label %802

; <label>:802                                     ; preds = %801
  br label %803

; <label>:803                                     ; preds = %802
  br label %804

; <label>:804                                     ; preds = %803
  br label %805

; <label>:805                                     ; preds = %804
  br label %806

; <label>:806                                     ; preds = %805
  br label %807

; <label>:807                                     ; preds = %806
  br label %808

; <label>:808                                     ; preds = %807
  br label %809

; <label>:809                                     ; preds = %808
  br label %810

; <label>:810                                     ; preds = %809
  br label %811

; <label>:811                                     ; preds = %810
  br label %812

; <label>:812                                     ; preds = %811
  %813 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %814 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %813, i32 0, i32 21
  %815 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %814, align 8
  %816 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %815, i32 0, i32 32
  %817 = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %816, i32 0, i32 10
  %818 = load i32, i32* %817, align 4
  %819 = icmp ne i32 %818, 0
  br i1 %819, label %862, label %820

; <label>:820                                     ; preds = %812
  %821 = load i32, i32* %skip, align 4
  %822 = icmp ne i32 %821, 0
  br i1 %822, label %860, label %823

; <label>:823                                     ; preds = %820
  %824 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %825 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %824, i32 0, i32 45
  %826 = load i32, i32* %825, align 4
  %827 = icmp ne i32 %826, 0
  br i1 %827, label %828, label %835

; <label>:828                                     ; preds = %823
  %829 = call i32 @__VERIFIER_nondet_int()
  store i32 %829, i32* %ret, align 4
  %830 = load i32, i32* %ret, align 4
  %831 = icmp sle i32 %830, 0
  br i1 %831, label %832, label %833

; <label>:832                                     ; preds = %828
  br label %865

; <label>:833                                     ; preds = %828
  br label %834

; <label>:834                                     ; preds = %833
  br label %836

; <label>:835                                     ; preds = %823
  br label %836

; <label>:836                                     ; preds = %835, %834
  %837 = load void (...)*, void (...)** %cb, align 8
  %838 = ptrtoint void (...)* %837 to i64
  %839 = icmp ne i64 %838, 0
  br i1 %839, label %840, label %858

; <label>:840                                     ; preds = %836
  %841 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %842 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %841, i32 0, i32 13
  %843 = load i32, i32* %842, align 4
  %844 = load i32, i32* %state, align 4
  %845 = icmp ne i32 %843, %844
  br i1 %845, label %846, label %856

; <label>:846                                     ; preds = %840
  %847 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %848 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %847, i32 0, i32 13
  %849 = load i32, i32* %848, align 4
  store i32 %849, i32* %new_state, align 4
  %850 = load i32, i32* %state, align 4
  %851 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %852 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %851, i32 0, i32 13
  store i32 %850, i32* %852, align 4
  %853 = load i32, i32* %new_state, align 4
  %854 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %855 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %854, i32 0, i32 13
  store i32 %853, i32* %855, align 4
  br label %857

; <label>:856                                     ; preds = %840
  br label %857

; <label>:857                                     ; preds = %856, %846
  br label %859

; <label>:858                                     ; preds = %836
  br label %859

; <label>:859                                     ; preds = %858, %857
  br label %861

; <label>:860                                     ; preds = %820
  br label %861

; <label>:861                                     ; preds = %860, %859
  br label %863

; <label>:862                                     ; preds = %812
  br label %863

; <label>:863                                     ; preds = %862, %861
  store i32 0, i32* %skip, align 4
  br label %52
                                                  ; No predecessors!
  br label %865

; <label>:865                                     ; preds = %864, %832, %776, %775, %707, %676, %619, %611, %605, %558, %542, %506, %494, %468, %451, %438, %428, %410, %372, %343, %317, %311, %300, %286
  %866 = load %struct.ssl_st*, %struct.ssl_st** %1, align 8
  %867 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %866, i32 0, i32 7
  %868 = load i32, i32* %867, align 4
  %869 = sub nsw i32 %868, 1
  store i32 %869, i32* %867, align 4
  %870 = load void (...)*, void (...)** %cb, align 8
  %871 = ptrtoint void (...)* %870 to i64
  %872 = icmp ne i64 %871, 0
  br i1 %872, label %873, label %874

; <label>:873                                     ; preds = %865
  br label %875

; <label>:874                                     ; preds = %865
  br label %875

; <label>:875                                     ; preds = %874, %873
  %876 = load i32, i32* %ret, align 4
  ret i32 %876

; <label>:877                                     ; preds = %463, %446
  call void (...) @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal %struct.ssl_method_st* @ssl3_get_client_method(i32 %ver) #0 {
  %tmp.i = alloca i8*, align 8
  %tmp___0.i = alloca %struct.ssl_method_st*, align 8
  %1 = alloca %struct.ssl_method_st*, align 8
  %2 = alloca i32, align 4
  %tmp = alloca %struct.ssl_method_st*, align 8
  store i32 %ver, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 768
  br i1 %4, label %5, label %20

; <label>:5                                       ; preds = %0
  %6 = bitcast i8** %tmp.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6)
  %7 = bitcast %struct.ssl_method_st** %tmp___0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7)
  %8 = load i32, i32* @init, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

; <label>:10                                      ; preds = %5
  store i32 0, i32* @init, align 4
  %11 = call %struct.ssl_method_st* @sslv3_base_method() #3
  store %struct.ssl_method_st* %11, %struct.ssl_method_st** %tmp___0.i, align 8
  %12 = load %struct.ssl_method_st*, %struct.ssl_method_st** %tmp___0.i, align 8
  %13 = bitcast %struct.ssl_method_st* %12 to i8*
  store i8* %13, i8** %tmp.i, align 8
  %14 = load i8*, i8** %tmp.i, align 8
  %15 = call i8* @memcpy(i8* bitcast (%struct.ssl_method_st* @SSLv3_client_data to i8*), i8* %14, i32 200) #3
  store i32 (%struct.ssl_st*)* @ssl3_connect, i32 (%struct.ssl_st*)** getelementptr inbounds (%struct.ssl_method_st, %struct.ssl_method_st* @SSLv3_client_data, i32 0, i32 5), align 8
  store %struct.ssl_method_st* (i32)* @ssl3_get_client_method, %struct.ssl_method_st* (i32)** getelementptr inbounds (%struct.ssl_method_st, %struct.ssl_method_st* @SSLv3_client_data, i32 0, i32 19), align 8
  br label %SSLv3_client_method.exit

; <label>:16                                      ; preds = %5
  br label %SSLv3_client_method.exit

SSLv3_client_method.exit:                         ; preds = %10, %16
  %17 = bitcast i8** %tmp.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17)
  %18 = bitcast %struct.ssl_method_st** %tmp___0.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18)
  store %struct.ssl_method_st* @SSLv3_client_data, %struct.ssl_method_st** %tmp, align 8
  %19 = load %struct.ssl_method_st*, %struct.ssl_method_st** %tmp, align 8
  store %struct.ssl_method_st* %19, %struct.ssl_method_st** %1
  br label %21

; <label>:20                                      ; preds = %0
  store %struct.ssl_method_st* null, %struct.ssl_method_st** %1
  br label %21

; <label>:21                                      ; preds = %20, %SSLv3_client_method.exit
  %22 = load %struct.ssl_method_st*, %struct.ssl_method_st** %1
  ret %struct.ssl_method_st* %22
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %s = alloca %struct.ssl_st*, align 8
  store i32 0, i32* %1
  %2 = call i8* @malloc(i64 376)
  %3 = bitcast i8* %2 to %struct.ssl_st*
  store %struct.ssl_st* %3, %struct.ssl_st** %s, align 8
  %4 = call i8* @malloc(i64 1016)
  %5 = bitcast i8* %4 to %struct.ssl3_state_st*
  %6 = load %struct.ssl_st*, %struct.ssl_st** %s, align 8
  %7 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %6, i32 0, i32 21
  store %struct.ssl3_state_st* %5, %struct.ssl3_state_st** %7, align 8
  %8 = load %struct.ssl_st*, %struct.ssl_st** %s, align 8
  %9 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %8, i32 0, i32 13
  store i32 12292, i32* %9, align 4
  %10 = load %struct.ssl_st*, %struct.ssl_st** %s, align 8
  %11 = call i32 @ssl3_connect(%struct.ssl_st* %10)
  ret i32 0
}

declare i8* @malloc(i64) #1

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
