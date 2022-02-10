#!/bin/bash



../fio/build/bin/clio -u http://localhost:8889 push action eosio addaction '{"action":"listdomain","contract":"fio.escrow","actor":"eosio"}' --permission eosio

../fio/build/bin/clio -u http://localhost:8889 push action eosio addaction '{"action":"cxlistdomain","contract":"fio.escrow","actor":"eosio"}' --permission eosio

../fio/build/bin/clio -u http://localhost:8889 push action eosio addaction '{"action":"buydomain","contract":"fio.escrow","actor":"eosio"}' --permission eosio

../fio/build/bin/clio -u http://localhost:8889 push action eosio addaction '{"action":"setmrkplcfg","contract":"fio.escrow","actor":"eosio"}' --permission eosio

../fio/build/bin/clio -u http://localhost:8889 push action eosio addaction '{"action":"cxburned","contract":"fio.escrow","actor":"eosio"}' --permission eosio

../fio/build/bin/clio -u http://localhost:8889 push action eosio addaction '{"action":"xferescrow","contract":"fio.address","actor":"eosio"}' --permission eosio
