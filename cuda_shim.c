#include <stdint.h>
#include <stddef.h>



int64_t shim_cuMemAlloc(size_t size) {
    void* ptr = 0;
    cudaMalloc(&ptr, size);
    return (int64_t)ptr;
}


