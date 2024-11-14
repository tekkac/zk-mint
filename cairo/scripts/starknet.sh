#!/bin/bash

source .env
starkli declare --watch planning/cairo/target/dev/planning_Groth16VerifierBN254.contract_class.json --keystore-password $KEYSTORE_PASSWORD
starkli declare --estimate-only planning/cairo/target/dev/planning_Planning.contract_class.json --keystore-password $KEYSTORE_PASSWORD
