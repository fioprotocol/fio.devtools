

#Private key: 5KK3HbWJrD1ejXa7tYxo78WAcq2upVRUSjKrZviGTZT1DsZYCoy
#Public key: FIO5hViAQMMTjhkmyqJE3hN98MxKybXe8jFDgRsbt4Q684BgzeBi4
#FIO Public Address (actor name): evorvygfnrzk
#T1u2


#Private key: 5JwmDtsJDTY2M3h9bsXZDD2tHPj3UgQf7FVpptaLeC7NzxeXnXu
#Public key: FIO8WaU8ZT9YLixZZ41uHiYmkoRSZHgCR3anfL3YupC3boQpwvXqG
#FIO Public Address (actor name): xbfugtkzvowu
#T1u3


# Create locked token account 
#Public key: 'FIO5hViAQMMTjhkmyqJE3hN98MxKybXe8jFDgRsbt4Q684BgzeBi4'
#FIO Public Address (actor name): 'evorvygfnrzk'
./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO5hViAQMMTjhkmyqJE3hN98MxKybXe8jFDgRsbt4Q684BgzeBi4'", "amount": 70007834000000000, "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active


# Create locked token account 
#Public key: 'FIO8WaU8ZT9YLixZZ41uHiYmkoRSZHgCR3anfL3YupC3boQpwvXqG'
#FIO Public Address (actor name): 'xbfugtkzvowu'
./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO8WaU8ZT9YLixZZ41uHiYmkoRSZHgCR3anfL3YupC3boQpwvXqG'", "amount": 10000000000000, "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active
