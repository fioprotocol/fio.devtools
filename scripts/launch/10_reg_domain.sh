#!/usr/bin/env bash

./clio -u http://localhost:8889 push action fio.address regdomain '{"fio_domain":"dapixdev","owner_fio_public_key":"","max_fee":"40000000000","actor":"r41zuwovtn44","tpid":""}' --permission r41zuwovtn44@active
./clio -u http://localhost:8889 push action fio.address setdomainpub '{"fio_domain":"dapixdev","is_public":1,"max_fee":"40000000000","actor":"r41zuwovtn44","tpid":""}' --permission r41zuwovtn44@active

./clio -u http://localhost:8889 push action fio.address regdomain '{"fio_domain":"fiotestnet","owner_fio_public_key":"","max_fee":"40000000000","actor":"qhh25sqpktwh","tpid":""}' --permission qhh25sqpktwh@active
./clio -u http://localhost:8889 push action fio.address setdomainpub '{"fio_domain":"fiotestnet","is_public":1,"max_fee":"40000000000","actor":"qhh25sqpktwh","tpid":""}' --permission qhh25sqpktwh@active

./clio -u http://localhost:8889 push action fio.address regdomain '{"fio_domain":"faucet","owner_fio_public_key":"","max_fee":"40000000000","actor":"qhh25sqpktwh","tpid":""}' --permission qhh25sqpktwh@active
./clio -u http://localhost:8889 push action fio.address setdomainpub '{"fio_domain":"faucet","is_public":1,"max_fee":"40000000000","actor":"qhh25sqpktwh","tpid":""}' --permission qhh25sqpktwh@active
sleep 0.5