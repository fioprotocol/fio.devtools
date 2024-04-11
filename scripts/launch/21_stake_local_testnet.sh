#!/usr/bin/env bash
#BD-3962 -- get fio balance gets errors in local dev testing.
# This script will create a local account using keys in this file and stake
# a small amount of FIO, this so that the global staking table will be live in
# the local environment. This premits get_fio_balance to work without incident
# on the local net.
# the following keys and account are used
#Private key: 5JUuQdUJu1zexeeR6bvvsDFwJ9X9mY2mcdJFBkR9RqDxRqEVy3X
#Public key: FIO795GoHVWkeopWnPBjFgaDi21ychgNmqweHKyg21RCjkwP3woTx
#FIO Public Address (actor name): c21a5et1cahf


#Transfer 100 more fio to pre-existing locked token account
./clio -u http://localhost:8889 push action fio.token trnsfiopubky '{"payee_public_key": "FIO795GoHVWkeopWnPBjFgaDi21ychgNmqweHKyg21RCjkwP3woTx", "amount": 100000000000, "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active

#Import private key of existing locked token holder
./clio wallet import --private-key 5JUuQdUJu1zexeeR6bvvsDFwJ9X9mY2mcdJFBkR9RqDxRqEVy3X  -n fio


#Stake some fio
./clio -u http://localhost:8889 push action fio.staking stakefio '{"fio_address":"","amount":10000000000,"max_fee":400000000000, "tpid":"","actor":"c21a5et1cahf"}' -p c21a5et1cahf@active

echo "create account and stake 10 FIO completed"
sleep 1
