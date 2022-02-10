#!/bin/bash
./MarketplaceStuff/01_addActions.sh
sleep 2s
./MarketplaceStuff/02_newFees.sh
sleep 2s
./MarketplaceStuff/03_deploySysContract.sh
sleep 2s
./MarketplaceStuff/04_createAccount.sh
sleep 2s
./MarketplaceStuff/05_setAccountPerm.sh
sleep 2s
./MarketplaceStuff/06_setAcctPriv.sh
sleep 2s
./MarketplaceStuff/07_removeRam.sh
sleep 2s
./MarketplaceStuff/08_setContract.sh
sleep 2s
./MarketplaceStuff/09_setOtherContracts.sh
sleep 2s
./MarketplaceStuff/10_setInitialMarketplaceConfig.sh

