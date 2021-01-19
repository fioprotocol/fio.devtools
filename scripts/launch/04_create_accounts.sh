#!/usr/bin/env bash

echo $'Creating Accounts...done using the bios node\n'
./clio -u http://localhost:8879 create account eosio fio.token FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS
./clio -u http://localhost:8879 create account eosio fio.address FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS
./clio -u http://localhost:8879 create account eosio fio.fee FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS
./clio -u http://localhost:8879 create account eosio fio.reqobt FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS
./clio -u http://localhost:8879 create account eosio fio.tpid FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS
./clio -u http://localhost:8879 create account eosio fio.treasury FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS
#no longer create fio.foundatn, this account is replaced by the hashed account in the M1 file
#./clio -u http://localhost:8879 create account eosio fio.foundatn FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS
./clio -u http://localhost:8879 create account eosio eosio.msig FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS
./clio -u http://localhost:8879 create account eosio eosio.wrap FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS

echo creating dev account for escrow and marketplace
###### ESCROW
#Public Key: FIO5VEZHHBJwgzjVtLrdUYZ4dPbTFNHGLDcaB4gKDo2GHhwHbW7QE
#Private key: 5JXkawfVHHZuTAdZrVpdkg4mUNfUytuw8uDUBWcAvb8YMK5R4yY
#FIO Internal Account (actor name): i4wplnm2ogsd
./clio -u http://localhost:8879 create account eosio fio.escrow FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS FIO7isxEua78KPVbGzKemH4nj2bWE52gqj8Hkac3tc7jKNvpfWzYS
sleep 2

#Set Contracts..done using the bios node
./clio -u http://localhost:8879 set contract fio.token $fio_token_contract_base_path fio.token.wasm fio.token.abi
sleep 1.5s
./clio -u http://localhost:8879 set contract fio.tpid $fio_tpid_base_path fio.tpid.wasm fio.tpid.abi
./clio -u http://localhost:8879 set contract eosio.msig $eosio_msig_contract_base_path eosio.msig.wasm eosio.msig.abi
./clio -u http://localhost:8879 set contract -j fio.address $fio_contract_base_path fio.address.wasm fio.address.abi --permission fio.address@active
sleep 2s
