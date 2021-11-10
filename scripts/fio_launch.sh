/#!/usr/bin/env bash

printf "\n\n${bldgrn}"
printf "  FFFFFFFFFFFFFFFFFFF IIIIIIIII     OOOOOOO     \n"
printf "  F:::::::::::::::::F I:::::::I   OO::::::::OO  \n"
printf "  FF:::::FFFFFFFF:::F II:::::II O:::::OOO:::::O \n"
printf "    F::::F      FFFFF   I:::I  O:::::O   O:::::O\n"
printf "    F::::F              I:::I  O::::O     O::::O\n"
printf "    F:::::FFFFFFFFF     I:::I  O::::O     O::::O\n"
printf "    F:::::::::::::F     I:::I  O::::O     O::::O\n"
printf "    F:::::FFFFFFFFF     I:::I  O::::O     O::::O\n"
printf "    F::::F              I:::I  O::::O     O::::O\n"
printf "    F::::F              I:::I  O:::::O   O:::::O\n"
printf "  FF::::::FF          II:::::II O:::::OOO:::::O \n"
printf "  F:::::::FF          I:::::::I   OO:::::::OO   \n"
printf "  FFFFFFFFFF          IIIIIIIII     OOOOOOO     \n${txtrst}"

echo $'\n\n                   Welcome to the Local Test Environment'

restartneeded=0
oldpath=$PWD/scripts
basepath=$PWD/bin/baseContract/2.2.x
export oldpath
export basepath

if [ -f scripts/walletkey.ini ]; then
    echo $'\n                        *****Restart Detected*****'
    restartneeded=1
fi

if [ -z "$1" ]; then
	read -p $'\n1. Local Blockchain 2. Update/Build Contracts 3. Nuke All 4. Launch 21 BPs \n5. Queries 6. History (docker) 7. Post Actions\nChoose(#):' mChoice
else
    mChoice=$1
fi

if [ $mChoice == 5 ]; then
    scripts/queries/general.sh
    exit
fi

if [ $mChoice == 2 ]; then
    echo Updating Current Base Contracts
    cd ../fio.devtools/bin/baseContract/2.2.x/
    git clone http://github.com/fioprotocol/fio.contracts -b release/2.2.x
    cd fio.contracts/
    ./build.sh
    cp ./contracts/fio.fee/fio.fee.abi ./build/contracts/fio.fee/fio.fee.abi
    cp ./contracts/fio.address/fio.address.abi ./build/contracts/fio.address/fio.address.abi
    cp ./contracts/fio.request.obt/fio.request.obt.abi ./build/contracts/fio.request.obt/fio.request.obt.abi
    #cp ./contracts/fio.staking/fio.staking.abi ./build/contracts/fio.staking/fio.staking.abi

    echo Building Development Contracts
    cd ../../../../../fio.contracts
    pwd
    ./build.sh
    echo COPYING ABI FILES FROM contracts TO ./build/contracts!
    cp ./contracts/fio.fee/fio.fee.abi ./build/contracts/fio.fee/fio.fee.abi
    cp ./contracts/fio.address/fio.address.abi ./build/contracts/fio.address/fio.address.abi
    cp ./contracts/fio.request.obt/fio.request.obt.abi ./build/contracts/fio.request.obt/fio.request.obt.abi
    #cp ./contracts/fio.staking/fio.staking.abi ./build/contracts/fio.staking/fio.staking.abi
    echo COMPLETE - READY TO LAUNCH
    exit -1
fi

if [ $mChoice == 1 ]; then

        #FIO Directory Check

    if [ -f ../fio.contracts/build/contracts/eosio.bios/eosio.bios.wasm ]; then
        eosio_bios_contract_name_path="$oldpath/../../fio.contracts/build/contracts/eosio.bios"
    else
        echo 'No wasm file found at $PWD/build/contracts/eosio.bios'
    fi

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
    
   # if [ -f ../fio.contracts/build/contracts/fio.staking/fio.staking.wasm ]; then
   #         fio_staking_name_path="$oldpath/../../fio.contracts/build/contracts/fio.staking"
    #    else
   #         echo 'No wasm file found at $PWD/build/contracts/fio.staking'
   # fi

    if [ -f ../fio.contracts/build/contracts/fio.treasury/fio.treasury.wasm ]; then
            fio_treasury_name_path="$oldpath/../../fio.contracts/build/contracts/fio.treasury"
        else
            echo 'No wasm file found at $PWD/build/contracts/fio.treasury'
    fi

    if [ -f ../fio.contracts/build/contracts/eosio.wrap/eosio.wrap.wasm ]; then
               eosio_wrap_name_path="$oldpath/../../fio.contracts/build/contracts/eosio.wrap"
            else
                echo 'No wasm file found at $PWD/build/contracts/eosio.wrap'
    fi

    #FIO Base Directory Check
    if [ -f bin/baseContract/2.2.x/fio.contracts/build/contracts/eosio.bios/eosio.bios.wasm ]; then
        eosio_bios_contract_base_path="$basepath/fio.contracts/build/contracts/eosio.bios"
    else
        echo 'No wasm file found at $PWD/build/contracts/eosio.bios'
    fi

    if [ -f bin/baseContract/2.2.x/fio.contracts/build/contracts/fio.system/fio.system.wasm ]; then
        fio_system_contract_base_path="$basepath/fio.contracts/build/contracts/fio.system"
    else
        echo 'No wasm file found at $PWD/build/contracts/fio.system'
    fi

    if [ -f bin/baseContract/2.2.x/fio.contracts/build/contracts/eosio.msig/eosio.msig.wasm ]; then
        eosio_msig_contract_base_path="$basepath/fio.contracts/build/contracts/eosio.msig"
    else
        echo 'No wasm file found at $PWD/build/contracts/eosio.msig'
    fi

    if [ -f bin/baseContract/2.2.x/fio.contracts/build/contracts/fio.token/fio.token.wasm ]; then
        fio_token_contract_base_path="$basepath/fio.contracts/build/contracts/fio.token"
    else
        echo 'No wasm file found at $PWD/build/contracts/fio.token'
    fi
    #Fio Name Directory Check
    if [ -f bin/baseContract/2.2.x/fio.contracts/build/contracts/fio.address/fio.address.wasm ]; then
        fio_contract_base_path="$basepath/fio.contracts/build/contracts/fio.address"
    else
        echo 'No wasm file found at $PWD/build/contracts/fio.address'
    fi

    if [ -f bin/baseContract/2.2.x/fio.contracts/build/contracts/fio.fee/fio.fee.wasm ]; then
        fio_fee_base_path="$basepath/fio.contracts/build/contracts/fio.fee"
    else
        echo 'No wasm file found at $PWD/build/contracts/fio.fee'
    fi

    if [ -f bin/baseContract/2.2.x/fio.contracts/build/contracts/fio.request.obt/fio.request.obt.wasm ]; then
            fio_reqobt_base_path="$basepath/fio.contracts/build/contracts/fio.request.obt"
        else
            echo 'No wasm file found at $PWD/build/contracts/fio.request.obt'
    fi

    if [ -f bin/baseContract/2.2.x/fio.contracts/build/contracts/fio.tpid/fio.tpid.wasm ]; then
            fio_tpid_base_path="$basepath/fio.contracts/build/contracts/fio.tpid"
        else
            echo 'No wasm file found at $PWD/build/contracts/fio.tpid'
    fi

    if [ -f bin/baseContract/2.2.x/fio.contracts/build/contracts/fio.treasury/fio.treasury.wasm ]; then
            fio_treasury_base_path="$basepath/fio.contracts/build/contracts/fio.treasury"
        else
            echo 'No wasm file found at $PWD/build/contracts/fio.treasury'
    fi

    if [ -f bin/baseContract/2.2.x/fio.contracts/build/contracts/eosio.wrap/eosio.wrap.wasm ]; then
               eosio_wrap_base_path="$basepath/fio.contracts/build/contracts/eosio.wrap"
            else
                echo 'No wasm file found at $PWD/build/contracts/eosio.wrap'
    fi

    export eosio_bios_contract_name_path
    export fio_system_contract_name_path
    export eosio_msig_contract_name_path
    export fio_token_contract_name_path
    export fio_contract_name_path
    export fio_fee_name_path
    export fio_reqobt_name_path
    export fio_tpid_name_path
    #export fio_staking_name_path
    export fio_treasury_name_path
    export eosio_wrap_name_path

    export eosio_bios_contract_base_path
    export fio_system_contract_base_path
    export eosio_msig_contract_base_path
    export fio_token_contract_base_path
    export fio_contract_base_path
    export fio_fee_base_path
    export fio_reqobt_base_path
    export fio_tpid_base_path
    export fio_treasury_base_path
    export eosio_wrap_base_path
    export vChoice

    sleep 1s
    cd ~/fio/$vChoice/bin
    $oldpath/launch/01_new_wallet.sh

    if [ $restartneeded == 0 ]; then
        #Import Wallet Keys
        $oldpath/launch/02_import_keys.sh
    fi

    #if [ -z "$2" ]; then
    #    read -p $'\n\n(1.) 3 Local Nodes (2.) 21 Local Nodes\nChoose(#):' mChoice
    #else
    #    tChoice=$2
    #fi
    #Start Both Nodes
    # launch dev nodes listening on all interfaces to allow docker nodes to connect
    $oldpath/launch/03_start_test_nodes.sh

    if [ $restartneeded == 0 ]; then
        #Create Accounts
        $oldpath/launch/04_create_accounts.sh

        echo bound all base contracts
        $oldpath/launch/05_bind_contracts.sh

        echo creating dapix test accounts
        $oldpath/launch/06_create_test_accounts.sh



        #create fees for the fio protocol, all fees are zero so no added FIO circulation for genesis.
        echo "creating fees"
        $oldpath/launch/07_create_zero_fees.sh

        echo issuing tokens
        $oldpath/launch/08_token_issue.sh

        if [ $restartneeded == 0 ]; then
            echo Setting up inline permissions
            echo Adding eosio code to fio.token and fio.system.
            $oldpath/launch/09_set_permissions.sh
        fi

        echo regdomain
        $oldpath/launch/10_reg_domain.sh

        echo registering all block producers
        $oldpath/launch/11_reg_vote_prod.sh
        # this script sets all actions not added in the controller.cpp init_database method.
        # we add actions in the controller.cpp that are necessary for the genisis of a test network.
        # and the rest are added here so that we do not have to revision the controller code every time
        # we add a new action to fio.
        $oldpath/launch/12_add_actions.sh
        echo "added actions"
        sleep 5
    fi


    #set up bounties_table
     echo creating bounties
     ./clio -u http://localhost:8889 push action -j fio.tpid updatebounty '{"amount":0}' --permission fio.tpid@active

    echo setting accounts
    sleep 0.5
    $oldpath/launch/12_set_accounts.sh
    echo setting foundation accounts
    sleep 0.5
    $oldpath/launch/13_create_accounts_foundation.sh
    sleep 0.5

    
    # LOCKED TESTING STARTS HERE
    # $oldpath/launch/14_create_locked_token_holder_accounts.sh
#$oldpath/launch/15_create_locked_token_holder_test_accounts.sh
    # $oldpath/launch/16_emplace_grants_into_locked_tokens.sh
# $oldpath/launch/17_emplace_test_grants_into_locked_tokens.sh
    sleep 2
#uncomment these next 3 lines to test the genesis scripts, warning this takes around 30 minutes to execute.
#after these run you can run validate_locked_token_holder.sh
#validate_presale_domains.sh and validate_presale_fioaddresses.sh...
#after the final transfer from prime trus you can run final_validation_locked_token_holders.sh
   #$oldpath/launch/presale/create_presale_domains.sh
   #$oldpath/launch/presale/create_presale_fioaddresses.sh
   #$oldpath/launch/presale/make_presale_domains_private.sh
    #create fees for the fio protocol, all fees are zero so no added FIO circulation for genesis.

    echo "creating operational fees"
    $oldpath/launch/18_create_set_fees_after_genesis.sh
    sleep 10s
    echo Setting Development Contracts over v2.0.0
    $oldpath/launch/19_bind_dev_contracts.sh
   # sleep 10s
   # $oldpath/launch/20_debug_staking.sh

elif [ $mChoice == 3 ]; then
    read -p $'WARNING: ALL FILES ( WALLET & CHAIN ) WILL BE DELETED\n\nContinue? (1. Yes 2. No): ' bChoice

    if [ $bChoice == 1 ]; then
        scripts/launch/chain_nuke.sh
    fi
    exit 1

elif [ $mChoice == 4 ]; then
    scripts/launch/producers/01_check_for_docker.sh

    nodeos_dev_p2p=""
    nodeos_dev_port=""
    read -p "IP address for nodeos P2p [$(ip route |grep default |head -1 |cut -d' ' -f9)]: " nodeos_dev_p2p
    [ -z "${nodeos_dev_p2p}" ] && nodeos_dev_p2p=$(ip route |grep default |head -1 |cut -d' ' -f9)
    read -p "Port for nodeos P2p [8889]:" nodeos_dev_port
    [ -z "${nodeos_dev_port}"] && nodeos_dev_port=8889
    $oldpath/launch/producers/19_start_docker_compose.sh "${nodeos_dev_p2p}" "${nodeos_dev_port}"

elif [ $mChoice == 6 ]; then
    scripts/launch/producers/01_check_for_docker.sh

    nodeos_dev_p2p=""
    nodeos_dev_port=""
    read -p "IP address for nodeos P2p [$(ip route |grep default |head -1 |cut -d' ' -f9)]: " nodeos_dev_p2p
    [ -z "${nodeos_dev_p2p}" ] && nodeos_dev_p2p=$(ip route |grep default |head -1 |cut -d' ' -f9)
    read -p "Port for nodeos P2p [8889]:" nodeos_dev_port
    [ -z "${nodeos_dev_port}"] && nodeos_dev_port=8889
    $oldpath/launch/history/20_start_docker_compose.sh "${nodeos_dev_p2p}" "${nodeos_dev_port}"

elif [ $mChoice == 7 ]; then
    read -p $'1. Update All Contracts\nChoose(#):' bChoice

    if [ $bChoice == 1 ]; then
      scripts/actions/update_contracts.sh
    fi
fi

printf "\n\n${bldgrn}"
printf "  FFFFFFFFFFFFFFFFFFF IIIIIIIII     OOOOOOO     \n"
printf "  F:::::::::::::::::F I:::::::I   OO::::::::OO  \n"
printf "  FF:::::FFFFFFFF:::F II:::::II O:::::OOO:::::O \n"
printf "    F::::F      FFFFF   I:::I  O:::::O   O:::::O\n"
printf "    F::::F              I:::I  O::::O     O::::O\n"
printf "    F:::::FFFFFFFFF     I:::I  O::::O     O::::O\n"
printf "    F:::::::::::::F     I:::I  O::::O     O::::O\n"
printf "    F:::::FFFFFFFFF     I:::I  O::::O     O::::O\n"
printf "    F::::F              I:::I  O::::O     O::::O\n"
printf "    F::::F              I:::I  O:::::O   O:::::O\n"
printf "  FF::::::FF          II:::::II O:::::OOO:::::O \n"
printf "  F:::::::FF          I:::::::I   OO:::::::OO   \n"
printf "  FFFFFFFFFF          IIIIIIIII     OOOOOOO     \n${txtrst}"
echo $'\nTest Environment Setup Completed\n'
