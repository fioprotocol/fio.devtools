#!/bin/bash

../fio/build/bin/clio -u http://localhost:8889 set contract eosio /Users/edr/repos/fio.contractsMKTPLC/build/contracts/fio.system fio.system.wasm fio.system.abi --permission eosio@active
