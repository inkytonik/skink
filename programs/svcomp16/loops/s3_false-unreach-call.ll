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
entry:
  %tmp = alloca i8*, align 8
  %tmp___0 = alloca %struct.ssl_method_st*, align 8
  %0 = load i32, i32* @init, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* @init, align 4
  %call = call %struct.ssl_method_st* @sslv3_base_method()
  store %struct.ssl_method_st* %call, %struct.ssl_method_st** %tmp___0, align 8
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %tmp___0, align 8
  %2 = bitcast %struct.ssl_method_st* %1 to i8*
  store i8* %2, i8** %tmp, align 8
  %3 = load i8*, i8** %tmp, align 8
  %call2 = call i8* @memcpy(i8* bitcast (%struct.ssl_method_st* @SSLv3_client_data to i8*), i8* %3, i32 200)
  store i32 (%struct.ssl_st*)* @ssl3_connect, i32 (%struct.ssl_st*)** getelementptr inbounds (%struct.ssl_method_st, %struct.ssl_method_st* @SSLv3_client_data, i32 0, i32 5), align 8
  store %struct.ssl_method_st* (i32)* @ssl3_get_client_method, %struct.ssl_method_st* (i32)** getelementptr inbounds (%struct.ssl_method_st, %struct.ssl_method_st* @SSLv3_client_data, i32 0, i32 19), align 8
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %struct.ssl_method_st* @SSLv3_client_data
}

declare %struct.ssl_method_st* @sslv3_base_method() #1

declare i8* @memcpy(i8*, i8*, i32) #1

; Function Attrs: nounwind ssp uwtable
define i32 @ssl3_connect(%struct.ssl_st* %s) #0 {
entry:
  %s.addr = alloca %struct.ssl_st*, align 8
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
  store %struct.ssl_st* %s, %struct.ssl_st** %s.addr, align 8
  store i32 0, i32* %blastFlag, align 4
  %0 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state19 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i32 0, i32 13
  store i32 12292, i32* %state19, align 4
  %call = call i32 @__VERIFIER_nondet_int()
  %1 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %1, i32 0, i32 23
  store i32 %call, i32* %hit, align 4
  %call20 = call i32 @__VERIFIER_nondet_int()
  %conv = sext i32 %call20 to i64
  store i64 %conv, i64* %tmp, align 8
  store void (...)* null, void (...)** %cb, align 8
  store i32 -1, i32* %ret, align 4
  store i32 0, i32* %skip, align 4
  %2 = load i32*, i32** %tmp___0, align 8
  store i32 0, i32* %2, align 4
  %3 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %info_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %3, i32 0, i32 41
  %4 = load void (...)*, void (...)** %info_callback, align 8
  %5 = ptrtoint void (...)* %4 to i64
  %cmp = icmp ne i64 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %info_callback22 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %6, i32 0, i32 41
  %7 = load void (...)*, void (...)** %info_callback22, align 8
  store void (...)* %7, void (...)** %cb, align 8
  br label %if.end30

if.else:                                          ; preds = %entry
  %8 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %8, i32 0, i32 44
  %9 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8
  %info_callback23 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %9, i32 0, i32 17
  %10 = load void (...)*, void (...)** %info_callback23, align 8
  %11 = ptrtoint void (...)* %10 to i64
  %cmp24 = icmp ne i64 %11, 0
  br i1 %cmp24, label %if.then26, label %if.else29

if.then26:                                        ; preds = %if.else
  %12 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %ctx27 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %12, i32 0, i32 44
  %13 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx27, align 8
  %info_callback28 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %13, i32 0, i32 17
  %14 = load void (...)*, void (...)** %info_callback28, align 8
  store void (...)* %14, void (...)** %cb, align 8
  br label %if.end

if.else29:                                        ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %if.else29, %if.then26
  br label %if.end30

if.end30:                                         ; preds = %if.end, %if.then
  %15 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %in_handshake = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %15, i32 0, i32 7
  %16 = load i32, i32* %in_handshake, align 4
  %add = add nsw i32 %16, 1
  store i32 %add, i32* %in_handshake, align 4
  %17 = load i32, i32* %tmp___1, align 4
  %and = and i32 %17, 12288
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then31, label %if.else37

if.then31:                                        ; preds = %if.end30
  %18 = load i32, i32* %tmp___2, align 4
  %and32 = and i32 %18, 16384
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.then31
  br label %if.end36

if.else35:                                        ; preds = %if.then31
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %if.then34
  br label %if.end38

if.else37:                                        ; preds = %if.end30
  br label %if.end38

if.end38:                                         ; preds = %if.else37, %if.end36
  br label %while.body

while.body:                                       ; preds = %if.end592, %if.end38
  br label %while_0_continue

while_0_continue:                                 ; preds = %while.body
  %19 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state39 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %19, i32 0, i32 13
  %20 = load i32, i32* %state39, align 4
  store i32 %20, i32* %state, align 4
  %21 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state40 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %21, i32 0, i32 13
  %22 = load i32, i32* %state40, align 4
  %cmp41 = icmp eq i32 %22, 12292
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %while_0_continue
  br label %switch_1_12292

if.else44:                                        ; preds = %while_0_continue
  %23 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state45 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %23, i32 0, i32 13
  %24 = load i32, i32* %state45, align 4
  %cmp46 = icmp eq i32 %24, 16384
  br i1 %cmp46, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.else44
  br label %switch_1_16384

if.else49:                                        ; preds = %if.else44
  %25 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state50 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %25, i32 0, i32 13
  %26 = load i32, i32* %state50, align 4
  %cmp51 = icmp eq i32 %26, 4096
  br i1 %cmp51, label %if.then53, label %if.else54

if.then53:                                        ; preds = %if.else49
  br label %switch_1_4096

if.else54:                                        ; preds = %if.else49
  %27 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state55 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %27, i32 0, i32 13
  %28 = load i32, i32* %state55, align 4
  %cmp56 = icmp eq i32 %28, 20480
  br i1 %cmp56, label %if.then58, label %if.else59

if.then58:                                        ; preds = %if.else54
  br label %switch_1_20480

if.else59:                                        ; preds = %if.else54
  %29 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state60 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %29, i32 0, i32 13
  %30 = load i32, i32* %state60, align 4
  %cmp61 = icmp eq i32 %30, 4099
  br i1 %cmp61, label %if.then63, label %if.else64

if.then63:                                        ; preds = %if.else59
  br label %switch_1_4099

if.else64:                                        ; preds = %if.else59
  %31 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state65 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %31, i32 0, i32 13
  %32 = load i32, i32* %state65, align 4
  %cmp66 = icmp eq i32 %32, 4368
  br i1 %cmp66, label %if.then68, label %if.else69

if.then68:                                        ; preds = %if.else64
  br label %switch_1_4368

if.else69:                                        ; preds = %if.else64
  %33 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state70 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %33, i32 0, i32 13
  %34 = load i32, i32* %state70, align 4
  %cmp71 = icmp eq i32 %34, 4369
  br i1 %cmp71, label %if.then73, label %if.else74

if.then73:                                        ; preds = %if.else69
  br label %switch_1_4369

if.else74:                                        ; preds = %if.else69
  %35 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state75 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %35, i32 0, i32 13
  %36 = load i32, i32* %state75, align 4
  %cmp76 = icmp eq i32 %36, 4384
  br i1 %cmp76, label %if.then78, label %if.else79

if.then78:                                        ; preds = %if.else74
  br label %switch_1_4384

if.else79:                                        ; preds = %if.else74
  %37 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state80 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %37, i32 0, i32 13
  %38 = load i32, i32* %state80, align 4
  %cmp81 = icmp eq i32 %38, 4385
  br i1 %cmp81, label %if.then83, label %if.else84

if.then83:                                        ; preds = %if.else79
  br label %switch_1_4385

if.else84:                                        ; preds = %if.else79
  %39 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state85 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %39, i32 0, i32 13
  %40 = load i32, i32* %state85, align 4
  %cmp86 = icmp eq i32 %40, 4400
  br i1 %cmp86, label %if.then88, label %if.else89

if.then88:                                        ; preds = %if.else84
  br label %switch_1_4400

if.else89:                                        ; preds = %if.else84
  %41 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state90 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %41, i32 0, i32 13
  %42 = load i32, i32* %state90, align 4
  %cmp91 = icmp eq i32 %42, 4401
  br i1 %cmp91, label %if.then93, label %if.else94

if.then93:                                        ; preds = %if.else89
  br label %switch_1_4401

if.else94:                                        ; preds = %if.else89
  %43 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state95 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %43, i32 0, i32 13
  %44 = load i32, i32* %state95, align 4
  %cmp96 = icmp eq i32 %44, 4416
  br i1 %cmp96, label %if.then98, label %if.else99

if.then98:                                        ; preds = %if.else94
  br label %switch_1_4416

if.else99:                                        ; preds = %if.else94
  %45 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state100 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %45, i32 0, i32 13
  %46 = load i32, i32* %state100, align 4
  %cmp101 = icmp eq i32 %46, 4417
  br i1 %cmp101, label %if.then103, label %if.else104

if.then103:                                       ; preds = %if.else99
  br label %switch_1_4417

if.else104:                                       ; preds = %if.else99
  %47 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state105 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %47, i32 0, i32 13
  %48 = load i32, i32* %state105, align 4
  %cmp106 = icmp eq i32 %48, 4432
  br i1 %cmp106, label %if.then108, label %if.else109

if.then108:                                       ; preds = %if.else104
  br label %switch_1_4432

if.else109:                                       ; preds = %if.else104
  %49 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state110 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %49, i32 0, i32 13
  %50 = load i32, i32* %state110, align 4
  %cmp111 = icmp eq i32 %50, 4433
  br i1 %cmp111, label %if.then113, label %if.else114

if.then113:                                       ; preds = %if.else109
  br label %switch_1_4433

if.else114:                                       ; preds = %if.else109
  %51 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state115 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %51, i32 0, i32 13
  %52 = load i32, i32* %state115, align 4
  %cmp116 = icmp eq i32 %52, 4448
  br i1 %cmp116, label %if.then118, label %if.else119

if.then118:                                       ; preds = %if.else114
  br label %switch_1_4448

if.else119:                                       ; preds = %if.else114
  %53 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state120 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %53, i32 0, i32 13
  %54 = load i32, i32* %state120, align 4
  %cmp121 = icmp eq i32 %54, 4449
  br i1 %cmp121, label %if.then123, label %if.else124

if.then123:                                       ; preds = %if.else119
  br label %switch_1_4449

if.else124:                                       ; preds = %if.else119
  %55 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state125 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %55, i32 0, i32 13
  %56 = load i32, i32* %state125, align 4
  %cmp126 = icmp eq i32 %56, 4464
  br i1 %cmp126, label %if.then128, label %if.else129

if.then128:                                       ; preds = %if.else124
  br label %switch_1_4464

if.else129:                                       ; preds = %if.else124
  %57 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state130 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %57, i32 0, i32 13
  %58 = load i32, i32* %state130, align 4
  %cmp131 = icmp eq i32 %58, 4465
  br i1 %cmp131, label %if.then133, label %if.else134

if.then133:                                       ; preds = %if.else129
  br label %switch_1_4465

if.else134:                                       ; preds = %if.else129
  %59 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state135 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %59, i32 0, i32 13
  %60 = load i32, i32* %state135, align 4
  %cmp136 = icmp eq i32 %60, 4466
  br i1 %cmp136, label %if.then138, label %if.else139

if.then138:                                       ; preds = %if.else134
  br label %switch_1_4466

if.else139:                                       ; preds = %if.else134
  %61 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state140 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %61, i32 0, i32 13
  %62 = load i32, i32* %state140, align 4
  %cmp141 = icmp eq i32 %62, 4467
  br i1 %cmp141, label %if.then143, label %if.else144

if.then143:                                       ; preds = %if.else139
  br label %switch_1_4467

if.else144:                                       ; preds = %if.else139
  %63 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state145 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %63, i32 0, i32 13
  %64 = load i32, i32* %state145, align 4
  %cmp146 = icmp eq i32 %64, 4480
  br i1 %cmp146, label %if.then148, label %if.else149

if.then148:                                       ; preds = %if.else144
  br label %switch_1_4480

if.else149:                                       ; preds = %if.else144
  %65 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state150 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %65, i32 0, i32 13
  %66 = load i32, i32* %state150, align 4
  %cmp151 = icmp eq i32 %66, 4481
  br i1 %cmp151, label %if.then153, label %if.else154

if.then153:                                       ; preds = %if.else149
  br label %switch_1_4481

if.else154:                                       ; preds = %if.else149
  %67 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state155 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %67, i32 0, i32 13
  %68 = load i32, i32* %state155, align 4
  %cmp156 = icmp eq i32 %68, 4496
  br i1 %cmp156, label %if.then158, label %if.else159

if.then158:                                       ; preds = %if.else154
  br label %switch_1_4496

if.else159:                                       ; preds = %if.else154
  %69 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state160 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %69, i32 0, i32 13
  %70 = load i32, i32* %state160, align 4
  %cmp161 = icmp eq i32 %70, 4497
  br i1 %cmp161, label %if.then163, label %if.else164

if.then163:                                       ; preds = %if.else159
  br label %switch_1_4497

if.else164:                                       ; preds = %if.else159
  %71 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state165 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %71, i32 0, i32 13
  %72 = load i32, i32* %state165, align 4
  %cmp166 = icmp eq i32 %72, 4512
  br i1 %cmp166, label %if.then168, label %if.else169

if.then168:                                       ; preds = %if.else164
  br label %switch_1_4512

if.else169:                                       ; preds = %if.else164
  %73 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state170 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %73, i32 0, i32 13
  %74 = load i32, i32* %state170, align 4
  %cmp171 = icmp eq i32 %74, 4513
  br i1 %cmp171, label %if.then173, label %if.else174

if.then173:                                       ; preds = %if.else169
  br label %switch_1_4513

if.else174:                                       ; preds = %if.else169
  %75 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state175 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %75, i32 0, i32 13
  %76 = load i32, i32* %state175, align 4
  %cmp176 = icmp eq i32 %76, 4528
  br i1 %cmp176, label %if.then178, label %if.else179

if.then178:                                       ; preds = %if.else174
  br label %switch_1_4528

if.else179:                                       ; preds = %if.else174
  %77 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state180 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %77, i32 0, i32 13
  %78 = load i32, i32* %state180, align 4
  %cmp181 = icmp eq i32 %78, 4529
  br i1 %cmp181, label %if.then183, label %if.else184

if.then183:                                       ; preds = %if.else179
  br label %switch_1_4529

if.else184:                                       ; preds = %if.else179
  %79 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state185 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %79, i32 0, i32 13
  %80 = load i32, i32* %state185, align 4
  %cmp186 = icmp eq i32 %80, 4560
  br i1 %cmp186, label %if.then188, label %if.else189

if.then188:                                       ; preds = %if.else184
  br label %switch_1_4560

if.else189:                                       ; preds = %if.else184
  %81 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state190 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %81, i32 0, i32 13
  %82 = load i32, i32* %state190, align 4
  %cmp191 = icmp eq i32 %82, 4561
  br i1 %cmp191, label %if.then193, label %if.else194

if.then193:                                       ; preds = %if.else189
  br label %switch_1_4561

if.else194:                                       ; preds = %if.else189
  %83 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state195 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %83, i32 0, i32 13
  %84 = load i32, i32* %state195, align 4
  %cmp196 = icmp eq i32 %84, 4352
  br i1 %cmp196, label %if.then198, label %if.else199

if.then198:                                       ; preds = %if.else194
  br label %switch_1_4352

if.else199:                                       ; preds = %if.else194
  %85 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state200 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %85, i32 0, i32 13
  %86 = load i32, i32* %state200, align 4
  %cmp201 = icmp eq i32 %86, 3
  br i1 %cmp201, label %if.then203, label %if.else204

if.then203:                                       ; preds = %if.else199
  br label %switch_1_3

if.else204:                                       ; preds = %if.else199
  br label %switch_1_default
                                                  ; No predecessors!
  br i1 false, label %if.then205, label %if.else524

if.then205:                                       ; preds = %87
  br label %switch_1_12292

switch_1_12292:                                   ; preds = %if.then205, %if.then43
  %88 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %new_session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %88, i32 0, i32 10
  store i32 1, i32* %new_session, align 4
  %89 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state206 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %89, i32 0, i32 13
  store i32 4096, i32* %state206, align 4
  %90 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %ctx207 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %90, i32 0, i32 44
  %91 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx207, align 8
  %stats = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %91, i32 0, i32 15
  %sess_connect_renegotiate = getelementptr inbounds %struct.__anonstruct_stats_37, %struct.__anonstruct_stats_37* %stats, i32 0, i32 1
  %92 = load i32, i32* %sess_connect_renegotiate, align 4
  %add208 = add nsw i32 %92, 1
  store i32 %add208, i32* %sess_connect_renegotiate, align 4
  br label %switch_1_16384

switch_1_16384:                                   ; preds = %switch_1_12292, %if.then48
  br label %switch_1_4096

switch_1_4096:                                    ; preds = %switch_1_16384, %if.then53
  br label %switch_1_20480

switch_1_20480:                                   ; preds = %switch_1_4096, %if.then58
  br label %switch_1_4099

switch_1_4099:                                    ; preds = %switch_1_20480, %if.then63
  %93 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %93, i32 0, i32 9
  store i32 0, i32* %server, align 4
  %94 = load void (...)*, void (...)** %cb, align 8
  %95 = ptrtoint void (...)* %94 to i64
  %cmp209 = icmp ne i64 %95, 0
  br i1 %cmp209, label %if.then211, label %if.else212

if.then211:                                       ; preds = %switch_1_4099
  br label %if.end213

if.else212:                                       ; preds = %switch_1_4099
  br label %if.end213

if.end213:                                        ; preds = %if.else212, %if.then211
  %96 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %96, i32 0, i32 0
  %97 = load i32, i32* %version, align 4
  %and214 = and i32 %97, 65280
  %cmp215 = icmp ne i32 %and214, 768
  br i1 %cmp215, label %if.then217, label %if.else218

if.then217:                                       ; preds = %if.end213
  store i32 -1, i32* %ret, align 4
  br label %end

if.else218:                                       ; preds = %if.end213
  br label %if.end219

if.end219:                                        ; preds = %if.else218
  %98 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %98, i32 0, i32 1
  store i32 4096, i32* %type, align 4
  %99 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %99, i32 0, i32 15
  %100 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8
  %101 = ptrtoint %struct.buf_mem_st* %100 to i64
  %cmp220 = icmp eq i64 %101, 0
  br i1 %cmp220, label %if.then222, label %if.else229

if.then222:                                       ; preds = %if.end219
  %call223 = call i32 @__VERIFIER_nondet_int()
  store i32 %call223, i32* %tmp___3, align 4
  %102 = load i32, i32* %tmp___3, align 4
  %tobool224 = icmp ne i32 %102, 0
  br i1 %tobool224, label %if.else226, label %if.then225

if.then225:                                       ; preds = %if.then222
  store i32 -1, i32* %ret, align 4
  br label %end

if.else226:                                       ; preds = %if.then222
  br label %if.end227

if.end227:                                        ; preds = %if.else226
  %103 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf, align 8
  %104 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %init_buf228 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %104, i32 0, i32 15
  store %struct.buf_mem_st* %103, %struct.buf_mem_st** %init_buf228, align 8
  br label %if.end230

if.else229:                                       ; preds = %if.end219
  br label %if.end230

if.end230:                                        ; preds = %if.else229, %if.end227
  %call231 = call i32 @__VERIFIER_nondet_int()
  store i32 %call231, i32* %tmp___4, align 4
  %105 = load i32, i32* %tmp___4, align 4
  %tobool232 = icmp ne i32 %105, 0
  br i1 %tobool232, label %if.else234, label %if.then233

if.then233:                                       ; preds = %if.end230
  store i32 -1, i32* %ret, align 4
  br label %end

if.else234:                                       ; preds = %if.end230
  br label %if.end235

if.end235:                                        ; preds = %if.else234
  %call236 = call i32 @__VERIFIER_nondet_int()
  store i32 %call236, i32* %tmp___5, align 4
  %106 = load i32, i32* %tmp___5, align 4
  %tobool237 = icmp ne i32 %106, 0
  br i1 %tobool237, label %if.else239, label %if.then238

if.then238:                                       ; preds = %if.end235
  store i32 -1, i32* %ret, align 4
  br label %end

if.else239:                                       ; preds = %if.end235
  br label %if.end240

if.end240:                                        ; preds = %if.else239
  %107 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state241 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %107, i32 0, i32 13
  store i32 4368, i32* %state241, align 4
  %108 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %ctx242 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %108, i32 0, i32 44
  %109 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx242, align 8
  %stats243 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %109, i32 0, i32 15
  %sess_connect = getelementptr inbounds %struct.__anonstruct_stats_37, %struct.__anonstruct_stats_37* %stats243, i32 0, i32 0
  %110 = load i32, i32* %sess_connect, align 4
  %add244 = add nsw i32 %110, 1
  store i32 %add244, i32* %sess_connect, align 4
  %111 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %init_num = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %111, i32 0, i32 16
  store i32 0, i32* %init_num, align 4
  br label %switch_1_break

switch_1_4368:                                    ; preds = %if.then68
  br label %switch_1_4369

switch_1_4369:                                    ; preds = %switch_1_4368, %if.then73
  %112 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %112, i32 0, i32 12
  store i32 0, i32* %shutdown, align 4
  %call245 = call i32 @__VERIFIER_nondet_int()
  store i32 %call245, i32* %ret, align 4
  %113 = load i32, i32* %blastFlag, align 4
  %cmp246 = icmp eq i32 %113, 0
  br i1 %cmp246, label %if.then248, label %if.else249

if.then248:                                       ; preds = %switch_1_4369
  store i32 1, i32* %blastFlag, align 4
  br label %if.end250

if.else249:                                       ; preds = %switch_1_4369
  br label %if.end250

if.end250:                                        ; preds = %if.else249, %if.then248
  %114 = load i32, i32* %ret, align 4
  %cmp251 = icmp sle i32 %114, 0
  br i1 %cmp251, label %if.then253, label %if.else254

if.then253:                                       ; preds = %if.end250
  br label %end

if.else254:                                       ; preds = %if.end250
  br label %if.end255

if.end255:                                        ; preds = %if.else254
  %115 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state256 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %115, i32 0, i32 13
  store i32 4384, i32* %state256, align 4
  %116 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %init_num257 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %116, i32 0, i32 16
  store i32 0, i32* %init_num257, align 4
  %117 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %bbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %117, i32 0, i32 5
  %118 = load %struct.bio_st*, %struct.bio_st** %bbio, align 8
  %119 = ptrtoint %struct.bio_st* %118 to i64
  %120 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %wbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %120, i32 0, i32 4
  %121 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8
  %122 = ptrtoint %struct.bio_st* %121 to i64
  %cmp258 = icmp ne i64 %119, %122
  br i1 %cmp258, label %if.then260, label %if.else261

if.then260:                                       ; preds = %if.end255
  br label %if.end262

if.else261:                                       ; preds = %if.end255
  br label %if.end262

if.end262:                                        ; preds = %if.else261, %if.then260
  br label %switch_1_break

switch_1_4384:                                    ; preds = %if.then78
  br label %switch_1_4385

switch_1_4385:                                    ; preds = %switch_1_4384, %if.then83
  %call263 = call i32 @__VERIFIER_nondet_int()
  store i32 %call263, i32* %ret, align 4
  %123 = load i32, i32* %blastFlag, align 4
  %cmp264 = icmp eq i32 %123, 1
  br i1 %cmp264, label %if.then266, label %if.else267

if.then266:                                       ; preds = %switch_1_4385
  store i32 2, i32* %blastFlag, align 4
  br label %if.end268

if.else267:                                       ; preds = %switch_1_4385
  br label %if.end268

if.end268:                                        ; preds = %if.else267, %if.then266
  %124 = load i32, i32* %ret, align 4
  %cmp269 = icmp sle i32 %124, 0
  br i1 %cmp269, label %if.then271, label %if.else272

if.then271:                                       ; preds = %if.end268
  br label %end

if.else272:                                       ; preds = %if.end268
  br label %if.end273

if.end273:                                        ; preds = %if.else272
  %125 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %hit274 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %125, i32 0, i32 23
  %126 = load i32, i32* %hit274, align 4
  %tobool275 = icmp ne i32 %126, 0
  br i1 %tobool275, label %if.then276, label %if.else278

if.then276:                                       ; preds = %if.end273
  %127 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state277 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %127, i32 0, i32 13
  store i32 4560, i32* %state277, align 4
  br label %if.end280

if.else278:                                       ; preds = %if.end273
  %128 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state279 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %128, i32 0, i32 13
  store i32 4400, i32* %state279, align 4
  br label %if.end280

if.end280:                                        ; preds = %if.else278, %if.then276
  %129 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %init_num281 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %129, i32 0, i32 16
  store i32 0, i32* %init_num281, align 4
  br label %switch_1_break

switch_1_4400:                                    ; preds = %if.then88
  br label %switch_1_4401

switch_1_4401:                                    ; preds = %switch_1_4400, %if.then93
  %130 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %s3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %130, i32 0, i32 21
  %131 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %s3, align 8
  %tmp282 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %131, i32 0, i32 32
  %new_cipher = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %tmp282, i32 0, i32 7
  %132 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8
  %algorithms = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %132, i32 0, i32 3
  %133 = load i64, i64* %algorithms, align 8
  %and283 = and i64 %133, 256
  %tobool284 = icmp ne i64 %and283, 0
  br i1 %tobool284, label %if.then285, label %if.else286

if.then285:                                       ; preds = %switch_1_4401
  store i32 1, i32* %skip, align 4
  br label %if.end298

if.else286:                                       ; preds = %switch_1_4401
  %call287 = call i32 @__VERIFIER_nondet_int()
  store i32 %call287, i32* %ret, align 4
  %134 = load i32, i32* %blastFlag, align 4
  %cmp288 = icmp eq i32 %134, 2
  br i1 %cmp288, label %if.then290, label %if.else291

if.then290:                                       ; preds = %if.else286
  store i32 3, i32* %blastFlag, align 4
  br label %if.end292

if.else291:                                       ; preds = %if.else286
  br label %if.end292

if.end292:                                        ; preds = %if.else291, %if.then290
  %135 = load i32, i32* %ret, align 4
  %cmp293 = icmp sle i32 %135, 0
  br i1 %cmp293, label %if.then295, label %if.else296

if.then295:                                       ; preds = %if.end292
  br label %end

if.else296:                                       ; preds = %if.end292
  br label %if.end297

if.end297:                                        ; preds = %if.else296
  br label %if.end298

if.end298:                                        ; preds = %if.end297, %if.then285
  %136 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state299 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %136, i32 0, i32 13
  store i32 4416, i32* %state299, align 4
  %137 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %init_num300 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %137, i32 0, i32 16
  store i32 0, i32* %init_num300, align 4
  br label %switch_1_break

switch_1_4416:                                    ; preds = %if.then98
  br label %switch_1_4417

switch_1_4417:                                    ; preds = %switch_1_4416, %if.then103
  %call301 = call i32 @__VERIFIER_nondet_int()
  store i32 %call301, i32* %ret, align 4
  %138 = load i32, i32* %blastFlag, align 4
  %cmp302 = icmp eq i32 %138, 3
  br i1 %cmp302, label %if.then304, label %if.else305

if.then304:                                       ; preds = %switch_1_4417
  store i32 4, i32* %blastFlag, align 4
  br label %if.end306

if.else305:                                       ; preds = %switch_1_4417
  br label %if.end306

if.end306:                                        ; preds = %if.else305, %if.then304
  %139 = load i32, i32* %ret, align 4
  %cmp307 = icmp sle i32 %139, 0
  br i1 %cmp307, label %if.then309, label %if.else310

if.then309:                                       ; preds = %if.end306
  br label %end

if.else310:                                       ; preds = %if.end306
  br label %if.end311

if.end311:                                        ; preds = %if.else310
  %140 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state312 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %140, i32 0, i32 13
  store i32 4432, i32* %state312, align 4
  %141 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %init_num313 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %141, i32 0, i32 16
  store i32 0, i32* %init_num313, align 4
  %call314 = call i32 @__VERIFIER_nondet_int()
  store i32 %call314, i32* %tmp___6, align 4
  %142 = load i32, i32* %tmp___6, align 4
  %tobool315 = icmp ne i32 %142, 0
  br i1 %tobool315, label %if.else317, label %if.then316

if.then316:                                       ; preds = %if.end311
  store i32 -1, i32* %ret, align 4
  br label %end

if.else317:                                       ; preds = %if.end311
  br label %if.end318

if.end318:                                        ; preds = %if.else317
  br label %switch_1_break

switch_1_4432:                                    ; preds = %if.then108
  br label %switch_1_4433

switch_1_4433:                                    ; preds = %switch_1_4432, %if.then113
  %call319 = call i32 @__VERIFIER_nondet_int()
  store i32 %call319, i32* %ret, align 4
  %143 = load i32, i32* %blastFlag, align 4
  %cmp320 = icmp eq i32 %143, 5
  br i1 %cmp320, label %if.then322, label %if.else323

if.then322:                                       ; preds = %switch_1_4433
  br label %ERROR

if.else323:                                       ; preds = %switch_1_4433
  br label %if.end324

if.end324:                                        ; preds = %if.else323
  %144 = load i32, i32* %ret, align 4
  %cmp325 = icmp sle i32 %144, 0
  br i1 %cmp325, label %if.then327, label %if.else328

if.then327:                                       ; preds = %if.end324
  br label %end

if.else328:                                       ; preds = %if.end324
  br label %if.end329

if.end329:                                        ; preds = %if.else328
  %145 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state330 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %145, i32 0, i32 13
  store i32 4448, i32* %state330, align 4
  %146 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %init_num331 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %146, i32 0, i32 16
  store i32 0, i32* %init_num331, align 4
  br label %switch_1_break

switch_1_4448:                                    ; preds = %if.then118
  br label %switch_1_4449

switch_1_4449:                                    ; preds = %switch_1_4448, %if.then123
  %call332 = call i32 @__VERIFIER_nondet_int()
  store i32 %call332, i32* %ret, align 4
  %147 = load i32, i32* %blastFlag, align 4
  %cmp333 = icmp eq i32 %147, 4
  br i1 %cmp333, label %if.then335, label %if.else336

if.then335:                                       ; preds = %switch_1_4449
  br label %ERROR

if.else336:                                       ; preds = %switch_1_4449
  br label %if.end337

if.end337:                                        ; preds = %if.else336
  %148 = load i32, i32* %ret, align 4
  %cmp338 = icmp sle i32 %148, 0
  br i1 %cmp338, label %if.then340, label %if.else341

if.then340:                                       ; preds = %if.end337
  br label %end

if.else341:                                       ; preds = %if.end337
  br label %if.end342

if.end342:                                        ; preds = %if.else341
  %149 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %s3343 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %149, i32 0, i32 21
  %150 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %s3343, align 8
  %tmp344 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %150, i32 0, i32 32
  %cert_req = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %tmp344, i32 0, i32 11
  %151 = load i32, i32* %cert_req, align 4
  %tobool345 = icmp ne i32 %151, 0
  br i1 %tobool345, label %if.then346, label %if.else348

if.then346:                                       ; preds = %if.end342
  %152 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state347 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %152, i32 0, i32 13
  store i32 4464, i32* %state347, align 4
  br label %if.end350

if.else348:                                       ; preds = %if.end342
  %153 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state349 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %153, i32 0, i32 13
  store i32 4480, i32* %state349, align 4
  br label %if.end350

if.end350:                                        ; preds = %if.else348, %if.then346
  %154 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %init_num351 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %154, i32 0, i32 16
  store i32 0, i32* %init_num351, align 4
  br label %switch_1_break

switch_1_4464:                                    ; preds = %if.then128
  br label %switch_1_4465

switch_1_4465:                                    ; preds = %switch_1_4464, %if.then133
  br label %switch_1_4466

switch_1_4466:                                    ; preds = %switch_1_4465, %if.then138
  br label %switch_1_4467

switch_1_4467:                                    ; preds = %switch_1_4466, %if.then143
  %call352 = call i32 @__VERIFIER_nondet_int()
  store i32 %call352, i32* %ret, align 4
  %155 = load i32, i32* %ret, align 4
  %cmp353 = icmp sle i32 %155, 0
  br i1 %cmp353, label %if.then355, label %if.else356

if.then355:                                       ; preds = %switch_1_4467
  br label %end

if.else356:                                       ; preds = %switch_1_4467
  br label %if.end357

if.end357:                                        ; preds = %if.else356
  %156 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state358 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %156, i32 0, i32 13
  store i32 4480, i32* %state358, align 4
  %157 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %init_num359 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %157, i32 0, i32 16
  store i32 0, i32* %init_num359, align 4
  br label %switch_1_break

switch_1_4480:                                    ; preds = %if.then148
  br label %switch_1_4481

switch_1_4481:                                    ; preds = %switch_1_4480, %if.then153
  %call360 = call i32 @__VERIFIER_nondet_int()
  store i32 %call360, i32* %ret, align 4
  %158 = load i32, i32* %ret, align 4
  %cmp361 = icmp sle i32 %158, 0
  br i1 %cmp361, label %if.then363, label %if.else364

if.then363:                                       ; preds = %switch_1_4481
  br label %end

if.else364:                                       ; preds = %switch_1_4481
  br label %if.end365

if.end365:                                        ; preds = %if.else364
  %159 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %s3366 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %159, i32 0, i32 21
  %160 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %s3366, align 8
  %tmp367 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %160, i32 0, i32 32
  %new_cipher368 = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %tmp367, i32 0, i32 7
  %161 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher368, align 8
  %algorithms369 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %161, i32 0, i32 3
  %162 = load i64, i64* %algorithms369, align 8
  store i64 %162, i64* %l, align 8
  %163 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %s3370 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %163, i32 0, i32 21
  %164 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %s3370, align 8
  %tmp371 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %164, i32 0, i32 32
  %cert_req372 = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %tmp371, i32 0, i32 11
  %165 = load i32, i32* %cert_req372, align 4
  %cmp373 = icmp eq i32 %165, 1
  br i1 %cmp373, label %if.then375, label %if.else377

if.then375:                                       ; preds = %if.end365
  %166 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state376 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %166, i32 0, i32 13
  store i32 4496, i32* %state376, align 4
  br label %if.end380

if.else377:                                       ; preds = %if.end365
  %167 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state378 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %167, i32 0, i32 13
  store i32 4512, i32* %state378, align 4
  %168 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %s3379 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %168, i32 0, i32 21
  %169 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %s3379, align 8
  %change_cipher_spec = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %169, i32 0, i32 23
  store i32 0, i32* %change_cipher_spec, align 4
  br label %if.end380

if.end380:                                        ; preds = %if.else377, %if.then375
  %170 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %init_num381 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %170, i32 0, i32 16
  store i32 0, i32* %init_num381, align 4
  br label %switch_1_break

switch_1_4496:                                    ; preds = %if.then158
  br label %switch_1_4497

switch_1_4497:                                    ; preds = %switch_1_4496, %if.then163
  %call382 = call i32 @__VERIFIER_nondet_int()
  store i32 %call382, i32* %ret, align 4
  %171 = load i32, i32* %ret, align 4
  %cmp383 = icmp sle i32 %171, 0
  br i1 %cmp383, label %if.then385, label %if.else386

if.then385:                                       ; preds = %switch_1_4497
  br label %end

if.else386:                                       ; preds = %switch_1_4497
  br label %if.end387

if.end387:                                        ; preds = %if.else386
  %172 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state388 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %172, i32 0, i32 13
  store i32 4512, i32* %state388, align 4
  %173 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %init_num389 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %173, i32 0, i32 16
  store i32 0, i32* %init_num389, align 4
  %174 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %s3390 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %174, i32 0, i32 21
  %175 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %s3390, align 8
  %change_cipher_spec391 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %175, i32 0, i32 23
  store i32 0, i32* %change_cipher_spec391, align 4
  br label %switch_1_break

switch_1_4512:                                    ; preds = %if.then168
  br label %switch_1_4513

switch_1_4513:                                    ; preds = %switch_1_4512, %if.then173
  %call392 = call i32 @__VERIFIER_nondet_int()
  store i32 %call392, i32* %ret, align 4
  %176 = load i32, i32* %ret, align 4
  %cmp393 = icmp sle i32 %176, 0
  br i1 %cmp393, label %if.then395, label %if.else396

if.then395:                                       ; preds = %switch_1_4513
  br label %end

if.else396:                                       ; preds = %switch_1_4513
  br label %if.end397

if.end397:                                        ; preds = %if.else396
  %177 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state398 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %177, i32 0, i32 13
  store i32 4528, i32* %state398, align 4
  %178 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %init_num399 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %178, i32 0, i32 16
  store i32 0, i32* %init_num399, align 4
  %179 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %s3400 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %179, i32 0, i32 21
  %180 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %s3400, align 8
  %tmp401 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %180, i32 0, i32 32
  %new_cipher402 = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %tmp401, i32 0, i32 7
  %181 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher402, align 8
  %182 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %182, i32 0, i32 37
  %183 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8
  %cipher = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %183, i32 0, i32 17
  store %struct.ssl_cipher_st* %181, %struct.ssl_cipher_st** %cipher, align 8
  %184 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %s3403 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %184, i32 0, i32 21
  %185 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %s3403, align 8
  %tmp404 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %185, i32 0, i32 32
  %new_compression = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %tmp404, i32 0, i32 20
  %186 = load %struct.ssl_comp_st*, %struct.ssl_comp_st** %new_compression, align 8
  %187 = ptrtoint %struct.ssl_comp_st* %186 to i64
  %cmp405 = icmp eq i64 %187, 0
  br i1 %cmp405, label %if.then407, label %if.else409

if.then407:                                       ; preds = %if.end397
  %188 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %session408 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %188, i32 0, i32 37
  %189 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session408, align 8
  %compress_meth = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %189, i32 0, i32 16
  store i32 0, i32* %compress_meth, align 4
  br label %if.end415

if.else409:                                       ; preds = %if.end397
  %190 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %s3410 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %190, i32 0, i32 21
  %191 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %s3410, align 8
  %tmp411 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %191, i32 0, i32 32
  %new_compression412 = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %tmp411, i32 0, i32 20
  %192 = load %struct.ssl_comp_st*, %struct.ssl_comp_st** %new_compression412, align 8
  %id = getelementptr inbounds %struct.ssl_comp_st, %struct.ssl_comp_st* %192, i32 0, i32 0
  %193 = load i32, i32* %id, align 4
  %194 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %session413 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %194, i32 0, i32 37
  %195 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session413, align 8
  %compress_meth414 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %195, i32 0, i32 16
  store i32 %193, i32* %compress_meth414, align 4
  br label %if.end415

if.end415:                                        ; preds = %if.else409, %if.then407
  %call416 = call i32 @__VERIFIER_nondet_int()
  store i32 %call416, i32* %tmp___7, align 4
  %196 = load i32, i32* %tmp___7, align 4
  %tobool417 = icmp ne i32 %196, 0
  br i1 %tobool417, label %if.else419, label %if.then418

if.then418:                                       ; preds = %if.end415
  store i32 -1, i32* %ret, align 4
  br label %end

if.else419:                                       ; preds = %if.end415
  br label %if.end420

if.end420:                                        ; preds = %if.else419
  %call421 = call i32 @__VERIFIER_nondet_int()
  store i32 %call421, i32* %tmp___8, align 4
  %197 = load i32, i32* %tmp___8, align 4
  %tobool422 = icmp ne i32 %197, 0
  br i1 %tobool422, label %if.else424, label %if.then423

if.then423:                                       ; preds = %if.end420
  store i32 -1, i32* %ret, align 4
  br label %end

if.else424:                                       ; preds = %if.end420
  br label %if.end425

if.end425:                                        ; preds = %if.else424
  br label %switch_1_break

switch_1_4528:                                    ; preds = %if.then178
  br label %switch_1_4529

switch_1_4529:                                    ; preds = %switch_1_4528, %if.then183
  %call426 = call i32 @__VERIFIER_nondet_int()
  store i32 %call426, i32* %ret, align 4
  %198 = load i32, i32* %ret, align 4
  %cmp427 = icmp sle i32 %198, 0
  br i1 %cmp427, label %if.then429, label %if.else430

if.then429:                                       ; preds = %switch_1_4529
  br label %end

if.else430:                                       ; preds = %switch_1_4529
  br label %if.end431

if.end431:                                        ; preds = %if.else430
  %199 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state432 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %199, i32 0, i32 13
  store i32 4352, i32* %state432, align 4
  %200 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %s3433 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %200, i32 0, i32 21
  %201 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %s3433, align 8
  %flags = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %201, i32 0, i32 0
  %202 = load i64, i64* %flags, align 8
  %and434 = and i64 %202, -5
  store i64 %and434, i64* %flags, align 8
  %203 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %hit435 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %203, i32 0, i32 23
  %204 = load i32, i32* %hit435, align 4
  %tobool436 = icmp ne i32 %204, 0
  br i1 %tobool436, label %if.then437, label %if.else451

if.then437:                                       ; preds = %if.end431
  %205 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %s3438 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %205, i32 0, i32 21
  %206 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %s3438, align 8
  %tmp439 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %206, i32 0, i32 32
  %next_state = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %tmp439, i32 0, i32 9
  store i32 3, i32* %next_state, align 4
  %207 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %s3440 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %207, i32 0, i32 21
  %208 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %s3440, align 8
  %flags441 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %208, i32 0, i32 0
  %209 = load i64, i64* %flags441, align 8
  %and442 = and i64 %209, 2
  %tobool443 = icmp ne i64 %and442, 0
  br i1 %tobool443, label %if.then444, label %if.else449

if.then444:                                       ; preds = %if.then437
  %210 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state445 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %210, i32 0, i32 13
  store i32 3, i32* %state445, align 4
  %211 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %s3446 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %211, i32 0, i32 21
  %212 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %s3446, align 8
  %flags447 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %212, i32 0, i32 0
  %213 = load i64, i64* %flags447, align 8
  %or = or i64 %213, 4
  store i64 %or, i64* %flags447, align 8
  %214 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %s3448 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %214, i32 0, i32 21
  %215 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %s3448, align 8
  %delay_buf_pop_ret = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %215, i32 0, i32 1
  store i32 0, i32* %delay_buf_pop_ret, align 4
  br label %if.end450

if.else449:                                       ; preds = %if.then437
  br label %if.end450

if.end450:                                        ; preds = %if.else449, %if.then444
  br label %if.end455

if.else451:                                       ; preds = %if.end431
  %216 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %s3452 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %216, i32 0, i32 21
  %217 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %s3452, align 8
  %tmp453 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %217, i32 0, i32 32
  %next_state454 = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %tmp453, i32 0, i32 9
  store i32 4560, i32* %next_state454, align 4
  br label %if.end455

if.end455:                                        ; preds = %if.else451, %if.end450
  %218 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %init_num456 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %218, i32 0, i32 16
  store i32 0, i32* %init_num456, align 4
  br label %switch_1_break

switch_1_4560:                                    ; preds = %if.then188
  br label %switch_1_4561

switch_1_4561:                                    ; preds = %switch_1_4560, %if.then193
  %call457 = call i32 @__VERIFIER_nondet_int()
  store i32 %call457, i32* %ret, align 4
  %219 = load i32, i32* %ret, align 4
  %cmp458 = icmp sle i32 %219, 0
  br i1 %cmp458, label %if.then460, label %if.else461

if.then460:                                       ; preds = %switch_1_4561
  br label %end

if.else461:                                       ; preds = %switch_1_4561
  br label %if.end462

if.end462:                                        ; preds = %if.else461
  %220 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %hit463 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %220, i32 0, i32 23
  %221 = load i32, i32* %hit463, align 4
  %tobool464 = icmp ne i32 %221, 0
  br i1 %tobool464, label %if.then465, label %if.else467

if.then465:                                       ; preds = %if.end462
  %222 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state466 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %222, i32 0, i32 13
  store i32 4512, i32* %state466, align 4
  br label %if.end469

if.else467:                                       ; preds = %if.end462
  %223 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state468 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %223, i32 0, i32 13
  store i32 3, i32* %state468, align 4
  br label %if.end469

if.end469:                                        ; preds = %if.else467, %if.then465
  %224 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %init_num470 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %224, i32 0, i32 16
  store i32 0, i32* %init_num470, align 4
  br label %switch_1_break

switch_1_4352:                                    ; preds = %if.then198
  %call471 = call i32 @__VERIFIER_nondet_int()
  %conv472 = sext i32 %call471 to i64
  store i64 %conv472, i64* %num1, align 8
  %225 = load i64, i64* %num1, align 8
  %cmp473 = icmp sgt i64 %225, 0
  br i1 %cmp473, label %if.then475, label %if.else486

if.then475:                                       ; preds = %switch_1_4352
  %226 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %226, i32 0, i32 6
  store i32 2, i32* %rwstate, align 4
  %call476 = call i32 @__VERIFIER_nondet_int()
  %conv477 = sext i32 %call476 to i64
  store i64 %conv477, i64* %tmp___9, align 8
  %227 = load i64, i64* %tmp___9, align 8
  %conv478 = trunc i64 %227 to i32
  %conv479 = sext i32 %conv478 to i64
  store i64 %conv479, i64* %num1, align 8
  %228 = load i64, i64* %num1, align 8
  %cmp480 = icmp sle i64 %228, 0
  br i1 %cmp480, label %if.then482, label %if.else483

if.then482:                                       ; preds = %if.then475
  store i32 -1, i32* %ret, align 4
  br label %end

if.else483:                                       ; preds = %if.then475
  br label %if.end484

if.end484:                                        ; preds = %if.else483
  %229 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %rwstate485 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %229, i32 0, i32 6
  store i32 1, i32* %rwstate485, align 4
  br label %if.end487

if.else486:                                       ; preds = %switch_1_4352
  br label %if.end487

if.end487:                                        ; preds = %if.else486, %if.end484
  %230 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %s3488 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %230, i32 0, i32 21
  %231 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %s3488, align 8
  %tmp489 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %231, i32 0, i32 32
  %next_state490 = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %tmp489, i32 0, i32 9
  %232 = load i32, i32* %next_state490, align 4
  %233 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state491 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %233, i32 0, i32 13
  store i32 %232, i32* %state491, align 4
  br label %switch_1_break

switch_1_3:                                       ; preds = %if.then203
  %234 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %init_buf492 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %234, i32 0, i32 15
  %235 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf492, align 8
  %236 = ptrtoint %struct.buf_mem_st* %235 to i64
  %cmp493 = icmp ne i64 %236, 0
  br i1 %cmp493, label %if.then495, label %if.else497

if.then495:                                       ; preds = %switch_1_3
  %237 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %init_buf496 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %237, i32 0, i32 15
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %init_buf496, align 8
  br label %if.end498

if.else497:                                       ; preds = %switch_1_3
  br label %if.end498

if.end498:                                        ; preds = %if.else497, %if.then495
  %238 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %s3499 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %238, i32 0, i32 21
  %239 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %s3499, align 8
  %flags500 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %239, i32 0, i32 0
  %240 = load i64, i64* %flags500, align 8
  %and501 = and i64 %240, 4
  %tobool502 = icmp ne i64 %and501, 0
  br i1 %tobool502, label %if.else504, label %if.then503

if.then503:                                       ; preds = %if.end498
  br label %if.end505

if.else504:                                       ; preds = %if.end498
  br label %if.end505

if.end505:                                        ; preds = %if.else504, %if.then503
  %241 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %init_num506 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %241, i32 0, i32 16
  store i32 0, i32* %init_num506, align 4
  %242 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %new_session507 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %242, i32 0, i32 10
  store i32 0, i32* %new_session507, align 4
  %243 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %hit508 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %243, i32 0, i32 23
  %244 = load i32, i32* %hit508, align 4
  %tobool509 = icmp ne i32 %244, 0
  br i1 %tobool509, label %if.then510, label %if.else514

if.then510:                                       ; preds = %if.end505
  %245 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %ctx511 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %245, i32 0, i32 44
  %246 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx511, align 8
  %stats512 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %246, i32 0, i32 15
  %sess_hit = getelementptr inbounds %struct.__anonstruct_stats_37, %struct.__anonstruct_stats_37* %stats512, i32 0, i32 9
  %247 = load i32, i32* %sess_hit, align 4
  %add513 = add nsw i32 %247, 1
  store i32 %add513, i32* %sess_hit, align 4
  br label %if.end515

if.else514:                                       ; preds = %if.end505
  br label %if.end515

if.end515:                                        ; preds = %if.else514, %if.then510
  store i32 1, i32* %ret, align 4
  %248 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %248, i32 0, i32 8
  store i32 (...)* bitcast (i32 (%struct.ssl_st*)* @ssl3_connect to i32 (...)*), i32 (...)** %handshake_func, align 8
  %249 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %ctx516 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %249, i32 0, i32 44
  %250 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx516, align 8
  %stats517 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %250, i32 0, i32 15
  %sess_connect_good = getelementptr inbounds %struct.__anonstruct_stats_37, %struct.__anonstruct_stats_37* %stats517, i32 0, i32 2
  %251 = load i32, i32* %sess_connect_good, align 4
  %add518 = add nsw i32 %251, 1
  store i32 %add518, i32* %sess_connect_good, align 4
  %252 = load void (...)*, void (...)** %cb, align 8
  %253 = ptrtoint void (...)* %252 to i64
  %cmp519 = icmp ne i64 %253, 0
  br i1 %cmp519, label %if.then521, label %if.else522

if.then521:                                       ; preds = %if.end515
  br label %if.end523

if.else522:                                       ; preds = %if.end515
  br label %if.end523

if.end523:                                        ; preds = %if.else522, %if.then521
  br label %end

switch_1_default:                                 ; preds = %if.else204
  store i32 -1, i32* %ret, align 4
  br label %end

if.else524:                                       ; preds = %87
  br label %switch_1_break

switch_1_break:                                   ; preds = %if.else524, %if.end487, %if.end469, %if.end455, %if.end425, %if.end387, %if.end380, %if.end357, %if.end350, %if.end329, %if.end318, %if.end298, %if.end280, %if.end262, %if.end240
  br label %if.end525

if.end525:                                        ; preds = %switch_1_break
  br label %if.end526

if.end526:                                        ; preds = %if.end525
  br label %if.end527

if.end527:                                        ; preds = %if.end526
  br label %if.end528

if.end528:                                        ; preds = %if.end527
  br label %if.end529

if.end529:                                        ; preds = %if.end528
  br label %if.end530

if.end530:                                        ; preds = %if.end529
  br label %if.end531

if.end531:                                        ; preds = %if.end530
  br label %if.end532

if.end532:                                        ; preds = %if.end531
  br label %if.end533

if.end533:                                        ; preds = %if.end532
  br label %if.end534

if.end534:                                        ; preds = %if.end533
  br label %if.end535

if.end535:                                        ; preds = %if.end534
  br label %if.end536

if.end536:                                        ; preds = %if.end535
  br label %if.end537

if.end537:                                        ; preds = %if.end536
  br label %if.end538

if.end538:                                        ; preds = %if.end537
  br label %if.end539

if.end539:                                        ; preds = %if.end538
  br label %if.end540

if.end540:                                        ; preds = %if.end539
  br label %if.end541

if.end541:                                        ; preds = %if.end540
  br label %if.end542

if.end542:                                        ; preds = %if.end541
  br label %if.end543

if.end543:                                        ; preds = %if.end542
  br label %if.end544

if.end544:                                        ; preds = %if.end543
  br label %if.end545

if.end545:                                        ; preds = %if.end544
  br label %if.end546

if.end546:                                        ; preds = %if.end545
  br label %if.end547

if.end547:                                        ; preds = %if.end546
  br label %if.end548

if.end548:                                        ; preds = %if.end547
  br label %if.end549

if.end549:                                        ; preds = %if.end548
  br label %if.end550

if.end550:                                        ; preds = %if.end549
  br label %if.end551

if.end551:                                        ; preds = %if.end550
  br label %if.end552

if.end552:                                        ; preds = %if.end551
  br label %if.end553

if.end553:                                        ; preds = %if.end552
  br label %if.end554

if.end554:                                        ; preds = %if.end553
  br label %if.end555

if.end555:                                        ; preds = %if.end554
  br label %if.end556

if.end556:                                        ; preds = %if.end555
  br label %if.end557

if.end557:                                        ; preds = %if.end556
  br label %if.end558

if.end558:                                        ; preds = %if.end557
  %254 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %s3559 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %254, i32 0, i32 21
  %255 = load %struct.ssl3_state_st*, %struct.ssl3_state_st** %s3559, align 8
  %tmp560 = getelementptr inbounds %struct.ssl3_state_st, %struct.ssl3_state_st* %255, i32 0, i32 32
  %reuse_message = getelementptr inbounds %struct.__anonstruct_tmp_39, %struct.__anonstruct_tmp_39* %tmp560, i32 0, i32 10
  %256 = load i32, i32* %reuse_message, align 4
  %tobool561 = icmp ne i32 %256, 0
  br i1 %tobool561, label %if.else591, label %if.then562

if.then562:                                       ; preds = %if.end558
  %257 = load i32, i32* %skip, align 4
  %tobool563 = icmp ne i32 %257, 0
  br i1 %tobool563, label %if.else589, label %if.then564

if.then564:                                       ; preds = %if.then562
  %258 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %debug = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %258, i32 0, i32 45
  %259 = load i32, i32* %debug, align 4
  %tobool565 = icmp ne i32 %259, 0
  br i1 %tobool565, label %if.then566, label %if.else573

if.then566:                                       ; preds = %if.then564
  %call567 = call i32 @__VERIFIER_nondet_int()
  store i32 %call567, i32* %ret, align 4
  %260 = load i32, i32* %ret, align 4
  %cmp568 = icmp sle i32 %260, 0
  br i1 %cmp568, label %if.then570, label %if.else571

if.then570:                                       ; preds = %if.then566
  br label %end

if.else571:                                       ; preds = %if.then566
  br label %if.end572

if.end572:                                        ; preds = %if.else571
  br label %if.end574

if.else573:                                       ; preds = %if.then564
  br label %if.end574

if.end574:                                        ; preds = %if.else573, %if.end572
  %261 = load void (...)*, void (...)** %cb, align 8
  %262 = ptrtoint void (...)* %261 to i64
  %cmp575 = icmp ne i64 %262, 0
  br i1 %cmp575, label %if.then577, label %if.else587

if.then577:                                       ; preds = %if.end574
  %263 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state578 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %263, i32 0, i32 13
  %264 = load i32, i32* %state578, align 4
  %265 = load i32, i32* %state, align 4
  %cmp579 = icmp ne i32 %264, %265
  br i1 %cmp579, label %if.then581, label %if.else585

if.then581:                                       ; preds = %if.then577
  %266 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state582 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %266, i32 0, i32 13
  %267 = load i32, i32* %state582, align 4
  store i32 %267, i32* %new_state, align 4
  %268 = load i32, i32* %state, align 4
  %269 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state583 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %269, i32 0, i32 13
  store i32 %268, i32* %state583, align 4
  %270 = load i32, i32* %new_state, align 4
  %271 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %state584 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %271, i32 0, i32 13
  store i32 %270, i32* %state584, align 4
  br label %if.end586

if.else585:                                       ; preds = %if.then577
  br label %if.end586

if.end586:                                        ; preds = %if.else585, %if.then581
  br label %if.end588

if.else587:                                       ; preds = %if.end574
  br label %if.end588

if.end588:                                        ; preds = %if.else587, %if.end586
  br label %if.end590

if.else589:                                       ; preds = %if.then562
  br label %if.end590

if.end590:                                        ; preds = %if.else589, %if.end588
  br label %if.end592

if.else591:                                       ; preds = %if.end558
  br label %if.end592

if.end592:                                        ; preds = %if.else591, %if.end590
  store i32 0, i32* %skip, align 4
  br label %while.body

while_0_break:                                    ; No predecessors!
  br label %end

end:                                              ; preds = %while_0_break, %if.then570, %switch_1_default, %if.end523, %if.then482, %if.then460, %if.then429, %if.then423, %if.then418, %if.then395, %if.then385, %if.then363, %if.then355, %if.then340, %if.then327, %if.then316, %if.then309, %if.then295, %if.then271, %if.then253, %if.then238, %if.then233, %if.then225, %if.then217
  %272 = load %struct.ssl_st*, %struct.ssl_st** %s.addr, align 8
  %in_handshake593 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %272, i32 0, i32 7
  %273 = load i32, i32* %in_handshake593, align 4
  %sub = sub nsw i32 %273, 1
  store i32 %sub, i32* %in_handshake593, align 4
  %274 = load void (...)*, void (...)** %cb, align 8
  %275 = ptrtoint void (...)* %274 to i64
  %cmp594 = icmp ne i64 %275, 0
  br i1 %cmp594, label %if.then596, label %if.else597

if.then596:                                       ; preds = %end
  br label %if.end598

if.else597:                                       ; preds = %end
  br label %if.end598

if.end598:                                        ; preds = %if.else597, %if.then596
  %276 = load i32, i32* %ret, align 4
  ret i32 %276

ERROR:                                            ; preds = %if.then335, %if.then322
  call void (...) @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal %struct.ssl_method_st* @ssl3_get_client_method(i32 %ver) #0 {
entry:
  %tmp.i = alloca i8*, align 8
  %tmp___0.i = alloca %struct.ssl_method_st*, align 8
  %retval = alloca %struct.ssl_method_st*, align 8
  %ver.addr = alloca i32, align 4
  %tmp = alloca %struct.ssl_method_st*, align 8
  store i32 %ver, i32* %ver.addr, align 4
  %0 = load i32, i32* %ver.addr, align 4
  %cmp = icmp eq i32 %0, 768
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = bitcast i8** %tmp.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1)
  %2 = bitcast %struct.ssl_method_st** %tmp___0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2)
  %3 = load i32, i32* @init, align 4
  %tobool.i = icmp ne i32 %3, 0
  br i1 %tobool.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  store i32 0, i32* @init, align 4
  %call.i = call %struct.ssl_method_st* @sslv3_base_method() #3
  store %struct.ssl_method_st* %call.i, %struct.ssl_method_st** %tmp___0.i, align 8
  %4 = load %struct.ssl_method_st*, %struct.ssl_method_st** %tmp___0.i, align 8
  %5 = bitcast %struct.ssl_method_st* %4 to i8*
  store i8* %5, i8** %tmp.i, align 8
  %6 = load i8*, i8** %tmp.i, align 8
  %call2.i = call i8* @memcpy(i8* bitcast (%struct.ssl_method_st* @SSLv3_client_data to i8*), i8* %6, i32 200) #3
  store i32 (%struct.ssl_st*)* @ssl3_connect, i32 (%struct.ssl_st*)** getelementptr inbounds (%struct.ssl_method_st, %struct.ssl_method_st* @SSLv3_client_data, i32 0, i32 5), align 8
  store %struct.ssl_method_st* (i32)* @ssl3_get_client_method, %struct.ssl_method_st* (i32)** getelementptr inbounds (%struct.ssl_method_st, %struct.ssl_method_st* @SSLv3_client_data, i32 0, i32 19), align 8
  br label %SSLv3_client_method.exit

if.else.i:                                        ; preds = %if.then
  br label %SSLv3_client_method.exit

SSLv3_client_method.exit:                         ; preds = %if.then.i, %if.else.i
  %7 = bitcast i8** %tmp.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7)
  %8 = bitcast %struct.ssl_method_st** %tmp___0.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8)
  store %struct.ssl_method_st* @SSLv3_client_data, %struct.ssl_method_st** %tmp, align 8
  %9 = load %struct.ssl_method_st*, %struct.ssl_method_st** %tmp, align 8
  store %struct.ssl_method_st* %9, %struct.ssl_method_st** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.ssl_method_st* null, %struct.ssl_method_st** %retval
  br label %return

return:                                           ; preds = %if.else, %SSLv3_client_method.exit
  %10 = load %struct.ssl_method_st*, %struct.ssl_method_st** %retval
  ret %struct.ssl_method_st* %10
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.ssl_st*, align 8
  store i32 0, i32* %retval
  %call = call i8* @malloc(i64 376)
  %0 = bitcast i8* %call to %struct.ssl_st*
  store %struct.ssl_st* %0, %struct.ssl_st** %s, align 8
  %call1 = call i8* @malloc(i64 1016)
  %1 = bitcast i8* %call1 to %struct.ssl3_state_st*
  %2 = load %struct.ssl_st*, %struct.ssl_st** %s, align 8
  %s3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %2, i32 0, i32 21
  store %struct.ssl3_state_st* %1, %struct.ssl3_state_st** %s3, align 8
  %3 = load %struct.ssl_st*, %struct.ssl_st** %s, align 8
  %state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %3, i32 0, i32 13
  store i32 12292, i32* %state, align 4
  %4 = load %struct.ssl_st*, %struct.ssl_st** %s, align 8
  %call2 = call i32 @ssl3_connect(%struct.ssl_st* %4)
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

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0  (http://llvm.org/git/llvm.git 8d00f2ad795306ae061b96a7ba71d87c790f3e2c)"}
