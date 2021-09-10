#!/usr/bin/env bash

# Reference: https://github.com/EOSIO/eos/issues/4348#issuecomment-400562839
# Reference: https://developers.eos.io/eosio-home/docs/inline-actions
./clio -u http://localhost:8879 set account permission eosio.msig active '{"threshold": 1,"keys": [{"key": "FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS","weight": 1}],"accounts": [{"permission":{"actor":"eosio.msig","permission":"eosio.code"},"weight":1}]}}' 4000000000 owner -p eosio.msig@owner
#make the fio.token into a privileged account
./clio -u http://localhost:8879 push action eosio setpriv '["eosio.msig",1]' -p eosio@active
./clio -u http://localhost:8879 set account permission fio.token active '{"threshold": 1,"keys": [{"key": "FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS","weight": 1}],"accounts": [{"permission":{"actor":"fio.token","permission":"eosio.code"},"weight":1}]}}' 4000000000 owner -p fio.token@owner
#make the fio.token into a privileged account
./clio -u http://localhost:8879 push action eosio setpriv '["fio.token",1]' -p eosio@active
./clio -u http://localhost:8879 set account permission fio.fee active '{"threshold": 1,"keys": [{"key": "FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS","weight": 1}],"accounts": [{"permission":{"actor":"fio.fee","permission":"eosio.code"},"weight":1}]}}' 4000000000 owner -p fio.fee@owner
#make the fio.token into a privileged account
./clio -u http://localhost:8879 push action eosio setpriv '["fio.fee",1]' -p eosio@active
./clio -u http://localhost:8879 set account permission fio.address active '{"threshold": 1,"keys": [{"key": "FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS","weight": 1}],"accounts": [{"permission":{"actor":"fio.address","permission":"eosio.code"},"weight":1}]}}' 4000000000 owner -p fio.address@owner
#make the fio.system into a privileged account
./clio -u http://localhost:8879 push action eosio setpriv '["fio.address",1]' -p eosio@active
./clio -u http://localhost:8879 set account permission fio.reqobt active '{"threshold": 1,"keys": [{"key": "FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS","weight": 1}],"accounts": [{"permission":{"actor":"fio.reqobt","permission":"eosio.code"},"weight":1}]}}' 4000000000 owner -p fio.reqobt@owner
#make the fio.reqobt into a privileged account
./clio -u http://localhost:8879 push action eosio setpriv '["fio.reqobt",1]' -p eosio@active
#and other contracts.
./clio -u http://localhost:8879 set account permission fio.tpid active '{"threshold": 1,"keys": [{"key": "FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS","weight": 1}],"accounts": [{"permission":{"actor":"fio.tpid","permission":"eosio.code"},"weight":1}]}}' 4000000000 owner -p fio.tpid@owner
#make the fio.system into a privileged account
./clio -u http://localhost:8879 push action eosio setpriv '["fio.tpid",1]' -p eosio@active

./clio -u http://localhost:8879 set account permission fio.staking active '{"threshold": 1,"keys": [{"key": "FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS","weight": 1}],"accounts": [{"permission":{"actor":"fio.staking","permission":"eosio.code"},"weight":1}]}}' 4000000000 owner -p fio.staking@owner
./clio -u http://localhost:8879 push action eosio setpriv '["fio.staking",1]' -p eosio@active
#fio.escrow
./clio -u http://localhost:8879 set account permission fio.escrow active '{"threshold": 1,"keys": [{"key": "FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS","weight": 1}],"accounts": [{"permission":{"actor":"fio.escrow","permission":"eosio.code"},"weight":1}]}}' 4000000000 owner -p fio.escrow@owner
./clio -u http://localhost:8879 push action eosio setpriv '["fio.escrow",1]' -p eosio@active

./clio -u http://localhost:8879 set account permission r41zuwovtn44 active '{"threshold":1,"keys":[{"key":"FIO5oBUYbtGTxMS66pPkjC2p8pbA3zCtc8XD4dq9fMut867GRdh82","weight":1}],"accounts":[{"permission":{"actor":"r41zuwovtn44","permission":"eosio.code"},"weight":1}]}' 4000000000 owner -p r41zuwovtn44@owner
./clio -u http://localhost:8879 push action eosio setpriv '["r41zuwovtn44",1]' -p eosio@active

./clio -u http://localhost:8889 set account permission fio.treasury active --add-code
sleep 1s
./clio -u http://localhost:8889 push action fio.treasury startclock '{"":""}' -p fio.treasury@active
