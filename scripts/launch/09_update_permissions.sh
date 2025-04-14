#!/usr/bin/env bash

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
