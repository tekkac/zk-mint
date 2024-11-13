#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <circuit>"
    exit 1
fi

circom circuits/$1.circom --r1cs --wasm --sym -o compiled