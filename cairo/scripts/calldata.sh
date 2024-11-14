#!/bin/bash

garaga calldata --system groth16 \
                --vk ../circom/public/verification_key.json  \
                --proof ../circom/public/proof.json \
                --public-inputs ../circom/public/public.json \
                --format array