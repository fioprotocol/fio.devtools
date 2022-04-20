#!/usr/bin/env bash

./clio -u http://localhost:8879 push action fio.token issue '["5spujqoyq4ie","1000.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action fio.token issue '["r41zuwovtn44","1000.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action fio.token issue '["htjonrkf1lgs","1100000.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action fio.token issue '["euwdcp13zlrj","2000.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action fio.token issue '["mnvcf4v1flnn","4000.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action fio.token issue '["fio.treasury","1.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action fio.token issue '["fio.token","999.000000000 FIO","memo"]' -p eosio@active

#accounts for BP
./clio -u http://localhost:8879 push action fio.token issue '["qbxn5zhw2ypw","100.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action fio.token issue '["hfdg2qumuvlc","100.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action fio.token issue '["wttywsmdmfew","100.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action fio.token issue '["3ddowwxs11ss","100.000000000 FIO","memo"]' -p eosio@active

#accounts for voters
./clio -u http://localhost:8879 push action fio.token issue '["o2ouxipw2rt4","25000000.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action fio.token issue '["extjnqh3j3gt","25000000.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action fio.token issue '["npe3obkgoteh","25000000.000000000 FIO","memo"]' -p eosio@active

./clio -u http://localhost:8879 push action fio.token issue '["eosio",       "700000000.000000000 FIO","memo"]' -p eosio@active
./clio -u http://localhost:8879 push action fio.token transfer '{"from": "eosio", "to": "r41zuwovtn44", "quantity": "999999.000000000 FIO", "memo": "launcher test transfer"}' -p eosio@active

#Faucet
./clio -u http://localhost:8879 push action fio.token issue '["qhh25sqpktwh","200000000.000000000 FIO","memo"]' -p eosio@active


# marketplace and escrow development
# fio.escrow
./clio -u http://localhost:8879 push action fio.token issue '["fio.escrow","1000000.000000000 FIO","memo"]' -p eosio@active
#
## blocksmith dev accounts
## marketplace
#./clio -u http://localhost:8879 push action fio.token issue '["5ufabtv13hv4","1000000.000000000 FIO","memo"]' -p eosio@active
#
##dev account / domain owner
#./clio -u http://localhost:8879 push action fio.token issue '["wjeo4abnk4c2","1000000.000000000 FIO","memo"]' -p eosio@active
#
## contract holder account
#./clio -u http://localhost:8879 push action fio.token issue '["p2yrhsvsvjge","1000000.000000000 FIO","memo"]' -p eosio@active
#
##buyer account
#./clio -u http://localhost:8879 push action fio.token issue '["g4oc1qkysew2","1000000.000000000 FIO","memo"]' -p eosio@active
#
##extras
#./clio -u http://localhost:8879 push action fio.token issue '["ltllcgohc4op","1000000.000000000 FIO","memo"]' -p eosio@active
#./clio -u http://localhost:8879 push action fio.token issue '["aghsbgzbx3iz","1000000.000000000 FIO","memo"]' -p eosio@active

./clio -u http://localhost:8879 push action fio.token issue '["o3jvcxorf4qu","10000.000000000 FIO","memo"]' -p eosio@active

# marketplace and escrow development
# fio.escrow
# this is a duplicate, looks like some merges went wrong on dev tools at some point, is this oracle?????
#./clio -u http://localhost:8879 push action fio.token issue '["fio.escrow","1000000.000000000 FIO","memo"]' -p eosio@active

# blocksmith dev accounts
# marketplace
./clio -u http://localhost:8879 push action fio.token issue '["5ufabtv13hv4","10000.000000000 FIO","memo"]' -p eosio@active
