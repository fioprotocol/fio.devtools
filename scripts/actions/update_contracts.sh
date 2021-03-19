#!/usr/bin/env bash

# BUILD CONTRACTS

cd $oldpath/../.. || exit 0

if [ -d ./fio.contracts ]; then
  git pull
else
  git clone http://github.com/tvl83/fio.contracts -b develop
fi

cd fio.contracts/ || exit 0

pwd
./build.sh
echo COPYING ABI FILES FROM contracts TO ./build/contracts!
cp ./contracts/fio.fee/fio.fee.abi ./build/contracts/fio.fee/fio.fee.abi
cp ./contracts/fio.address/fio.address.abi ./build/contracts/fio.address/fio.address.abi
cp ./contracts/fio.request.obt/fio.request.obt.abi ./build/contracts/fio.request.obt/fio.request.obt.abi
cp ./contracts/fio.escrow/fio.escrow.abi ./build/contracts/fio.escrow/fio.escrow.abi

#FIO Directory Check
if [ -f ../fio.contracts/build/contracts/fio.system/fio.system.wasm ]; then
    fio_system_contract_name_path="$oldpath/../../fio.contracts/build/contracts/fio.system"
else
    echo 'No wasm file found at $PWD/build/contracts/fio.system'
fi

if [ -f ../fio.contracts/build/contracts/eosio.msig/eosio.msig.wasm ]; then
    eosio_msig_contract_name_path="$oldpath/../../fio.contracts/build/contracts/eosio.msig"
else
    echo 'No wasm file found at $PWD/build/contracts/eosio.msig'
fi

if [ -f ../fio.contracts/build/contracts/fio.token/fio.token.wasm ]; then
    fio_token_contract_name_path="$oldpath/../../fio.contracts/build/contracts/fio.token"
else
    echo 'No wasm file found at $PWD/build/contracts/fio.token'
fi
#Fio Name Directory Check
if [ -f ../fio.contracts/build/contracts/fio.address/fio.address.wasm ]; then
  fio_contract_name_path="$oldpath/../../fio.contracts/build/contracts/fio.address"
else
  echo 'No wasm file found at $PWD/build/contracts/fio.address'
fi

if [ -f ../fio.contracts/build/contracts/fio.fee/fio.fee.wasm ]; then
  fio_fee_name_path="$oldpath/../../fio.contracts/build/contracts/fio.fee"
else
  echo 'No wasm file found at $PWD/build/contracts/fio.fee'
fi

if [ -f ../fio.contracts/build/contracts/fio.request.obt/fio.request.obt.wasm ]; then
  fio_reqobt_name_path="$oldpath/../../fio.contracts/build/contracts/fio.request.obt"
else
  echo 'No wasm file found at $PWD/build/contracts/fio.request.obt'
fi

if [ -f ../fio.contracts/build/contracts/fio.tpid/fio.tpid.wasm ]; then
  fio_tpid_name_path="$oldpath/../../fio.contracts/build/contracts/fio.tpid"
else
  echo 'No wasm file found at $PWD/build/contracts/fio.tpid'
fi

if [ -f ../fio.contracts/build/contracts/fio.treasury/fio.treasury.wasm ]; then
  fio_treasury_name_path="$oldpath/../../fio.contracts/build/contracts/fio.treasury"
else
  echo "No wasm file found at $PWD/build/contracts/fio.treasury"
fi

if [ -f ../fio.contracts/build/contracts/eosio.wrap/eosio.wrap.wasm ]; then
  eosio_wrap_name_path="$oldpath/../../fio.contracts/build/contracts/eosio.wrap"
else
  echo "No wasm file found at $PWD/build/contracts/eosio.wrap"
fi

if [ -f ../fio.contracts/build/contracts/fio.escrow/fio.escrow.wasm ]; then
  fio_escrow_name_path="$oldpath/../../fio.contracts/build/contracts/fio.escrow"
else
  echo "No wasm file found at $PWD/../fio.contracts/build/contracts/fio.escrow"
fi

cd ~/fio/$vChoice/bin

walletkey=$(head -n 1 $oldpath/../walletkey.ini)
echo 'Using Password:' $walletkey
sleep 1s
./clio wallet unlock -n fio --password $walletkey

#Update Contracts..
./clio -u http://localhost:8879 set contract eosio $fio_system_contract_name_path fio.system.wasm fio.system.abi --permission eosio@active
sleep .5s
./clio -u http://localhost:8879 set contract fio.token $fio_token_contract_name_path fio.token.wasm fio.token.abi
sleep .5s
./clio -u http://localhost:8879 set contract fio.tpid $fio_tpid_name_path fio.tpid.wasm fio.tpid.abi
./clio -u http://localhost:8879 set contract eosio.msig $eosio_msig_contract_name_path eosio.msig.wasm eosio.msig.abi
./clio -u http://localhost:8879 set contract fio.address $fio_contract_name_path fio.address.wasm fio.address.abi --permission fio.address@active
./clio -u http://localhost:8879 set contract fio.reqobt $fio_reqobt_name_path fio.request.obt.wasm fio.request.obt.abi --permission fio.reqobt@active
sleep .5s
./clio -u http://localhost:8879 set contract fio.fee $fio_fee_name_path fio.fee.wasm fio.fee.abi --permission fio.fee@active
sleep .5s
./clio -u http://localhost:8889 set contract fio.treasury $fio_treasury_name_path fio.treasury.wasm fio.treasury.abi --permission fio.treasury@active
sleep .5s
./clio -u http://localhost:8889 set contract fio.escrow $fio_escrow_name_path fio.escrow.wasm fio.escrow.abi --permission fio.escrow@active

#./clio wallet lock -n fio