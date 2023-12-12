#!/usr/bin/env bash

# Reference: https://github.com/EOSIO/eos/issues/4348#issuecomment-400562839
# Reference: https://developers.eos.io/eosio-home/docs/inline-actions
#make the eosio.msig into a privileged account
./clio -u http://localhost:8879 set account permission eosio.msig active '{"threshold": 1,"keys": [{"key": "FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS","weight": 1}],"accounts": [{"permission":{"actor":"eosio.msig","permission":"eosio.code"},"weight":1}]}}' 4000000000 owner -p eosio.msig@owner
./clio -u http://localhost:8879 push action eosio setpriv '["eosio.msig",1]' -p eosio@active

#make the fio.token into a privileged account
./clio -u http://localhost:8879 set account permission fio.token active '{"threshold": 1,"keys": [{"key": "FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS","weight": 1}],"accounts": [{"permission":{"actor":"fio.token","permission":"eosio.code"},"weight":1}]}}' 4000000000 owner -p fio.token@owner
./clio -u http://localhost:8879 push action eosio setpriv '["fio.token",1]' -p eosio@active

#make the fio.fee into a privileged account
./clio -u http://localhost:8879 set account permission fio.fee active '{"threshold": 1,"keys": [{"key": "FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS","weight": 1}],"accounts": [{"permission":{"actor":"fio.fee","permission":"eosio.code"},"weight":1}]}}' 4000000000 owner -p fio.fee@owner
./clio -u http://localhost:8879 push action eosio setpriv '["fio.fee",1]' -p eosio@active

#make the fio.address into a privileged account
./clio -u http://localhost:8879 set account permission fio.address active '{"threshold": 1,"keys": [{"key": "FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS","weight": 1}],"accounts": [{"permission":{"actor":"fio.address","permission":"eosio.code"},"weight":1}]}}' 4000000000 owner -p fio.address@owner
./clio -u http://localhost:8879 push action eosio setpriv '["fio.address",1]' -p eosio@active

#make the fio.reqobt into a privileged account
./clio -u http://localhost:8879 set account permission fio.reqobt active '{"threshold": 1,"keys": [{"key": "FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS","weight": 1}],"accounts": [{"permission":{"actor":"fio.reqobt","permission":"eosio.code"},"weight":1}]}}' 4000000000 owner -p fio.reqobt@owner
./clio -u http://localhost:8879 push action eosio setpriv '["fio.reqobt",1]' -p eosio@active

#make the fio.tpid into a privileged account
./clio -u http://localhost:8879 set account permission fio.tpid active '{"threshold": 1,"keys": [{"key": "FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS","weight": 1}],"accounts": [{"permission":{"actor":"fio.tpid","permission":"eosio.code"},"weight":1}]}}' 4000000000 owner -p fio.tpid@owner
./clio -u http://localhost:8879 push action eosio setpriv '["fio.tpid",1]' -p eosio@active

#make the fio.staking into a privileged account
./clio -u http://localhost:8879 set account permission fio.staking active '{"threshold": 1,"keys": [{"key": "FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS","weight": 1}],"accounts": [{"permission":{"actor":"fio.staking","permission":"eosio.code"},"weight":1}]}}' 4000000000 owner -p fio.staking@owner
./clio -u http://localhost:8879 push action eosio setpriv '["fio.staking",1]' -p eosio@active

#make the fio.escrow into a privileged account
./clio -u http://localhost:8879 set account permission fio.escrow active '{"threshold": 1,"keys": [{"key": "FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS","weight": 1}],"accounts": [{"permission":{"actor":"fio.escrow","permission":"eosio.code"},"weight":1}]}}' 4000000000 owner -p fio.escrow@owner
./clio -u http://localhost:8879 push action eosio setpriv '["fio.escrow",1]' -p eosio@active

#make the fio.perms into a privileged account
./clio -u http://localhost:8879 set account permission fio.perms active '{"threshold": 1,"keys": [{"key": "FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS","weight": 1}],"accounts": [{"permission":{"actor":"fio.perms","permission":"eosio.code"},"weight":1}]}}' 4000000000 owner -p fio.perms@owner
./clio -u http://localhost:8879 push action eosio setpriv '["fio.perms",1]' -p eosio@active

# Test account
./clio -u http://localhost:8879 set account permission r41zuwovtn44 active '{"threshold":1,"keys":[{"key":"FIO5oBUYbtGTxMS66pPkjC2p8pbA3zCtc8XD4dq9fMut867GRdh82","weight":1}],"accounts":[{"permission":{"actor":"r41zuwovtn44","permission":"eosio.code"},"weight":1}]}' 4000000000 owner -p r41zuwovtn44@owner
./clio -u http://localhost:8879 push action eosio setpriv '["r41zuwovtn44",1]' -p eosio@active

# Test logic
./clio -u http://localhost:8889 set account permission fio.treasury active --add-code
sleep 1
./clio -u http://localhost:8889 push action fio.treasury startclock '{"":""}' -p fio.treasury@active

#make the fio.oracle into a privileged account
./clio -u http://localhost:8879 set account permission fio.oracle active '{"threshold": 1,"keys": [{"key": "FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS","weight": 1}],"accounts": [{"permission":{"actor":"fio.oracle","permission":"eosio.code"},"weight":1}]}}' 4000000000 owner -p fio.oracle@owner
./clio -u http://localhost:8879 push action eosio setpriv '["fio.oracle",1]' -p eosio@active

echo $'\nUpdating eosio and contract accounts for mSig support'
# eosio system account with key
sleep 0.5
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "eosio", "permission": "active", "max_fee":4000000000, "parent": "owner", "auth": {"threshold": 1, "keys": [{"key":"FIO6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV", "weight":1}], "waits": [], "accounts":[{"permission":{"actor":"eosio.prods","permission":"active"},"weight":1}]}}' -p eosio@owner
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "eosio", "permission": "owner", "max_fee":4000000000, "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio.prods","permission":"active"}, "weight":1}]}}' -p eosio@owner

# fio system accounts (no key)
sleep 0.5
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "eosio.msig", "permission": "active", "max_fee":4000000000, "parent": "owner", "auth": {"threshold": 1, "keys": [{"key":"FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS", "weight":1}], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1},{"permission":{"actor":"eosio.msig", "permission":"eosio.code"}, "weight":1}]}}' -p eosio.msig@active
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "eosio.msig", "permission": "owner", "max_fee":4000000000, "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1}]}}' -p eosio.msig@owner

# Note that eosio.wrap does NOT have eosio.code perm on active
sleep 0.5
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "eosio.wrap", "permission": "active", "max_fee":4000000000, "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1}]}}' -p eosio.wrap@active
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "eosio.wrap", "permission": "owner", "max_fee":4000000000, "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1}]}}' -p eosio.wrap@owner

sleep 0.5
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "fio.address", "permission": "active", "max_fee":4000000000, "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1},{"permission":{"actor":"fio.address", "permission":"eosio.code"}, "weight":1}]}}' -p fio.address@active
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "fio.address", "permission": "owner", "max_fee":4000000000, "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1}]}}' -p fio.address@owner

sleep 0.5
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "fio.escrow", "permission": "active", "max_fee":4000000000, "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1},{"permission":{"actor":"fio.escrow", "permission":"eosio.code"}, "weight":1}]}}' -p fio.escrow@active
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "fio.escrow", "permission": "owner", "max_fee":4000000000, "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1}]}}' -p fio.escrow@owner

sleep 0.5
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "fio.fee", "permission": "active", "max_fee":4000000000, "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1},{"permission":{"actor":"fio.fee", "permission":"eosio.code"}, "weight":1}]}}' -p fio.fee@active
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "fio.fee", "permission": "owner", "max_fee":4000000000, "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1}]}}' -p fio.fee@owner

sleep 0.5
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "fio.oracle", "permission": "active", "max_fee":4000000000, "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1},{"permission":{"actor":"fio.oracle", "permission":"eosio.code"}, "weight":1}]}}' -p fio.oracle@active
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "fio.oracle", "permission": "owner", "max_fee":4000000000, "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1}]}}' -p fio.oracle@owner

sleep 0.5
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "fio.perms", "permission": "active", "max_fee":4000000000, "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1},{"permission":{"actor":"fio.perms", "permission":"eosio.code"}, "weight":1}]}}' -p fio.perms@active
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "fio.perms", "permission": "owner", "max_fee":4000000000, "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1}]}}' -p fio.perms@owner

sleep 0.5
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "fio.reqobt", "permission": "active", "max_fee":4000000000, "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1},{"permission":{"actor":"fio.reqobt", "permission":"eosio.code"}, "weight":1}]}}' -p fio.reqobt@active
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "fio.reqobt", "permission": "owner", "max_fee":4000000000, "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1}]}}' -p fio.reqobt@owner

sleep 0.5
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "fio.staking", "permission": "active", "max_fee":4000000000, "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1},{"permission":{"actor":"fio.staking", "permission":"eosio.code"}, "weight":1}]}}' -p fio.staking@active
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "fio.staking", "permission": "owner", "max_fee":4000000000, "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1}]}}' -p fio.staking@owner

sleep 0.5
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "fio.token", "permission": "active", "max_fee":4000000000, "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1},{"permission":{"actor":"fio.token", "permission":"eosio.code"}, "weight":1}]}}' -p fio.token@active
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "fio.token", "permission": "owner", "max_fee":4000000000, "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1}]}}' -p fio.token@owner

sleep 0.5
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "fio.tpid", "permission": "active", "max_fee":4000000000, "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1},{"permission":{"actor":"fio.tpid", "permission":"eosio.code"}, "weight":1}]}}' -p fio.tpid@active
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "fio.tpid", "permission": "owner", "max_fee":4000000000, "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1}]}}' -p fio.tpid@owner

sleep 0.5
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "fio.treasury", "permission": "active", "max_fee":4000000000, "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1},{"permission":{"actor":"fio.treasury", "permission":"eosio.code"}, "weight":1}]}}' -p fio.treasury@active
./clio -u http://localhost:8879 push action eosio updateauth '{"account": "fio.treasury", "permission": "owner", "max_fee":4000000000, "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"eosio","permission":"active"}, "weight":1}]}}' -p fio.treasury@owner

echo
