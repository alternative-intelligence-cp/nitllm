# NITLLM (Native Nitpick LLM)

NITLLM is a high-performance, strictly typed Large Language Model inference engine written entirely in the **Nitpick** language (v0.16.x). It bridges high-level architecture with bare-metal GPU memory operations via deeply integrated CUDA and NCCL FFI boundaries.

## 🚀 Features

* **Zero Implicit Type Casting:** The codebase rigorously adheres to explicit memory bit-width constraints, avoiding silent truncations or undefined behavior.
* **Formal SMT Verification:** Every mathematical boundary, truncation logic, and dimension limit is formally verified using Z3 compiler proofs to ensure Design by Contract (DbC) rules are unbroken.
* **Concurrency Safe:** Hardened pipeline lifecycles and explicit thread-join barriers prevent Use-After-Free (UAF) and race conditions in concurrent execution loops.
* **Bare-Metal GPU PTX:** Employs precise inline LLVM IR and PTX output register mappings for zero-overhead `mma.sync` Tensor Core activation.

## 🛠️ Build Instructions

To compile the `nitllm` binary, use the native Nitpick compiler with the provided build manifest:

```bash
# Build using the highest optimization and strict verification modes
nitpickc build build.abc
```

This will link against `nitpick-libc`, integrate the CUDA runtime (`cudart`), and produce the `nitllm` executable from `src/main.npk`.

## 🧪 Verification

A built-in test suite automatically runs the required SMT verification checks against the static memory bounds of the model architecture.

```bash
# Run the Z3 SMT solver proofs
./tests/verify/run_verify.sh
```

## 📈 Usage

Once built, simply execute the compiled binary to start the engine, load the memory buffers, and run the throughput baseline benchmarks:

```bash
./nitllm
```

## 📜 License

See `LICENSE` for details.
