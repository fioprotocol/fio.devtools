#!/usr/bin/env bash

./clio -u http://localhost:8879 push action eosio setprods "{ \"schedule\": [{\"producer_name\": \"3ddowwxs11ss\",\"block_signing_key\": \"FIO6ruJ5qLeaa6VtYVpkcU4AeWVaL2QvViyQqjxjpAWYRFsYaSbBN\"}]}" -p eosio@active

echo loading system contract, the bios node is going to go dormant so load the system contract now.
sleep 0.5
./clio -u http://localhost:8879 set contract eosio $fio_system_contract_base_path fio.system.wasm fio.system.abi --permission eosio@active
sleep 2
#init the bios node, this must be done using the action in the bios contract.
./clio -u http://localhost:8879  push action eosio init '{"version": 0, "core":"9,FIO"}' -p eosio@active

echo did eosio init
sleep 2

#register names for the producers.

echo grant the locked token holder funds via transfer
#./clio -u http://localhost:8879 push action fio.token transfer '{"from": "eosio", "to": "tly4lbwrx3jm", "quantity": "1000.000000000 FIO", "memo": "launcher test transfer"}' -p eosio@active
#./clio -u http://localhost:8879 push action fio.token transfer '{"from": "eosio", "to": "o3jvcxorf4qu", "quantity": "1000.000000000 FIO", "memo": "launcher test transfer"}' -p eosio@active
#./clio -u http://localhost:8879 push action fio.token issue '["tly4lbwrx3jm","1000.000000000 FIO","memo"]' -p eosio@active
#./clio -u http://localhost:8879 push action fio.token issue '["o3jvcxorf4qu","1000.000000000 FIO","memo"]' -p eosio@active
echo completed grant the locked token holder funds.
sleep 2

echo bp1
  ./clio -u http://localhost:8889 push action fio.address regaddress '{"fio_address":"bp1@dapixdev","owner_fio_public_key":"","max_fee":"40000000000","actor":"qbxn5zhw2ypw","tpid":""}' --permission qbxn5zhw2ypw@active
echo bp2
  ./clio -u http://localhost:8889 push action fio.address regaddress '{"fio_address":"bp2@dapixdev","owner_fio_public_key":"","max_fee":"40000000000","actor":"hfdg2qumuvlc","tpid":""}' --permission hfdg2qumuvlc@active
echo bp3
  ./clio -u http://localhost:8889 push action fio.address regaddress '{"fio_address":"bp3@dapixdev","owner_fio_public_key":"","max_fee":"40000000000","actor":"wttywsmdmfew","tpid":""}' --permission wttywsmdmfew@active
echo bp4
  ./clio -u http://localhost:8889 push action fio.address regaddress '{"fio_address":"bp4@dapixdev","owner_fio_public_key":"","max_fee":"40000000000","actor":"3ddowwxs11ss","tpid":""}' --permission 3ddowwxs11ss@active

#register names for the voters.
echo vote1
  ./clio -u http://localhost:8889 push action fio.address regaddress '{"fio_address":"vote1@dapixdev","owner_fio_public_key":"","max_fee":"40000000000","actor":"o2ouxipw2rt4","tpid":""}' --permission o2ouxipw2rt4@active
echo vote2
  ./clio -u http://localhost:8889 push action fio.address regaddress '{"fio_address":"vote2@dapixdev","owner_fio_public_key":"","max_fee":"40000000000","actor":"extjnqh3j3gt","tpid":""}' --permission extjnqh3j3gt@active
echo vote3
   ./clio -u http://localhost:8889 push action fio.address regaddress '{"fio_address":"vote3@dapixdev","owner_fio_public_key":"","max_fee":"40000000000","actor":"npe3obkgoteh","tpid":""}' --permission npe3obkgoteh@active

echo calling regproducer
#register the desired producers, note this does not yet turn on block production because teh necessary amount of
#fio is not yet in circulation, and there are no votes.
#it just registers these BP.
./clio -u http://localhost:8879 push action eosio regproducer '{"fio_address":"bp1@dapixdev","fio_pub_key":"FIO7jVQXMNLzSncm7kxwg9gk7XUBYQeJPk8b6QfaK5NVNkh3QZrRr","url":"www.yahoo.com","location":10,"actor":"qbxn5zhw2ypw", "max_fee":"40000000000" }' --permission qbxn5zhw2ypw@active
./clio -u http://localhost:8879 push action eosio regproducer '{"fio_address":"bp2@dapixdev","fio_pub_key":"FIO7uTisye5w2hgrCSE1pJhBKHfqDzhvqDJJ4U3vN9mbYWzataS2b","url":"www.yahoo.com","location":20,"actor":"hfdg2qumuvlc", "max_fee":"40000000000" }' --permission hfdg2qumuvlc@active
./clio -u http://localhost:8879 push action eosio regproducer '{"fio_address":"bp3@dapixdev","fio_pub_key":"FIO6oa5UV9ghWgYH9en8Cv8dFcAxnZg2i9z9gKbnHahciuKNRPyHc","url":"www.yahoo.com","location":30,"actor":"wttywsmdmfew", "max_fee":"40000000000" }' --permission wttywsmdmfew@active

sleep 2
./clio -u http://localhost:8879 system listproducers

echo setting up voters
#ensure a record is in the voters table
echo setting up vote1:dapix
./clio -u http://localhost:8889 push action eosio regproxy '{"fio_address":"vote1@dapixdev","actor":"o2ouxipw2rt4","max_fee":"40000000000"}' --permission o2ouxipw2rt4@active
./clio -u http://localhost:8889 push action eosio unregproxy '{"fio_address":"vote1@dapixdev","actor":"o2ouxipw2rt4","max_fee":"40000000000"}' --permission o2ouxipw2rt4@active

echo setting up vote2:dapix
./clio -u http://localhost:8889 push action eosio regproxy '{"fio_address":"vote2@dapixdev","actor":"extjnqh3j3gt","max_fee":"40000000000"}' --permission extjnqh3j3gt@active
./clio -u http://localhost:8889 push action eosio unregproxy '{"fio_address":"vote2@dapixdev","actor":"extjnqh3j3gt","max_fee":"40000000000"}' --permission extjnqh3j3gt@active

echo setting up vote3:dapix
./clio -u http://localhost:8889 push action eosio regproxy '{"fio_address":"vote3@dapixdev","actor":"npe3obkgoteh","max_fee":"40000000000"}' --permission npe3obkgoteh@active
./clio -u http://localhost:8889 push action eosio unregproxy '{"fio_address":"vote3@dapixdev","actor":"npe3obkgoteh","max_fee":"40000000000"}' --permission npe3obkgoteh@active

echo calling vproducer
#vote for the producers, now block production may occur.
echo voteproducer bp1
./clio -u http://localhost:8889 push action eosio voteproducer '{"producers":["bp1@dapixdev"],"fio_address":"vote1@dapixdev","actor":"o2ouxipw2rt4","max_fee":"40000000000"}' -p o2ouxipw2rt4@active
sleep 2
echo system call bp2
./clio -u http://localhost:8889 push action eosio voteproducer '{"producers":["bp2@dapixdev"],"fio_address":"vote2@dapixdev","actor":"extjnqh3j3gt","max_fee":"40000000000"}' -p extjnqh3j3gt@active
sleep 2
echo system call bp3
./clio -u http://localhost:8889 push action eosio voteproducer '{"producers":["bp3@dapixdev"],"fio_address":"vote3@dapixdev","actor":"npe3obkgoteh","max_fee":"40000000000"}' -p npe3obkgoteh@active
sleep 2
