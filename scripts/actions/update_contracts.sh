#!/usr/bin/env bash

#FIO Directory Check

if [ -f ../fio.contracts/build/contracts/fio.system/fio.system.wasm ]; then
    fio_system_contract_name_path="$oldpath/../../fio.contracts/build/contracts/fio.system"
else
    echo 'No wasm file found at $PWD/build/contracts/fio.system'
fi

if [ -f ../fio.contracts/build/contracts/eosio.msig/eosio.msig.wasm ]; then
    eosio_msig_contract_name_path="$oldpath/../../fio.contracts/build/contracts/eosio.msig"
else
    echo 'No wasm file found at $PWD/build/contracts/eosio.msig'
fi

if [ -f ../fio.contracts/build/contracts/fio.token/fio.token.wasm ]; then
    fio_token_contract_name_path="$oldpath/../../fio.contracts/build/contracts/fio.token"
else
    echo 'No wasm file found at $PWD/build/contracts/fio.token'
fi
#Fio Name Directory Check
if [ -f ../fio.contracts/build/contracts/fio.address/fio.address.wasm ]; then
    fio_contract_name_path="$oldpath/../../fio.contracts/build/contracts/fio.address"
else
    echo 'No wasm file found at $PWD/build/contracts/fio.address'
fi

if [ -f ../fio.contracts/build/contracts/fio.fee/fio.fee.wasm ]; then
    fio_fee_name_path="$oldpath/../../fio.contracts/build/contracts/fio.fee"
else
    echo 'No wasm file found at $PWD/build/contracts/fio.fee'
fi

if [ -f ../fio.contracts/build/contracts/fio.request.obt/fio.request.obt.wasm ]; then
        fio_reqobt_name_path="$oldpath/../../fio.contracts/build/contracts/fio.request.obt"
    else
        echo 'No wasm file found at $PWD/build/contracts/fio.request.obt'
fi

if [ -f ../fio.contracts/build/contracts/fio.tpid/fio.tpid.wasm ]; then
        fio_tpid_name_path="$oldpath/../../fio.contracts/build/contracts/fio.tpid"
    else
        echo 'No wasm file found at $PWD/build/contracts/fio.tpid'
fi

if [ -f ../fio.contracts/build/contracts/fio.treasury/fio.treasury.wasm ]; then
        fio_treasury_name_path="$oldpath/../../fio.contracts/build/contracts/fio.treasury"
    else
        echo 'No wasm file found at $PWD/build/contracts/fio.treasury'
fi

if [ -f ../fio.contracts/build/contracts/eosio.wrap/eosio.wrap.wasm ]; then
           eosio_wrap_name_path="$oldpath/../../fio.contracts/build/contracts/eosio.wrap"
        else
            echo 'No wasm file found at $PWD/build/contracts/eosio.wrap'
fi

if [ -f ../fio.contracts/build/contracts/fio.oracle/fio.oracle.wasm ]; then
           fio_oracle_name_path="$oldpath/../../fio.contracts/build/contracts/fio.oracle"
        else
            echo 'No wasm file found at $PWD/build/contracts/fio.oracle'
fi

cd ~/fio/$vChoice/bin

walletkey=$(head -n 1 $oldpath/../walletkey.ini)
echo 'Using Password:' $walletkey
sleep 1s
./clio wallet unlock -n fio --password $walletkey

#Update Contracts..
./clio -u http://localhost:8879 set contract -j eosio $fio_system_contract_name_path fio.system.wasm fio.system.abi --permission eosio@active
sleep 1.5s
./clio -u http://localhost:8879 set contract fio.token $fio_token_contract_name_path fio.token.wasm fio.token.abi
sleep 1.5s
./clio -u http://localhost:8879 set contract fio.tpid $fio_tpid_name_path fio.tpid.wasm fio.tpid.abi
./clio -u http://localhost:8879 set contract eosio.msig $eosio_msig_contract_name_path eosio.msig.wasm eosio.msig.abi
./clio -u http://localhost:8879 set contract -j fio.address $fio_contract_name_path fio.address.wasm fio.address.abi --permission fio.address@active
./clio -u http://localhost:8879 set contract -j fio.reqobt $fio_reqobt_name_path fio.request.obt.wasm fio.request.obt.abi --permission fio.reqobt@active
sleep 1.5s
./clio -u http://localhost:8879 set contract -j fio.fee $fio_fee_name_path fio.fee.wasm fio.fee.abi --permission fio.fee@active
sleep 1.5s
./clio -u http://localhost:8889 set contract -j fio.treasury $fio_treasury_name_path fio.treasury.wasm fio.treasury.abi --permission fio.treasury@active
sleep 1.5s
./clio -u http://localhost:8879 set contract -j fio.oracle $fio_oracle_name_path fio.oracle.wasm fio.oracle.abi --permission fio.oracle@active
