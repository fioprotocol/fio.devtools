cd ~/fio/$vChoice/bin
pwd

./clio -u http://localhost:8889 push action fio.oracle regoracle '{"oracle_actor":"qbxn5zhw2ypw","actor":"eosio"}' --permission eosio
./clio -u http://localhost:8889 push action fio.oracle regoracle '{"oracle_actor":"hfdg2qumuvlc","actor":"eosio"}' --permission eosio
./clio -u http://localhost:8889 push action fio.oracle regoracle '{"oracle_actor":"wttywsmdmfew","actor":"eosio"}' --permission eosio

./clio -u http://localhost:8889 push action fio.oracle setoraclefee '{"wrap_fio_domain":2000000000,"wrap_fio_tokens":2000000000,"actor":"qbxn5zhw2ypw"}' --permission qbxn5zhw2ypw
./clio -u http://localhost:8889 push action fio.oracle setoraclefee '{"wrap_fio_domain":2000000000,"wrap_fio_tokens":2000000000,"actor":"hfdg2qumuvlc"}' --permission hfdg2qumuvlc
./clio -u http://localhost:8889 push action fio.oracle setoraclefee '{"wrap_fio_domain":2000000000,"wrap_fio_tokens":2000000000,"actor":"wttywsmdmfew"}' --permission wttywsmdmfew