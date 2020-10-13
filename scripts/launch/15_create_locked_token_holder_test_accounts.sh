
# Create locked token account
#Public key: 'FIO8WaU8ZT9YLixZZ41uHiYmkoRSZHgCR3anfL3YupC3boQpwvXqG'
#FIO Public Address (actor name): 'xbfugtkzvowu'
./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO8WaU8ZT9YLixZZ41uHiYmkoRSZHgCR3anfL3YupC3boQpwvXqG'", "amount": 10000000000000, "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active

#Public key: 'FIO5p54hi18swMeJMdVD7cdn1kKh76sa8QWhoCumeymHeHFkS9UTy'
#FIO Public Address (actor name): 'tdcfarsowlnk'
./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO5p54hi18swMeJMdVD7cdn1kKh76sa8QWhoCumeymHeHFkS9UTy'", "amount": 10000000000000, "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active

# Create locked token account 
#Public key: 'FIO5hViAQMMTjhkmyqJE3hN98MxKybXe8jFDgRsbt4Q684BgzeBi4'
#FIO Public Address (actor name): 'evorvygfnrzk'
./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO5hViAQMMTjhkmyqJE3hN98MxKybXe8jFDgRsbt4Q684BgzeBi4'", "amount": 20000000000000, "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active

