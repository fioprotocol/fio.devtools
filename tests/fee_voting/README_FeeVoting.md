# Testing the fee voting.

purpose: the purpose of this document is to describe the testing procedures that can be used to test a 24 node test net initialized using the fio development launcher. these tests allow the developer to have confidence that the fee voting is working as it should..

Approach :

we perform a process of voting for fees register_fio_domain register_fio_address and starting at BP1 we vote 10 FIO for BP2 we vote 20 FIO and so on til BP 16 voting with 160 FIO.

when we vote fees for the first 14 BPs we should see no change in the fees (this is below the threshod of 15 required votes)
when we vote fees for the first 15 BPs we should see that BP 8 vote becomes the fee (80 FIO)
when we vote fees for the first 16 BPs we should see that the resulting fee is (BP 8 vote (80 FIO) plus BP 9 vote (90 FIO) ) / 2 or 85 FIO. 

ASSUMPTION all commands are run from the fio.devtools directory

Step 1:  have a server set up on AWS/azure with the desired code branch for fio and fio.develop, contact casey to setup servers.
Step 2: get the ssh command and instructions to access the server. see casey 
Step 3: log into the server and go to the fio.devtools directory.
Step 4: ./start.sh 1   select option 3 select option 1
Step 5: ./start.sh 1  select option 1
Step 6: ./start.sh 1 select option 4 to start 24 node test net.
Step 7: wait a minute or 2 for the BPs to achieve a spot in the schedule.
Step 8:  ./tests/fee_voting/BP_vote_fees14.sh
Step 9: ../fio/build/bin/clio -u http://localhost:8889 get table fio.fee fio.fee fiofees --limit 2000 | grep -A10 -B5 register_fio_domain
note the results – fees remain the initialized fees
{
"rows": [{
"fee_id": 0,
"end_point": "register_fio_domain",
"end_point_hash": "0xe7961b95f481a901b3bfa23b800c8fb3",
"type": 0,
"suf_amount": 800000000000
},{
"fee_id": 1,
"end_point": "register_fio_address",
"end_point_hash": "0x1a5f09714542254caaab363d520adfbd",
"type": 0,
"suf_amount": 40000000000
},{
Step 10:  ./tests/fee_voting/BP_vote_fees15.sh. – note, you may see errors on 14 of the votes, do not be concerned, we need to add the 15th vote so the first 14 votes are identical to whats been voted so far.
Step 11: ../fio/build/bin/clio -u http://localhost:8889 get table fio.fee fio.fee fiofees --limit 2000 | grep -A10 -B5 register_fio_domain
Note the results look as follows
"rows": [{
"fee_id": 0,
"end_point": "register_fio_domain",
"end_point_hash": "0xe7961b95f481a901b3bfa23b800c8fb3",
"type": 0,
"suf_amount": 80000000000
},{
"fee_id": 1,
"end_point": "register_fio_address",
"end_point_hash": "0x1a5f09714542254caaab363d520adfbd",
"type": 0,
"suf_amount": 80000000000
},{
Step 12:  ./tests/fee_voting/BP_vote_fees16.sh. – note, you may see errors on 15 of the votes, do not be concerned, we need to add the 16th vote so the first 15 votes are identical to whats been voted so far.
Step 13: ../fio/build/bin/clio -u http://localhost:8889 get table fio.fee fio.fee fiofees --limit 2000 | grep -A10 -B5 register_fio_domain
Note the results look as follows
"rows": [{
"fee_id": 0,
"end_point": "register_fio_domain",
"end_point_hash": "0xe7961b95f481a901b3bfa23b800c8fb3",
"type": 0,
"suf_amount": 85000000000
},{
"fee_id": 1,
"end_point": "register_fio_address",
"end_point_hash": "0x1a5f09714542254caaab363d520adfbd",
"type": 0,
"suf_amount": 85000000000
},{

