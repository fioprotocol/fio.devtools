# FIO Development Toolkit (fio.devtools)

The development toolkit allows for local development assistance when testing, prototyping, or validating the FIO Protocol. This toolkit comes with a variety of compiling, startup, and validation scripts that allow the FIO Protocol to be testing in a limited controlled environment.

## Dependencies

The testing portion and history plugin support of devtools requires `jq`, but no external dependencies are required besides a locally compiled version of the [Core FIO Protocol](http://github.com/fioprotocol/fio) and an instance of [FIO Protocol Contracts](http://github.com/fioprotocol/fio.contracts) .

## Instructions

Place `fio.devtools` inside the same directory as `fio` and `fio.contracts` sources. This is to allow the binaries to be correctly copied over during the launch script. 

Lauching fio.devtools: 

    ./start.sh
    
For quicker startups, use the current version of FIO when executing the script:

    ./start.sh 3.0
    
The local startup requires that `option 3` be applied first so that a user can launch a clean instance of the local chain in the future. After nuking all previous data, the user can use `option 2` so the contracts are updated and built successfully. This will also copy over a base version of the current contracts deployed on mainnet to ensure successful updating of the current set of contracts in the `fio.contracts` directory. Once complete, launching FIO can be done with `option 1`. 

## Contributors

This is made with contributions by:

- [The FIO Foundation](https://www.fioprotocol.io) 
- [Dapix](http://www.dapix.io)
- [CryptoLions](http://cryptolions.io/)
