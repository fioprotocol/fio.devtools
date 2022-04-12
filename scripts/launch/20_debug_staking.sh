#!/usr/bin/env bash
# WARNING: DO NOT USE THE FOLLOWING KEYS IN PRODUCTION!!!! TESTING ONLY

#this file contains the various accounts used to perform dev testing for the staking project.


#the first type of account is a general locked token holding account which also has 100 extra fio added
#test cases
#   try to transfer more fio than the user has available (this should error).
#   try to transfer an amount that can be transferred (this should transfer)
#   try to stake more than you have available unlocked( this should fail)
#   try to stake 1/2 of the unlocked balance (this should succeed)
#   try to unstake more than you have staked (this should fail)
#   try to unstake less than what you have staked (this should succeed)
#   verify contents of staking table after stake and unstake.
#   verify the contents of the lock tokens table after unstake (the lock should be adapted and contain one new lock period)
#we will test that the staking adapts the locks when unstaking occurs.
#transfer locked tokens to test account
./clio -u http://localhost:8889 push action fio.token trnsloctoks '{"payee_public_key":"FIO5xGfMyRCVSAhQW1ZAngvvJmwD12NwTf22sgvJoNT1YXcvsZ1Ei", "can_vote":1,"periods":[{"duration":120,"amount":5000000000000},{"duration":180,"amount":4000000000000},{"duration":1204800,"amount":1000000000000}], "amount":10000000000000, "max_fee":400000000000, "actor":"eosio", "tpid":""}' -p eosio@active

#Transfer 100 more fio to pre-existing locked token account
#./clio -u http://localhost:8889 push action fio.token trnsfiopubky '{"payee_public_key": "FIO5xGfMyRCVSAhQW1ZAngvvJmwD12NwTf22sgvJoNT1YXcvsZ1Ei", "amount": 100000000000, "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active

#Import private key of existing locked token holder
./clio wallet import --private-key 5Jo3XKAh4yu8xyvkaRXjPLeSW4RWmcZwGF5EuoZTQ8CqHP8K5tq  -n fio

# give this account a fio address, useful for calls to the API.
./clio -u http://localhost:8889 push action fio.address regaddress '{"fio_address":"general1@dapixdev","owner_fio_public_key":"FIO5xGfMyRCVSAhQW1ZAngvvJmwD12NwTf22sgvJoNT1YXcvsZ1Ei","max_fee":"40000000000","actor":"htjonrkf1lgs","tpid":""}' --permission htjonrkf1lgs@active

#Vote as pre existing locked token holder
./clio -u http://localhost:8889 push action eosio voteproducer '{"producers":["bp1@dapixdev"],"fio_address":"general1@dapixdev","actor":"gcz2iidl51fy","max_fee":"40000000000"}' -p gcz2iidl51fy@active

#Stake as pre existing locked token holder
#./clio -u http://localhost:8889 push action fio.staking stakefio '{"fio_address":"","amount":100000000000,"max_fee":400000000000, "tpid":"","actor":"gcz2iidl51fy"}' -p gcz2iidl51fy@active

#the next test is on a genesis locked token account.
#first set up the system to have unlocking periods that are 20 minutes in length.
#first transfer 700 tokens to another account. (should succeed)
#  ../fio/build/bin/clio -u http://localhost:8889 push action fio.token trnsfiopubky '{"payee_public_key": "'FIO5oQPqujG8qiKkNPuWbdm8NGiYM3STuhHS8bXQ2dgNDaEg1aYNr'", "amount": 700000000000, "max_fee": "40000000000", "actor": "xbfugtkzvowu","tpid":""}' -p xbfugtkzvowu@active
#try to transfer 700 tokens to another account (should fail)
#  ../fio/build/bin/clio -u http://localhost:8889 push action fio.token trnsfiopubky '{"payee_public_key": "'FIO5oQPqujG8qiKkNPuWbdm8NGiYM3STuhHS8bXQ2dgNDaEg1aYNr'", "amount": 700000000000, "max_fee": "40000000000", "actor": "xbfugtkzvowu","tpid":""}' -p xbfugtkzvowu@active
#wait 20 minutes.
#check locked token table
#try to transfer 1/2 unlocked balance to another account (should succeed)
# try to stake more than the remaining unlocked balance (should fail)
# ../fio/build/bin/clio -u http://localhost:8889 push action fio.staking stakefio '{"fio_address":"","amount":100000000000,"max_fee":400000000000, "tpid":"","actor":"xbfugtkzvowu"}' -p xbfugtkzvowu@active
# try to stake 1/2 remaining unlocked balance (should succeed)
# try to unstake 1/2 of the staked tokens (should succeed)
# look at the locktokens, see that a general lock has been added with one period.
# try to transfer more tokens than are presently available (should fail)
# try to transfer the amount of tokens presently available (should succeed)
# try to unstake the other 1/2 of remaining staked tokens (should succeed)
# verify locktokens general lock now has 2 periods.
# wait for a new unlock to occur.
# try to transfer the unlocked amount (should succeed)
#
# Create locked token account
#Public key: 'FIO8WaU8ZT9YLixZZ41uHiYmkoRSZHgCR3anfL3YupC3boQpwvXqG'
#private key 5JwmDtsJDTY2M3h9bsXZDD2tHPj3UgQf7FVpptaLeC7NzxeXnXu
#FIO Public Address (actor name): 'xbfugtkzvowu'
./clio -u http://localhost:8889 push action fio.token trnsfiopubky '{"payee_public_key": "'FIO8WaU8ZT9YLixZZ41uHiYmkoRSZHgCR3anfL3YupC3boQpwvXqG'", "amount": 7075065123456789, "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active

#./clio -u http://localhost:8889 push action fio.token trnsfiopubky '{"payee_public_key": "'FIO8WaU8ZT9YLixZZ41uHiYmkoRSZHgCR3anfL3YupC3boQpwvXqG'", "amount": 7000, "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active

# issue locked token grant to xbfugtkzvowu as lock type 1 in the amount of 9000000000000 9000 FIO
#./clio -u http://localhost:8889 push action eosio addlocked '{"owner":"xbfugtkzvowu","amount":70750650000000000,"locktype":1}' -p eosio@active
./clio -u http://localhost:8889 push action eosio addlocked '{"owner":"xbfugtkzvowu","amount":7075065123456789,"locktype":1}' -p eosio@active

./clio wallet import --private-key 5JwmDtsJDTY2M3h9bsXZDD2tHPj3UgQf7FVpptaLeC7NzxeXnXu  -n fio

# give this account a fio address, useful for calls to the API.
./clio -u http://localhost:8889 push action fio.address regaddress '{"fio_address":"genesis1@dapixdev","owner_fio_public_key":"FIO8WaU8ZT9YLixZZ41uHiYmkoRSZHgCR3anfL3YupC3boQpwvXqG","max_fee":"40000000000","actor":"htjonrkf1lgs","tpid":""}' --permission htjonrkf1lgs@active

#command to vote, this triggers unlocking of tokens
#../fio/build/bin/clio -u http://localhost:8889 push action eosio voteproducer '{"producers":["bp1@dapixdev"],"fio_address":"","actor":"xbfugtkzvowu","max_fee":"40000000000"}' -p xbfugtkzvowu@active

#create an account with 1M FIO
#Private key: 5Ke8oZdtefgVEC6GDUeo7FW9xC7WgdxC9Fi92b3YmTrPynWb4Rb
#Public key: FIO6ydLCnUfsEMpbp35kF8oaUbHvcmLEyswMUF75C4FQAm78DUhAi
#FIO Public Address (actor name): ni1eyydbdpht
./clio -u http://localhost:8889 push action fio.token trnsfiopubky '{"payee_public_key": "'FIO6ydLCnUfsEMpbp35kF8oaUbHvcmLEyswMUF75C4FQAm78DUhAi'", "amount": 1000000000000000, "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active

./clio wallet import --private-key 5Ke8oZdtefgVEC6GDUeo7FW9xC7WgdxC9Fi92b3YmTrPynWb4Rb  -n fio

./clio -u http://localhost:8889 push action fio.address regaddress '{"fio_address":"stake@dapixdev","owner_fio_public_key":"","max_fee":"40000000000","actor":"ni1eyydbdpht","tpid":""}' --permission ni1eyydbdpht@active

#make casey a proxy for testing of auto proxy
./clio -u http://localhost:8889 push action eosio regproxy '{"fio_address":"casey@dapixdev","actor":"r41zuwovtn44","max_fee":"40000000000"}' --permission r41zuwovtn44@active







