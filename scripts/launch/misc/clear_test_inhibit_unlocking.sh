#!/bin/sh

#  clear_test_inhibit_unlocking.sh
#  
#
#  Created by jackie latham on 1/15/20.
#  
#!/bin/bash
#a script to clear the inhibit flag for a set of users
cd /home/ubuntu/fio/build/bin
./clio -u http://localhost:8889 push action eosio inhibitunlck '{"owner":"rbwfkv4s2h1y","value":0}' --permission fio.foundatn@active
./clio -u http://localhost:8889 push action eosio inhibitunlck '{"owner":"kthvzmbsqywi","value":0}' --permission fio.foundatn@active
./clio -u http://localhost:8889 push action eosio inhibitunlck '{"owner":"pk3jwhi42yvs","value":0}' --permission fio.foundatn@active
./clio -u http://localhost:8889 push action eosio inhibitunlck '{"owner":"koa4cmk2dnn4","value":0}' --permission fio.foundatn@active
./clio -u http://localhost:8889 push action eosio inhibitunlck '{"owner":"fnfyxcmbqkqe","value":0}' --permission fio.foundatn@active
./clio -u http://localhost:8889 push action eosio inhibitunlck '{"owner":"nmhwljvqwifd","value":0}' --permission fio.foundatn@active
./clio -u http://localhost:8889 push action eosio inhibitunlck '{"owner":"ncmmejvfrgyb","value":0}' --permission fio.foundatn@active
./clio -u http://localhost:8889 push action eosio inhibitunlck '{"owner":"fetnc4fljrpe","value":0}' --permission fio.foundatn@active
./clio -u http://localhost:8889 push action eosio inhibitunlck '{"owner":"phyffmjubnjn","value":0}' --permission fio.foundatn@active
./clio -u http://localhost:8889 push action eosio inhibitunlck '{"owner":"5tsjifjfaexx","value":0}' --permission fio.foundatn@active
./clio -u http://localhost:8889 push action eosio inhibitunlck '{"owner":"o3tsy1uuewzt","value":0}' --permission fio.foundatn@active
