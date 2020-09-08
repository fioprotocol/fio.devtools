#!/bin/bash
################################################################################
#
# Scrip created by http://CryptoLions.io
# For EOSIO chains (FIO)
#
# https://github.com/CryptoLions/
#
################################################################################

proposer="5du5xkgkki5x"
#proposalName="updatesysa"
proposalName="updatesyst"


CONTRACT1_ACC="eosio"
CONTRACT1_NAME="fio.system"
CONTRACT2_ACC="fio.token"
CONTRACT2_NAME="fio.token"
CONTRACT3_ACC="eosio.msig"
CONTRACT3_NAME="eosio.msig"
CONTRACT4_ACC="eosio.wrap"
CONTRACT4_NAME="eosio.wrap"
CONTRACT5_ACC="fio.tpid"
CONTRACT5_NAME="fio.tpid"
CONTRACT6_ACC="fio.address"
CONTRACT6_NAME="fio.address"
CONTRACT7_ACC="fio.fee"
CONTRACT7_NAME="fio.fee"
CONTRACT8_ACC="fio.reqobt"
CONTRACT8_NAME="fio.request.obt"
CONTRACT9_ACC="fio.treasury"
CONTRACT9_NAME="fio.treasury"
CONTRACT10_ACC="fio.whitelst"
CONTRACT10_NAME="fio.whitelist"


CONTRACTS_FOLDER="/opt/FIO/bin/bin/Contracts"

EXPIRATION_IN_H=168
expire_date="$(date -d "+$EXPIRATION_IN_H hour" +%Y-%m-%dT16:20:00)"

#top30
PRODS=$(./cleos.sh system listproducers -j -l 30 | jq -r '.producers[] | ( "{\"actor\": \"" + .owner + "\", \"permission\": \"active\"}" )' | paste -s -d",")

#echo $PRODS
#exit;

C1=$(./cleos.sh set contract -s -j -d $CONTRACT1_ACC $CONTRACTS_FOLDER/$CONTRACT1_NAME/ -p $CONTRACT1_ACC 2>/dev/null)
#C2=$(./cleos.sh set contract -s -j -d $CONTRACT2_ACC $CONTRACTS_FOLDER/$CONTRACT2_NAME/ -p $CONTRACT2_ACC 2>/dev/null)
#C3=$(./cleos.sh set contract -s -j -d $CONTRACT3_ACC $CONTRACTS_FOLDER/$CONTRACT3_NAME/ -p $CONTRACT3_ACC 2>/dev/null)
#C4=$(./cleos.sh set contract -s -j -d $CONTRACT4_ACC $CONTRACTS_FOLDER/$CONTRACT4_NAME/ -p $CONTRACT4_ACC 2>/dev/null)
#C5=$(./cleos.sh set contract -s -j -d $CONTRACT5_ACC $CONTRACTS_FOLDER/$CONTRACT5_NAME/ -p $CONTRACT5_ACC 2>/dev/null)
#C6=$(./cleos.sh set contract -s -j -d $CONTRACT6_ACC $CONTRACTS_FOLDER/$CONTRACT6_NAME/ -p $CONTRACT6_ACC 2>/dev/null)
#C7=$(./cleos.sh set contract -s -j -d $CONTRACT7_ACC $CONTRACTS_FOLDER/$CONTRACT7_NAME/ -p $CONTRACT7_ACC 2>/dev/null)
#C8=$(./cleos.sh set contract -s -j -d $CONTRACT8_ACC $CONTRACTS_FOLDER/$CONTRACT8_NAME/ -p $CONTRACT8_ACC 2>/dev/null)
#C9=$(./cleos.sh set contract -s -j -d $CONTRACT9_ACC $CONTRACTS_FOLDER/$CONTRACT9_NAME/ -p $CONTRACT9_ACC 2>/dev/null)
#C10=$(./cleos.sh set contract -s -j -d $CONTRACT10_ACC $CONTRACTS_FOLDER/$CONTRACT10_NAME/ -p $CONTRACT10_ACC 2>/dev/null)


C=$(echo $C1 | jq -c '.expiration=$expire' --arg expire "$expire_date")
#C=$(echo $C6 | jq -c '.expiration=$expire' --arg expire "$expire_date")
#C=$(echo $C9 | jq -c '.expiration=$expire' --arg expire "$expire_date")
#C=$(echo $C1 | jq -c '.expiration=$expire | del(.actions[])' --arg expire "$expire_date")


#C1=$(echo $C1 | jq '.actions' | jq .)
#C2=$(echo $C2 | jq '.actions' | jq .)
#C3=$(echo $C3 | jq '.actions' | jq .)
#C4=$(echo $C4 | jq '.actions' | jq .)
#C5=$(echo $C5 | jq '.actions' | jq .)
#C6=$(echo $C6 | jq '.actions' | jq .)
#C7=$(echo $C7 | jq '.actions' | jq .)
#C8=$(echo $C8 | jq '.actions' | jq .)
#C9=$(echo $C9 | jq '.actions' | jq .)
#C10=$(echo $C10 | jq '.actions' | jq .)

#echo $C > jsons/c.json
#echo $C1 > jsons/c1.json
#echo $C2 > jsons/c2.json
#echo $C3 > jsons/c3.json
#echo $C4 > jsons/c4.json
#echo $C5 > jsons/c5.json
#echo $C6 > jsons/c6.json
#echo $C7 > jsons/c7.json
#echo $C8 > jsons/c8.json
#echo $C9 > jsons/c9.json
#echo $C10 > jsons/c10.json

#C=$(echo $C | jq '.actions+=$nacts' --argjson nacts "$C2")
#C=$(echo $C | jq '.actions+=$nacts' --argjson nacts "$C3")
#C=$(echo $C | jq '.actions+=$nacts' --argjson nacts "$C4")
#C=$(echo $C | jq '.actions+=$nacts' --argjson nacts "$C5")
#C=$(echo $C | jq '.actions+=$nacts' --argjson nacts "$C6")
#C=$(echo $C | jq '.actions+=$nacts' --argjson nacts "$C7")
#C=$(echo $C | jq '.actions+=$nacts' --argjson nacts "$C8")
#C=$(echo $C | jq '.actions+=$nacts' --argjson nacts "$C9")
#C=$(echo $C | jq '.actions+=$nacts' --argjson nacts "$C10")

echo $C > c
#exit


./cleos.sh multisig propose_trx $proposalName "[$PRODS]" 0 c $proposer -p $proposer



#exit
