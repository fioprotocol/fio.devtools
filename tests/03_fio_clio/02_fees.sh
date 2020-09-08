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
TEST_NAME="(Clio) Fees"

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

feetype="register_fio_domain"
expectedfee=40000000000
result=$( $GLOBALPATH/bin/clio --no-auto-keosd --url http://$hostname:$nPort --wallet-url http://$hostname:$wPort get table fio.fee fio.fee fiofees 2>$tmp_stderr)
assert $( echo $result | jq '.rows[0].fee_id' ) "-eq" 0 "fee_id"
assert $( echo $result | jq '.rows[0].end_point' ) "==" \"$feetype\" "register_fio_domain fee"
assert $( echo $result | jq '.rows[0].suf_amount' ) "-eq" $expectedfee "$feetype fee"

err=$(cat $tmp_stderr)

if [[ $err != "" ]]; then
    failed "$err"
    rm $tmp_stderr;
else
    echo "1:$TEST_NAME"
fi



