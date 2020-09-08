#!/bin/bash
################################################################################
#
# EOS Testing cave
#
# Created by Bohdan Kossak
# 2018 CryptoLions.io
#
# For automated testing FIO software
#
# Git Hub: https://github.com/CryptoLions
# Eos Network Monitor: http://eosnetworkmonitor.io/
#
# Edited by Casey Gardiner, Dapix
###############################################################################
TEST_NAME="Create and import FIO Key"

if [[ ! $GLOBALPATH ]]; then
    GLOBALPATH="$(dirname $(realpath $0))/../.."
fi

failed(){
    echo "0:$TEST_NAME"
    echo "$TEST_NAME - Failed" >> $GLOBALPATH/log/log_error.log;
    echo "$1" >> $GLOBALPATH/log/log_error.log;
    echo "---------------------------------" >> $GLOBALPATH/log/log_error.log;
}

tpm_stderr="$GLOBALPATH/log/tmp_std_err.log"

#--------------------------------------------------
CMD1=($($GLOBALPATH/bin/clio.sh create key))
PRIV_KEY=${CMD1[2]}
PUB_KEY=${CMD1[5]}

CMD=$($GLOBALPATH/bin/clio.sh wallet import $PRIV_KEY 2>$tpm_stderr)

ERR=$(cat $tpm_stderr)

if [[ $ERR != "" ]]; then
    failed "$ERR"
    rm $tpm_stderr;
else
    RES_PUB_KEY=($CMD)

    if [[ "${RES_PUB_KEY[4]}" == "$PUB_KEY" ]]; then
	echo "$PUB_KEY $PRIV_KEY" >> $GLOBALPATH/log/wallet_default_key.dat
	echo "1:$TEST_NAME"
    else
	failed "Created Pub Key ($PUB_KEY) != Imported (${RES_PUB_KEY[4]})"
    fi
fi




