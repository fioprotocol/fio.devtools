#!/usr/bin/env bash
dom=1
retries=3

# create foundation multi signature account with 150,000 fio tokens, private key becomes useless when we create the msig.
#Private key: 5KjKZyDuk1t5b8UGpjbqzmSYZViUdcPVgfJUsDjPGTKdHUtdHvt
#Public key: FIO8BtuJ4FYSCM44pPLZHzCrsJfw5cSnC6iWn7LajuJzSDstqTr9s
#FIO Public Address (actor name): mwv42t2vjzkv
./clio -u http://localhost:8879 push action -j fio.token trnsfiopubky '{"payee_public_key": "FIO8BtuJ4FYSCM44pPLZHzCrsJfw5cSnC6iWn7LajuJzSDstqTr9s", "amount": "150000000000000", "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active

# create 9 participatory accounts in a multi signature account
#1
#Private key: 5JXxe8wHYkUDjW8xqSYRJQmjoEG4shuvrgXzLtS9DuqeVhZKodn
#Public key: FIO5j7MmJN5PxTmGf3RLtcwdXqsWsvBzpspZYmzJAAPwobYot9L1F
#FIO Public Address (actor name): iahg1zpkd12n
./clio -u http://localhost:8879 push action -j fio.token trnsfiopubky '{"payee_public_key": "FIO5j7MmJN5PxTmGf3RLtcwdXqsWsvBzpspZYmzJAAPwobYot9L1F", "amount": "1000000000", "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active
#2
#Private key: 5JddpG5YfK2JUEZL2oGry8VAbK5jTWdUT8WmECBc14EdgoLFN1r
#Public key: FIO8g74aBqUFjSe4PVh7ZRNRGMk1awMZuTg4vtiEszEEP8FyC5Toa
#FIO Public Address (actor name): mefrpkqgqbvt
./clio -u http://localhost:8879 push action -j fio.token trnsfiopubky '{"payee_public_key": "FIO8g74aBqUFjSe4PVh7ZRNRGMk1awMZuTg4vtiEszEEP8FyC5Toa", "amount": "1000000000", "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active
#3
#Private key: 5JbFiQ8DLXfA6d7oPMg6iZnNfADgXKbs1VjGuL54KSuYLuxTeST
#Public key: FIO7k36HiCfmsFPbkHCrUYNFRJtSNnWWLKqznsBrV1uYXTU4fRt5G
#FIO Public Address (actor name): r5f1hriukyq3
./clio -u http://localhost:8879 push action -j fio.token trnsfiopubky '{"payee_public_key": "FIO7k36HiCfmsFPbkHCrUYNFRJtSNnWWLKqznsBrV1uYXTU4fRt5G", "amount": "1000000000", "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active
#4
#Private key: 5Jumr3oxsKMYgm9ngRq7YCJKLRiiRnwbbsYt3mwEwpmWqBf5PLo
#Public key: FIO83TupKVSH1dG5V67FLNzLjP73VApGkAQSpPriqYa9gbUzetxLt
#FIO Public Address (actor name): zrd3um5xoxlk
./clio -u http://localhost:8879 push action -j fio.token trnsfiopubky '{"payee_public_key": "FIO83TupKVSH1dG5V67FLNzLjP73VApGkAQSpPriqYa9gbUzetxLt", "amount": "1000000000", "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active
#5
#Private key: 5KaLisPyEzSmMPBAR7cmTzcSjJJStZ6NnqPbBPFpge4mHzVsfAk
#Public key: FIO5NPqHSaHR4s1dr4exwwpQLFH89arNCFjAeNMAGc5RnTFMWGvKF
#FIO Public Address (actor name): zwy1msikpomb
./clio -u http://localhost:8879 push action -j fio.token trnsfiopubky '{"payee_public_key": "FIO5NPqHSaHR4s1dr4exwwpQLFH89arNCFjAeNMAGc5RnTFMWGvKF", "amount": "1000000000", "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active
#6
#Private key: 5K9hbWjVMEj1LkLvLh8nrXBvenXvhF1AZ9QF3zSvDGRYWU6uRii
#Public key: FIO59mmePrDRKgpzpY9BvLb7Lqo17ZXD9qjjqzB8yP2XDxV9j7Ezs
#FIO Public Address (actor name): 2nsn2fklp3qt
./clio -u http://localhost:8879 push action -j fio.token trnsfiopubky '{"payee_public_key": "FIO59mmePrDRKgpzpY9BvLb7Lqo17ZXD9qjjqzB8yP2XDxV9j7Ezs", "amount": "1000000000", "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active
#7
#Private key: 5KZaZxe8SxNEoXEG4e2RqzvJx7yc8H3WtgpYKacbFshnsy9G3nG
#Public key: FIO4vcNBgzii7dULcmWohsqDB2tMMaA4q5zKgw6cnUxuiSDosKi5m
#FIO Public Address (actor name): 4kqd2qtmfaa4
./clio -u http://localhost:8879 push action -j fio.token trnsfiopubky '{"payee_public_key": "FIO4vcNBgzii7dULcmWohsqDB2tMMaA4q5zKgw6cnUxuiSDosKi5m", "amount": "1000000000", "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active
#8
#Private key: 5Huesp6F8KWy6TbXH2TjhRvSf1N9d1h1uoqMb9Gq8zeBQw9hps4
#Public key: FIO6dLL6c8Ndq6ZYLJK65NsHLQH8DqrVgVArq6AFByGVvy9mWJDEF
#FIO Public Address (actor name): 4uavbl5lae33
./clio -u http://localhost:8879 push action -j fio.token trnsfiopubky '{"payee_public_key": "FIO6dLL6c8Ndq6ZYLJK65NsHLQH8DqrVgVArq6AFByGVvy9mWJDEF", "amount": "1000000000", "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active
#9
#Private key: 5KL9bCjqi1bKtXEDA8awMUK6MGUUqn45nxrvzx1UbMGc16v4PqK
#Public key: FIO5ez5QUUdc6wmgiAYbdmL2rETVyT5nAjuQ9pznyuxpL8Wq1wFnc
#FIO Public Address (actor name): 5cbvokp5zwxy
./clio -u http://localhost:8879 push action -j fio.token trnsfiopubky '{"payee_public_key": "FIO5ez5QUUdc6wmgiAYbdmL2rETVyT5nAjuQ9pznyuxpL8Wq1wFnc", "amount": "1000000000", "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active
sleep 5
#create the MSIG
#IMPORTANT NOTE -- accounts and keys MUST be in alpha sorted order in updateauth.
./clio -u http://localhost:8889 push action eosio updateauth '{"account": "mwv42t2vjzkv", "permission": "owner","max_fee":4000000000, "parent": "",  "auth": { "threshold": 6, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"2nsn2fklp3qt","permission":"active"},"weight":1},{"permission":{"actor":"4kqd2qtmfaa4","permission":"active"},"weight":1},{"permission":{"actor":"4uavbl5lae33","permission":"active"},"weight":1},{"permission":{"actor":"5cbvokp5zwxy","permission":"active"},"weight":1},{"permission":{"actor":"iahg1zpkd12n","permission":"active"},"weight":1},{"permission":{"actor":"mefrpkqgqbvt","permission":"active"},"weight":1},{"permission":{"actor":"r5f1hriukyq3","permission":"active"},"weight":1},{"permission":{"actor":"zrd3um5xoxlk","permission":"active"},"weight":1},{"permission":{"actor":"zwy1msikpomb","permission":"active"},"weight":1}] } } ' -p mwv42t2vjzkv@owner
sleep 2
./clio -u http://localhost:8889 push action eosio updateauth '{"account": "mwv42t2vjzkv", "permission": "active", "max_fee":4000000000, "parent": "owner",  "auth": { "threshold": 6, "keys": [], "waits": [], "accounts":[{"permission":{"actor":"2nsn2fklp3qt","permission":"active"},"weight":1},{"permission":{"actor":"4kqd2qtmfaa4","permission":"active"},"weight":1},{"permission":{"actor":"4uavbl5lae33","permission":"active"},"weight":1},{"permission":{"actor":"5cbvokp5zwxy","permission":"active"},"weight":1},{"permission":{"actor":"iahg1zpkd12n","permission":"active"},"weight":1},{"permission":{"actor":"mefrpkqgqbvt","permission":"active"},"weight":1},{"permission":{"actor":"r5f1hriukyq3","permission":"active"},"weight":1},{"permission":{"actor":"zrd3um5xoxlk","permission":"active"},"weight":1},{"permission":{"actor":"zwy1msikpomb","permission":"active"},"weight":1}] } } ' -p mwv42t2vjzkv@active
sleep 2
# propose a proposal on the MSIG account.
# propose the proposal name "payme" which must be signed by 6 of the 8 others on the board
# to be accepted
# trnsfiopubky 199 fio from the msig account to 2nsn2fklp3qt account.
./clio -u http://localhost:8889 multisig propose payme '[{"actor": "4kqd2qtmfaa4", "permission": "active"},{"actor": "4uavbl5lae33", "permission": "active"},{"actor": "5cbvokp5zwxy", "permission": "active"},{"actor": "iahg1zpkd12n", "permission": "active"},{"actor": "mefrpkqgqbvt", "permission": "active"},{"actor": "r5f1hriukyq3", "permission": "active"},{"actor": "zrd3um5xoxlk", "permission": "active"},{"actor": "zwy1msikpomb", "permission": "active"}]' '[{"actor": "mwv42t2vjzkv", "permission": "active"}]' fio.token trnsfiopubky '{"payee_public_key":"FIO59mmePrDRKgpzpY9BvLb7Lqo17ZXD9qjjqzB8yP2XDxV9j7Ezs", "amount":199000000000, "max_fee":40000000000, "actor":"mwv42t2vjzkv", "tpid":""}' 4000000000 -p 2nsn2fklp3qt@active

#to check account balances do this command with the appropriate account name
#../fio/build/bin/clio -u http://localhost:8889 get currency balance fio.token euwdcp13zlrj

#to review the state msig proposal do this command
# ../fio/build/bin/clio -u http://localhost:8889 multisig review  2nsn2fklp3qt payme  --show-approvals

#to approve using adam
#../fio/build/bin/clio -u http://localhost:8889 multisig approve 2nsn2fklp3qt payme '{"actor": "4uavbl5lae33", "permission": "active"}' -p 4uavbl5lae33@active

#to try to execute the msig action, this will fail before the required approvals are performed and
#will succeed after the required approvals are performed.
#../fio/build/bin/clio -u http://localhost:8889 multisig exec 2nsn2fklp3qt payme -p 2nsn2fklp3qt@active
