#!/bin/bash

../fio/build/bin/clio wallet import --private-key 5KePj5qMF7xvXZwY4Tnxy7KbDCdUe7cyZtYv2rsTgaZ7LBuVpUc -n fio

../fio/build/bin/clio -u http://localhost:8879/ create account eosio 5ufabtv13hv4 FIO77rFFByyLycsrbC5tH1CXqddZdgkDuTYDbCc2BoGp5hdnU59f7 FIO77rFFByyLycsrbC5tH1CXqddZdgkDuTYDbCc2BoGp5hdnU59f7

../fio/build/bin/clio -u http://localhost:8889 push action fio.escrow setmrkplcfg '{ "actor":"5ufabtv13hv4", "listing_fee": "5000000000", "commission_fee": 6, "max_fee": "1000000000", "e_break": 0}' -p eosio
