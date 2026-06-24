; ModuleID = 'src/main.npk'
source_filename = "src/main.npk"

%struct.NpkString = type { ptr, i64 }
%Numeric_vtable_t = type {}
%Display_vtable_t = type {}
%struct.NIL = type {}

@.str = private constant [21 x i8] c"FATAL NITLLM ERROR: \00"
@.str.1 = private constant [2 x i8] c"\0A\00"
@oom_msg = private unnamed_addr constant [57 x i8] c"Out of memory in string concatenation (template literal)\00", align 1
@ERR_OOM_VRAM = linkonce_odr global i32 100
@ERR_INVALID_STRIDE = linkonce_odr global i32 101
@ERR_MMAP_FAILED = linkonce_odr global i32 102
@ERR_CUDA_DMA_FAILED = linkonce_odr global i32 103
@ERR_MATH_CORRUPTION = linkonce_odr global i32 200
@ERR_DIM_MISMATCH = linkonce_odr global i32 201
@ERR_INVALID_QUANT = linkonce_odr global i32 300
@CUDA_MEMCPY_H2D = linkonce_odr global i32 1
@CUDA_MEMCPY_D2H = linkonce_odr global i32 2
@.str.2 = private constant [44 x i8] c"[FATAL] Generation failed with error code: \00"
@int_oom_msg = private unnamed_addr constant [44 x i8] c"Out of memory in int64 to string conversion\00", align 1
@.str.3 = private constant [2 x i8] c"\0A\00"
@oom_msg.4 = private unnamed_addr constant [57 x i8] c"Out of memory in string concatenation (template literal)\00", align 1
@.str.data = private constant [54 x i8] c"Starting NitLLM throughput benchmark (Tokens/sec)...\0A\00"
@.str.5 = private constant %struct.NpkString { ptr @.str.data, i64 53 }
@Numeric_vtable_int8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_int16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_int32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_int64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tfp32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tfp64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_fix256 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_flt32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_flt64 = internal constant %Numeric_vtable_t zeroinitializer
@Display_vtable_int8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int128 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int256 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int512 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int1024 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int2048 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int4096 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint128 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint256 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint512 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint1024 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint2048 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint4096 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tfp32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tfp64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_fix256 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_flt32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_flt64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_trit = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tryte = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_nit = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_nyte = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_bool = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_string = internal constant %Display_vtable_t zeroinitializer
@.str.data.6 = private constant [31 x i8] c"Initializing NITLLM Engine...\0A\00"
@.str.7 = private constant %struct.NpkString { ptr @.str.data.6, i64 30 }
@.str.data.8 = private constant [46 x i8] c"Inference generation completed successfully.\0A\00"
@.str.9 = private constant %struct.NpkString { ptr @.str.data.8, i64 45 }

define linkonce_odr { i32, ptr, i8 } @failsafe_handler.failsafe(i32 %err) {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  %template_strings = alloca [3 x { ptr, i64 }], align 8
  %npk_str = alloca { ptr, i64 }, align 8
  %data_ptr = getelementptr inbounds nuw { ptr, i64 }, ptr %npk_str, i32 0, i32 0
  store ptr @.str, ptr %data_ptr, align 8
  %length_ptr = getelementptr inbounds nuw { ptr, i64 }, ptr %npk_str, i32 0, i32 1
  store i64 20, ptr %length_ptr, align 4
  %npk_str_val = load { ptr, i64 }, ptr %npk_str, align 8
  %part_slot = getelementptr [3 x { ptr, i64 }], ptr %template_strings, i64 0, i64 0
  store { ptr, i64 } %npk_str_val, ptr %part_slot, align 8
  %err1 = load i32, ptr %err.addr, align 4
  %fmt_result = call ptr @npk_format_tbb32(i32 %err1)
  %fmt_str = load { ptr, i64 }, ptr %fmt_result, align 8
  %interp_slot = getelementptr [3 x { ptr, i64 }], ptr %template_strings, i64 0, i64 1
  store { ptr, i64 } %fmt_str, ptr %interp_slot, align 8
  %npk_str2 = alloca { ptr, i64 }, align 8
  %data_ptr3 = getelementptr inbounds nuw { ptr, i64 }, ptr %npk_str2, i32 0, i32 0
  store ptr @.str.1, ptr %data_ptr3, align 8
  %length_ptr4 = getelementptr inbounds nuw { ptr, i64 }, ptr %npk_str2, i32 0, i32 1
  store i64 1, ptr %length_ptr4, align 4
  %npk_str_val5 = load { ptr, i64 }, ptr %npk_str2, align 8
  %part_slot6 = getelementptr [3 x { ptr, i64 }], ptr %template_strings, i64 0, i64 2
  store { ptr, i64 } %npk_str_val5, ptr %part_slot6, align 8
  %array_start = getelementptr [3 x { ptr, i64 }], ptr %template_strings, i64 0, i64 0
  %concat_result = call ptr @npk_string_concat_n_simple(ptr %array_start, i64 3)
  %is_null = icmp eq ptr %concat_result, null
  br i1 %is_null, label %concat_null_check, label %concat_valid

concat_null_check:                                ; preds = %entry
  call void @npk_panic_oom(ptr @oom_msg)
  unreachable

concat_valid:                                     ; preds = %entry
  %str_struct = load %struct.NpkString, ptr %concat_result, align 8
  %str_data = extractvalue %struct.NpkString %str_struct, 0
  %print_call = call i64 @npk_print_cstr(ptr %str_data)
  %code = alloca i32, align 4
  %err7 = load i32, ptr %err.addr, align 4
  store i32 %err7, ptr %code, align 4
  %code8 = load i32, ptr %code, align 4
  %letmp = icmp sle i32 %code8, 0
  %ifcond = icmp ne i1 %letmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %concat_valid
  store i32 1, ptr %code, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %concat_valid
  %code9 = load i32, ptr %code, align 4
  call void @proc_exit(i32 %code9)
  ret { i32, ptr, i8 } zeroinitializer
}

declare ptr @npk_format_tbb32(i32)

declare ptr @npk_string_concat_n_simple(ptr, i64)

declare void @npk_panic_oom(ptr)

declare i64 @npk_print_cstr(ptr)

declare void @proc_exit(i32)

define linkonce_odr i32 @__failsafe_handler_init() {
entry:
  ret i32 0
}

define linkonce_odr i32 @__error_codes_init() {
entry:
  ret i32 0
}

define linkonce_odr i32 @__quant_types_init() {
entry:
  ret i32 0
}

define linkonce_odr i32 @__dense_init() {
entry:
  ret i32 0
}

declare i32 @cuMemcpyAsync(i64, i64, i64, i32, i64)

declare i32 @cuStreamSynchronize(i64)

declare i32 @cuStreamCreate(ptr)

declare i32 @cuStreamDestroy(i64)

declare i64 @shim_cuMemAlloc(i64)

declare i32 @cuMemFree(i64)

define linkonce_odr i32 @__cuda_init() {
entry:
  ret i32 0
}

define linkonce_odr { i64, ptr, i8 } @alloc_kv.allocate_mla_cache(i64 %capacity_elements) {
entry:
  %capacity_elements.addr = alloca i64, align 8
  store i64 %capacity_elements, ptr %capacity_elements.addr, align 4
  %safe_cap = alloca i64, align 8
  %capacity_elements1 = load i64, ptr %capacity_elements.addr, align 4
  store i64 %capacity_elements1, ptr %safe_cap, align 4
  %bytes_tbb = alloca i64, align 8
  %safe_cap2 = load i64, ptr %safe_cap, align 4
  br label %check_lhs_err

check_lhs_err:                                    ; preds = %entry
  %is_err = icmp eq i64 %safe_cap2, -9223372036854775808
  br i1 %is_err, label %return_err, label %check_rhs_err

check_rhs_err:                                    ; preds = %check_lhs_err
  br i1 false, label %return_err, label %check_overflow

check_overflow:                                   ; preds = %check_rhs_err
  %mul_overflow = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %safe_cap2, i64 4)
  %overflow_bit = extractvalue { i64, i1 } %mul_overflow, 1
  %mul_result = extractvalue { i64, i1 } %mul_overflow, 0
  %exceeds_max = icmp sgt i64 %mul_result, 9223372036854775807
  %below_min = icmp slt i64 %mul_result, -9223372036854775807
  %out_of_range = or i1 %exceeds_max, %below_min
  %mul_overflow3 = or i1 %overflow_bit, %out_of_range
  br i1 %mul_overflow3, label %return_err, label %do_mul

do_mul:                                           ; preds = %check_overflow
  %mul_result4 = mul i64 %safe_cap2, 4
  br label %merge

return_err:                                       ; preds = %check_overflow, %check_rhs_err, %check_lhs_err
  br label %merge

merge:                                            ; preds = %return_err, %do_mul
  %mul_phi = phi i64 [ %mul_result4, %do_mul ], [ -9223372036854775808, %return_err ]
  store i64 %mul_phi, ptr %bytes_tbb, align 4
  %bytes_tbb5 = load i64, ptr %bytes_tbb, align 4
  %tbb.cmp.l.err = icmp eq i64 %bytes_tbb5, -9223372036854775808
  %tbb.cmp.anyerr = or i1 %tbb.cmp.l.err, true
  %tbb.cmp.normal = icmp eq i64 %bytes_tbb5, -9223372036854775808
  %tbb.cmp.sticky = select i1 %tbb.cmp.anyerr, i1 false, i1 %tbb.cmp.normal
  %ifcond = icmp ne i1 %tbb.cmp.sticky, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %merge
  %ERR_OOM_VRAM = load i32, ptr @ERR_OOM_VRAM, align 4
  %err_ptr = inttoptr i32 %ERR_OOM_VRAM to ptr
  %result.err = insertvalue { i64, ptr, i8 } { i64 0, ptr undef, i8 undef }, ptr %err_ptr, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 1, 2
  ret { i64, ptr, i8 } %result.is_error

ifcont:                                           ; preds = %merge
  %bytes = alloca i64, align 8
  %bytes_tbb6 = load i64, ptr %bytes_tbb, align 4
  store i64 %bytes_tbb6, ptr %bytes, align 4
  %dev_ptr = alloca i64, align 8
  %bytes7 = load i64, ptr %bytes, align 4
  %calltmp = call i64 @shim_cuMemAlloc(i64 %bytes7)
  store i64 %calltmp, ptr %dev_ptr, align 4
  %dev_ptr8 = load i64, ptr %dev_ptr, align 4
  %eqtmp = icmp eq i64 %dev_ptr8, 0
  %ifcond9 = icmp ne i1 %eqtmp, false
  br i1 %ifcond9, label %then10, label %ifcont15

then10:                                           ; preds = %ifcont
  %ERR_OOM_VRAM11 = load i32, ptr @ERR_OOM_VRAM, align 4
  %err_ptr12 = inttoptr i32 %ERR_OOM_VRAM11 to ptr
  %result.err13 = insertvalue { i64, ptr, i8 } { i64 0, ptr undef, i8 undef }, ptr %err_ptr12, 1
  %result.is_error14 = insertvalue { i64, ptr, i8 } %result.err13, i8 1, 2
  ret { i64, ptr, i8 } %result.is_error14

ifcont15:                                         ; preds = %ifcont
  %dev_ptr16 = load i64, ptr %dev_ptr, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %dev_ptr16, 0
  %result.err17 = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error18 = insertvalue { i64, ptr, i8 } %result.err17, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error18
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #0

define linkonce_odr i32 @__alloc_kv_init() {
entry:
  ret i32 0
}

define linkonce_odr i32 @__shape_rules_init() {
entry:
  ret i32 0
}

define linkonce_odr { i64, ptr, i8 } @kv_cache.init_kv_cache(i64 %max_tokens, i64 %kv_dim) {
entry:
  %limit.dollar11 = alloca i64, align 8
  %limit.dollar6 = alloca i64, align 8
  %limit.dollar1 = alloca i64, align 8
  %limit.dollar = alloca i64, align 8
  %max_tokens.addr = alloca i64, align 8
  store i64 %max_tokens, ptr %max_tokens.addr, align 4
  %limit.val = load i64, ptr %max_tokens.addr, align 4
  store i64 %limit.val, ptr %limit.dollar, align 4
  %"$" = load i64, ptr %limit.dollar, align 4
  %gttmp = icmp sgt i64 %"$", 0
  br i1 %gttmp, label %limit.ok, label %limit.fail

limit.ok:                                         ; preds = %entry
  store i64 %limit.val, ptr %limit.dollar1, align 4
  %"$2" = load i64, ptr %limit.dollar1, align 4
  %letmp = icmp sle i64 %"$2", 131072
  br i1 %letmp, label %limit.ok3, label %limit.fail4

limit.fail:                                       ; preds = %entry
  call void @exit(i32 49)
  unreachable

limit.ok3:                                        ; preds = %limit.ok
  %kv_dim.addr = alloca i64, align 8
  store i64 %kv_dim, ptr %kv_dim.addr, align 4
  %limit.val5 = load i64, ptr %kv_dim.addr, align 4
  store i64 %limit.val5, ptr %limit.dollar6, align 4
  %"$7" = load i64, ptr %limit.dollar6, align 4
  %gttmp8 = icmp sgt i64 %"$7", 0
  br i1 %gttmp8, label %limit.ok9, label %limit.fail10

limit.fail4:                                      ; preds = %limit.ok
  call void @exit(i32 49)
  unreachable

limit.ok9:                                        ; preds = %limit.ok3
  store i64 %limit.val5, ptr %limit.dollar11, align 4
  %"$12" = load i64, ptr %limit.dollar11, align 4
  %letmp13 = icmp sle i64 %"$12", 32768
  br i1 %letmp13, label %limit.ok14, label %limit.fail15

limit.fail10:                                     ; preds = %limit.ok3
  call void @exit(i32 49)
  unreachable

limit.ok14:                                       ; preds = %limit.ok9
  %tokens_tbb = alloca i64, align 8
  %max_tokens16 = load i64, ptr %max_tokens.addr, align 4
  store i64 %max_tokens16, ptr %tokens_tbb, align 4
  %dim_tbb = alloca i64, align 8
  %kv_dim17 = load i64, ptr %kv_dim.addr, align 4
  store i64 %kv_dim17, ptr %dim_tbb, align 4
  %total = alloca i64, align 8
  %tokens_tbb18 = load i64, ptr %tokens_tbb, align 4
  %dim_tbb19 = load i64, ptr %dim_tbb, align 4
  br label %check_lhs_err

limit.fail15:                                     ; preds = %limit.ok9
  call void @exit(i32 49)
  unreachable

check_lhs_err:                                    ; preds = %limit.ok14
  %is_err = icmp eq i64 %tokens_tbb18, -9223372036854775808
  br i1 %is_err, label %return_err, label %check_rhs_err

check_rhs_err:                                    ; preds = %check_lhs_err
  %is_err20 = icmp eq i64 %dim_tbb19, -9223372036854775808
  br i1 %is_err20, label %return_err, label %check_overflow

check_overflow:                                   ; preds = %check_rhs_err
  %mul_overflow = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %tokens_tbb18, i64 %dim_tbb19)
  %overflow_bit = extractvalue { i64, i1 } %mul_overflow, 1
  %mul_result = extractvalue { i64, i1 } %mul_overflow, 0
  %exceeds_max = icmp sgt i64 %mul_result, 9223372036854775807
  %below_min = icmp slt i64 %mul_result, -9223372036854775807
  %out_of_range = or i1 %exceeds_max, %below_min
  %mul_overflow21 = or i1 %overflow_bit, %out_of_range
  br i1 %mul_overflow21, label %return_err, label %do_mul

do_mul:                                           ; preds = %check_overflow
  %mul_result22 = mul i64 %tokens_tbb18, %dim_tbb19
  br label %merge

return_err:                                       ; preds = %check_overflow, %check_rhs_err, %check_lhs_err
  br label %merge

merge:                                            ; preds = %return_err, %do_mul
  %mul_phi = phi i64 [ %mul_result22, %do_mul ], [ -9223372036854775808, %return_err ]
  store i64 %mul_phi, ptr %total, align 4
  %total23 = load i64, ptr %total, align 4
  %tbb.cmp.l.err = icmp eq i64 %total23, -9223372036854775808
  %tbb.cmp.anyerr = or i1 %tbb.cmp.l.err, true
  %tbb.cmp.normal = icmp eq i64 %total23, -9223372036854775808
  %tbb.cmp.sticky = select i1 %tbb.cmp.anyerr, i1 false, i1 %tbb.cmp.normal
  %ifcond = icmp ne i1 %tbb.cmp.sticky, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %merge
  %ERR_DIM_MISMATCH = load i32, ptr @ERR_DIM_MISMATCH, align 4
  %err_ptr = inttoptr i32 %ERR_DIM_MISMATCH to ptr
  %result.err = insertvalue { i64, ptr, i8 } { i64 0, ptr undef, i8 undef }, ptr %err_ptr, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 1, 2
  ret { i64, ptr, i8 } %result.is_error

ifcont:                                           ; preds = %merge
  %cache_res = alloca { i64, ptr, i8 }, align 8
  %total24 = load i64, ptr %total, align 4
  %calltmp = call { i64, ptr, i8 } @alloc_kv.allocate_mla_cache(i64 %total24)
  store { i64, ptr, i8 } %calltmp, ptr %cache_res, align 8
  %result = load { i64, ptr, i8 }, ptr %cache_res, align 8
  %is_error = extractvalue { i64, ptr, i8 } %result, 2
  %ifcond25 = icmp ne i8 %is_error, 0
  br i1 %ifcond25, label %then26, label %ifcont31

then26:                                           ; preds = %ifcont
  %result27 = load { i64, ptr, i8 }, ptr %cache_res, align 8
  %error = extractvalue { i64, ptr, i8 } %result27, 1
  %error_code = ptrtoint ptr %error to i32
  %err_ptr28 = inttoptr i32 %error_code to ptr
  %result.err29 = insertvalue { i64, ptr, i8 } { i64 0, ptr undef, i8 undef }, ptr %err_ptr28, 1
  %result.is_error30 = insertvalue { i64, ptr, i8 } %result.err29, i8 1, 2
  ret { i64, ptr, i8 } %result.is_error30

ifcont31:                                         ; preds = %ifcont
  %cache = alloca i64, align 8
  %cache_res32 = load { i64, ptr, i8 }, ptr %cache_res, align 8
  %raw.value = extractvalue { i64, ptr, i8 } %cache_res32, 0
  store i64 %raw.value, ptr %cache, align 4
  %cache33 = load i64, ptr %cache, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %cache33, 0
  %result.err34 = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error35 = insertvalue { i64, ptr, i8 } %result.err34, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error35
}

declare void @exit(i32)

define linkonce_odr i32 @__kv_cache_init() {
entry:
  ret i32 0
}

define linkonce_odr { i32, ptr, i8 } @inference.run_generation(i64 %kv_cache) {
entry:
  %kv_cache.addr = alloca i64, align 8
  store i64 %kv_cache, ptr %kv_cache.addr, align 4
  ret { i32, ptr, i8 } zeroinitializer
}

define linkonce_odr i32 @__inference_init() {
entry:
  ret i32 0
}

define linkonce_odr { %struct.NIL, ptr, i8 } @generate.generate() {
entry:
  %kv_res = alloca { i64, ptr, i8 }, align 8
  %calltmp = call { i64, ptr, i8 } @kv_cache.init_kv_cache(i64 131072, i64 512)
  store { i64, ptr, i8 } %calltmp, ptr %kv_res, align 8
  %result = load { i64, ptr, i8 }, ptr %kv_res, align 8
  %is_error = extractvalue { i64, ptr, i8 } %result, 2
  %ifcond = icmp ne i8 %is_error, 0
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %calltmp1 = call { i32, ptr, i8 } @failsafe_handler.failsafe(i32 1)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %kv_cache = alloca i64, align 8
  %kv_res2 = load { i64, ptr, i8 }, ptr %kv_res, align 8
  %raw.value = extractvalue { i64, ptr, i8 } %kv_res2, 0
  store i64 %raw.value, ptr %kv_cache, align 4
  %res = alloca { i32, ptr, i8 }, align 8
  %kv_cache3 = load i64, ptr %kv_cache, align 4
  %calltmp4 = call { i32, ptr, i8 } @inference.run_generation(i64 %kv_cache3)
  store { i32, ptr, i8 } %calltmp4, ptr %res, align 8
  %result5 = load { i32, ptr, i8 }, ptr %res, align 8
  %is_error6 = extractvalue { i32, ptr, i8 } %result5, 2
  %ifcond7 = icmp ne i8 %is_error6, 0
  br i1 %ifcond7, label %then8, label %ifcont17

then8:                                            ; preds = %ifcont
  %template_strings = alloca [3 x { ptr, i64 }], align 8
  %npk_str = alloca { ptr, i64 }, align 8
  %data_ptr = getelementptr inbounds nuw { ptr, i64 }, ptr %npk_str, i32 0, i32 0
  store ptr @.str.2, ptr %data_ptr, align 8
  %length_ptr = getelementptr inbounds nuw { ptr, i64 }, ptr %npk_str, i32 0, i32 1
  store i64 43, ptr %length_ptr, align 4
  %npk_str_val = load { ptr, i64 }, ptr %npk_str, align 8
  %part_slot = getelementptr [3 x { ptr, i64 }], ptr %template_strings, i64 0, i64 0
  store { ptr, i64 } %npk_str_val, ptr %part_slot, align 8
  %res9 = load { i32, ptr, i8 }, ptr %res, align 8
  %error_ptr = extractvalue { i32, ptr, i8 } %res9, 1
  %error_code = ptrtoint ptr %error_ptr to i32
  %int_str_gc_buffer = call ptr @npk_gc_alloc(i64 24)
  %is_null = icmp eq ptr %int_str_gc_buffer, null
  br i1 %is_null, label %int_str_null, label %int_str_valid

int_str_null:                                     ; preds = %then8
  call void @npk_panic_oom(ptr @int_oom_msg)
  unreachable

int_str_valid:                                    ; preds = %then8
  %int_to_i64 = sext i32 %error_code to i64
  %0 = call i64 @npk_int64_to_str(i64 %int_to_i64, ptr %int_str_gc_buffer)
  %int_aria_str = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds nuw { ptr, i64 }, ptr %int_aria_str, i32 0, i32 0
  store ptr %int_str_gc_buffer, ptr %1, align 8
  %2 = getelementptr inbounds nuw { ptr, i64 }, ptr %int_aria_str, i32 0, i32 1
  store i64 %0, ptr %2, align 4
  %int_str_val = load { ptr, i64 }, ptr %int_aria_str, align 8
  %interp_slot = getelementptr [3 x { ptr, i64 }], ptr %template_strings, i64 0, i64 1
  store { ptr, i64 } %int_str_val, ptr %interp_slot, align 8
  %npk_str10 = alloca { ptr, i64 }, align 8
  %data_ptr11 = getelementptr inbounds nuw { ptr, i64 }, ptr %npk_str10, i32 0, i32 0
  store ptr @.str.3, ptr %data_ptr11, align 8
  %length_ptr12 = getelementptr inbounds nuw { ptr, i64 }, ptr %npk_str10, i32 0, i32 1
  store i64 1, ptr %length_ptr12, align 4
  %npk_str_val13 = load { ptr, i64 }, ptr %npk_str10, align 8
  %part_slot14 = getelementptr [3 x { ptr, i64 }], ptr %template_strings, i64 0, i64 2
  store { ptr, i64 } %npk_str_val13, ptr %part_slot14, align 8
  %array_start = getelementptr [3 x { ptr, i64 }], ptr %template_strings, i64 0, i64 0
  %concat_result = call ptr @npk_string_concat_n_simple(ptr %array_start, i64 3)
  %is_null15 = icmp eq ptr %concat_result, null
  br i1 %is_null15, label %concat_null_check, label %concat_valid

concat_null_check:                                ; preds = %int_str_valid
  call void @npk_panic_oom(ptr @oom_msg.4)
  unreachable

concat_valid:                                     ; preds = %int_str_valid
  %str_struct = load %struct.NpkString, ptr %concat_result, align 8
  %str_data = extractvalue %struct.NpkString %str_struct, 0
  %print_call = call i64 @npk_print_cstr(ptr %str_data)
  %ERR_MATH_CORRUPTION = load i32, ptr @ERR_MATH_CORRUPTION, align 4
  %calltmp16 = call { i32, ptr, i8 } @failsafe_handler.failsafe(i32 %ERR_MATH_CORRUPTION)
  br label %ifcont17

ifcont17:                                         ; preds = %concat_valid, %ifcont
  %kv_cache18 = load i64, ptr %kv_cache, align 4
  %calltmp19 = call i32 @cuMemFree(i64 %kv_cache18)
  ret { %struct.NIL, ptr, i8 } zeroinitializer
}

declare ptr @npk_gc_alloc(i64)

declare i64 @npk_int64_to_str(i64, ptr)

define linkonce_odr i32 @__generate_init() {
entry:
  ret i32 0
}

define linkonce_odr { %struct.NIL, ptr, i8 } @run_throughput.benchmark() {
entry:
  %str_data = load ptr, ptr @.str.5, align 8
  %print_call = call i64 @npk_print_cstr(ptr %str_data)
  ret { %struct.NIL, ptr, i8 } zeroinitializer
}

define linkonce_odr i32 @__run_throughput_init() {
entry:
  ret i32 0
}

define i32 @main(i32 %0, ptr %1) {
entry:
  call void @npk_gc_init(i64 0, i64 0)
  call void @npk_args_init(i32 %0, ptr %1)
  call void @npk_streams_init()
  %str_data = load ptr, ptr @.str.7, align 8
  %print_call = call i64 @npk_print_cstr(ptr %str_data)
  %calltmp = call { %struct.NIL, ptr, i8 } @generate.generate()
  %calltmp1 = call { %struct.NIL, ptr, i8 } @run_throughput.benchmark()
  %str_data2 = load ptr, ptr @.str.9, align 8
  %print_call3 = call i64 @npk_print_cstr(ptr %str_data2)
  call void @proc_exit(i32 0)
  ret i32 0
}

declare void @npk_gc_init(i64, i64)

declare void @npk_args_init(i32, ptr)

declare void @npk_streams_init()

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
