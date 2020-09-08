#!/bin/bash
TEST_NAME="(curl) Register Producer"

GLOBALPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../.."
tmp_stderr="$GLOBALPATH/log/tmp_std_err.log"
debugLog="$GLOBALPATH/log/debug.log"
DEBUG=$1
if $DEBUG ; then printf "\nTEST_NAME = $TEST_NAME" >>$debugLog; fi

#---------------------------------------------

failed(){
    echo "0:$TEST_NAME"
    echo "$TEST_NAME - Failed" >> $GLOBALPATH/log/log_error.log;
    echo "$1" >> $GLOBALPATH/log/log_error.log;
    echo "---------------------------------" >> $GLOBALPATH/log/log_error.log;
}

# $1 - Json result; $2 - actual; $3 - operator; $4 - expected; $5: label
assert (){          
  value=$( echo $1 | jq $2 2>/dev/null)
  if $DEBUG ; then echo "Assertion:  "$value" $3 "$4" " >>$debugLog; fi
  if [ ! "$value" $3 "$4" ]; then 
  #if [ ! $value $3 $4 ]; then 
    echo "Assertion failed:  $5" >>$tmp_stderr;
    echo "Actual:   $value" >>$tmp_stderr;
    echo "Operator: $3" >>$tmp_stderr;
    echo "Expected: $4" >>$tmp_stderr;
  fi  
}      

#---------------------------------------------
fioPrivateKey="5JBbUG5SDpLWxvBKihMeXLENinUzdNKNeozLas23Mj6ZNhz3hLS"
fioPublicKey="FIO6G9pXXM92Gy5eMwNquGULoCj3ZStwPLPdEb9mVXyEHqWN7HSuA"
account="o2ouxipw2rt4" 
endPoint="register_producer"
contractAction="regproducer"
systemAccount="eosio"
fioAddress="vote1:dapix"
permission="active"
fee="100000000000"
dataJson='{
  "fio_address":"'$fioAddress'",
  "fio_pub_key":"'$fioPublicKey'",
  "url":"https://bobp.io/",
  "location":80,
  "actor":"'$account'",
  "max_fee":"'$fee'"
}'

#---------- Package params and send to sign_pack_transaction (do not edit) ------------
params='{
  "fioPrivateKey": "'$fioPrivateKey'",
  "fioPublicKey": "'$fioPublicKey'",
  "account": "'$account'",
  "endPoint": "'$endPoint'",
  "contractAction": "'$contractAction'",
  "systemAccount": "'$systemAccount'",
  "fioAddress": "'$fioAddress'",
  "permission": "'$permission'",
  "fee": "'$fee'",
  "dataJson": '$dataJson'
}'

cmd="$GLOBALPATH/tests/sign_pack_transaction.sh"
result=$($cmd "$params" $DEBUG ) 
if $DEBUG ; then echo "result = $result" >>$debugLog; fi

#---------------------------------------------
# assert parameters: 1) $result, 2) json key, 3) operator, 4) expected value, 5) message

#TODO. Fails on first run. Only works if producer already registered need to update.
assert "$result" ".fields[0].error" "=" \""Already registered as producer\"" \""Account Already registered as producer\"" 

#---------------------------------------------
ERR=$(cat $tmp_stderr)
if [[ $ERR != "" ]]; then
    failed "$ERR"
    rm $tmp_stderr;
else
    echo "1:$TEST_NAME"
fi



