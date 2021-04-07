#!/usr/bin/env bash

#Set Contracts..
./clio -u http://localhost:8879 set contract -j eosio $fio_system_contract_name_path fio.system.wasm fio.system.abi --permission eosio@active
sleep 1.5s
./clio -u http://localhost:8879 set contract fio.token $fio_token_contract_name_path fio.token.wasm fio.token.abi
sleep 1.5s
./clio -u http://localhost:8879 set contract fio.tpid $fio_tpid_name_path fio.tpid.wasm fio.tpid.abi
./clio -u http://localhost:8879 set contract eosio.msig $eosio_msig_contract_name_path eosio.msig.wasm eosio.msig.abi
./clio -u http://localhost:8879 set contract -j fio.address $fio_contract_name_path fio.address.wasm fio.address.abi --permission fio.address@active

# Bind more fio contracts
./clio -u http://localhost:8879 set contract -j fio.reqobt $fio_reqobt_name_path fio.request.obt.wasm fio.request.obt.abi --permission fio.reqobt@active
sleep 1.5s
./clio -u http://localhost:8879 set contract -j fio.fee $fio_fee_name_path fio.fee.wasm fio.fee.abi --permission fio.fee@active
sleep 1.5s
./clio -u http://localhost:8889 set contract -j fio.treasury $fio_treasury_name_path fio.treasury.wasm fio.treasury.abi --permission fio.treasury@active
