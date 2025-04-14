#!/usr/bin/env bash
dom=1
retries=3

#Create Account Name
echo casey
./clio -u http://localhost:8889 push action fio.address regaddress '{"fio_address":"casey@dapixdev","owner_fio_public_key":"","max_fee":"40000000000","actor":"r41zuwovtn44","tpid":""}' --permission r41zuwovtn44@active
echo adam
./clio -u http://localhost:8889 push action fio.address regaddress '{"fio_address":"adam@dapixdev","owner_fio_public_key":"","max_fee":"40000000000","actor":"htjonrkf1lgs","tpid":""}' --permission htjonrkf1lgs@active
echo ed
./clio -u http://localhost:8889 push action fio.address regaddress '{"fio_address":"ed@dapixdev","owner_fio_public_key":"","max_fee":"40000000000","actor":"euwdcp13zlrj","tpid":"adam@dapixdev"}' --permission euwdcp13zlrj@active
echo ada
./clio -u http://localhost:8889 push action fio.address regaddress '{"fio_address":"ada@dapixdev","owner_fio_public_key":"","max_fee":"40000000000","actor":"r41zuwovtn44","tpid":"adam@dapixdev"}' --permission r41zuwovtn44@active
echo 5spujqoyq4ie
./clio -u http://localhost:8889 push action fio.address regaddress '{"fio_address":"producera@dapixdev","owner_fio_public_key":"","max_fee":"40000000000","actor":"5spujqoyq4ie","tpid":"adam@dapixdev"}' --permission 5spujqoyq4ie@active

#we do these 3 lines to create a record in voter_info for adam:dapix, then we set that record to NOT proxy,
#then we give that record some votes...after doing this we can run the register_proxy signing script and this
#tests the logic when there is already a record in the voters table for this account....
#./clio -u http://localhost:8889 push action eosio regproxy '{"fio_address":"adam@dapixdev","actor":"htjonrkf1lgs","max_fee":"40000000000"}' --permission htjonrkf1lgs@active
#./clio -u http://localhost:8889 push action eosio unregproxy '{"fio_address":"adam@dapixdev","actor":"htjonrkf1lgs","max_fee":"40000000000"}' --permission htjonrkf1lgs@active
#./clio -u http://localhost:8889 push action eosio regproxy '{"fio_address":"casey@dapixdev","actor":"r41zuwovtn44","max_fee":"40000000000"}' --permission r41zuwovtn44@active
#./clio -u http://localhost:8889 push action eosio unregproxy '{"fio_address":"casey@dapixdev","actor":"r41zuwovtn44","max_fee":"40000000000"}' --permission r41zuwovtn44@active
#./clio -u http://localhost:8889 push action eosio regproxy '{"fio_address":"ed@dapixdev","actor":"euwdcp13zlrj","max_fee":"40000000000"}' --permission euwdcp13zlrj@active
#./clio -u http://localhost:8889 push action eosio unregproxy '{"fio_address":"ed@dapixdev","actor":"euwdcp13zlrj","max_fee":"40000000000"}' --permission euwdcp13zlrj@active
#./clio -u http://localhost:8889 push action eosio voteproducer '{"producers":["bp1@dapixdev"],"fio_address":"ed@dapixdev","actor":"euwdcp13zlrj","max_fee":"40000000000"}' -p euwdcp13zlrj@active
sleep 2

./clio -u http://localhost:8889 push action fio.address regaddress '{"fio_address":"fio@faucet","owner_fio_public_key":"","max_fee":"40000000000","actor":"qhh25sqpktwh","tpid":""}' --permission qhh25sqpktwh@active
#echo transfer as ED
#now lets do some transfers out of the account holding locked funds.
#./clio -u http://localhost:8879 push action fio.token trnsfiopubky '{"payee_public_key": "FIO5oBUYbtGTxMS66pPkjC2p8pbA3zCtc8XD4dq9fMut867GRdh82", "amount":3 "1500000000000", "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
#echo transferred as ED
#sleep 5
