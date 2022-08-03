#!/usr/bin/env bash

# Clean up any pre-existing output files
rm -f bin/localnet.abi bin/testnet.abi bin/mainnet.abi

# openssl dgst -sha256 <file> == openssl sha256 <file> == sha256sum <file>
# clio get code output format: code hash: <hash>
# openssl sha256 output format: SHA256(bin/localnet.abi)= <hash>

declare -a contracts
contracts=(eosio.msig eosio.wrap fio.system fio.address fio.escrow fio.fee fio.oracle)
contracts+=(fio.request.obt fio.staking fio.token fio.tpid fio.treasury)

contract_dir="../fio.contracts/build/contracts/"
localhost_url="http://localhost:8889"
testnet_url="http://testnet.fioprotocol.io"
mainnet_url="https://fio.greymass.com"

for contract in "${contracts[@]}";
do
  # Clean up any pre-existing output files
  rm -f bin/localnet.abi bin/testnet.abi bin/mainnet.abi

  contract_code=${contract}
  if [[ ${contract} == 'fio.system' ]]; then
    contract_code='eosio'
  elif [[ ${contract} == 'fio.request.obt' ]]; then
    contract_code='fio.reqobt'
  fi

  jq_file_filter='del(.____comment)'
  jq_net_filter='del(.error_messages)'
  if [[ ${contract} == 'fio.address' ||  ${contract} == 'fio.treasury' ]]; then
    jq_file_filter='.'
    jq_net_filter='.'
  elif [[ ${contract} == 'fio.fee' ]]; then
    jq_net_filter='del(.variants)'
  elif [[ ${contract} == 'fio.oracle' ]]; then
    jq_net_filter='del(.types)'
  elif [[ ${contract} == 'fio.request.obt' ]]; then
    jq_net_filter='.'
  fi

  echo
  echo "${contract}"
  echo $'\e[0;34m' WASM
  echo -n $'\E[0;31m' 'File:    '
  echo $'\e[0;39m' `openssl sha256 ${contract_dir}/${contract}/${contract}.wasm | awk -F'= ' '{print $2}'`

  echo -n $'\E[0;31m' LocalNet:
  echo $'\e[0;39m' `./bin/clio -u ${localhost_url} get code ${contract_code} | awk -F': ' '{print $2}'`

  echo -n $'\E[0;31m' 'TestNet: '
  echo $'\e[0;39m' `./bin/clio -u ${testnet_url} get code ${contract_code} | awk -F': ' '{print $2}'`

  if [[ ${contract} != 'fio.oracle' ]]; then
    echo -n $'\E[0;31m' 'MainNet: '
    echo $'\e[0;39m' `./bin/clio -u ${mainnet_url} get code ${contract_code} | awk -F': ' '{print $2}'`
  fi

  echo $'\e[0;34m' ABI
  echo -n $'\E[0;31m' 'File:    '
  echo $'\e[0;39m' `jq -c -S ${jq_file_filter} ${contract_dir}/${contract}/${contract}.abi | openssl sha256  | awk -F'= ' '{print $2}'`

  ./bin/clio -u ${localhost_url} get code ${contract_code} -a bin/localnet.abi >/dev/null
  echo -n $'\E[0;31m' LocalNet:
  #echo $'\e[0;39m' `openssl sha256 bin/localnet.abi | awk -F'= ' '{print $2}'`
  echo $'\e[0;39m' `jq -c -S ${jq_net_filter} bin/localnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

  ./bin/clio -u ${testnet_url} get code ${contract_code} -a bin/testnet.abi >/dev/null
  echo -n $'\E[0;31m' 'TestNet: '
  #echo $'\e[0;39m' `openssl sha256 bin/testnet.abi | awk -F'= ' '{print $2}'`
  echo $'\e[0;39m' `jq -c -S ${jq_net_filter} bin/testnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`

  if [[ ${contract} != 'fio.oracle' ]]; then
    ./bin/clio -u ${mainnet_url} get code ${contract_code} -a bin/mainnet.abi >/dev/null
    echo -n $'\E[0;31m' 'MainNet: '
    #echo $'\e[0;39m' `openssl sha256 bin/mainnet.abi | awk -F'= ' '{print $2}'`
    echo $'\e[0;39m' `jq -c -S ${jq_net_filter} bin/mainnet.abi | openssl sha256 | awk -F'= ' '{print $2}'`
  fi
done

# Clean up any pre-existing output files
rm -f bin/localnet.abi bin/testnet.abi bin/mainnet.abi
