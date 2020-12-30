#!/bin/bash
################################################################################
#
# EOS Testing cave
#
# Tests Created by Bohdan Kossak
# 2018 CryptoLions.io
# For automated testing FIO software
# Git Hub: https://github.com/CryptoLions
#
# FIO Testing Startup Scripts
# Edited by Casey Gardiner, Ed Rotthoff, Adam Androulidakis, Todd Garrison, Dapix
#
###############################################################################

GLOBALPATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
DEBUG=false #true sends debug output to log/debug.log file

if [ -f bin/clio ]; then
    rm -rf bin/clio;
    rm -rf bin/nodeos;
    rm -rf bin/keosd;
fi

cp ../fio/build/bin/clio ./bin/clio
cp ../fio/build/bin/nodeos ./bin/nodeos
cp ../fio/build/bin/keosd ./bin/keosd

echo -n $'\E[0;31m'
cat << "EOF"
  
______ _____ _____   _____ _____ _____ _____   _____   ___  _   _ _____
|  ___|_   _|  _  | |_   _|  ___/  ___|_   _| /  __ \ / _ \| | | |  ___|
| |_    | | | | | |   | | | |__ \ `--.  | |   | /  \// /_\ \ | | | |__
|  _|   | | | | | |   | | |  __| `--. \ | |   | |    |  _  | | | |  __|
| |    _| |_\ \_/ /   | | | |___/\__/ / | |   | \__/\| | | \ \_/ / |___
\_|    \___/ \___/    \_/ \____/\____/  \_/    \____/\_| |_/\___/\____/
                                                                       
EOF
echo -n $'\E[0;32m'

cat << "EOF"
    ____              _
   / __ \____ _____  (_)  __
  / / / / __ `/ __ \/ / |/_/
 / /_/ / /_/ / /_/ / />  <
/_____/\__,_/ .___/_/_/|_|
           /_/
EOF
#`

echo -n $'\e[0;39m'

main() {
    if [ -z "$1" ]; then
    	  read -p $'\nFIO VERSION (ex. 1.1): \n(#):' vChoice
    else
        vChoice=$1
    fi
    export vChoice

    if [ -z "$2" ]; then
        read -p $'1. Local Startup 2. Tests\nChoose(#):' mChoice
    else
        mChoice=$2
    fi

    if [ $mChoice == 1 ]; then
        ./scripts/fio_launch.sh
        exit
    fi

    if [ $mChoice == 2 ]; then
        if [ -z "$2" ]; then
        read -p $'\nSelect a Test:\n1. register_fio_address(signed)\n2. register_fio_domain(signed)\n3. Run curl tests\n4. Run curl tests DEBUG\nChoose(#):' tChoice
        else
        tChoice=$2
        fi

        if [ $tChoice == 1 ]; then
        cd bin
        ../utils/signed-register_fio_address.sh
        exit
        fi

        if [ $tChoice == 2 ]; then
        cd bin
        ../utils/signed-register_fio_domain.sh
        exit
        fi

        if [ $tChoice == 3 ]; then
        runTests
        exit
        fi

        if [ $tChoice == 4 ]; then
        DEBUG=true
        runTests
        exit
        fi
    fi
}

printTestResult() {
    T_=$1 $2

    T1=$(echo $T_ | cut -d ":" -f 1) #The status code
    T2=$(echo $T_ | cut -d ":" -f 2) #The name of the test

    if [[ $T1 -eq 1 ]]; then
	    printf '\e[1;39m%-75s\e[m \e[1;32m%-25s\e[m\n' " $T2" "[OK]"
	    TEST_OK_WALLET=$(($TEST_OK_WALLET+1))
	    TEST_OK=$(($TEST_OK+1))
    else
	    printf '\e[1;39m%-75s\e[m \e[1;31m%-25s\e[m\n' " $T2" "[FAILED]"
	    TEST_FAILED_WALLET=$(($TEST_FAILED_WALLET+1))
	    TEST_FAILED=$(($TEST_FAILED+1))
    fi
}

startCategoryTest(){
    DIR=$1;

    echo "";
    echo -e "╔════════════════════╣  Test $1  ╠═══════════════════════════╗\n";

    mydir=$(pwd)
    STARTTIME_GROUP=$(date +%s)
    TEST_FAILED_WALLET=0
    TEST_OK_WALLET=0

    cd $1
    for file in *.sh; do
        printTestResult "$(./$file $DEBUG)" 
    done

    cd $mydir

    ENDTIME_GROUP=$(date +%s)
    DIFF_GROUP=$(echo "$ENDTIME_GROUP - $STARTTIME_GROUP" | bc)

    echo ""
    echo -e "┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫"
    echo " Tests: $1"
    echo " Time: $DIFF_GROUP sec"
    printf " Group Total \e[32mOK\e[39m/\e[31mFailed\e[39m/\e[1;39mTotal\e[m tests: \e[32m$TEST_OK_WALLET\e[m/\e[31m$TEST_FAILED_WALLET\e[m/\e[1;39m"$((TEST_OK_WALLET+TEST_FAILED_WALLET))"\e[m \n"

    echo -e "╚══════════════════════════════════════════════════════════════════════════════╝";
}


runTests(){
    echo "START TESTING..."
    TEST_FAILED=0
    TEST_OK=0

    STARTTIME=$(date +%s)

    #startCategoryTest "tests/01_wallet"
    #startCategoryTest "tests/02_account"
    #startCategoryTest "tests/03_fio_clio"
    startCategoryTest "tests/04_fio_curl"

    ENDTIME=$(date +%s)
    DIFF=$(echo "$ENDTIME - $STARTTIME" | bc)

    echo ""
    echo ""
    echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo -e "▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
    echo -e "▒"
    echo -e "▒  Time: $DIFF sec"
    #echo -e "\▒  Total \e[32mOK\e[39m/\e[31mFailed\e[39m/\e[1;39mTotal\e[m for all tests: \e[32m$TEST_OK\e[m/\e[31m$TEST_FAILED\e[m/\e[1;39m"$((TEST_OK+TEST_FAILED))""
    echo -e "▒"
    echo -e "▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
    echo ""
    read -n 1 -s -r -p "Press any key to continue"
    echo ""
}

#Run test harness
main $1
