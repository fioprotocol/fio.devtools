#!/bin/bash
TEST_NAME="(curl) Fees"

GLOBALPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../.."
tmp_stderr="$GLOBALPATH/log/tmp_std_err.log"
touch $tmp_stderr
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

nPort=8889
wPort=9899
hostname="localhost"

endPoint="get_fee"
feeType="register_fio_domain"
expectedfee=40000000000

data='{
  "end_point": "'$feeType'",
}'

cmd="curl -s --request POST --url http://$hostname:$nPort/v1/chain/$endPoint  --data '$data'"
result=`eval $cmd` #2>$tmp_stderr
if $DEBUG ; then echo "result = $result" >>$debugLog; fi

#assert $( echo $result | jq '.fee' ) "-eq" $expectedfee "$feetype fee"
assert $result ".fee" "-eq" $expectedfee "$feetype fee"

#---------------------------------------------
ERR=$(cat $tmp_stderr)
if [[ $ERR != "" ]]; then
    failed "$ERR"
    rm $tmp_stderr;
else
    echo "1:$TEST_NAME"
fi



