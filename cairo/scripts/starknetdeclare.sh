#!/bin/bash

source ../.env
starkli declare --estimate-only target/dev/zkmint_Groth16VerifierBN254.contract_class.json --keystore-password $KEYSTORE_PASSWORD --compiler-version 2.8.2
starkli declare --estimate-only target/dev/zkmint_ZKMint.contract_class.json --keystore-password $KEYSTORE_PASSWORD --compiler-version 2.8.2
