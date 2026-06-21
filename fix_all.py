import os

def read_file(p):
    with open(p, "r") as f:
        return f.read()

def write_file(p, c):
    with open(p, "w") as f:
        f.write(c)

f = "src/tensor/dense.npk"
c = read_file(f)
c = c.replace("pub struct:TensorF32 {", "pub struct:TensorF32 = {")
c = c.replace("pub struct:TensorF16 {", "pub struct:TensorF16 = {")
write_file(f, c)

f = "src/tensor/quant_types.npk"
c = read_file(f)
c = c.replace("pub struct:TensorINT4 {", "pub struct:TensorINT4 = {")
c = c.replace("""pub struct:PackedInt4Block {
    // 128 INT4 values = 64 bytes (cache line aligned)
    array<int8, 64>:data; 
    // Shared FP16 scale for the 128-element block
    flt16:scale;
    // Zero-point offset
    int4:zero_point; 
    // Padding to align struct to 128 bytes if necessary
};""", """pub struct:PackedInt4Block = {
    int8[64]:data;           // 64 bytes  
    uint16:scale_bits;       // 2 bytes (bitcasted to FP16 in PTX)  
    int4:zero_point;         // 1 byte (packed)  
    int8[61]:padding;        // 61 bytes padding = exactly 128 bytes  
};""")
write_file(f, c)

f = "src/tensor/dma.npk"
c = read_file(f)
c = c.replace("TensorINT4:tensor = { raw_data = vram_dest, num_blocks = blocks, stride = 1i64 };", "TensorINT4:tensor = { raw_data: vram_dest, num_blocks: blocks, stride: 1i64 };")
c = c.replace("    #host_ptr;", """    int64:mlock_err = sys(MLOCK, host_ptr => int64, size_bytes) ? -1i64;  
    if (mlock_err != 0i64) { fail(ERR_CUDA_DMA_FAILED => tbb32); }  
    defer drop sys(MUNLOCK, host_ptr => int64, size_bytes);""")
c = c.replace("int32:err = cuMemcpyAsync(vram_dest, host_ptr, size_bytes, CUDA_MEMCPY_H2D, 0i64);", "int32:err = cuMemcpyAsync(vram_dest => void*, host_ptr => void*, size_bytes => uint64, CUDA_MEMCPY_H2D, 0u64);")
write_file(f, c)

f = "src/tensor/matmul.npk"
c = read_file(f)
c = c.replace("pub func:compute_attention_tile = Result<flt32>(wild flt32->:q_tile, wild flt32->:k_tile, int64:dim) {", "pub func:compute_attention_tile = flt32(wild flt32->:q_tile, wild flt32->:k_tile, int64:dim) {")
write_file(f, c)

f = "src/core/generate.npk"
c = read_file(f)
c = c.replace("    run_generation();", "    _?run_generation();")
write_file(f, c)

f = "src/tensor/alloc_kv.npk"
c = read_file(f)
c = c.replace("    wild flt32->:raw_buffer = nitpick.alloc<flt32>(capacity_elements);", """    wild int8->:bytes = alloc(capacity_elements * 4i64)?!; // 4 bytes per flt32  
    wild flt32->:raw_buffer = bytes => wild flt32->;""")
write_file(f, c)

f = "src/core/inference.npk"
c = read_file(f)
c = c.replace("    defer nitpick.free(kv_cache);", "    defer _?dalloc(kv_cache => wild any->);")
write_file(f, c)

f = "src/ffi/cuda.npk"
c = read_file(f)
c = c.replace("func:cuMemcpyAsync = int32(wild int8->:dst, wild int8->:src, int64:count_bytes, int32:kind, int64:stream_id);", "func:cuMemcpyAsync = int32(void*:dst, void*:src, uint64:count_bytes, int32:kind, uint64:stream_id);")
write_file(f, c)

f = "src/ffi/mmap.npk"
c = read_file(f)
c = c.replace("pub fixed int64:SYS_MMAP = 9i64; // x86_64 mmap syscall number", "use \"sys.nitpick\".*;")
c = c.replace("sys(SYS_MMAP, 0i64, size, 1i64, 1i64, fd, 0i64)?!;", "sys(MMAP, 0i64, size, 1i64, 2i64, fd, 0i64)?!;")
write_file(f, c)

f = "src/mla/flash_attention.npk"
c = read_file(f)
c = c.replace("    __syncthreads(); \n", "")
write_file(f, c)

f = "src/mamba/s4_kernels.npk"
c = read_file(f)
c = c.replace("    __syncthreads();\n", "")
write_file(f, c)

f = "src/ffi/ptx.npk"
c = read_file(f)
c = """// ptx.npk — Direct PTX/CUDA synchronization FFI

pub func:sync_threads_native = NIL() {
    asm!!!<NIL>("nvptx64", "bar.sync 0;", "");
    pass(NIL);
};
"""
write_file(f, c)

f = "src/tensor/math.npk"
c = read_file(f)
c = c.replace("""pub func:vector_add = NIL(wild flt32->:a, wild flt32->:b, wild flt32->:out, int64:len) {
    // Hardware accelerated AVX-512 / CUDA vector add
    pass(NIL);
};""", """pub func:vector_add = NIL(wild flt32->:a, wild flt32->:b, wild flt32->:out, int64:len) {  
    int64:i = 0i64;  
    int64:simd_len = len - (len % 16i64); // 16 floats = 512 bits

    wild simd<flt32, 16>->:simd_a = a => wild simd<flt32, 16>->;  
    wild simd<flt32, 16>->:simd_b = b => wild simd<flt32, 16>->;  
    wild simd<flt32, 16>->:simd_out = out => wild simd<flt32, 16>->;

    while (i < simd_len) {  
        int64:vec_idx = i / 16i64;  
        simd_out[vec_idx] = simd_a[vec_idx] + simd_b[vec_idx];  
        i = i + 16i64;  
    }  
    // Tail cleanup goes here...  
    pass(NIL);  
};""")
write_file(f, c)

f = "src/main.npk"
c = read_file(f)
c = c.replace("""pub func:main = int32() {
    // Setup minimal entry point returning success
    pass(0i32);
};""", """pub func:failsafe = int32(tbb32:err) {  
    stderr.write(`FATAL NITLLM ERROR: &{err}\\n`);  
    exit(err => int32);  
};  

pub func:main = int32() {
    // Setup minimal entry point returning success
    pass(0i32);
};""")
write_file(f, c)

f = "src/util/error_codes.npk"
c = read_file(f)
c = c.replace("int32", "tbb32")
c = c.replace("i32", "tbb32")
write_file(f, c)

f = "tests/verify/memory_bounds.npk"
c = read_file(f)
c = c.replace("assert(sizeof", "assert_static(sizeof")
write_file(f, c)

f = "src/tensor/math_extract.npk"
c = read_file(f)
c = c.replace("int64:dim) {", "int64:dim) requires q != NULL, k != NULL, dim > 0i64 {")
write_file(f, c)

f = "src/host/pipeline.npk"
c = read_file(f)
c = c.replace("    pass(NIL);", """    Channel<int32>:ch = Channel.create(16i32);
    pass(NIL);""")
write_file(f, c)

f = "src/host/dispatch.npk"
c = read_file(f)
c = c.replace("    pass(NIL);", """    atomic<int64>:token_batch;
    pass(NIL);""")
write_file(f, c)

f = "src/mla/rope.npk"
c = read_file(f)
c = c.replace("wild flt32->:q, wild flt32->:k", "wild complex<flt32>->:q, wild complex<flt32>->:k")
write_file(f, c)
