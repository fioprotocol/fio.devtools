#!/bin/bash
################################################################################
#
# EOS Testing cave
#
# Created by Bohdan Kossak
# 2018 CryptoLions.io
#
# For automated testing EOS software
#
# Git Hub: https://github.com/CryptoLions
# Eos Network Monitor: http://eosnetworkmonitor.io/
#
# 
###############################################################################
TEST_NAME="Register Producer"

GLOBALPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../.."
tmp_stderr="$GLOBALPATH/log/tmp_std_err.log"

#---------------------------------------------

failed(){
    echo "0:$TEST_NAME"
    echo "$TEST_NAME - Failed" >> $GLOBALPATH/log/log_error.log;
    echo "$1" >> $GLOBALPATH/log/log_error.log;
    echo "---------------------------------" >> $GLOBALPATH/log/log_error.log;
}

assert (){                     
  if [ ! $1 $2 $3 ]; then # $1: actual; $2: operator; $3: expected; $4: label
    echo "Assertion failed:  $4" >>$tmp_stderr;
    echo "Actual:   $1" >>$tmp_stderr;
    echo "Operator: $2" >>$tmp_stderr;
    echo "Expected: $3" >>$tmp_stderr;
  fi  
}      

#---------------------------------------------

nPort=8889
wPort=9899
hostname="localhost"
dataJson="{\"fio_address\":\"adam:dapix\",\"url\":\"eddie.com\",\"location\":\"0\",\"actor\":\"htjonrkf1lgs\",\"max_fee\":\"100000000000\"}"
#expectedPackedData=056461706978104208414933a95b

result=$( $GLOBALPATH/bin/clio --no-auto-keosd --url http://$hostname:$nPort --wallet-url http://$hostname:$wPort  convert pack_action_data eosio regproducer $dataJson 2>$tmp_stderr)
assert $result ">" 0 "packed data"
ERR=$(cat $tmp_stderr)

if [[ $ERR != "" ]]; then
    failed "$ERR"
    rm $tmp_stderr;
else
    echo "1:$TEST_NAME"
fi



