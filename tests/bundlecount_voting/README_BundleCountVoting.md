# Testing the bundle count voting.

purpose: the purpose of this document is to describe the testing procedures that can be used to test a 24 node test net initialized using the fio development launcher. these tests allow the developer to have confidence that the bundle count voting is working as it should..

Approach :

we perform a process of voting for bundle count at BP1 we vote 10  for BP2 we vote 20  and so on til BP 16 voting with 160 .

when we vote bundle count for the first 14 BPs we should see no change in the fees (this is below the threshod of 15 required votes)
when we vote bundle count for the first 15 BPs we should see that BP 8 vote becomes the bundle count (80 )
when we vote bundle count for the first 16 BPs we should see that the resulting fee is (BP 8 vote (80 ) plus BP 9 vote (90 ) ) / 2 or 85 . 

ASSUMPTIONS :   all steps are performed from the fio.devtools directory. 
Step 1:  have a server set up on AWS/azure with the desired code branch for fio and fio.develop, contact casey to setup servers.
Step 2: get the ssh command and instructions to access the server. see casey 
Step 3: log into the server and go to the fio.devtools directory.
Step 4: ./start.sh 1   select option 3 select option 1
Step 5: ./start.sh 1  select option 1
Step 6: ./start.sh 1 select option 4 to start 24 node test net.
Step 7: wait a minute or 2 for the BPs to achieve a spot in the schedule.
Step 8: ./tests/bundlecount_voting/BP_vote_bundle14.sh

Step 9: ../fio/build/bin/clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO7dH43FzKpBS6m8ZvskDtREaUj9LrnZ7ZwpsVFm61npPbymsr9t'", "amount": 1000000000000, "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active

Step 10: ../fio/build/bin/clio -u http://localhost:8889 wallet import --private-key 5JuFNtd4coNANvozjpuDaMAm4bewBaVGiXXATgicqU9FuLHou6g -n fio

Step 11: ../fio/build/bin/clio -u http://localhost:8889 push action -j fio.address regaddress '{"fio_address":"eddie2@dapixdev","owner_fio_public_key":"","max_fee":"40000000000","actor":"cg2bzn34j3l2","tpid":""}' --permission cg2bzn34j3l2@active

Step 12: ../fio/build/bin/clio -u http://localhost:8889 get table fio.address fio.address fionames --limit 2000 | grep -A15 eddie2.dapixdev
Note results
"name": "eddie2@dapixdev",
"namehash": "0xe200297af0335be301b89c0180f8cfcb",
"domain": "dapixdev",
"domainhash": "0xf5bac83b5b9f6c2e284314e69d3fdc13",
"expiration": 1621257049,
"owner_account": "cg2bzn34j3l2",
"addresses": [{
"token_code": "FIO",
"chain_code": "FIO",
"public_address": "FIO7dH43FzKpBS6m8ZvskDtREaUj9LrnZ7ZwpsVFm61npPbymsr9t"
}
],
"bundleeligiblecountdown": 100
}


Step 13:  ./tests/bundlecount_voting/BP_vote_bundle15.sh

Step 14: ../fio/build/bin/clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO89riVdieDdukVmACTh2apFEoMpdqAN21ULHH9qTzuQxZmPThvR'", "amount": 1000000000000, "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active

Step 15: ../fio/build/bin/clio -u http://localhost:8889 wallet import --private-key 5JaNa78Ex1T6h6GLNTa4fzCTeDKETQpCucbJFdzuQbMAtSiACVn -n fio

Step 16: ../fio/build/bin/clio -u http://localhost:8889 push action -j fio.address regaddress '{"fio_address":"eddie3@dapixdev","owner_fio_public_key":"","max_fee":"40000000000","actor":"hv3ogtjxtcu3","tpid":""}' --permission hv3ogtjxtcu3@active

Step 17: ../fio/build/bin/clio -u http://localhost:8889 get table fio.address fio.address fionames --limit 2000 | grep -A15 eddie3.dapixdev
Note Results
"name": "eddie3@dapixdev",
"namehash": "0x3bc87c1070a10589baa4d8cf92498398",
"domain": "dapixdev",
"domainhash": "0xf5bac83b5b9f6c2e284314e69d3fdc13",
"expiration": 1621259982,
"owner_account": "hv3ogtjxtcu3",
"addresses": [{
"token_code": "FIO",
"chain_code": "FIO",
"public_address": "FIO89riVdieDdukVmACTh2apFEoMpdqAN21ULHH9qTzuQxZmPThvR"
}
],
"bundleeligiblecountdown": 80
}




Step 18:  ./tests/bundlecount_voting/BP_vote_bundle16.sh

Step 19: ../fio/build/bin/clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO6kZdds1HiayfRYtw77DemNXR4FujrYAGNhMevhpwScxCRA9jon'", "amount": 1000000000000, "max_fee": "40000000000", "actor": "eosio","tpid":""}' -p eosio@active

Step 20: ../fio/build/bin/clio -u http://localhost:8889 wallet import --private-key 5JWiXsAwAMyWEmxmH3CNG3t42CRGuJvNtxBsi2WMcdKoMFLuE9n -n fio

Step 21: ../fio/build/bin/clio -u http://localhost:8889 push action -j fio.address regaddress '{"fio_address":"eddie4@dapixdev","owner_fio_public_key":"","max_fee":"40000000000","actor":"p5g3kva5otyb","tpid":""}' --permission p5g3kva5otyb@active

Step 22: ../fio/build/bin/clio -u http://localhost:8889 get table fio.address fio.address fionames --limit 2000 | grep -A15 eddie4.dapixdev
Note results
"name": "eddie4@dapixdev",
"namehash": "0x762208e216945eaa798b59a062af9169",
"domain": "dapixdev",
"domainhash": "0xf5bac83b5b9f6c2e284314e69d3fdc13",
"expiration": 1621260246,
"owner_account": "p5g3kva5otyb",
"addresses": [{
"token_code": "FIO",
"chain_code": "FIO",
"public_address": "FIO6kZdds1HiayfRYtw77DemNXR4FujrYAGNhMevhpwScxCRA9jon"
}
],
"bundleeligiblecountdown": 85
}
