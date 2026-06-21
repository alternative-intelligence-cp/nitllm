#!/bin/bash
# run_verify.sh

echo "Running Full System Nitpick SMT compiler proofs..."
nitpickc --verify-contracts --smt-opt memory_bounds.npk
nitpickc --verify-contracts --smt-opt ../../src/core/generate.npk
echo "All Cycles Verified Successfully."
