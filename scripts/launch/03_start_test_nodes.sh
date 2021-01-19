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
sleep 1.5s
popd >/dev/null

#start the first BP node
mkdir -p $HOME/node2
pushd $HOME/node2 >/dev/null
"${NODEOS_BIN}" --max-transaction-time=6000 --producer-name 3ddowwxs11ss --producer-name wttywsmdmfew --plugin eosio::chain_api_plugin --plugin eosio::db_size_api_plugin --logconf=$oldpath/launch/logging.json --plugin eosio::net_api_plugin --http-server-address 0.0.0.0:8889 --http-validate-host=0  --p2p-listen-endpoint 0.0.0.0:9877 --p2p-peer-address localhost:9876 --config-dir $HOME/node2 --data-dir $HOME/node2  --private-key [\"FIO6ruJ5qLeaa6VtYVpkcU4AeWVaL2QvViyQqjxjpAWYRFsYaSbBN\",\"5KLxezoCEw5Ca97FHq3HPyrzkmZQT6Wqw9DmKaJ6inE6fiN1ijT\"] --private-key [\"FIO6oa5UV9ghWgYH9en8Cv8dFcAxnZg2i9z9gKbnHahciuKNRPyHc\",\"5JvmPVxPxypQEKPwFZQW4Vx7EC8cDYzorVhSWZvuYVFMccfi5mU\"]  --contracts-console 2> $oldpath/../node2.txt &
popd >/dev/null
sleep 1.5s

#start the second BP node
mkdir -p $HOME/node3
pushd $HOME/node3 >/dev/null
"${NODEOS_BIN}" --max-transaction-time=6000 --producer-name 3ddowwxs11ss --producer-name wttywsmdmfew --plugin eosio::chain_api_plugin --plugin eosio::db_size_api_plugin --logconf=$oldpath/launch/logging.json --plugin eosio::net_api_plugin --http-server-address 0.0.0.0:8889 --http-validate-host=0  --p2p-listen-endpoint 0.0.0.0:9877 --p2p-peer-address localhost:9876 --config-dir $HOME/node2 --data-dir $HOME/node2  --private-key [\"FIO6ruJ5qLeaa6VtYVpkcU4AeWVaL2QvViyQqjxjpAWYRFsYaSbBN\",\"5KLxezoCEw5Ca97FHq3HPyrzkmZQT6Wqw9DmKaJ6inE6fiN1ijT\"] --private-key [\"FIO6oa5UV9ghWgYH9en8Cv8dFcAxnZg2i9z9gKbnHahciuKNRPyHc\",\"5JvmPVxPxypQEKPwFZQW4Vx7EC8cDYzorVhSWZvuYVFMccfi5mU\"]  --contracts-console --access-control-allow-origin *  2> $oldpath/../node2.txt &
sleep 2s
popd >/dev/null

