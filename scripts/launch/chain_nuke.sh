#!/usr/bin/env bash

killall -9 nodeos

pwd
echo $'Deleting Logs...\n'
rm -rf scripts/node1.txt
rm -rf scripts/node2.txt
rm -rf scripts/node3.txt
rm -rf scripts/walletkey.ini

cd ~/fio/$vChoice/bin
echo $'Deleting Node Data...\n'
rm -rf ~/node1
rm -rf ~/node2
rm -rf ~/node3

echo $'Deleting Chain Data...\n'
if [ -d ~/Library/Application\ Support/eosio/nodeos ]; then rm -rf ~/Library/Application\ Support/eosio/nodeos; fi # Mac OS
if [ -d ~/opt/eosio/bin/eosio/nodeos ]; then rm -rf ~~/opt/eosio/bin/eosio/nodeos; fi # Mac OS
if [ -d ~/.local/share/eosio/nodeos ]; then rm -rf ~/.local/share/eosio/nodeos; fi # Linux

echo $'Deleting Wallet Data...\n'
cd
if [ -d eosio-wallet ]; then rm -rf eosio-wallet; fi # Mac OS

echo 'Chain Data Delete Complete'

cd ~/fio/$vChoice/bin
./nodeos --hard-replay

uname |grep -q Linux && hash docker-compose >/dev/null && id |grep -q docker && \
{
    echo $'Deleting any docker containers...\n';
    pushd $oldpath/launch/producers >/dev/null;
    docker-compose down;
    popd >/dev/null;
    pushd $oldpath/launch/history >/dev/null;
    docker-compose down;
    popd >/dev/null;
    docker rmi -f $(docker images -q -f dangling=true) 2>/dev/null
}

echo $'\nNUKE COMPLETE - WELCOME TO YOUR NEW BUILD'
