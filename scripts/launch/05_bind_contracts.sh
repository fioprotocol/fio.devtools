#!/usr/bin/env bash

#create the token on the bios node
./clio -u http://localhost:8879 push action fio.token create '["1000000000.000000000 FIO"]' -p fio.token@active
#load the bios contract on the bios node
./clio -u http://localhost:8879 set contract eosio $eosio_bios_contract_base_path eosio.bios.wasm eosio.bios.abi

sleep 1.5s

# Bind more fio contracts
./clio -u http://localhost:8879 set contract fio.reqobt $fio_reqobt_base_path fio.request.obt.wasm fio.request.obt.abi --permission fio.reqobt@active
sleep 1.5s
./clio -u http://localhost:8879 set contract fio.fee $fio_fee_base_path fio.fee.wasm fio.fee.abi --permission fio.fee@active
sleep 1.5s
./clio -u http://localhost:8889 set contract fio.treasury $fio_treasury_base_path fio.treasury.wasm fio.treasury.abi --permission fio.treasury@active
sleep 1.5s
./clio -u http://localhost:8889 set contract eosio.wrap $eosio_wrap_base_path eosio.wrap.wasm eosio.wrap.abi --permission eosio.wrap@active
sleep 1.5s
./clio -u http://localhost:8889 set contract fio.staking $fio_staking_base_path fio.staking.wasm fio.staking.abi --permission fio.staking@active
sleep 1.5s
