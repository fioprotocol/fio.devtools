#!/bin/bash

../fio/build/bin/clio -u http://localhost:8889 set contract fio.escrow /Users/edr/repos/fio.contractsMKTPLC/build/contracts/fio.escrow fio.escrow.wasm fio.escrow.abi --permission fio.escrow@active
