#how to run...
#place this in the fio.devtools utils dir.
#cd to the fio/build dir
#to run type
#../../fio.devtools/utils/add20percentactions.sh


host='localhost:8889'

# we comment out the first 15 so that we can test after the fork deadline, and prove the new logic is being used
#../bin/clio -u http://$host push action eosio addaction '{"action":"approve","contract":"eosio.msig","actor":"eosio"}' --permission eosio
#../bin/clio -u http://$host push action eosio addaction '{"action":"cancel","contract":"eosio.msig","actor":"eosio"}' --permission eosio
#../bin/clio -u http://$host push action eosio addaction '{"action":"invalidate","contract":"eosio.msig","actor":"eosio"}' --permission eosio
#../bin/clio -u http://$host push action eosio addaction '{"action":"exec","contract":"eosio.msig","actor":"eosio"}' --permission eosio
#../bin/clio -u http://$host push action eosio addaction '{"action":"propose","contract":"eosio.msig","actor":"eosio"}' --permission eosio
#../bin/clio -u http://$host push action eosio addaction '{"action":"unapprove","contract":"eosio.msig","actor":"eosio"}' --permission eosio
#../bin/clio -u http://$host push action eosio addaction '{"action":"regaddress","contract":"fio.address","actor":"eosio"}' --permission eosio
#../bin/clio -u http://$host push action eosio addaction '{"action":"regdomain","contract":"fio.address","actor":"eosio"}' --permission eosio
#../bin/clio -u http://$host push action eosio addaction '{"action":"addaddress","contract":"fio.address","actor":"eosio"}' --permission eosio
#../bin/clio -u http://$host push action eosio addaction '{"action":"remaddress","contract":"fio.address","actor":"eosio"}' --permission eosio
#../bin/clio -u http://$host push action eosio addaction '{"action":"remalladdr","contract":"fio.address","actor":"eosio"}' --permission eosio
#../bin/clio -u http://$host push action eosio addaction '{"action":"renewdomain","contract":"fio.address","actor":"eosio"}' --permission eosio
#../bin/clio -u http://$host push action eosio addaction '{"action":"renewaddress","contract":"fio.address","actor":"eosio"}' --permission eosio
#../bin/clio -u http://$host push action eosio addaction  '{"action":"setdomainpub","contract":"fio.address","actor":"eosio"}' --permission eosio
#../bin/clio -u http://$host push action eosio addaction '{"action":"bind2eosio","contract":"fio.address","actor":"eosio"}' --permission eosio
# we comment out the first 15 so that we can test after the fork deadline, and prove the new logic is being used
../bin/clio -u http://$host push action eosio addaction '{"action":"burnexpired","contract":"fio.address","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"decrcounter","contract":"fio.address","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"xferdomain","contract":"fio.address","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"xferaddress","contract":"fio.address","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"setfeemult","contract":"fio.fee","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"bundlevote","contract":"fio.fee","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"setfeevote","contract":"fio.fee","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"bytemandfee","contract":"fio.fee","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"updatefees","contract":"fio.fee","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"mandatoryfee","contract":"fio.fee","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"createfee","contract":"fio.fee","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"tpidclaim","contract":"fio.treasury","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"bpclaim","contract":"fio.treasury","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"bppoolupdate","contract":"fio.treasury","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"fdtnrwdupdat","contract":"fio.treasury","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"bprewdupdate","contract":"fio.treasury","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"startclock","contract":"fio.treasury","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"updateclock","contract":"fio.treasury","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"trnsfiopubky","contract":"fio.token","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"create","contract":"fio.token","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"issue","contract":"fio.token","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"transfer","contract":"fio.token","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"mintfio","contract":"fio.token","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"recordobt","contract":"fio.reqobt","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"rejectfndreq","contract":"fio.reqobt","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"cancelfndreq","contract":"fio.reqobt","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"newfundsreq","contract":"fio.reqobt","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"updatebounty","contract":"fio.tpid","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"rewardspaid","contract":"fio.tpid","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"updatetpid","contract":"fio.tpid","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"execute","contract":"eosio.wrap","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"newaccount","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"onblock","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"addlocked","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"regproducer","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"unregprod","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"regproxy","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"voteproducer","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"unregproxy","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"voteproxy","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"setabi","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"setcode","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"updateauth","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"setprods","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"setpriv","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"init","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"nonce","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"burnaction","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"canceldelay","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"crautoproxy","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"deleteauth","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"inhibitunlck","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"linkauth","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"onerror","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"unlinkauth","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"rmvproducer","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"setautoproxy","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"setparams","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"unlocktokens","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"updtrevision","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"updlocked","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"updatepower","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"updlbpclaim","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"resetclaim","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"incram","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"addaction","contract":"eosio","actor":"eosio"}' --permission eosio
../bin/clio -u http://$host push action eosio addaction '{"action":"remaction","contract":"eosio","actor":"eosio"}' --permission eosio
