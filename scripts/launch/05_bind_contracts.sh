#!/usr/bin/env bash

#create the token on the bios node
./clio -u http://localhost:8879 push action -j fio.token create '["1000000000.000000000 FIO"]' -p fio.token@active
#load the bios contract on the bios node
./clio -u http://localhost:8879 set contract eosio $eosio_bios_contract_base_path eosio.bios.wasm eosio.bios.abi

sleep 1.5s

# Bind more fio contracts
./clio -u http://localhost:8879 set contract -j fio.reqobt $fio_reqobt_base_path fio.request.obt.wasm fio.request.obt.abi --permission fio.reqobt@active
sleep 1.5s
./clio -u http://localhost:8879 set contract -j fio.fee $fio_fee_base_path fio.fee.wasm fio.fee.abi --permission fio.fee@active
sleep 1.5s
./clio -u http://localhost:8889 set contract -j fio.treasury $fio_treasury_base_path fio.treasury.wasm fio.treasury.abi --permission fio.treasury@active
sleep 1.5s
./clio -u http://localhost:8889 set contract -j eosio.wrap $eosio_wrap_base_path eosio.wrap.wasm eosio.wrap.abi --permission eosio.wrap@active
sleep 1.5s

# escrow contract
./clio -u http://localhost:8889 set contract -j fio.escrow $fio_escrow_base_path fio.escrow.wasm fio.escrow.abi --permission fio.escrow@active
sleep 1.5s