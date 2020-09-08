#!/usr/bin/env bash

if [ -z "$1" ]; then
    read -p $'\n1. Tables 2. Contract Hashes\nChoose(#):' mChoice
else
    mChoice=$1
fi

if [ $mChoice == 1 ]; then
    scripts/queries/tables.sh
    exit
elif [ $mChoice == 2 ]; then
    scripts/queries/hashes.sh
    exit
fi