#!/usr/bin/env bash

# Set holder account
./clio -u http://localhost:8889 push action -j fio.escrow sethldacct '{"public_key":"FIO6WTy7KBarFzVbhmwDuR1BbV33QVpuEZirvfwsHBUZ1b4aGrJNm"}' -p fio.escrow@active

# set initial marketplace config
./clio -u http://localhost:8889 push action -j fio.escrow setmrkplcfg '{"marketplace":"market", "owner":"5ufabtv13hv4", "owner_public_key":"FIO77rFFByyLycsrbC5tH1CXqddZdgkDuTYDbCc2BoGp5hdnU59f7", "marketplacecommission":"15", "listingfee":"5000000000"}' -p 5ufabtv13hv4@active

# list domains for sale
./clio -u http://localhost:8889 push action -j fio.escrow listdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"awesome", "sale_price":"10000000000000"}' -p wjeo4abnk4c2@active
./clio -u http://localhost:8889 push action -j fio.escrow listdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"doctor", "sale_price":"10000000000000"}' -p wjeo4abnk4c2@active