#!/usr/bin/env bash

if pgrep -x "nodeos" > /dev/null
then
    pkill nodeos
fi

NODEOS_BIN=""
if [ "$(uname)" == "Darwin" ] ; then
	# best effort, macos lacks readlink
	NODEOS_BIN="$(pwd)/nodeos"
else
	NODEOS_BIN=$(readlink -f nodeos)
fi


#start the bios node, this starts up, and eventually goes into dormancy.

    mkdir -p $HOME/node1
    pushd $HOME/node1 >/dev/null
    "${NODEOS_BIN}" --max-transaction-time=6000 --http-server-address localhost:8879 --p2p-listen-endpoint 0.0.0.0:9876 --config-dir=$HOME/node1 --http-validate-host=0 --logconf=$oldpath/launch/logging.json --enable-stale-production --producer-name eosio --plugin eosio::chain_api_plugin --plugin eosio::net_api_plugin  --contracts-console 2> $oldpath/../node1.txt &
    sleep 1.5
    popd >/dev/null

    #start the first BP node
    mkdir -p $HOME/node2
    pushd $HOME/node2 >/dev/null
    "${NODEOS_BIN}" --max-transaction-time=6000 --producer-name 3ddowwxs11ss --producer-name wttywsmdmfew --plugin eosio::chain_api_plugin --plugin eosio::db_size_api_plugin --logconf=$oldpath/launch/logging.json --plugin eosio::net_api_plugin --http-server-address 0.0.0.0:8889 --http-validate-host=0  --p2p-listen-endpoint 0.0.0.0:9877 --p2p-peer-address localhost:9876 --config-dir $HOME/node2 --data-dir $HOME/node2  --private-key [\"FIO6ruJ5qLeaa6VtYVpkcU4AeWVaL2QvViyQqjxjpAWYRFsYaSbBN\",\"5KLxezoCEw5Ca97FHq3HPyrzkmZQT6Wqw9DmKaJ6inE6fiN1ijT\"] --private-key [\"FIO6oa5UV9ghWgYH9en8Cv8dFcAxnZg2i9z9gKbnHahciuKNRPyHc\",\"5JvmPVxPxypQEKPwFZQW4Vx7EC8cDYzorVhSWZvuYVFMccfi5mU\"] --access-control-allow-origin * --contracts-console 2> $oldpath/../node2.txt &
    popd >/dev/null
    sleep 1.5

    #start the second BP node
    mkdir -p $HOME/node3
    pushd $HOME/node3 >/dev/null
    "${NODEOS_BIN}" --max-transaction-time=6000 --producer-name qbxn5zhw2ypw --producer-name hfdg2qumuvlc  --plugin eosio::chain_api_plugin --plugin eosio::net_api_plugin --http-server-address 0.0.0.0:8890 --http-validate-host=0 --logconf=$oldpath/launch/logging.json --p2p-listen-endpoint 0.0.0.0:9878 --p2p-peer-address localhost:9877 --config-dir $HOME/node3 --data-dir $HOME/node3 --private-key [\"FIO7jVQXMNLzSncm7kxwg9gk7XUBYQeJPk8b6QfaK5NVNkh3QZrRr\",\"5KQ6f9ZgUtagD3LZ4wcMKhhvK9qy4BuwL3L1pkm6E2v62HCne2R\"] --private-key [\"FIO7uTisye5w2hgrCSE1pJhBKHfqDzhvqDJJ4U3vN9mbYWzataS2b\",\"5JnhMxfnLhZeRCRvCUsaHbrvPSxaqjkQAgw4ZFodx4xXyhZbC9P\"] --contracts-console 2> $oldpath/../node3.txt &
    sleep 2
    popd >/dev/null
    
    
    #setup instructions for running history node locally on a dev box, or other 3 node test net
    #using fio.devtools.....
    
    #start history node this code can be enabled at any time it is desirable to integration
    #test with a v1 history node.
    #before enabling this you must generate a genesis.json file,
    #start the 3 node test net normally then follow these instrucctions to generate the file
    # make a script with the following content, and run the script to generate the genesis.json
    #  echo "building genesis.json..."
    #  clio="$HOME/repos/fio/build/bin/clio -u http://localhost:8889"
    #   echo '{"initial_timestamp":'$($clio get block 1 | jq .timestamp)',"initial_key":"'$($clio get account eosio |grep owner |awk '{print $NF}')'","initial_configuration":'$($clio get table eosio eosio global |jq .rows[0] |egrep -v 'last|vote|paid')'}' \
    #    | sed 's/, }}/}}/g' | jq . > ./genesis.json || exit 1
    #you must also generate a config.ini with the following contents.
    #         http-server-address = 0.0.0.0:8888
    #         p2p-listen-endpoint = 0.0.0.0:3856
    #         chain-state-db-size-mb = 2048
    #         reversible-blocks-db-size-mb = 1024
    #         contracts-console = true
    #         p2p-max-nodes-per-host = 100
    #         chain-threads = 8
    #         http-threads = 6
    #         wasm-runtime = wabt
    #         http-validate-host = false
    #         verbose-http-errors = true
    #         abi-serializer-max-time-ms = 2000
    #         last-block-time-offset-us = -300000
    #         chain-state-db-guard-size-mb = 128
    #         reversible-blocks-db-guard-size-mb = 2
    #         access-control-allow-origin = *
    #         allowed-connection = any
    #         max-clients = 150
    #         connection-cleanup-period = 30
    #         network-version-match = 0
    #         sync-fetch-span = 2000
    #         enable-stale-production = false
    #         pause-on-startup = false
    #         max-irreversible-block-age = -1
    #         txn-reference-block-lag = 0
    #         plugin = eosio::producer_plugin
    #         plugin = eosio::chain_plugin
    #         plugin = eosio::chain_api_plugin
    #         plugin = eosio::history_plugin
    #         plugin = eosio::history_api_plugin
    #         filter-on = *
    #         filter-out = eosio:onblock:
    #         history-per-account = 10000
    #once these files are generated you may uncomment the below nodeos command, along with the rm commands in the chain_nuke.sh script
    # end setup instructions

    #mkdir -p $HOME/node4
    #pushd $HOME/node4 >/dev/null
    #"${NODEOS_BIN}" --config-dir /Users/edr/repos/edscripts/historyfiles --data-dir /Users/edr/node4  --genesis-json /Users/edr/repos/edscripts/historyfiles/genesis.json  --p2p-peer-address localhost:9876 --p2p-peer-address localhost:9877 --p2p-peer-address localhost:9878 --disable-replay-opts 2> $oldpath/../node4.txt &
    #sleep 2
    #popd >/dev/null
fi
