#!/bin/bash

../fio/build/bin/clio -u http://localhost:8889 push action eosio setnolimits '{"account":"fio.escrow"}' --permission eosio@active
