
# issue locked token grant to evorvygfnrzk as lock type 1 in the amount of 20000000000000
./clio -u http://localhost:8889 push action -j eosio addlocked '{"owner":"evorvygfnrzk","amount":70007834000000000,"locktype":1}' -p eosio@active

# issue locked token grant to xbfugtkzvowu as lock type 1 in the amount of 10000000000000
./clio -u http://localhost:8889 push action -j eosio addlocked '{"owner":"xbfugtkzvowu","amount":10000000000000,"locktype":1}' -p eosio@active
