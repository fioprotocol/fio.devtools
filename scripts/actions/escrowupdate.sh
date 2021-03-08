#!/usr/bin/env bash

#FIO Directory Check
oldpath=$PWD/../../scripts
# ESCROW
# DEFINE NAME PATH
if [ -f $oldpath/../bin/baseContract/2.1.x/fio.contracts/build/contracts/fio.escrow/fio.escrow.wasm ]; then
    fio_escrow_name_path="$oldpath/../bin/baseContract/2.1.x/fio.contracts/build/contracts/fio.escrow"
else
    echo 'No wasm file found at $oldpath/../bin/baseContract/2.1.x/fio.contracts/build/contracts/fio.escrow'
fi

cd ~/fio/2.0/bin 

walletkey=$(head -n 1 $oldpath/../walletkey.ini)
echo 'Using Password:' $walletkey
sleep 1s
./clio wallet unlock -n fio --password $walletkey

#Update Contracts..

./clio -u http://localhost:8889 set contract -j fio.escrow $fio_escrow_name_path fio.escrow.wasm fio.escrow.abi --permission fio.escrow@active
