#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <circuit>"
    exit 1
fi

snarkjs powersoftau new bn128 12 private/ptau/pot12_0000.ptau -v
snarkjs powersoftau contribute private/ptau/pot12_0000.ptau private/ptau/pot12_0001.ptau --name="First contribution" -v -e="$(head -n 4096 /dev/urandom | openssl sha1)"
snarkjs powersoftau prepare phase2 private/ptau/pot12_0001.ptau private/ptau/pot12_final.ptau -v
snarkjs groth16 setup compiled/$1.r1cs private/ptau/pot12_final.ptau private/zkey/$1_0000.zkey
snarkjs zkey contribute private/zkey/$1_0000.zkey private/zkey/$1_0001.zkey --name="1st Contributor Name" -v -e="$(head -n 4096 /dev/urandom | openssl sha1)"
snarkjs zkey export verificationkey private/zkey/$1_0001.zkey public/verification_key.json