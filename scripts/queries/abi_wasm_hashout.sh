#!/usr/bin/env bash

# Notes
# Use jq -S to sort file output (alphabetically) . Same file content but
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

function unique_values() {
  typeset i
  for i do
    [ "$1" = "$i" ] || return 1
  done
  return 0
}

function count_unique() {
  local LC_ALL=C

  if [ "$#" -eq 0 ] ; then 
    echo 0
  else
    echo "$(printf "%s\000" "$@" |
      sort --zero-terminated --unique |
        grep --null-data --count .)"
  fi
}

# Clean up any pre-existing output files
rm -f bin/localnet.abi bin/testnet.abi bin/mainnet.abi

do_compare_abiwasm_hashout() {
  declare -a abi_hashes
  declare -a wasm_hashes

  for contract in "${contracts[@]}";
  do
    # Init the array
    abi_hashes=()
    wasm_hashes=()

    # Some contracts have a different contract code (when using clio get code)
    contract_code=${contract}
    if [[ ${contract} == 'fio.system' ]]; then
      contract_code='eosio'
    elif [[ ${contract} == 'fio.request.obt' ]]; then
      contract_code='fio.reqobt'
    fi

    # Several contract have slight different key/value pairs. Use jq to delete these and then
    # generate the hash for comparison. Note, a filter of '.' is no filter at all, i.e. in=out
    #   "____comment":""
    #   "error_messages":[]
    #   "types":[]
    #   "variants":[]
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
    echo -n $'\e[0;36m' ' File:    '
    if [[ -r ${contract_dir}/${contract}/${contract}.abi ]]; then
      hash=$(jq -c -S ${jq_file_filter} ${contract_dir}/${contract}/${contract}.abi | openssl sha256  | awk -F'= ' '{print $2}')
      abi_hashes+=($hash)
      echo $'\e[0;39m' ${hash}
    else
      echo -e "\e[0m \e[41m!!! Contract not found !!!\e[0m"
    fi

    echo -n $'\e[0;36m' ' LocalNet:'
    ./bin/clio -u ${localhost_url} get code ${contract_code} -a bin/localnet.abi >/dev/null
    if [[ $? -eq 0 ]]; then
      hash=$(jq -c -S ${jq_net_filter} bin/localnet.abi | openssl sha256 | awk -F'= ' '{print $2}')
      abi_hashes+=($hash)
      echo $'\e[0;39m' ${hash}
    else
      echo -e "\e[0m \e[41m!!! Contract not found !!!\e[0m"
    fi

    echo -n $'\e[0;36m' ' TestNet: '
    ./bin/clio -u ${testnet_url} get code ${contract_code} -a bin/testnet.abi >/dev/null
    if [[ $? -eq 0 ]]; then
      hash=$(jq -c -S ${jq_net_filter} bin/testnet.abi | openssl sha256 | awk -F'= ' '{print $2}')
      abi_hashes+=($hash)
      echo $'\e[0;39m' ${hash}
    else
      echo -e "\e[0m \e[41m!!! Contract not found !!!\e[0m"
    fi

    echo -n $'\e[0;36m' ' MainNet: '
    ./bin/clio -u ${mainnet_url} get code ${contract_code} -a bin/mainnet.abi &>/dev/null
    if [[ $? -eq 0 ]]; then
      hash=$(jq -c -S ${jq_net_filter} bin/mainnet.abi | openssl sha256 | awk -F'= ' '{print $2}')
      abi_hashes+=($hash)
      echo $'\e[0;39m' ${hash}
    else
      echo -e "\e[0m \e[41m!!! Contract not found !!!\e[0m"
    fi

    echo $'\e[0;34m' WASM
    echo -n $'\e[0;36m' ' File:    '
    if [[ -r ${contract_dir}/${contract}/${contract}.wasm ]]; then
      hash=$(openssl sha256 ${contract_dir}/${contract}/${contract}.wasm | awk -F'= ' '{print $2}')
      wasm_hashes+=($hash)
      echo $'\e[0;39m' ${hash}
    else
      echo -e "\e[0m \e[41m!!! Contract not found !!!\e[0m"
    fi

    echo -n $'\e[0;36m' ' LocalNet:'
    code=$(./bin/clio -u ${localhost_url} get code ${contract_code} 2>/dev/null)
    if [[ $? -eq 0 ]]; then
      hash=$(echo ${code} | awk -F': ' '{print $2}')
      wasm_hashes+=($hash)
      echo $'\e[0;39m' ${hash}
    else
      echo -e "\e[0m \e[41m!!! Contract not found !!!\e[0m"
    fi

    echo -n $'\e[0;36m' ' TestNet: '
    code=$(./bin/clio -u ${testnet_url} get code ${contract_code} 2>/dev/null)
    if [[ $? -eq 0 ]]; then
      hash=$(echo ${code} | awk -F': ' '{print $2}')
      wasm_hashes+=($hash)
      echo $'\e[0;39m' ${hash}
    else
      echo -e "\e[0m \e[41m!!! Contract not found !!!\e[0m"
    fi

    echo -n $'\e[0;36m' ' MainNet: '
    code=$(./bin/clio -u ${mainnet_url} get code ${contract_code} 2>/dev/null)
    if [[ $? -eq 0 ]]; then
      hash=$(echo ${code} | awk -F': ' '{print $2}')
      wasm_hashes+=($hash)
      echo $'\e[0;39m' ${hash}
    else
      echo -e "\e[0m \e[41m!!! Contract not found !!!\e[0m"
    fi

    # Clean up output files
    rm -f bin/localnet.abi bin/testnet.abi bin/mainnet.abi

    # Output hash difference between the net pairs; localnet/testnet, testnet/mainnet
    lt_list=()
    tm_list=()
    if [[ "$(count_unique "${abi_hashes[@]}")" -ne 1 ]]; then
      lt_list=("${abi_hashes[@]:1:2}")
      if ! unique_values "${lt_list[@]}"; then
        echo
        echo -e "\e[41m LocalNet/TestNet ABI Hashes DIFFER!\e[0m"
        echo -n $'\e[0;31m  LocalNet:'
        echo $'\e[0;39m' ${lt_list[0]}
        echo -n $'\e[0;31m  TestNet: '
        echo $'\e[0;39m' ${lt_list[1]}
      fi
      tm_list=("${abi_hashes[@]:2:3}")
      if ! unique_values "${tm_list[@]}"; then
        echo
        echo -e "\e[41m TestNet/MainNet ABI Hashes DIFFER!\e[0m"
        echo -n $'\e[0;31m  TestNet: '
        echo $'\e[0;39m' ${tm_list[0]}
        echo -n $'\e[0;31m  MainNet: '
        echo $'\e[0;39m' ${tm_list[1]}
      fi
    fi
    if [[ "$(count_unique "${wasm_hashes[@]}")" -ne 1 ]]; then
      lt_list=("${wasm_hashes[@]:1:2}")
      if ! unique_values "${lt_list[@]}"; then
        echo
        echo -e "\e[41m LocalNet/TestNet WASM Hashes DIFFER!\e[0m"
        echo -n $'\e[0;31m  LocalNet:'
        echo $'\e[0;39m' ${lt_list[0]}
        echo -n $'\e[0;31m  TestNet: '
        echo $'\e[0;39m' ${lt_list[1]}
      fi
      tm_list=("${wasm_hashes[@]:2:3}")
      if ! unique_values "${tm_list[@]}"; then
        echo
        echo -e "\e[41m TestNet/MainNet WASM Hashes DIFFER!\e[0m"
        echo -n $'\e[0;31m  TestNet: '
        echo $'\e[0;39m' ${tm_list[0]}
        echo -n $'\e[0;31m  MainNet: '
        echo $'\e[0;39m' ${tm_list[1]}
      fi
    fi
  done
}

# Generate hashes as they are retrieved from *Net, without pre-processing to remove
# unwanted elements (for comparison)
do_net_abiwasm_hashout() {
  local markup="${1}"

  echo -e "\nSelect *Net:"
  read -p $'1. LocalNet 2. TestNet 3. MainNet\nChoose(#):' mChoice

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

  if [[ -z $net ]]; then
    echo "*Net (localnet, testnet, mainnet) is required! Exiting..."
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

  echo
  if [[ -z ${markup} ]]; then
    echo ${net_label}:
    echo $'\e[0;34m' ABI
  else
    echo "## vX.Y.Z"
    echo "#### ABI"
    echo '| Contract | Hash | Update |'
    echo '| -------- | ---- | ------ |'
  fi

  for contract in "${contracts[@]}";
  do
    contract_code=${contract}
    if [[ ${contract} == 'fio.system' ]]; then
      contract_code='eosio'
    elif [[ ${contract} == 'fio.request.obt' ]]; then
      contract_code='fio.reqobt'
    fi

    if [[ -z ${markup} ]]; then
      do_abi $net $url $contract $contract_code
    else
      do_abi_markup $net $url $contract $contract_code
    fi
  done

  echo
  if [[ -z ${markup} ]]; then
    echo $'\e[0;34m' WASM
  else
    echo "#### WASM"
    echo '| Contract | Hash | Update |'
    echo '| -------- | ---- | ------ |'
  fi

  for contract in "${contracts[@]}";
  do
    contract_code=${contract}
    if [[ ${contract} == 'fio.system' ]]; then
      contract_code='eosio'
    elif [[ ${contract} == 'fio.request.obt' ]]; then
      contract_code='fio.reqobt'
    fi

    if [[ -z ${markup} ]]; then
      do_wasm $url $contract $contract_code
    else
      do_wasm_markup $url $contract $contract_code
    fi    
  done
}

function do_abi() {
  local net=$1
  local url=$2
  local contract=$3
  local contract_code=$4

  jq_net_filter='.'

  echo -n $'\e[0;31m'
  printf "%.20s" " ${contract}:                     "

  ./bin/clio -u ${url} get code ${contract_code} -a bin/${net}.abi &>/dev/null
  if [[ $? -eq 0 ]]; then
    hash=$(jq -c -S ${jq_net_filter} bin/${net}.abi | openssl sha256 | awk -F'= ' '{print $2}')
    echo $'\e[0;39m' "${hash}"
    rm bin/${net}.abi
  else
    echo -e "\e[0m \e[41m!!! Contract not found !!!\e[0m"
  fi
}

function do_abi_markup() {
  local net=$1
  local url=$2
  local contract=$3
  local contract_code=$4

  jq_net_filter='.'

  echo -n "| ${contract} |"

  ./bin/clio -u ${url} get code ${contract_code} -a bin/${net}.abi &>/dev/null
  if [[ $? -eq 0 ]]; then
    hash=$(jq -c -S ${jq_net_filter} bin/${net}.abi | openssl sha256 | awk -F'= ' '{print $2}')
    echo " ${hash} |  |"
    rm bin/${net}.abi
  else
    echo -e "\e[0m \e[41m!!! Contract not found !!!\e[0m |  |"
  fi
}

function do_wasm() {
  local url=$1
  local contract=$2
  local contract_code=$3

  echo -n $'\e[0;31m'
  printf "%.20s" " ${contract}:                     "
    
  code=$(./bin/clio -u ${url} get code ${contract_code} 2>/dev/null)
  if [[ $? -eq 0 ]]; then
    hash=$(echo ${code} | awk -F': ' '{print $2}')
    echo $'\e[0;39m' "${hash}"
  else
    echo -e "\e[0m \e[41m !!! Contract not found !!!\e[0m"
  fi
}

function do_wasm_markup() {
  local url=$1
  local contract=$2
  local contract_code=$3

  echo -n "| ${contract} |"
  code=$(./bin/clio -u ${url} get code ${contract_code} 2>/dev/null)
  if [[ $? -eq 0 ]]; then
    hash=$(echo ${code} | awk -F': ' '{print $2}')
    echo " ${hash} |  |"
  else
    echo -e "\e[0m \e[41m !!! Contract not found !!!\e[0m |  |"
  fi
}

while getopts 'cmnh' opt; do
  case "$opt" in
    c)
      echo "Generating hashes of each type (file, *net), for side-by-side comparison..."
      do_compare_abiwasm_hashout
      ;;

    m)
      echo "Generating *Net hashes in markup format..."
      do_net_abiwasm_hashout markup
      ;;

    n)
      echo "Generating *Net hashes..."
      do_net_abiwasm_hashout
      ;;

    ?|h)
      echo "Usage: $(basename $0) [-c] [-m] [-n]"
      echo -e "-c\tGenerate hashes of each type (file, *net), for side-by-side comparison"
      echo -e "-m\tGenerate hashes for each network (localhost, TestNet, MainNet) in markup format"
      echo -e "-n\tGenerate hashes for each network (localhost, TestNet, MainNet)"
      exit 0
      ;;

  esac
done
shift "$(($OPTIND -1))"
