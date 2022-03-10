#!/usr/bin/env bash

echo -n $'\e[0;34m'
echo eosio.bios - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/eosio.bios/eosio.bios.wasm
echo -n $'\e[0;34m'
echo eosio.bios - Local ABI:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/eosio.bios/eosio.bios.abi

echo -n $'\e[0;34m'
echo eosio.msig - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/eosio.msig/eosio.msig.wasm
echo -n $'\e[0;34m'
echo eosio.bios - Local ABI:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/eosio.msig/eosio.msig.abi
echo -n $'\E[0;31m'
echo Local
echo -n $'\e[0;39m'
./bin/clio -u http://localhost:8889 get code eosio.msig -a bin/msig.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/msig.abi
echo -n $'\E[0;31m'
echo Testnet
echo -n $'\e[0;39m'
./bin/clio -u http://testnet.fioprotocol.io get code eosio.msig -a bin/msig.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/msig.abi
echo -n $'\E[0;31m'
echo Mainnet
echo -n $'\e[0;39m'
./bin/clio -u https://fio.greymass.com get code eosio.msig -a bin/msig.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/msig.abi

echo -n $'\e[0;34m'
echo eosio.wrap - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/eosio.wrap/eosio.wrap.wasm
echo -n $'\e[0;34m'
echo eosio.wrap - Local ABI:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/eosio.wrap/eosio.wrap.abi
echo -n $'\E[0;31m'
echo Local
echo -n $'\e[0;39m'
./bin/clio -u http://localhost:8889 get code eosio.wrap -a bin/wrap.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/wrap.abi
echo -n $'\E[0;31m'
echo Testnet
echo -n $'\e[0;39m'
./bin/clio -u http://testnet.fioprotocol.io get code eosio.wrap -a bin/wrap.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/wrap.abi
echo -n $'\E[0;31m'
echo Mainnet
echo -n $'\e[0;39m'
./bin/clio -u https://fio.greymass.com get code eosio.wrap -a bin/wrap.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/wrap.abi

echo -n $'\e[0;34m'
echo fio.address - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.address/fio.address.wasm
echo -n $'\e[0;34m'
echo fio.address - Local ABI:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.address/fio.address.abi
echo -n $'\E[0;31m'
echo Local
echo -n $'\e[0;39m'
./bin/clio -u http://localhost:8889 get code fio.address -a bin/address.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/address.abi
echo -n $'\E[0;31m'
echo Testnet
echo -n $'\e[0;39m'
./bin/clio -u http://testnet.fioprotocol.io get code fio.address -a bin/address.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/address.abi
echo -n $'\E[0;31m'
echo Mainnet
echo -n $'\e[0;39m'
./bin/clio -u https://fio.greymass.com get code fio.address -a bin/address.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/address.abi

echo -n $'\e[0;34m'
echo fio.fee - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.fee/fio.fee.wasm
echo -n $'\e[0;34m'
echo fio.fee - Local ABI:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.fee/fio.fee.abi
echo -n $'\E[0;31m'
echo Local
echo -n $'\e[0;39m'
./bin/clio -u http://localhost:8889 get code fio.fee -a bin/fee.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/fee.abi
echo -n $'\E[0;31m'
echo Testnet
echo -n $'\e[0;39m'
./bin/clio -u http://testnet.fioprotocol.io get code fio.fee -a bin/fee.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/fee.abi
echo -n $'\E[0;31m'
echo Mainnet
echo -n $'\e[0;39m'
./bin/clio -u https://fio.greymass.com get code fio.fee -a bin/fee.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/fee.abi

echo -n $'\e[0;34m'
echo fio.request.obt - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.request.obt/fio.request.obt.wasm
echo -n $'\e[0;34m'
echo fio.request.obt - Local ABI:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.request.obt/fio.request.obt.abi
echo -n $'\E[0;31m'
echo Local
echo -n $'\e[0;39m'
./bin/clio -u http://localhost:8889 get code fio.reqobt -a bin/reqobt.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/reqobt.abi
echo -n $'\E[0;31m'
echo Testnet
echo -n $'\e[0;39m'
./bin/clio -u http://testnet.fioprotocol.io get code fio.reqobt -a bin/reqobt.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/reqobt.abi
echo -n $'\E[0;31m'
echo Mainnet
echo -n $'\e[0;39m'
./bin/clio -u https://fio.greymass.com get code fio.reqobt -a bin/reqobt.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/reqobt.abi

echo -n $'\e[0;34m'
echo fio.system - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.system/fio.system.wasm
echo -n $'\e[0;34m'
echo fio.system - Local ABI:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.system/fio.system.abi
echo -n $'\E[0;31m'
echo Local
echo -n $'\e[0;39m'
./bin/clio -u http://localhost:8889 get code eosio -a bin/system.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/system.abi
echo -n $'\E[0;31m'
echo Testnet
echo -n $'\e[0;39m'
./bin/clio -u http://testnet.fioprotocol.io get code eosio -a bin/system.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/system.abi
echo -n $'\E[0;31m'
echo Mainnet
echo -n $'\e[0;39m'
./bin/clio -u https://fio.greymass.com get code eosio -a bin/system.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/system.abi

echo -n $'\e[0;34m'
echo fio.token - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.token/fio.token.wasm
echo -n $'\e[0;34m'
echo fio.token - Local ABI:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.token/fio.token.abi
echo -n $'\E[0;31m'
echo Local
echo -n $'\e[0;39m'
./bin/clio -u http://localhost:8889 get code fio.token -a bin/token.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/token.abi
echo -n $'\E[0;31m'
echo Testnet
echo -n $'\e[0;39m'
./bin/clio -u http://testnet.fioprotocol.io get code fio.token -a bin/token.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/token.abi
echo -n $'\E[0;31m'
echo Mainnet
echo -n $'\e[0;39m'
./bin/clio -u https://fio.greymass.com get code fio.token -a bin/token.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/token.abi

echo -n $'\e[0;34m'
echo fio.tpid - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.tpid/fio.tpid.wasm
echo -n $'\e[0;34m'
echo fio.tpid - Local ABI:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.tpid/fio.tpid.abi
echo -n $'\E[0;31m'
echo Local
echo -n $'\e[0;39m'
./bin/clio -u http://localhost:8889 get code fio.tpid -a bin/tpid.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/tpid.abi
echo -n $'\E[0;31m'
echo Testnet
echo -n $'\e[0;39m'
./bin/clio -u http://testnet.fioprotocol.io get code fio.tpid -a bin/tpid.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/tpid.abi
echo -n $'\E[0;31m'
echo Mainnet
echo -n $'\e[0;39m'
./bin/clio -u https://fio.greymass.com get code fio.tpid -a bin/tpid.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/tpid.abi

echo -n $'\e[0;34m'
echo fio.treasury - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.treasury/fio.treasury.wasm
echo -n $'\e[0;34m'
echo fio.tresury - Local ABI:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.treasury/fio.treasury.abi
echo -n $'\E[0;31m'
echo Local
echo -n $'\e[0;39m'
./bin/clio -u http://localhost:8889 get code fio.treasury -a bin/treasury.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/treasury.abi
echo -n $'\E[0;31m'
echo Testnet
echo -n $'\e[0;39m'
./bin/clio -u http://testnet.fioprotocol.io get code fio.treasury -a bin/treasury.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/treasury.abi
echo -n $'\E[0;31m'
echo Mainnet
echo -n $'\e[0;39m'
./bin/clio -u https://fio.greymass.com get code fio.treasury -a bin/treasury.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/treasury.abi

echo -n $'\e[0;34m'
echo fio.staking - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.staking/fio.staking.wasm
echo -n $'\e[0;34m'
echo fio.staking - Local ABI:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.staking/fio.staking.abi
echo -n $'\E[0;31m'
echo Local
echo -n $'\e[0;39m'
./bin/clio -u http://localhost:8889 get code fio.staking -a staking.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/staking.abi
echo -n $'\E[0;31m'
echo Testnet
echo -n $'\e[0;39m'
./bin/clio -u http://testnet.fioprotocol.io get code fio.staking -a staking.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/staking.abi
echo -n $'\E[0;31m'
echo Mainnet
echo -n $'\e[0;39m'
./bin/clio -u https://fio.greymass.com get code fio.staking -a staking.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/staking.abi

echo -n $'\e[0;34m'
echo fio.escrow - Local WASM:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.escrow/fio.escrow.wasm
echo -n $'\e[0;34m'
echo fio.escrow - Local ABI:
echo -n $'\e[0;39m'
openssl sha256 < ../fio.contracts/build/contracts/fio.escrow/fio.escrow.abi
echo -n $'\E[0;31m'
echo Local
echo -n $'\e[0;39m'
./bin/clio -u http://localhost:8889 get code fio.escrow -a escrow.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/escrow.abi
echo -n $'\E[0;31m'
echo Testnet
echo -n $'\e[0;39m'
./bin/clio -u http://testnet.fioprotocol.io get code fio.escrow -a escrow.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/escrow.abi
echo -n $'\E[0;31m'
echo Mainnet
echo -n $'\e[0;39m'
./bin/clio -u https://fio.greymass.com get code fio.escrow -a escrow.abi
echo -n $'\E[0;31m'
echo ABI:
echo -n $'\e[0;39m'
openssl sha256 < bin/escrow.abi
