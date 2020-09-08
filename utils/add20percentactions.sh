
#how to run...
#place this in the fio.devtools utils dir.
#cd to the fio/build dir
#to run type
#../../fio.devtools/utils/add20percentactions.sh


host='localhost:8889'

# we run the first 15 so that we can test after the fork deadline, and prove the new logic is being used
../bin/clio -u http://$host push action eosio addaction '{"action":"approve","contract":"eosio.msig","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"cancel","contract":"eosio.msig","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"invalidate","contract":"eosio.msig","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"exec","contract":"eosio.msig","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"propose","contract":"eosio.msig","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"unapprove","contract":"eosio.msig","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"regaddress","contract":"fio.address","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"regdomain","contract":"fio.address","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"addaddress","contract":"fio.address","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"remaddress","contract":"fio.address","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"remalladdr","contract":"fio.address","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"renewdomain","contract":"fio.address","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"renewaddress","contract":"fio.address","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"setdomainpub","contract":"fio.address","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"bind2eosio","contract":"fio.address","actor":"eosio"}' --permission eosio
