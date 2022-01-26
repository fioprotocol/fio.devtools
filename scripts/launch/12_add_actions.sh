
# this script sets all actions not added in the controller.cpp init_database method.
# we add actions in the controller.cpp that are necessary for the genisis of a test network (all actions used by the bios
# node at genisis (for creation of accounts, setting of contracts, establishment of currency, transfer of currency, producer registration,
# producer voting, and other startup needs are added to the controller .
# and the rest are added here so that we do not have to revision the controller code every time
# we add a new action to fio.


host='localhost:8889'
echo "EDEDEDEDED adding actions"
sleep 10s

# we run the first 15 so that we can test after the fork deadline, and prove the new logic is being used
#added for FIP-21
./clio -u http://$host push action eosio addaction '{"action":"stakefio","contract":"fio.staking","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"unstakefio","contract":"fio.staking","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"incgstake","contract":"fio.staking","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"incgrewards","contract":"fio.staking","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"recorddaily","contract":"fio.staking","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"decgstake","contract":"fio.staking","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"incacctstake","contract":"fio.staking","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"decacctstake","contract":"fio.staking","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"paystake","contract":"fio.treasury","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"modgenlocked","contract":"eosio","actor":"eosio"}' --permission eosio
# added for FIP-6 and FIP-21
./clio -u http://$host push action eosio addaction '{"action":"trnsloctoks","contract":"fio.token","actor":"eosio"}' --permission eosio
# added for FIP-6 and FIP-21
./clio -u http://$host push action eosio addaction '{"action":"addgenlocked","contract":"eosio","actor":"eosio"}' --permission eosio
# added for FIP-6 and FIP-21
./clio -u http://$host push action eosio addaction '{"action":"updtotstkinc","contract":"eosio","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"setnolimits","contract":"eosio","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"approve","contract":"eosio.msig","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"cancel","contract":"eosio.msig","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"invalidate","contract":"eosio.msig","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"exec","contract":"eosio.msig","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"propose","contract":"eosio.msig","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"addaddress","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"remaddress","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"remalladdr","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"renewdomain","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"renewaddress","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"addbundles","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"burnaddress","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"burnexpired","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"xferdomain","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"xferaddress","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"setfeemult","contract":"fio.fee","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"bundlevote","contract":"fio.fee","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"setfeevote","contract":"fio.fee","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"bytemandfee","contract":"fio.fee","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"computefees","contract":"fio.fee","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"mandatoryfee","contract":"fio.fee","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"tpidclaim","contract":"fio.treasury","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"bpclaim","contract":"fio.treasury","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"updateclock","contract":"fio.treasury","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"trnsfiopubad","contract":"fio.reqobt","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"rejectfndreq","contract":"fio.reqobt","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"cancelfndreq","contract":"fio.reqobt","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"newfundsreq","contract":"fio.reqobt","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"rewardspaid","contract":"fio.tpid","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"updatetpid","contract":"fio.tpid","actor":"eosio"}' --permission eosio
# USED FOR TESTING:
./clio -u http://$host push action eosio addaction '{"action":"migrtrx","contract":"fio.reqobt","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"addnft","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"remnft","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"remallnfts","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"burnnfts","contract":"fio.address","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"retire","contract":"fio.token","actor":"eosio"}' --permission eosio
# fio.escrow:
./clio -u http://$host push action eosio addaction '{"action":"buydomain","contract":"fio.escrow","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"listdomain","contract":"fio.escrow","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"cxlistdomain","contract":"fio.escrow","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"setmrkplcfg","contract":"fio.escrow","actor":"eosio"}' --permission eosio
./clio -u http://$host push action eosio addaction '{"action":"xferescrow","contract":"fio.address","actor":"eosio"}' --permission eosio
## admin action only called from fio.address::burnexpired
./clio -u http://$host push action eosio addaction '{"action":"cxburned","contract":"fio.escrow","actor":"eosio"}' --permission eosio

# required for unit testing
./clio -u http://$host push action eosio addaction '{"action":"modexpire","contract":"fio.address","actor":"eosio"}' --permission eosio

./clio -u http://$host push action eosio addaction '{"action":"test","contract":"fio.game","actor":"eosio"}' --permission eosio