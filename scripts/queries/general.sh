#!/usr/bin/env bash

if [ -z "$1" ]; then
    read -p $'\n1. Tables 2. Compare ABI/WASM Hashes 3. Output ABI/WASM Hashes 4. ABI/WASM Hash Info\nChoose(#):' mChoice
else
    mChoice=$1
fi

if [ $mChoice == 1 ]; then
    scripts/queries/tables.sh
    exit
elif [ $mChoice == 2 ]; then
    scripts/queries/abi_wasm_hashout.sh -c
    exit
elif [ $mChoice == 3 ]; then
    scripts/queries/abi_wasm_hashout.sh -o
    exit
elif [ $mChoice == 4 ]; then
    scripts/queries/abi_wasm_hashout.sh -i
    exit
else
    echo "Unknown option: $mChoice! Exiting..."
fi
