
# issue locked token grant to tdcfarsowlnk as lock type 2 in the amount of 10000000000000
./clio -u http://localhost:8889 push action -j eosio addlocked '{"owner":"tdcfarsowlnk","amount":10000000000000,"locktype":2}' -p eosio@active

# issue locked token grant to evorvygfnrzk as lock type 2 in the amount of 20000000000000
./clio -u http://localhost:8889 push action -j eosio addlocked '{"owner":"evorvygfnrzk","amount":20000000000000,"locktype":2}' -p eosio@active

