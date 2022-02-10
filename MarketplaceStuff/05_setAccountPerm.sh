#!/bin/bash

../fio/build/bin/clio -u http://localhost:8889 push action fio.token issue '["fio.escrow","10000.000000000 FIO","memo"]' -p eosio@active

../fio/build/bin/clio -u http://localhost:8889 set account permission fio.escrow active '{"threshold": 1,"keys": [{"key": "FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS","weight": 1}],"accounts": [{"permission":{"actor":"fio.escrow","permission":"eosio.code"},"weight":1}]}}' 4000000000 owner -p fio.escrow@owner
