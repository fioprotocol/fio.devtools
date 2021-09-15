#!/usr/bin/env bash

./clio -u http://localhost:8879 create account eosio r41zuwovtn44 FIO5oBUYbtGTxMS66pPkjC2p8pbA3zCtc8XD4dq9fMut867GRdh82 FIO5oBUYbtGTxMS66pPkjC2p8pbA3zCtc8XD4dq9fMut867GRdh82
./clio -u http://localhost:8879 create account eosio htjonrkf1lgs FIO7uRvrLVrZCbCM2DtCgUMospqUMnP3JUC1sKHA8zNoF835kJBvN FIO7uRvrLVrZCbCM2DtCgUMospqUMnP3JUC1sKHA8zNoF835kJBvN
./clio -u http://localhost:8879 create account eosio euwdcp13zlrj FIO8NToQB65dZHv28RXSBBiyMCp55M7FRFw6wf4G3GeRt1VsiknrB FIO8NToQB65dZHv28RXSBBiyMCp55M7FRFw6wf4G3GeRt1VsiknrB
./clio -u http://localhost:8879 create account eosio mnvcf4v1flnn FIO5GpUwQtFrfvwqxAv24VvMJFeMHutpQJseTz8JYUBfZXP2zR8VY FIO5GpUwQtFrfvwqxAv24VvMJFeMHutpQJseTz8JYUBfZXP2zR8VY
./clio -u http://localhost:8879 create account eosio 5spujqoyq4ie FIO77odcm3LYr6YduUxf83a4jp4pQ4YvKAjBkHJnLxq2SsgNSc13u FIO77odcm3LYr6YduUxf83a4jp4pQ4YvKAjBkHJnLxq2SsgNSc13u
./clio -u http://localhost:8879 create account eosio qhh25sqpktwh FIO6zwqqzHQcqCc2MB4jpp1F73MXpisEQe2SDghQFSGQKoAPjvQ3H FIO6zwqqzHQcqCc2MB4jpp1F73MXpisEQe2SDghQFSGQKoAPjvQ3H

echo creating bp accounts
#accounts for BP
#bp1:dapix
#Private key: 5KQ6f9ZgUtagD3LZ4wcMKhhvK9qy4BuwL3L1pkm6E2v62HCne2R
#Public key: FIO7jVQXMNLzSncm7kxwg9gk7XUBYQeJPk8b6QfaK5NVNkh3QZrRr
#FIO Public Address (actor name): qbxn5zhw2ypw
./clio -u http://localhost:8879 create account eosio qbxn5zhw2ypw FIO7jVQXMNLzSncm7kxwg9gk7XUBYQeJPk8b6QfaK5NVNkh3QZrRr FIO7jVQXMNLzSncm7kxwg9gk7XUBYQeJPk8b6QfaK5NVNkh3QZrRr

#bp2:dapix
#Private key: 5JnhMxfnLhZeRCRvCUsaHbrvPSxaqjkQAgw4ZFodx4xXyhZbC9P
#Public key: FIO7uTisye5w2hgrCSE1pJhBKHfqDzhvqDJJ4U3vN9mbYWzataS2b
#FIO Public Address (actor name): hfdg2qumuvlc
./clio -u http://localhost:8879 create account eosio hfdg2qumuvlc FIO7uTisye5w2hgrCSE1pJhBKHfqDzhvqDJJ4U3vN9mbYWzataS2b FIO7uTisye5w2hgrCSE1pJhBKHfqDzhvqDJJ4U3vN9mbYWzataS2b

#bp3:dapix
#Private key: 5JvmPVxPxypQEKPwFZQW4Vx7EC8cDYzorVhSWZvuYVFMccfi5mU
#Public key: FIO6oa5UV9ghWgYH9en8Cv8dFcAxnZg2i9z9gKbnHahciuKNRPyHc
#FIO Public Address (actor name): wttywsmdmfew
./clio -u http://localhost:8879 create account eosio wttywsmdmfew FIO6oa5UV9ghWgYH9en8Cv8dFcAxnZg2i9z9gKbnHahciuKNRPyHc FIO6oa5UV9ghWgYH9en8Cv8dFcAxnZg2i9z9gKbnHahciuKNRPyHc

#bp4:dapix
#Private key: 5KLxezoCEw5Ca97FHq3HPyrzkmZQT6Wqw9DmKaJ6inE6fiN1ijT
#Public key: FIO6ruJ5qLeaa6VtYVpkcU4AeWVaL2QvViyQqjxjpAWYRFsYaSbBN
#FIO Public Address (actor name): 3ddowwxs11ss
 ./clio -u http://localhost:8879 create account eosio 3ddowwxs11ss FIO6ruJ5qLeaa6VtYVpkcU4AeWVaL2QvViyQqjxjpAWYRFsYaSbBN FIO6ruJ5qLeaa6VtYVpkcU4AeWVaL2QvViyQqjxjpAWYRFsYaSbBN

echo creating voter accounts
#accounts for voters
#vote1:dapix
#Private key: 5JBbUG5SDpLWxvBKihMeXLENinUzdNKNeozLas23Mj6ZNhz3hLS
#Public key: FIO6G9pXXM92Gy5eMwNquGULoCj3ZStwPLPdEb9mVXyEHqWN7HSuA
#FIO Public Address (actor name): o2ouxipw2rt4
 ./clio -u http://localhost:8879 create account eosio o2ouxipw2rt4 FIO6G9pXXM92Gy5eMwNquGULoCj3ZStwPLPdEb9mVXyEHqWN7HSuA FIO6G9pXXM92Gy5eMwNquGULoCj3ZStwPLPdEb9mVXyEHqWN7HSuA

#vote2:dapix
#Private key: 5KC6Edd4BcKTLnRuGj2c8TRT9oLuuXLd3ZuCGxM9iNngc3D8S93
#Public key: FIO7eF3CWTpDCSWm4CvvsAhxEkAnMWWQ9CtQVfBxxWu2gkF8c4TN1
#FIO Public Address (actor name): extjnqh3j3gt
./clio -u http://localhost:8879 create account eosio extjnqh3j3gt FIO7eF3CWTpDCSWm4CvvsAhxEkAnMWWQ9CtQVfBxxWu2gkF8c4TN1 FIO7eF3CWTpDCSWm4CvvsAhxEkAnMWWQ9CtQVfBxxWu2gkF8c4TN1

#vote3:dapix
#Private key: 5JNbpb3Au9ZckYJF7KceCQ31axGgzUEvUkm6668X9jg8avEyHnc
#Public key: FIO61VCrQgb4yaJukyB4gsxHfidYNVS1csYqBY8QqTBuXjWKjTWR8
#FIO Public Address (actor name): npe3obkgoteh
./clio -u http://localhost:8879 create account eosio npe3obkgoteh FIO61VCrQgb4yaJukyB4gsxHfidYNVS1csYqBY8QqTBuXjWKjTWR8 FIO61VCrQgb4yaJukyB4gsxHfidYNVS1csYqBY8QqTBuXjWKjTWR8
sleep 2

echo create locked token holder test accounts
#locked token holder test accounts
#Private key: 5HwvMtAEd7kwDPtKhZrwA41eRMdFH5AaBKPRim6KxkTXcg5M9L5
#Public key: FIO55e5PBmQhReVnBG7phMiL8axrRT42a1pqxexJMkrsoDbDStZrX
#FIO Public Address (actor name): tly4lbwrx3jm
./clio -u http://localhost:8879 create account eosio tly4lbwrx3jm FIO55e5PBmQhReVnBG7phMiL8axrRT42a1pqxexJMkrsoDbDStZrX FIO55e5PBmQhReVnBG7phMiL8axrRT42a1pqxexJMkrsoDbDStZrX
sleep 2

#Private key: 5JqfyvSXXoXT7h6tHbFLwNznAAriLKRWPhUNAeBLznaMHnaNFG5
#Public key: FIO5HWLgwpads3f2qAJwgtKPvifevZs5fdaF7LaYEjaPjhHwUZ6K9
#FIO Public Address (actor name): o3jvcxorf4qu
./clio -u http://localhost:8879 create account eosio o3jvcxorf4qu FIO5HWLgwpads3f2qAJwgtKPvifevZs5fdaF7LaYEjaPjhHwUZ6K9 FIO5HWLgwpads3f2qAJwgtKPvifevZs5fdaF7LaYEjaPjhHwUZ6K9
sleep 2


########### BLOCKSMITH DEV ACCOUNTS

#Public Key: FIO5uoS7DFdG643vCU5Ko5YW4ch8Y8NoJ5HSLCAdxdVP4fw6AAsvx
#Private Key: 5K7mT9syr4ts3uqQiHsFeyor5Ge6JXvQWBdFtozoupWQHfMJaCE
#FIO Public Address (actor name): aghsbgzbx3iz
./clio -u http://localhost:8879 create account eosio aghsbgzbx3iz FIO5uoS7DFdG643vCU5Ko5YW4ch8Y8NoJ5HSLCAdxdVP4fw6AAsvx FIO5uoS7DFdG643vCU5Ko5YW4ch8Y8NoJ5HSLCAdxdVP4fw6AAsvx
sleep 2

#Public Key: FIO6Ehu1BXZUGkeQS77LC1LKnFVWh1hdwZ3pYFh77819tgpyarQXW
#Private Key: 5KAt8KnXaqJSngnY6DKvMmdMfZV6uTZkLQ6kaTRWPzJG6wJV4xo
#FIO Public Address (actor name): ltllcgohc4op
./clio -u http://localhost:8879 create account eosio ltllcgohc4op FIO6Ehu1BXZUGkeQS77LC1LKnFVWh1hdwZ3pYFh77819tgpyarQXW FIO6Ehu1BXZUGkeQS77LC1LKnFVWh1hdwZ3pYFh77819tgpyarQXW
sleep 2

#Public Key: FIO77rFFByyLycsrbC5tH1CXqddZdgkDuTYDbCc2BoGp5hdnU59f7
#Private Key: 5KePj5qMF7xvXZwY4Tnxy7KbDCdUe7cyZtYv2rsTgaZ7LBuVpUc
#FIO Public Address (actor name): 5ufabtv13hv4
./clio -u http://localhost:8879 create account eosio 5ufabtv13hv4 FIO77rFFByyLycsrbC5tH1CXqddZdgkDuTYDbCc2BoGp5hdnU59f7 FIO77rFFByyLycsrbC5tH1CXqddZdgkDuTYDbCc2BoGp5hdnU59f7
sleep 2

#Public Key: FIO6WTy7KBarFzVbhmwDuR1BbV33QVpuEZirvfwsHBUZ1b4aGrJNm
#Private Key: 5Hs6KG9Ky1S194hnxovUUq63CmTvsaCPWcnamPpB4Q5fuZiSzDe
#FIO Public Address (actor name): p2yrhsvsvjge
./clio -u http://localhost:8879 create account eosio p2yrhsvsvjge FIO6WTy7KBarFzVbhmwDuR1BbV33QVpuEZirvfwsHBUZ1b4aGrJNm FIO6WTy7KBarFzVbhmwDuR1BbV33QVpuEZirvfwsHBUZ1b4aGrJNm
sleep 2

#Public Key: FIO5MDWkM3GRdk4WWdxbNPcGyJev56S5X4cgY3KQNH6EbxQXrcS6Q
#Private Key: 5J1oyBREGZS4sqRgzofxXP9t7UL2yQgKBZ6MaHF2XzBEfAH3NH4
#FIO Public Address (actor name): wjeo4abnk4c2
./clio -u http://localhost:8879 create account eosio wjeo4abnk4c2 FIO5MDWkM3GRdk4WWdxbNPcGyJev56S5X4cgY3KQNH6EbxQXrcS6Q FIO5MDWkM3GRdk4WWdxbNPcGyJev56S5X4cgY3KQNH6EbxQXrcS6Q

#Private Key:    5HwawJrUijKnypZfXrVPqBDTx7nmVCFk5qDG9MRxW7tdPp6bGcM
#Public Key:     FIO8PR2TcJAJ1UASYmkmVa8Fi2J2dNvwLJ4qkeAcE3ebgDbPDMx6F
#Account Name:   g4oc1qkysew2
./clio -u http://localhost:8879 create account eosio g4oc1qkysew2 FIO8PR2TcJAJ1UASYmkmVa8Fi2J2dNvwLJ4qkeAcE3ebgDbPDMx6F FIO8PR2TcJAJ1UASYmkmVa8Fi2J2dNvwLJ4qkeAcE3ebgDbPDMx6F
