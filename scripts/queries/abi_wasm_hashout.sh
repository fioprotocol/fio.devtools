#!/usr/bin/env bash

# Notes
# Use jq -S to sort (alphabetically) file output. Same file content but
#   different order will produce a different hash
# clio get code output format: code hash: <hash>
# openssl dgst -sha256 <file> == openssl sha256 <file> == sha256sum <file>
# openssl sha256 output format: SHA256(bin/localnet.abi)= <hash>

declare -a contracts
contracts=(eosio.msig eosio.wrap fio.system fio.address fio.escrow fio.fee fio.oracle)
contracts+=(fio.request.obt fio.staking fio.token fio.tpid fio.treasury)

contract_dir="../fio.contracts/build/contracts/"
localhost_url="http://localhost:8889"
testnet_url="http://testnet.fioprotocol.io"
mainnet_url="https://fio.greymass.com"

max_padding=20

# Clean up any pre-existing output files
rm -f bin/localnet.abi bin/testnet.abi bin/mainnet.abi

do_compare_abiwasm_hashout() {
  for contract in "${contracts[@]}";
  do
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

    # Clean up output files
    rm -f bin/localnet.abi bin/testnet.abi bin/mainnet.abi
  done
}

do_net_abiwasm_hashout() {
  echo "Select *Net to generate hashs for:"
  read -p $'\n1. LocalNet 2. TestNet 3. MainNet\nChoose(#):' mChoice

  local net
  if [ $mChoice == 1 ]; then
    net='localnet'
  elif [ $mChoice == 2 ]; then
    net='testnet'
  elif [ $mChoice == 3 ]; then
    net='mainnet'
  else
    echo "Unknown choice, $mChoice, input. Exiting..."
    exit 1
  fi

  #local source="${2}"

  #if [[ -z $net || -z $source ]]; then
  if [[ -z $net ]]; then
    echo "Both a *Net (localnet, testnet, mainnet) and a Type (abi/wasm/all) are required! Exiting..."
    exit 1
  fi

  net_label=LocalNet
  url=$localhost_url
  if [[ $net == 'testnet' ]]; then
    net_label="TestNet"
    url=$testnet_url
  elif [[ $net == 'mainnet' ]]; then
    net_label="MainNet"
    url=$mainnet_url
  fi

  echo ${net_label}:
  echo $'\e[0;34m' ABI
  for contract in "${contracts[@]}";
  do
    contract_code=${contract}
    if [[ ${contract} == 'fio.system' ]]; then
      contract_code='eosio'
    elif [[ ${contract} == 'fio.request.obt' ]]; then
      contract_code='fio.reqobt'
    fi

    jq_file_filter='(.)'
    jq_net_filter='(.)'

    length=${#contract}
    padding=max_padding-length
    if [[ ${contract} != 'fio.oracle' ]]; then
      ./bin/clio -u ${url} get code ${contract_code} -a bin/${net}.abi >/dev/null
      #echo $'\e[0;39m' `openssl sha256 bin/localnet.abi | awk -F'= ' '{print $2}'`
      #echo -n $'\E[0;31m' "${contract}:"
      echo -n $'\E[0;31m'
      printf "%.20s" " ${contract}:                     "
      echo $'\e[0;39m' `jq -c -S ${jq_net_filter} bin/${net}.abi | openssl sha256 | awk -F'= ' '{print $2}'`
      rm bin/${net}.abi
    fi
  done

  echo
  echo $'\e[0;34m' WASM
  for contract in "${contracts[@]}";
  do
    contract_code=${contract}
    if [[ ${contract} == 'fio.system' ]]; then
      contract_code='eosio'
    elif [[ ${contract} == 'fio.request.obt' ]]; then
      contract_code='fio.reqobt'
    fi

    if [[ ${contract} != 'fio.oracle' ]]; then
      #echo -n $'\E[0;31m' "${contract}: "
      echo -n $'\E[0;31m'
      printf "%.20s" " ${contract}:                     "
      echo $'\e[0;39m' `./bin/clio -u ${url} get code ${contract_code} | awk -F': ' '{print $2}'`
    fi
  done
}

while getopts 'cnh' opt; do
  case "$opt" in
    c)
      echo "Output each ABI and WASM Hash for each type (file, *net) for each contract..."
      do_compare_abiwasm_hashout
      ;;

    n)
      echo "Generating Hashes..."
      do_net_abiwasm_hashout
      ;;

    ?|h)
      echo "Usage: $(basename $0) [-c] [-n]"
      exit 0
      ;;

  esac
done
shift "$(($OPTIND -1))"
