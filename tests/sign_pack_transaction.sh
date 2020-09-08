#!/bin/bash

TEST_NAME="Sign and Pack Transaction global"

GLOBALPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/.."
tmp_stderr="$GLOBALPATH/log/tmp_std_err.log"
debugLog="$GLOBALPATH/log/debug.log"
if [ -z "$2" ]; then DEBUG=false; else DEBUG=$2; fi

nPort=8889
wPort=9899
hostname="localhost"

#Parameters
fioPrivateKey=$( echo $1 | jq '.fioPrivateKey' | tr -d '"')
fioPublicKey=$( echo $1 | jq '.fioPublicKey' | tr -d '"')
account=$( echo $1 | jq '.account' | tr -d '"')
endPoint=$( echo $1 | jq '.endPoint' | tr -d '"')
contractAction=$( echo $1 | jq '.contractAction' | tr -d '"')
systemAccount=$( echo $1 | jq '.systemAccount' | tr -d '"')
fioAddress=$( echo $1 | jq '.fioAddress' | tr -d '"')
permission=$( echo $1 | jq '.permission' | tr -d '"')
fee=$( echo $1 | jq '.fee' | tr -d '"')
dataJson=$( echo $1 | jq '.dataJson' )


cmd="$GLOBALPATH/bin/clio --no-auto-keosd --url http://$hostname:$nPort --wallet-url http://$hostname:$wPort  convert pack_action_data $systemAccount $contractAction '$dataJson'" 
packedData=`eval $cmd` #2>$tmp_stderr
if $DEBUG ; then echo "packedData = $packedData" >>$debugLog; fi

info=$( $GLOBALPATH/bin/clio --no-auto-keosd --url http://$hostname:$nPort --wallet-url http://$hostname:$wPort  get info 2>$tmp_stderr) 
lastIrreversibleBlockNum=$( echo $info | jq '.last_irreversible_block_num' )
if $DEBUG ; then echo "lastIrreversibleBlockNum = $lastIrreversibleBlockNum" >>$debugLog; fi
chainId=$( echo $info | jq '.chain_id' )
if $DEBUG ; then echo "chainId = $chainId" >>$debugLog; fi

headBlockTime=$( echo $info | jq '.head_block_time' )
headBlockTime=$( echo $headBlockTime | tr -d '"')   #Remove quotes
headBlockTime=${headBlockTime%.*}           #Remove milliseconds
if $DEBUG ; then echo "headBlockTime = $headBlockTime" >>$debugLog; fi
date=$( echo $headBlockTime | cut -d'T' -f1 )
time=$( echo $headBlockTime | cut -d'T' -f2 )
hour=$( echo $time | cut -d':' -f1 )
min=$( echo $time | cut -d':' -f2 )
sec=$( echo $time | cut -d':' -f2 )
if [ $min -gt 54 ]; then hour=$(expr $hour + 1); min=5; else min=$(expr $min + 5); fi
newTime="$hour:$min:$sec"
expiration="${date}T${newTime}"
if $DEBUG ; then echo "expiration = $expiration" >>$debugLog; fi

blockInfo=$( $GLOBALPATH/bin/clio --no-auto-keosd --url http://$hostname:$nPort --wallet-url http://$hostname:$wPort  get block $lastIrreversibleBlockNum 2>$tmp_stderr) 
if $DEBUG ; then echo "blockInfo = $blockInfo" >>$debugLog; fi
refBlockPrefix=$( echo $blockInfo | jq '.ref_block_prefix' )
#echo ref_block_prefix: $refBlockPrefix
if $DEBUG ; then echo "refBlockPrefix = $refBlockPrefix" >>$debugLog; fi
refBlockNum=$( echo $blockInfo | jq '.block_num' )
#echo ref_block_num: $refBlockNum
if $DEBUG ; then echo "refBlockNum = $refBlockNum" >>$debugLog; fi

unsignedRequest='{
    "chain_id": "cf057bbfb72640471fd910bcb67639c22df9f92470936cddc1ade0e2f2e7dc4f",
    "expiration": "'$expiration'",
    "ref_block_num": '$refBlockNum',
    "ref_block_prefix": '$refBlockPrefix',
    "max_net_usage_words": 0,
    "max_cpu_usage_ms": 0,
    "delay_sec": 0,
    "context_free_actions": [],
    "actions": [
        {
            "account": "'$systemAccount'",
            "name": "'$contractAction'",
            "authorization": [{
                "actor": "'$account'",
                "permission": "'$permission'"
                }],
            "data": "'$packedData'"
        }
    ],
    "transaction_extensions": []
}'

#echo -------- Sign Request ----------------------

cmd="$GLOBALPATH/bin/clio --url http://localhost:8889  sign --private-key $fioPrivateKey '$unsignedRequest'"
#signedRequest=`eval $cmd` 2>$tmp_stderr
signedRequest=$( eval $cmd 2>$tmp_stderr )
#echo "signedRequest: $signedRequest"

#echo ---------- Pack Request -------------------

cmd="$GLOBALPATH/bin/clio --no-auto-keosd --verbose --url http://$hostname:$nPort --wallet-url http://$hostname:$wPort convert pack_transaction '$signedRequest'"
signedPackedRequest=`eval $cmd` 2>$tmp_stderr
#echo "signedPackedRequest: $signedPackedRequest"

#echo ---------- Send Transaction -------------------

cmd="curl -s --request POST --url http://$hostname:$nPort/v1/chain/$endPoint  --data '$signedPackedRequest'"
result=`eval $cmd` #2>$tmp_stderr

#echo ---------- Return Result -------------------

echo $result




