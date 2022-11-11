#!/usr/bin/env bash

DIR=$(realpath "$(dirname "${BASH_SOURCE[0]}")")
devtools_dir=$(realpath ${DIR}/../..)
contracts_dir=$(realpath ${DIR}/../../../fio.contracts/build/contracts)

DO_COMPARE=false
DO_HASH_GEN=false
DO_HASH_GEN_MARKUP=false
DEBUG=false

# Notes
# Use jq -S to sort file output (alphabetically) . Same file content but
#   different order will produce a different hash
# clio get code output format: code hash: <hash>
# openssl dgst -sha256 <file> == openssl sha256 <file> == sha256sum <file>
# openssl sha256 output format: SHA256(${devtools_dir}/bin/localnet.abi)= <hash>

declare -a contracts
contracts=(eosio.msig eosio.wrap fio.system fio.address fio.escrow fio.fee fio.oracle)
contracts+=(fio.request.obt fio.staking fio.token fio.tpid fio.treasury)

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
rm -f ${devtools_dir}/bin/localnet.abi ${devtools_dir}/bin/testnet.abi ${devtools_dir}/bin/mainnet.abi

# Generate hashes for each input source, including file, localnet, testnet and mainnet.
# Due to differences introduced in auto/manual abi generation across contracts, pre-process
# the input using jq with specific filters to remove unwanted elements.
do_compare_abiwasm_hashout() {
  declare -a abi_hashes
  declare -a wasm_hashes

  echo -e "\nSelect Exclude Option:"
  read -p $'1. Include all inputs 2. Exclude File 3. Exclude LocalNet\nChoose(#):' mChoice
  mChoice=${mChoice:-1}

  local exclude=""
  if [[ $mChoice == 2 ]]; then
    exclude='file'
    echo
    echo "Including input sources (LocalNet, TestNet and MainNet) for comparison."
  elif [[ $mChoice == 3 ]]; then
    exclude='localnet'
    echo
    echo "Including input sources (file, TestNet and MainNet) for comparison."
  else
    echo
    echo "Including all input sources (file, LocalNet, TestNet and MainNet) for comparison."
  fi

  for contract in "${contracts[@]}";
  do
    # Init the array
    abi_hashes=()
    wasm_hashes=()

    # Some contracts have a different contract codes (when using clio get code)
    contract_code=${contract}
    if [[ ${contract} == 'fio.system' ]]; then
      contract_code='eosio'
    elif [[ ${contract} == 'fio.request.obt' ]]; then
      contract_code='fio.reqobt'
    fi

    # Several contracts have slightly different hashes (generated from file vs localnet vs testnet, etc).
    # Use jq to filter out these differences, then generate the hash for comparison.
    # Note, a filter of '.' is no filter at all, i.e. in=out
    # elements found to be different include:
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
    if [[ ${exclude} != 'file' ]]; then
      echo -n $'\e[0;36m' ' File:    '
      if [[ -r ${contracts_dir}/${contract}/${contract}.abi ]]; then
        hash=$(jq -c -S ${jq_file_filter} ${contracts_dir}/${contract}/${contract}.abi | openssl sha256  | awk -F'= ' '{print $2}')
        abi_hashes+=($hash)
        echo $'\e[0;39m' ${hash}
      else
        abi_hashes+=(" ")
        echo -e "\e[0m \e[41m!!! Contract not found !!!\e[0m"
      fi
    fi

    if [[ ${exclude} != 'localnet' ]]; then
      echo -n $'\e[0;36m' ' LocalNet:'
      ${devtools_dir}/bin/clio -u ${localhost_url} get abi ${contract_code} -f ${devtools_dir}/bin/localnet.abi &>/dev/null
      if [[ $? -eq 0 ]]; then
        hash=$(jq -c -S ${jq_net_filter} ${devtools_dir}/bin/localnet.abi | openssl sha256 | awk -F'= ' '{print $2}')
        abi_hashes+=($hash)
        echo $'\e[0;39m' ${hash}
      else
        abi_hashes+=(" ")
        echo -e "\e[0m \e[41m!!! Contract not found !!!\e[0m"
      fi
    fi

    echo -n $'\e[0;36m' ' TestNet: '
    ${devtools_dir}/bin/clio -u ${testnet_url} get abi ${contract_code} -f ${devtools_dir}/bin/testnet.abi &>/dev/null
    if [[ $? -eq 0 ]]; then
      hash=$(jq -c -S ${jq_net_filter} ${devtools_dir}/bin/testnet.abi | openssl sha256 | awk -F'= ' '{print $2}')
      abi_hashes+=($hash)
      echo $'\e[0;39m' ${hash}
    else
      abi_hashes+=(" ")
      echo -e "\e[0m \e[41m!!! Contract not found !!!\e[0m"
    fi

    echo -n $'\e[0;36m' ' MainNet: '
    ${devtools_dir}/bin/clio -u ${mainnet_url} get abi ${contract_code} -f ${devtools_dir}/bin/mainnet.abi &>/dev/null
    if [[ $? -eq 0 ]]; then
      hash=$(jq -c -S ${jq_net_filter} ${devtools_dir}/bin/mainnet.abi | openssl sha256 | awk -F'= ' '{print $2}')
      abi_hashes+=($hash)
      echo $'\e[0;39m' ${hash}
    else
      abi_hashes+=(" ")
      echo -e "\e[0m \e[41m!!! Contract not found !!!\e[0m"
    fi

    echo $'\e[0;34m' WASM
    if [[ ${exclude} != 'file' ]]; then
      echo -n $'\e[0;36m' ' File:    '
      if [[ -r ${contracts_dir}/${contract}/${contract}.wasm ]]; then
        hash=$(openssl sha256 ${contracts_dir}/${contract}/${contract}.wasm | awk -F'= ' '{print $2}')
        wasm_hashes+=($hash)
        echo $'\e[0;39m' ${hash}
      else
        wasm_hashes+=(" ")
        echo -e "\e[0m \e[41m!!! Contract not found !!!\e[0m"
      fi
    fi

    if [[ ${exclude} != 'localnet' ]]; then
      echo -n $'\e[0;36m' ' LocalNet:'
      code=$(${devtools_dir}/bin/clio -u ${localhost_url} get code ${contract_code} 2>/dev/null)
      if [[ $? -eq 0 ]]; then
        hash=$(echo ${code} | awk -F': ' '{print $2}')
        wasm_hashes+=($hash)
        echo $'\e[0;39m' ${hash}
      else
        wasm_hashes+=(" ")
        echo -e "\e[0m \e[41m!!! Contract not found !!!\e[0m"
      fi
    fi

    echo -n $'\e[0;36m' ' TestNet: '
    code=$(${devtools_dir}/bin/clio -u ${testnet_url} get code ${contract_code} 2>/dev/null)
    if [[ $? -eq 0 ]]; then
      hash=$(echo ${code} | awk -F': ' '{print $2}')
      wasm_hashes+=($hash)
      echo $'\e[0;39m' ${hash}
    else
      wasm_hashes+=(" ")
      echo -e "\e[0m \e[41m!!! Contract not found !!!\e[0m"
    fi

    echo -n $'\e[0;36m' ' MainNet: '
    code=$(${devtools_dir}/bin/clio -u ${mainnet_url} get code ${contract_code} 2>/dev/null)
    if [[ $? -eq 0 ]]; then
      hash=$(echo ${code} | awk -F': ' '{print $2}')

      # The hash may still be bad; test and handle it.
      # Couple of ways; posiz regex below,
      # Using grep as grep -E '[0]+' or grep -E '[0]{64}'
      if [[ $hash =~ ^[0]+$ ]]; then
        wasm_hashes+=(" ")
        echo -e "\e[0m \e[41m!!! Contract not found !!!\e[0m"
      else
        wasm_hashes+=($hash)
        echo $'\e[0;39m' ${hash}
      fi
    else
      wasm_hashes+=(" ")
      echo -e "\e[0m \e[41m!!! Contract not found !!!\e[0m"
    fi

    # Clean up output files
    rm -f ${devtools_dir}/bin/localnet.abi ${devtools_dir}/bin/testnet.abi ${devtools_dir}/bin/mainnet.abi

    # Output hash difference between the net pairs; localnet/testnet, testnet/mainnet, etc
    # Possible hash differencing
    # 1) Show any diffs between any source (file, localnet, testnet, mainnet) - TBD
    # 2) Show any diffs between file and localnet - Implemented
    # 3) Show any diffs between localnet and testnet - Implemented
    # 4) Show any diffs between testnet and mainnet - Implemented
    c_list=() # compare hash slice list
    # A[@] returns the contents of the array, :1:2 takes a slice of length 2, starting at index 1
    # A2=( "${A[@]::$INDEX}" "${A[@]:$((INDEX+1))}" ) remove element at INDEX and compact
    if [[ "$(count_unique "${abi_hashes[@]}")" -ne 1 ]]; then
      echo
      echo -e " \e[41mABI Hash Differences:\e[0m"
      c_list=("${abi_hashes[@]:0:2}")
      if ! unique_values "${c_list[@]}"; then
        if [[ ${exclude} == 'file' ]]; then
          echo -e " \e[41m${contract}: LocalNet/TestNet ABI Hashes DIFFER!\e[0m"
          echo -n $'\e[0;31m  LocalNet:'
          echo $'\e[0;39m' ${c_list[0]}
          echo -n $'\e[0;31m  TestNet: '
          echo $'\e[0;39m' ${c_list[1]}
          echo
        elif [[ ${exclude} == 'localnet' ]]; then
          echo -e " \e[41m${contract}: File/TestNet ABI Hashes DIFFER!\e[0m"
          echo -n $'\e[0;31m  File:     '
          echo $'\e[0;39m' ${c_list[0]}
          echo -n $'\e[0;31m  TestNet: '
          echo $'\e[0;39m' ${c_list[1]}
          echo
        else
          echo -e " \e[41m${contract}: File/LocalNet ABI Hashes DIFFER!\e[0m"
          echo -n $'\e[0;31m  File:     '
          echo $'\e[0;39m' ${c_list[0]}
          echo -n $'\e[0;31m  LocalNet: '
          echo $'\e[0;39m' ${c_list[1]}
          echo
        fi
      fi
      c_list=("${abi_hashes[@]:2:2}")
      if ! unique_values "${c_list[@]}"; then
        echo -e " \e[41m${contract}: TestNet/MainNet ABI Hashes DIFFER!\e[0m"
        echo -n $'\e[0;31m  TestNet: '
        echo $'\e[0;39m' ${c_list[0]}
        echo -n $'\e[0;31m  MainNet: '
        echo $'\e[0;39m' ${c_list[1]}
        echo
      fi
    fi
    if [[ "$(count_unique "${wasm_hashes[@]}")" -ne 1 ]]; then
      echo
      echo -e " \e[41mWASM Hash Differences:\e[0m"
      c_list=("${wasm_hashes[@]:0:2}")
      if ! unique_values "${c_list[@]}"; then
        if [[ ${exclude} == 'file' ]]; then
          echo -e " \e[41m${contract}: LocalNet/TestNet WASM Hashes DIFFER!\e[0m"
          echo -n $'\e[0;31m  LocalNet:'
          echo $'\e[0;39m' ${c_list[0]}
          echo -n $'\e[0;31m  TestNet: '
          echo $'\e[0;39m' ${c_list[1]}
          echo
        elif [[ ${exclude} == 'localnet' ]]; then
          echo -e " \e[41m${contract}: File/TestNet WASM Hashes DIFFER!\e[0m"
          echo -n $'\e[0;31m  File:    '
          echo $'\e[0;39m' ${c_list[0]}
          echo -n $'\e[0;31m  TestNet: '
          echo $'\e[0;39m' ${c_list[1]}
          echo
        else
          echo -e " \e[41m${contract}: File/LocalNet WASM Hashes DIFFER!\e[0m"
          echo -n $'\e[0;31m  File:     '
          echo $'\e[0;39m' ${c_list[0]}
          echo -n $'\e[0;31m  LocalNet: '
          echo $'\e[0;39m' ${c_list[1]}
          echo
        fi
      fi
      c_list=("${wasm_hashes[@]:2:2}")
      if ! unique_values "${c_list[@]}"; then
        echo -e " \e[41m${contract}: TestNet/MainNet WASM Hashes DIFFER!\e[0m"
        echo -n $'\e[0;31m  TestNet: '
        echo $'\e[0;39m' ${c_list[0]}
        echo -n $'\e[0;31m  MainNet: '
        echo $'\e[0;39m' ${c_list[1]}
        echo
      fi
    fi
  done
}

# Generate hashes as they are retrieved from *Net, without pre-processing to remove unwanted
# elements. Elements introduced due to differences in auto vs manual abi generation
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

  ${devtools_dir}/bin/clio -u ${url} get abi ${contract_code} -f ${devtools_dir}/bin/${net}.abi &>/dev/null
  if [[ $? -eq 0 ]]; then
    hash=$(jq -c -S ${jq_net_filter} ${devtools_dir}/bin/${net}.abi | openssl sha256 | awk -F'= ' '{print $2}')
    echo $'\e[0;39m' "${hash}"
    rm ${devtools_dir}/bin/${net}.abi
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

  ${devtools_dir}/bin/clio -u ${url} get abi ${contract_code} -f ${devtools_dir}/bin/${net}.abi &>/dev/null
  if [[ $? -eq 0 ]]; then
    hash=$(jq -c -S ${jq_net_filter} ${devtools_dir}/bin/${net}.abi | openssl sha256 | awk -F'= ' '{print $2}')
    echo " ${hash} |  |"
    rm ${devtools_dir}/bin/${net}.abi
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
    
  code=$(${devtools_dir}/bin/clio -u ${url} get code ${contract_code} 2>/dev/null)
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
  code=$(${devtools_dir}/bin/clio -u ${url} get code ${contract_code} 2>/dev/null)
  if [[ $? -eq 0 ]]; then
    hash=$(echo ${code} | awk -F': ' '{print $2}')
    echo " ${hash} |  |"
  else
    echo -e "\e[0m \e[41m !!! Contract not found !!!\e[0m |  |"
  fi
}

# Get options passed on command line. Note that several booleans are used, i.e. DO_COMPARE,
# to allow processing of command line args before actual execution BUT only one command, i.e.
# do_compare_abiwasm_hashout, will be executed for every execution of this script.
while getopts 'cmoixh' opt; do
  case "$opt" in
    c)
      echo
      echo "Generating hashes of each type (file, *net), for side-by-side comparison..."
      echo
      echo "Note: The hashes are generated by pre-processing the input (ABIs only) to remove"
      echo "      unwanted elements (deemed unimportant) for the purposes of hash comparison."
      echo
      echo "      !!!These hashes are not to used as truth for Local/TestNet/MainNet!!!"
      echo
      echo "Press any key to continue"; read -t 10 -n 1
      DO_COMPARE=true
      ;;

    m)
      echo "Generating *Net hashes in markup format..."
      DO_HASH_GEN_MARKUP=true
      ;;

    o)
      echo "Generating *Net hashes..."
      DO_HASH_GEN=true
      ;;

    i)
      echo
      echo "Runtime Information:"
      echo "DevTools Directory:        ${devtools_dir}"
      echo "Contracts Directory:       ${contracts_dir}"
      echo "Current Contracts:         ${contracts[@]}"
      echo "LocalNet URL:              ${localhost_url}"
      echo "TestNet URL:               ${testnet_url}"
      echo "MainNet URL:               ${mainnet_url}"
      echo
      echo "Cmd to get ABI:            ${devtools_dir}/bin/clio -u ${localhost_url} get abi <contract> -f ${devtools_dir}/bin/localnet.abi"
      echo "                           ${devtools_dir}/bin/clio -u ${localhost_url} get code <contract> -a ${devtools_dir}/bin/localnet.abi"
      echo "Cmd to get WASM Code Hash: ${devtools_dir}/bin/clio -u ${localhost_url} get code <contract>"
      echo "Cmd to generate hash:      openssl sha256 ${devtools_dir}/bin/localnet.abi"
      echo "Cmd to process abi/wasm:   jq -c -S '(.)' ${devtools_dir}/bin/localnet.abi"
      ;;

    x)
      echo "Turning debug on"
      DEBUG=true
      ;;

    ?|h)
      echo "Usage: $(basename $0) [OPTION]..."
      echo "Generate SHA256 hash for each contract ABI and WASM"
      echo
      echo -e "-i\tDisplay runtime information"
      echo -e "-x\tExecutes 'set -x' to display all executed instructions"
      echo
      echo -e "-c\tGenerate hashes for each type (file, *net), compare hashes and output diffs"
      echo -e "\t  Hashes are generated from normalized input (trivial differences are removed)"
      echo -e "\t  and are for contract comparison only (not for publication)!"
      echo
      echo -e "-m\tGenerate hashes for each network (localhost, TestNet, MainNet) in markup format"
      echo
      echo -e "-o\tGenerate hashes for each network (localhost, TestNet, MainNet)"
      exit 0
      ;;

  esac
done
shift "$(($OPTIND -1))"

if $DEBUG; then
  set -x
fi
if $DO_COMPARE; then
  do_compare_abiwasm_hashout
elif $DO_HASH_GEN; then
  do_net_abiwasm_hashout
elif $DO_HASH_GEN_MARKUP; then
  do_net_abiwasm_hashout markup
fi
