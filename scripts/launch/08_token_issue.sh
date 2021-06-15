#!/usr/bin/env bash

./clio -u http://localhost:8879 push action -j fio.token issue '["5spujqoyq4ie","1000.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action -j fio.token issue '["r41zuwovtn44","1000.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action -j fio.token issue '["htjonrkf1lgs","1100000.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action -j fio.token issue '["euwdcp13zlrj","2000.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action -j fio.token issue '["mnvcf4v1flnn","4000.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action -j fio.token issue '["fio.treasury","1.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action -j fio.token issue '["fio.token","999.000000000 FIO","memo"]' -p eosio@active

#accounts for BP
./clio -u http://localhost:8879 push action -j fio.token issue '["qbxn5zhw2ypw","100.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action -j fio.token issue '["hfdg2qumuvlc","100.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action -j fio.token issue '["wttywsmdmfew","100.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action -j fio.token issue '["3ddowwxs11ss","100.000000000 FIO","memo"]' -p eosio@active

#accounts for voters
./clio -u http://localhost:8879 push action -j fio.token issue '["o2ouxipw2rt4","25000000.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action -j fio.token issue '["extjnqh3j3gt","25000000.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action -j fio.token issue '["npe3obkgoteh","25000000.000000000 FIO","memo"]' -p eosio@active

./clio -u http://localhost:8879 push action -j fio.token issue '["eosio",       "700000000.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action -j fio.token transfer '{"from": "eosio", "to": "r41zuwovtn44", "quantity": "999999.000000000 FIO", "memo": "launcher test transfer"}' -p eosio@active

#Faucet
./clio -u http://localhost:8879 push action -j fio.token issue '["qhh25sqpktwh","5000000.000000000 FIO","memo"]' -p eosio@active
