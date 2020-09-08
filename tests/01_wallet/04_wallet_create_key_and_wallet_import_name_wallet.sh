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
# Edited by Casey Gardiner
###############################################################################
if [[ ! $GLOBALPATH ]]; then
    GLOBALPATH="$(dirname $(realpath $0))/../.."
fi

config="$GLOBALPATH/config.json"
NAME="$( jq -r '.wallet_test_name' "$config" )"

TEST_NAME="Create FIO Key and import to wallet $NAME"

failed(){
    echo "0:$TEST_NAME"
    echo "$TEST_NAME - Failed" >> $GLOBALPATH/log/log_error.log;
    echo "$1" >> $GLOBALPATH/log/log_error.log;
    echo "---------------------------------" >> $GLOBALPATH/log/log_error.log;
}

tpm_stderr="$GLOBALPATH/log/tmp_std_err.log"

#-------------------------------------------------------
CMD1=($($GLOBALPATH/bin/clio.sh create key))
PRIV_KEY=${CMD1[2]}
PUB_KEY=${CMD1[5]}

CMD=$($GLOBALPATH/bin/clio.sh wallet import -n $NAME $PRIV_KEY 2>$tpm_stderr)

ERR=$(cat $tpm_stderr)

if [[ $ERR != "" ]]; then
    failed "$ERR"
    rm $tpm_stderr
else
    RES_PUB_KEY=($CMD)

    if [[ "${RES_PUB_KEY[4]}" == "$PUB_KEY" ]]; then
        echo "1:$TEST_NAME"
	echo "$PUB_KEY $PRIV_KEY" >> "$GLOBALPATH/log/wallet_name_"$NAME"_key.dat"
    else
        failed "Created Pub Key ($PUB_KEY) != Imported (${RES_PUB_KEY[4]})"
    fi

fi




