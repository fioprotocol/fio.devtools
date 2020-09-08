#!/bin/bash

exec /home/fio/bin/nodeos --config-dir /home/fio/config --data-dir /home/fio/data --genesis-json /home/fio/config/genesis.json \
  --signature-provider ${PUBKEY}=KEY:${PRIVKEY} --producer-name ${ACCOUNT} \
  --p2p-peer-address ${HOST}:9876 --p2p-peer-address ${HOST}:9877 --p2p-peer-address ${HOST}:9878

