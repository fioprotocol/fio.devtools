#!/bin/bash

#fio.address
../fio/build/bin/clio -u http://localhost:8889 set contract fio.address /Users/edr/repos/fio.contractsMKTPLC/build/contracts/fio.address fio.address.wasm fio.address.abi --permission fio.address@active
#fio.request.obt
../fio/build/bin/clio -u http://localhost:8889 set contract fio.reqobt /Users/edr/repos/fio.contractsMKTPLC/build/contracts/fio.request.obt fio.request.obt.wasm fio.request.obt.abi --permission fio.reqobt@active
#fio.token
../fio/build/bin/clio -u http://localhost:8889 set contract fio.token /Users/edr/repos/fio.contractsMKTPLC/build/contracts/fio.token fio.token.wasm fio.token.abi --permission fio.token@active
#fio.treasury
../fio/build/bin/clio -u http://localhost:8889 set contract fio.treasury /Users/edr/repos/fio.contractsMKTPLC/build/contracts/fio.treasury fio.treasury.wasm fio.treasury.abi --permission fio.treasury@active
#fio.staking
../fio/build/bin/clio -u http://localhost:8889 set contract fio.staking /Users/edr/repos/fio.contractsMKTPLC/build/contracts/fio.staking fio.staking.wasm fio.staking.abi --permission fio.staking@active
