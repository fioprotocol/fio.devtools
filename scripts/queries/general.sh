#!/usr/bin/env bash

if [ -z "$1" ]; then
    read -p $'\n1. Tables 2. Contract ABI/WASM Hashes 3. Contract Hashes (deprecated)\nChoose(#):' mChoice
else
    mChoice=$1
fi

if [ $mChoice == 1 ]; then
    scripts/queries/tables.sh
    exit
elif [ $mChoice == 2 ]; then
    scripts/queries/abi_wasm_hashout.sh
    exit
elif [ $mChoice == 3 ]; then
    scripts/queries/hashes.sh
    exit
else
    echo "Unkown option: $mChoice! Exiting..."
fi