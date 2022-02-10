#!/bin/bash

../fio/build/bin/clio -u http://localhost:8889 push action eosio setpriv '["fio.escrow",1]' -p eosio@active
