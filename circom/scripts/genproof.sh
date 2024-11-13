#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <circuit>"
    exit 1
fi

snarkjs groth16 prove private/zkey/$1_0001.zkey private/witness.wtns public/proof.json public/public.json