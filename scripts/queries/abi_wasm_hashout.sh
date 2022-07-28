#!/usr/bin/env bash

# Clean up any pre-existing output files
rm -f bin/localnet.abi bin/testnet.abi bin/mainnet.abi

# openssl dgst -sha256 <file> == openssl sha256 <file> == sha256sum <file>
# clio get code output format: code hash: <hash>
# openssl sha256 output format: SHA256(bin/localnet.abi)= <hash>
###### EOSIO.MSIG ######
echo -n $'\e[0;34m'
echo eosio.msig:
echo WASM
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `openssl sha256 ../fio.contracts/build/contracts/eosio.msig/eosio.msig.wasm | awk -F'= ' '{print $2}'`

echo -n $'\E[0;31m' LocalNet:
echo $'\e[0;39m' `./bin/clio -u http://localhost:8889 get code eosio.msig | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'TestNet: '
echo $'\e[0;39m' `./bin/clio -u http://testnet.fioprotocol.io get code eosio.msig | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'MainNet: '
echo $'\e[0;39m' `./bin/clio -u https://fio.greymass.com get code eosio.msig | awk -F': ' '{print $2}'`

echo -n $'\e[0;34m'
echo ABI
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `jq -c -S 'del(.____comment)' ../fio.contracts/build/contracts/eosio.msig/eosio.msig.abi | openssl sha256  | awk -F'= ' '{print $2}'`

./bin/clio -u http://localhost:8889 get code eosio.msig -a bin/localnet.abi >/dev/null
echo -n $'\E[0;31m' LocalNet:
#echo $'\e[0;39m' `openssl sha256 bin/localnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/localnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u http://testnet.fioprotocol.io get code eosio.msig -a bin/testnet.abi >/dev/null
echo -n $'\E[0;31m' 'TestNet: '
#echo $'\e[0;39m' `openssl sha256 bin/testnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/testnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u https://fio.greymass.com get code eosio.msig -a bin/mainnet.abi >/dev/null
echo -n $'\E[0;31m' 'MainNet: '
#echo $'\e[0;39m' `openssl sha256 bin/mainnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/mainnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

rm -f bin/localnet.abi bin/testnet.abi bin/mainnet.abi

###### EOSIO.WRAP ######
# Needed for genesis only
echo
echo -n $'\e[0;34m'
echo eosio.wrap:
echo WASM
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `openssl sha256 ../fio.contracts/build/contracts/eosio.wrap/eosio.wrap.wasm | awk -F'= ' '{print $2}'`

echo -n $'\E[0;31m' LocalNet:
echo $'\e[0;39m' `./bin/clio -u http://localhost:8889 get code eosio.wrap | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'TestNet: '
echo $'\e[0;39m' `./bin/clio -u http://testnet.fioprotocol.io get code eosio.wrap | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'MainNet: '
echo $'\e[0;39m' `./bin/clio -u https://fio.greymass.com get code eosio.wrap | awk -F': ' '{print $2}'`

echo -n $'\e[0;34m'
echo ABI
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `jq -c -S 'del(.____comment)' ../fio.contracts/build/contracts/eosio.wrap/eosio.wrap.abi | openssl sha256  | awk -F'= ' '{print $2}'`

./bin/clio -u http://localhost:8889 get code eosio.wrap -a bin/localnet.abi >/dev/null
echo -n $'\E[0;31m' LocalNet:
#echo $'\e[0;39m' `openssl sha256 bin/localnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/localnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u http://testnet.fioprotocol.io get code eosio.wrap -a bin/testnet.abi >/dev/null
echo -n $'\E[0;31m' 'TestNet: '
#echo $'\e[0;39m' `openssl sha256 bin/testnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/testnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u https://fio.greymass.com get code eosio.wrap -a bin/mainnet.abi >/dev/null
echo -n $'\E[0;31m' 'MainNet: '
#echo $'\e[0;39m' `openssl sha256 bin/mainnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/mainnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

rm -f bin/localnet.abi bin/testnet.abi bin/mainnet.abi

###### FIO.SYSTEM ######
echo
echo -n $'\e[0;34m'
echo fio.system:
echo WASM
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `openssl sha256 ../fio.contracts/build/contracts/fio.system/fio.system.wasm | awk -F'= ' '{print $2}'`

echo -n $'\E[0;31m' LocalNet:
echo $'\e[0;39m' `./bin/clio -u http://localhost:8889 get code eosio | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'TestNet: '
echo $'\e[0;39m' `./bin/clio -u http://testnet.fioprotocol.io get code eosio | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'MainNet: '
echo $'\e[0;39m' `./bin/clio -u https://fio.greymass.com get code eosio | awk -F': ' '{print $2}'`

echo -n $'\e[0;34m'
echo ABI
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `jq -c -S 'del(.____comment)' ../fio.contracts/build/contracts/fio.system/fio.system.abi | openssl sha256  | awk -F'= ' '{print $2}'`

./bin/clio -u http://localhost:8889 get code eosio -a bin/localnet.abi >/dev/null
echo -n $'\E[0;31m' LocalNet:
#echo $'\e[0;39m' `openssl sha256 bin/localnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/localnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u http://testnet.fioprotocol.io get code eosio -a bin/testnet.abi >/dev/null
echo -n $'\E[0;31m' 'TestNet: '
#echo $'\e[0;39m' `openssl sha256 bin/testnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/testnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u https://fio.greymass.com get code eosio -a bin/mainnet.abi >/dev/null
echo -n $'\E[0;31m' 'MainNet: '
#echo $'\e[0;39m' `openssl sha256 bin/mainnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/mainnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

rm -f bin/localnet.abi bin/testnet.abi bin/mainnet.abi

###### FIO.ADDRESS ######
echo
echo -n $'\e[0;34m'
echo fio.address:
echo WASM
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `openssl sha256 ../fio.contracts/build/contracts/fio.address/fio.address.wasm | awk -F'= ' '{print $2}'`

echo -n $'\E[0;31m' LocalNet:
echo $'\e[0;39m' `./bin/clio -u http://localhost:8889 get code fio.address | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'TestNet: '
echo $'\e[0;39m' `./bin/clio -u http://testnet.fioprotocol.io get code fio.address | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'MainNet: '
echo $'\e[0;39m' `./bin/clio -u https://fio.greymass.com get code fio.address | awk -F': ' '{print $2}'`

echo -n $'\e[0;34m'
echo ABI
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `jq -c -S '.' ../fio.contracts/build/contracts/fio.address/fio.address.abi | openssl sha256  | awk -F'= ' '{print $2}'`

./bin/clio -u http://localhost:8889 get code fio.address -a bin/localnet.abi >/dev/null
echo -n $'\E[0;31m' LocalNet:
#echo $'\e[0;39m' `openssl sha256 bin/localnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S '.' bin/localnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u http://testnet.fioprotocol.io get code fio.address -a bin/testnet.abi >/dev/null
echo -n $'\E[0;31m' 'TestNet: '
#echo $'\e[0;39m' `openssl sha256 bin/testnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S '.' bin/testnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u https://fio.greymass.com get code fio.address -a bin/mainnet.abi >/dev/null
echo -n $'\E[0;31m' 'MainNet: '
#echo $'\e[0;39m' `openssl sha256 bin/mainnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S '.' bin/mainnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

rm -f bin/localnet.abi bin/testnet.abi bin/mainnet.abi

###### FIO.ESCROW ######
echo
echo -n $'\e[0;34m'
echo fio.escrow:
echo WASM
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `openssl sha256 ../fio.contracts/build/contracts/fio.escrow/fio.escrow.wasm | awk -F'= ' '{print $2}'`

echo -n $'\E[0;31m' LocalNet:
echo $'\e[0;39m' `./bin/clio -u http://localhost:8889 get code fio.escrow | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'TestNet: '
echo $'\e[0;39m' `./bin/clio -u http://testnet.fioprotocol.io get code fio.escrow | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'MainNet: '
echo $'\e[0;39m' `./bin/clio -u https://fio.greymass.com get code fio.escrow | awk -F': ' '{print $2}'`

echo -n $'\e[0;34m'
echo ABI
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `jq -c -S 'del(.____comment)' ../fio.contracts/build/contracts/fio.escrow/fio.escrow.abi | openssl sha256  | awk -F'= ' '{print $2}'`

./bin/clio -u http://localhost:8889 get code fio.escrow -a bin/localnet.abi >/dev/null
echo -n $'\E[0;31m' LocalNet:
#echo $'\e[0;39m' `openssl sha256 bin/localnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/localnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u http://testnet.fioprotocol.io get code fio.escrow -a bin/testnet.abi >/dev/null
echo -n $'\E[0;31m' 'TestNet: '
#echo $'\e[0;39m' `openssl sha256 bin/testnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/testnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u https://fio.greymass.com get code fio.escrow -a bin/mainnet.abi >/dev/null
echo -n $'\E[0;31m' 'MainNet: '
#echo $'\e[0;39m' `openssl sha256 bin/mainnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/mainnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

rm -f bin/localnet.abi bin/testnet.abi bin/mainnet.abi

###### FIO.FEE ######
echo
echo -n $'\e[0;34m'
echo fio.fee:
echo WASM
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `openssl sha256 ../fio.contracts/build/contracts/fio.fee/fio.fee.wasm | awk -F'= ' '{print $2}'`

echo -n $'\E[0;31m' LocalNet:
echo $'\e[0;39m' `./bin/clio -u http://localhost:8889 get code fio.fee | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'TestNet: '
echo $'\e[0;39m' `./bin/clio -u http://testnet.fioprotocol.io get code fio.fee | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'MainNet: '
echo $'\e[0;39m' `./bin/clio -u https://fio.greymass.com get code fio.fee | awk -F': ' '{print $2}'`

echo -n $'\e[0;34m'
echo ABI
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `jq -c -S 'del(.____comment)' ../fio.contracts/build/contracts/fio.fee/fio.fee.abi | openssl sha256  | awk -F'= ' '{print $2}'`

./bin/clio -u http://localhost:8889 get code fio.fee -a bin/localnet.abi >/dev/null
echo -n $'\E[0;31m' LocalNet:
#echo $'\e[0;39m' `openssl sha256 bin/localnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/localnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u http://testnet.fioprotocol.io get code fio.fee -a bin/testnet.abi >/dev/null
echo -n $'\E[0;31m' 'TestNet: '
#echo $'\e[0;39m' `openssl sha256 bin/testnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/testnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u https://fio.greymass.com get code fio.fee -a bin/mainnet.abi >/dev/null
echo -n $'\E[0;31m' 'MainNet: '
#echo $'\e[0;39m' `openssl sha256 bin/mainnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/mainnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

rm -f bin/localnet.abi bin/testnet.abi bin/mainnet.abi

###### FIO.ORACLE ######
echo
echo -n $'\e[0;34m'
echo fio.oracle:
echo WASM
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `openssl sha256 ../fio.contracts/build/contracts/fio.oracle/fio.oracle.wasm | awk -F'= ' '{print $2}'`

echo -n $'\E[0;31m' LocalNet:
echo $'\e[0;39m' `./bin/clio -u http://localhost:8889 get code fio.oracle | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'TestNet: '
echo $'\e[0;39m' `./bin/clio -u http://testnet.fioprotocol.io get code fio.oracle | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'MainNet: '
#echo $'\e[0;39m' `./bin/clio -u https://fio.greymass.com get code fio.oracle | awk -F': ' '{print $2}'`
echo $'\e[0;39m' 'N/A'

echo -n $'\e[0;34m'
echo ABI
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `jq -c -S 'del(.____comment)' ../fio.contracts/build/contracts/fio.oracle/fio.oracle.abi | openssl sha256  | awk -F'= ' '{print $2}'`

./bin/clio -u http://localhost:8889 get code fio.oracle -a bin/localnet.abi >/dev/null
echo -n $'\E[0;31m' LocalNet:
#echo $'\e[0;39m' `openssl sha256 bin/localnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.types)' bin/localnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u http://testnet.fioprotocol.io get code fio.oracle -a bin/testnet.abi >/dev/null
echo -n $'\E[0;31m' 'TestNet: '
#echo $'\e[0;39m' `openssl sha256 bin/testnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.types)' bin/testnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

#./bin/clio -u https://fio.greymass.com get code fio.oracle -a bin/mainnet.abi >/dev/null
echo -n $'\E[0;31m' 'MainNet: '
#echo $'\e[0;39m' `openssl sha256 bin/mainnet.abi | awk -F'= ' '{print $2}'`
#echo $'\e[0;39m' `jq -c -S 'del(.types)' bin/mainnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' 'N/A'

rm -f bin/localnet.abi bin/testnet.abi bin/mainnet.abi

###### FIO.REQUEST.OBT ######
echo
echo -n $'\e[0;34m'
echo fio.reqobt:
echo WASM
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `openssl sha256 ../fio.contracts/build/contracts/fio.request.obt/fio.request.obt.wasm | awk -F'= ' '{print $2}'`

echo -n $'\E[0;31m' LocalNet:
echo $'\e[0;39m' `./bin/clio -u http://localhost:8889 get code fio.reqobt | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'TestNet: '
echo $'\e[0;39m' `./bin/clio -u http://testnet.fioprotocol.io get code fio.reqobt | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'MainNet: '
echo $'\e[0;39m' `./bin/clio -u https://fio.greymass.com get code fio.reqobt | awk -F': ' '{print $2}'`

echo -n $'\e[0;34m'
echo ABI
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `jq -c -S 'del(.____comment)' ../fio.contracts/build/contracts/fio.request.obt/fio.request.obt.abi | openssl sha256  | awk -F'= ' '{print $2}'`

./bin/clio -u http://localhost:8889 get code fio.reqobt -a bin/localnet.abi >/dev/null
echo -n $'\E[0;31m' LocalNet:
#echo $'\e[0;39m' `openssl sha256 bin/localnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S '.' bin/localnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u http://testnet.fioprotocol.io get code fio.reqobt -a bin/testnet.abi >/dev/null
echo -n $'\E[0;31m' 'TestNet: '
#echo $'\e[0;39m' `openssl sha256 bin/testnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S '.' bin/testnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u https://fio.greymass.com get code fio.reqobt -a bin/mainnet.abi >/dev/null
echo -n $'\E[0;31m' 'MainNet: '
#echo $'\e[0;39m' `openssl sha256 bin/mainnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S '.' bin/mainnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

rm -f bin/localnet.abi bin/testnet.abi bin/mainnet.abi

###### FIO.STAKING ######
echo
echo -n $'\e[0;34m'
echo fio.staking:
echo WASM
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `openssl sha256 ../fio.contracts/build/contracts/fio.staking/fio.staking.wasm | awk -F'= ' '{print $2}'`

echo -n $'\E[0;31m' LocalNet:
echo $'\e[0;39m' `./bin/clio -u http://localhost:8889 get code fio.staking | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'TestNet: '
echo $'\e[0;39m' `./bin/clio -u http://testnet.fioprotocol.io get code fio.staking | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'MainNet: '
echo $'\e[0;39m' `./bin/clio -u https://fio.greymass.com get code fio.staking | awk -F': ' '{print $2}'`

echo -n $'\e[0;34m'
echo ABI
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `jq -c -S 'del(.____comment)' ../fio.contracts/build/contracts/fio.staking/fio.staking.abi | openssl sha256  | awk -F'= ' '{print $2}'`

./bin/clio -u http://localhost:8889 get code fio.staking -a bin/localnet.abi >/dev/null
echo -n $'\E[0;31m' LocalNet:
#echo $'\e[0;39m' `openssl sha256 bin/localnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/localnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u http://testnet.fioprotocol.io get code fio.staking -a bin/testnet.abi >/dev/null
echo -n $'\E[0;31m' 'TestNet: '
#echo $'\e[0;39m' `openssl sha256 bin/testnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/testnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u https://fio.greymass.com get code fio.staking -a bin/mainnet.abi >/dev/null
echo -n $'\E[0;31m' 'MainNet: '
#echo $'\e[0;39m' `openssl sha256 bin/mainnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/mainnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

rm -f bin/localnet.abi bin/testnet.abi bin/mainnet.abi

###### FIO.TOKEN ######
echo
echo -n $'\e[0;34m'
echo fio.token:
echo WASM
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `openssl sha256 ../fio.contracts/build/contracts/fio.token/fio.token.wasm | awk -F'= ' '{print $2}'`

echo -n $'\E[0;31m' LocalNet:
echo $'\e[0;39m' `./bin/clio -u http://localhost:8889 get code fio.token | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'TestNet: '
echo $'\e[0;39m' `./bin/clio -u http://testnet.fioprotocol.io get code fio.token | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'MainNet: '
echo $'\e[0;39m' `./bin/clio -u https://fio.greymass.com get code fio.token | awk -F': ' '{print $2}'`

echo -n $'\e[0;34m'
echo ABI
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `jq -c -S 'del(.____comment)' ../fio.contracts/build/contracts/fio.token/fio.token.abi | openssl sha256  | awk -F'= ' '{print $2}'`

./bin/clio -u http://localhost:8889 get code fio.token -a bin/localnet.abi >/dev/null
echo -n $'\E[0;31m' LocalNet:
#echo $'\e[0;39m' `openssl sha256 bin/localnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/localnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u http://testnet.fioprotocol.io get code fio.token -a bin/testnet.abi >/dev/null
echo -n $'\E[0;31m' 'TestNet: '
#echo $'\e[0;39m' `openssl sha256 bin/testnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/testnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u https://fio.greymass.com get code fio.token -a bin/mainnet.abi >/dev/null
echo -n $'\E[0;31m' 'MainNet: '
#echo $'\e[0;39m' `openssl sha256 bin/mainnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/mainnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

rm -f bin/localnet.abi bin/testnet.abi bin/mainnet.abi

###### FIO.TPID ######
echo
echo -n $'\e[0;34m'
echo fio.tpid:
echo WASM
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `openssl sha256 ../fio.contracts/build/contracts/fio.tpid/fio.tpid.wasm | awk -F'= ' '{print $2}'`

echo -n $'\E[0;31m' LocalNet:
echo $'\e[0;39m' `./bin/clio -u http://localhost:8889 get code fio.tpid | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'TestNet: '
echo $'\e[0;39m' `./bin/clio -u http://testnet.fioprotocol.io get code fio.tpid | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'MainNet: '
echo $'\e[0;39m' `./bin/clio -u https://fio.greymass.com get code fio.tpid | awk -F': ' '{print $2}'`

echo -n $'\e[0;34m'
echo ABI
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `jq -c -S 'del(.____comment)' ../fio.contracts/build/contracts/fio.tpid/fio.tpid.abi | openssl sha256  | awk -F'= ' '{print $2}'`

./bin/clio -u http://localhost:8889 get code fio.tpid -a bin/localnet.abi >/dev/null
echo -n $'\E[0;31m' LocalNet:
#echo $'\e[0;39m' `openssl sha256 bin/localnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/localnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u http://testnet.fioprotocol.io get code fio.tpid -a bin/testnet.abi >/dev/null
echo -n $'\E[0;31m' 'TestNet: '
#echo $'\e[0;39m' `openssl sha256 bin/testnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/testnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u https://fio.greymass.com get code fio.tpid -a bin/mainnet.abi >/dev/null
echo -n $'\E[0;31m' 'MainNet: '
#echo $'\e[0;39m' `openssl sha256 bin/mainnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S 'del(.error_messages)' bin/mainnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

rm -f bin/localnet.abi bin/testnet.abi bin/mainnet.abi

###### FIO.TREASURY ######
echo
echo -n $'\e[0;34m'
echo fio.treasury:
echo WASM
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `openssl sha256 ../fio.contracts/build/contracts/fio.treasury/fio.treasury.wasm | awk -F'= ' '{print $2}'`

echo -n $'\E[0;31m' LocalNet:
echo $'\e[0;39m' `./bin/clio -u http://localhost:8889 get code fio.treasury | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'TestNet: '
echo $'\e[0;39m' `./bin/clio -u http://testnet.fioprotocol.io get code fio.treasury | awk -F': ' '{print $2}'`

echo -n $'\E[0;31m' 'MainNet: '
echo $'\e[0;39m' `./bin/clio -u https://fio.greymass.com get code fio.treasury | awk -F': ' '{print $2}'`

echo -n $'\e[0;34m'
echo ABI
echo -n $'\E[0;31m' 'File:    '
echo $'\e[0;39m' `jq -c -S '.' ../fio.contracts/build/contracts/fio.treasury/fio.treasury.abi | openssl sha256  | awk -F'= ' '{print $2}'`

./bin/clio -u http://localhost:8889 get code fio.treasury -a bin/localnet.abi >/dev/null
echo -n $'\E[0;31m' LocalNet:
#echo $'\e[0;39m' `openssl sha256 bin/localnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S '.' bin/localnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u http://testnet.fioprotocol.io get code fio.treasury -a bin/testnet.abi >/dev/null
echo -n $'\E[0;31m' 'TestNet: '
#echo $'\e[0;39m' `openssl sha256 bin/testnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S '.' bin/testnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

./bin/clio -u https://fio.greymass.com get code fio.treasury -a bin/mainnet.abi >/dev/null
echo -n $'\E[0;31m' 'MainNet: '
#echo $'\e[0;39m' `openssl sha256 bin/mainnet.abi | awk -F'= ' '{print $2}'`
echo $'\e[0;39m' `jq -c -S '.' bin/mainnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

# Clean up output files
rm -f bin/localnet.abi bin/testnet.abi bin/mainnet.abi
