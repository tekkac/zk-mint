#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <circuit>"
    exit 1
fi

node compiled/$1_js/generate_witness.js compiled/$1_js/$1.wasm circuits/input.json private/witness.wtns
snarkjs wtns export json private/witness.wtns private/witness.json