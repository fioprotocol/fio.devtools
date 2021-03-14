#!/usr/bin/env bash

./clio -u http://localhost:8889 push action -j fio.address regdomain '{"fio_domain":"dapixdev","owner_fio_public_key":"","max_fee":"40000000000","actor":"r41zuwovtn44","tpid":""}' --permission r41zuwovtn44@active
./clio -u http://localhost:8889 push action -j fio.address setdomainpub '{"fio_domain":"dapixdev","is_public":1,"max_fee":"40000000000","actor":"r41zuwovtn44","tpid":""}' --permission r41zuwovtn44@active

./clio -u http://localhost:8889 push action -j fio.address regdomain '{"fio_domain":"fiotestnet","owner_fio_public_key":"","max_fee":"40000000000","actor":"qhh25sqpktwh","tpid":""}' --permission qhh25sqpktwh@active
./clio -u http://localhost:8889 push action -j fio.address setdomainpub '{"fio_domain":"fiotestnet","is_public":1,"max_fee":"40000000000","actor":"qhh25sqpktwh","tpid":""}' --permission qhh25sqpktwh@active

./clio -u http://localhost:8889 push action -j fio.address regdomain '{"fio_domain":"faucet","owner_fio_public_key":"","max_fee":"40000000000","actor":"qhh25sqpktwh","tpid":""}' --permission qhh25sqpktwh@active
./clio -u http://localhost:8889 push action -j fio.address setdomainpub '{"fio_domain":"faucet","is_public":1,"max_fee":"40000000000","actor":"qhh25sqpktwh","tpid":""}' --permission qhh25sqpktwh@active

./clio -u http://localhost:8889 push action -j fio.address regdomain '{"fio_domain":"awesome","owner_fio_public_key":"","max_fee":"40000000000","actor":"wjeo4abnk4c2","tpid":""}' --permission wjeo4abnk4c2@active
./clio -u http://localhost:8889 push action -j fio.address regdomain '{"fio_domain":"thomas","owner_fio_public_key":"","max_fee":"40000000000","actor":"wjeo4abnk4c2","tpid":""}' --permission wjeo4abnk4c2@active
./clio -u http://localhost:8889 push action -j fio.address regdomain '{"fio_domain":"blah","owner_fio_public_key":"","max_fee":"40000000000","actor":"wjeo4abnk4c2","tpid":""}' --permission wjeo4abnk4c2@active
./clio -u http://localhost:8889 push action -j fio.address regdomain '{"fio_domain":"doctor","owner_fio_public_key":"","max_fee":"40000000000","actor":"wjeo4abnk4c2","tpid":""}' --permission wjeo4abnk4c2@active
./clio -u http://localhost:8889 push action -j fio.address regdomain '{"fio_domain":"anchor","owner_fio_public_key":"","max_fee":"40000000000","actor":"wjeo4abnk4c2","tpid":""}' --permission wjeo4abnk4c2@active
./clio -u http://localhost:8889 push action -j fio.address regdomain '{"fio_domain":"domain1","owner_fio_public_key":"","max_fee":"40000000000","actor":"wjeo4abnk4c2","tpid":""}' --permission wjeo4abnk4c2@active
./clio -u http://localhost:8889 push action -j fio.address regdomain '{"fio_domain":"domain2","owner_fio_public_key":"","max_fee":"40000000000","actor":"wjeo4abnk4c2","tpid":""}' --permission wjeo4abnk4c2@active
./clio -u http://localhost:8889 push action -j fio.address regdomain '{"fio_domain":"domain3","owner_fio_public_key":"","max_fee":"40000000000","actor":"wjeo4abnk4c2","tpid":""}' --permission wjeo4abnk4c2@active
./clio -u http://localhost:8889 push action -j fio.address regdomain '{"fio_domain":"domain4","owner_fio_public_key":"","max_fee":"40000000000","actor":"wjeo4abnk4c2","tpid":""}' --permission wjeo4abnk4c2@active
./clio -u http://localhost:8889 push action -j fio.address regdomain '{"fio_domain":"domain5","owner_fio_public_key":"","max_fee":"40000000000","actor":"wjeo4abnk4c2","tpid":""}' --permission wjeo4abnk4c2@active

sleep 0.5
