#!/usr/bin/env bash

echo -n $'\e[0;34m'
echo eosio.bios - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/eosio.bios/eosio.bios.wasm

echo -n $'\e[0;34m'
echo eosio.msig - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/eosio.msig/eosio.msig.wasm
echo -n $'\E[0;31m'
echo Local
echo -n $'\e[0;39m'
./bin/clio -u http://localhost:8889 get code eosio.msig
echo -n $'\E[0;31m'
echo Testnet
echo -n $'\e[0;39m'
./bin/clio -u http://testnet.fioprotocol.io get code eosio.msig
echo -n $'\E[0;31m'
echo Mainnet
echo -n $'\e[0;39m'
./bin/clio -u https://fio.greymass.com get code eosio.msig

echo -n $'\e[0;34m'
echo eosio.wrap - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/eosio.wrap/eosio.wrap.wasm
echo -n $'\E[0;31m'
echo Local
echo -n $'\e[0;39m'
./bin/clio -u http://localhost:8889 get code eosio.wrap
echo -n $'\E[0;31m'
echo Testnet
echo -n $'\e[0;39m'
./bin/clio -u http://testnet.fioprotocol.io get code eosio.wrap
echo -n $'\E[0;31m'
echo Mainnet
echo -n $'\e[0;39m'
./bin/clio -u https://fio.greymass.com get code eosio.wrap

echo -n $'\e[0;34m'
echo fio.address - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.address/fio.address.wasm
echo -n $'\E[0;31m'
echo Local
echo -n $'\e[0;39m'
./bin/clio -u http://localhost:8889 get code fio.address
echo -n $'\E[0;31m'
echo Testnet
echo -n $'\e[0;39m'
./bin/clio -u http://testnet.fioprotocol.io get code fio.address
echo -n $'\E[0;31m'
echo Mainnet
echo -n $'\e[0;39m'
./bin/clio -u https://fio.greymass.com get code fio.address

echo -n $'\e[0;34m'
echo fio.fee - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.fee/fio.fee.wasm
echo -n $'\E[0;31m'
echo Local
echo -n $'\e[0;39m'
./bin/clio -u http://localhost:8889 get code fio.fee
echo -n $'\E[0;31m'
echo Testnet
echo -n $'\e[0;39m'
./bin/clio -u http://testnet.fioprotocol.io get code fio.fee
echo -n $'\E[0;31m'
echo Mainnet
echo -n $'\e[0;39m'
./bin/clio -u https://fio.greymass.com get code fio.fee

echo -n $'\e[0;34m'
echo fio.request.obt - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.request.obt/fio.request.obt.wasm
echo -n $'\E[0;31m'
echo Local
echo -n $'\e[0;39m'
./bin/clio -u http://localhost:8889 get code fio.reqobt
echo -n $'\E[0;31m'
echo Testnet
echo -n $'\e[0;39m'
./bin/clio -u http://testnet.fioprotocol.io get code fio.reqobt
echo -n $'\E[0;31m'
echo Mainnet
echo -n $'\e[0;39m'
./bin/clio -u https://fio.greymass.com get code fio.reqobt

echo -n $'\e[0;34m'
echo fio.system - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.system/fio.system.wasm
echo -n $'\E[0;31m'
echo Local
echo -n $'\e[0;39m'
./bin/clio -u http://localhost:8889 get code eosio
echo -n $'\E[0;31m'
echo Testnet
echo -n $'\e[0;39m'
./bin/clio -u http://testnet.fioprotocol.io get code eosio
echo -n $'\E[0;31m'
echo Mainnet
echo -n $'\e[0;39m'
./bin/clio -u https://fio.greymass.com get code eosio

echo -n $'\e[0;34m'
echo fio.token - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.token/fio.token.wasm
echo -n $'\E[0;31m'
echo Local
echo -n $'\e[0;39m'
./bin/clio -u http://localhost:8889 get code fio.token
echo -n $'\E[0;31m'
echo Testnet
echo -n $'\e[0;39m'
./bin/clio -u http://testnet.fioprotocol.io get code fio.token
echo -n $'\E[0;31m'
echo Mainnet
echo -n $'\e[0;39m'
./bin/clio -u https://fio.greymass.com get code fio.token

echo -n $'\e[0;34m'
echo fio.tpid - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.tpid/fio.tpid.wasm
echo -n $'\E[0;31m'
echo Local
echo -n $'\e[0;39m'
./bin/clio -u http://localhost:8889 get code fio.tpid
echo -n $'\E[0;31m'
echo Testnet
echo -n $'\e[0;39m'
./bin/clio -u http://testnet.fioprotocol.io get code fio.tpid
echo -n $'\E[0;31m'
echo Mainnet
echo -n $'\e[0;39m'
./bin/clio -u https://fio.greymass.com get code fio.tpid

echo -n $'\e[0;34m'
echo fio.treasury - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.treasury/fio.treasury.wasm
echo -n $'\E[0;31m'
echo Local
echo -n $'\e[0;39m'
./bin/clio -u http://localhost:8889 get code fio.treasury
echo -n $'\E[0;31m'
echo Testnet
echo -n $'\e[0;39m'
./bin/clio -u http://testnet.fioprotocol.io get code fio.treasury
echo -n $'\E[0;31m'
echo Mainnet
echo -n $'\e[0;39m'
./bin/clio -u https://fio.greymass.com get code fio.treasury

