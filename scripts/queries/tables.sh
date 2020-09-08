#!/usr/bin/env bash

cd ~/fio/$vChoice/bin

if [ -z "$1" ]; then
    read -p $'\n1. fioreqctxts 2. fionames 3. domains 4. accountmap 5. fioreqsts\n6. producers 7. voters 8. fdtnrewards 9. recordobts 10. FIO Token Stat 11. bundlevoters\nChoose(#):' mChoice
else
    mChoice=$1
fi

if [ $mChoice == 1 ]; then
    ./clio -u http://localhost:8889 get table -l -1 fio.reqobt fio.reqobt fioreqctxts
elif [ $mChoice == 2 ]; then
    ./clio -u http://localhost:8889 get table -l -1 fio.address fio.address fionames
elif [ $mChoice == 3 ]; then
    ./clio -u http://localhost:8889 get table -l -1 fio.address fio.address domains
elif [ $mChoice == 4 ]; then
    ./clio -u http://localhost:8889 get table -l -1 fio.address fio.address accountmap
elif [ $mChoice == 5 ]; then
    ./clio -u http://localhost:8889 get table -l -1 fio.reqobt fio.reqobt fioreqstss
elif [ $mChoice == 6 ]; then
    ./clio -u http://localhost:8889 get table -l -1 eosio eosio producers
elif [ $mChoice == 7 ]; then
    ./clio -u http://localhost:8889 get table -l -1 eosio eosio voters
elif [ $mChoice == 8 ]; then
    ./clio -u http://localhost:8889 get table -l -1 fio.treasury fio.treasury fdtnrewards
elif [ $mChoice == 9 ]; then
    ./clio -u http://localhost:8889 get table -l -1 fio.reqobt fio.reqobt recordobts
elif [ $mChoice == 10 ]; then
    ./clio -u http://localhost:8889 get table fio.token FIO stat
elif [ $mChoice == 11 ]; then
    ./clio -u http://localhost:8889 get table fio.fee fio.fee bundlevoters
fi
