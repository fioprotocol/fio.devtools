#!/bin/sh

#  locktokenpro.sh
#  this shell script will process the contents of a comma delimited grant file
#  containing the following columns
#   type  (values msig, fio, single)
#   keys  (for single, one public key is assumed, for msig, and fio pub keys will be delimited
#          with | the first key specified will be used as the MSIG account public key,
#          all subsequent keys will become MSIG participant keys with a weight of 1.
#   msigthreshold ( this is the threshold used for type msig and type fio)
#   lockamount    (this is the amount in sufs of the grant being given)
#   locktype     (this is the tyhpe of lock to be provided on the grant 1, 2)
#
#   This script will generate 3 files.
#
#     the first file will be a shell script file that can be used to generate the accounts
#     to be provded grants on the fio protocol.
#
#     the second file is a shell script that can be used to initialize the locked token grants
#     onto the blockchain.
#
#     the third file is a script that can be run to validate the chains locked token holders
#     once the chain is initialized.
#
# to run this, first go to the fio.devtools dir then run this in the following way.
#       ./utils/locktokenpro.sh /users/edr/downloads/m1.csv
#
#
#  Created by Edward Rotthoff on 12/20/19.
#

INPUT="$1"
OLDIFS=$IFS
IFS=','
countem=0
FILE="./14_create_locked_token_holder_accounts.sh"
FILE1="./16_emplace_grants_into_locked_tokens.sh"
FILE2="./validate_locked_token_holders.sh"
server="localhost:8889"
msigaccounts=""
accountspart=""
#need to add permission for each and trailing ]
#{"permission":{"actor":"2nsn2fklp3qt","permission":"active"},"weight":1},{"permission":{"actor":"4kqd2qtmfaa4","permission":"active"},"weight":1},{"permission":{"actor":"4uavbl5lae33","permission":"active"},"weight":1},{"permission":{"actor":"5cbvokp5zwxy","permission":"active"},"weight":1},{"permission":{"actor":"iahg1zpkd12n","permission":"active"},"weight":1},{"permission":{"actor":"mefrpkqgqbvt","permission":"active"},"weight":1},{"permission":{"actor":"r5f1hriukyq3","permission":"active"},"weight":1},{"permission":{"actor":"zrd3um5xoxlk","permission":"active"},"weight":1},{"permission":{"actor":"zwy1msikpomb","permission":"active"},"weight":1}]"
owneraccountwaitspart=""
activeaccountwaitspart=""
#need to add something looking like this.
#{"account": "mwv42t2vjzkv", "permission": "owner","max_fee":4000000000, "parent": "",  "auth": { "threshold": 6, "keys": [], "waits": [],
ownerupdateauth=""
activeupdateauth=""
exec 3<> $FILE
exec 4<> $FILE1
exec 5<> $FILE2
linecount=0
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }

echo "url=$server" >&5
echo "#first validate the max supply of FIO" >&5
echo "resultsupply=\$(../fio/build/bin/clio -u http://\$url get table fio.token FIO stat | grep max_supply)" >&5
echo "maxsupplyfound=false" >&5
echo "mslabel=""" >&5
echo "for ln1 in \$resultsupply ; do" >&5
echo "  if [ \$ln1 = \"\\\"max_supply\\\":\" ] ; then" >&5
echo "    mslabel=\$ln1" >&5
echo "  elif [ \$mslabel = \"\\\"max_supply\\\":\" ] ; then" >&5
echo "    maxsupplyfound=true" >&5
echo "    mslabel=\"none\"" >&5
echo "    ln1=\$(echo \$ln1 | tr -d ,)" >&5
echo "    ln1=\$(echo \$ln1 | tr -d \\\")" >&5
echo "    if [ \$ln1 != \"1000000000.000000000\" ] ; then" >&5
echo "      echo \"VERIFICATION FAILURE -- max supply of fio does not match expected value, value is \$ln1 expected is 1000000000.000000000 \"" >&5
echo "    fi" >&5
echo "  fi" >&5
echo "done" >&5
echo "if [ \"\$maxsupplyfound\" = false ] ; then" >&5
echo "  echo \"VERIFICATION FAILURE -- max supply query failed\"" >&5
echo "fi" >&5

echo "foundationacctcreated=false" >&3
#the || ensures you get the last row in the file.
while read -r type keys msigthresh lockamount accountamount locktype || [ -n "$type" ]
#type can be msig fio single
do
  let linecount++

  ltype=$(echo $locktype | tr -d '\r')
if [[ $ltype = "0"  || $ltype = "1"   ||  $ltype = "2" || $ltype = "3" || $ltype = "4" ]] ; then
#######################################begin msig
    if [ $type = "msig" ] ; then
      arr=$(echo $keys | tr "|" ",")
      let  countem=0
      msigaccounts=""
      for str in $arr ; do
        let countem++
        fioactor=`../fio/build/bin/clio  convert fiokey_to_account $str`
        if [ $countem = 1 ] ; then
          #create the msig account
          echo "# import MSIG account private key" >&3
          echo "./clio wallet import --private-key $str -n fio" >&3
        elif [ $countem = 2 ] ; then
          msigmaster=$fioactor
          #create the msig account
          echo "# MSIG account" >&3
          echo "#Public key: '$str'" >&3
          echo "#FIO Public Address (actor name): '$fioactor'" >&3
          if [ "$accountamount" -gt "0" ] ; then
             echo "./clio -u http://$server push action -j fio.token trnsfiopubky '{\"payee_public_key\": \"'$str'\", \"amount\": $accountamount, \"max_fee\": \"40000000000\", \"actor\": \"eosio\",\"tpid\":\"\"}' -p eosio@active" >&3
          else
             echo "./clio -u http://$server create account eosio $fioactor $str $str" >&3
          fi
          echo "" >&3
          owneraccountwaitspart="{\"account\": \"$fioactor\", \"permission\": \"owner\",\"max_fee\":4000000000, \"parent\": \"\",  \"auth\": { \"threshold\": $msigthresh, \"keys\": [], \"waits\": [],"
          activeaccountwaitspart="{\"account\": \"$fioactor\", \"permission\": \"active\",\"max_fee\":4000000000, \"parent\": \"owner\",  \"auth\": { \"threshold\": $msigthresh, \"keys\": [], \"waits\": [],"
          #put the code snippet into the txt file
          if [ "$lockamount" -gt "0" ] ; then
            if [[ $ltype = "1"  ||  $ltype = "2" || $ltype = "3" || $ltype = "4" ]] ; then
              echo "# issue locked token grant to $fioactor in lock type $ltype in the amount of $lockamount" >&4
              echo "./clio -u http://$server push action -j eosio addlocked '{\"owner\":\"$fioactor\",\"amount\":$lockamount,\"locktype\":$ltype}' -p eosio@active" >&4
              echo "" >&4
            fi
          elif [ "$lockamount" -le "0" ] ; then
            if [[ $ltype = "1"  ||  $ltype = "2" || $ltype = "3" || $ltype = "4" ]] ; then
              echo " WARNING!!!!!!  NO LOCKED TOKEN GRANT CREATED, NO LOCKED TOKEN GRANT FOR RECORD  found illegal suf amount '$lockamount'  -- line number $linecount"
            fi
          fi
          #add line to validation script
          echo "#validation for MSIG locked token holder" >&5
          echo "#pub key $str" >&5
          echo "#account $fioactor" >&5
          echo "resulttokens=\$(../fio/build/bin/clio -u http://\$url get currency balance fio.token $fioactor)" >&5
          echo "rt=\$(echo \$resulttokens | tr \"\\\r\" \" \")" >&5
          echo "rt=\$(echo \$rt | tr \" \" \"-\")" >&5
          echo "rt=\$(echo \$rt | tr -d .)" >&5
          echo "if [ -z \"\$rt\" ] ; then" >&5
          echo "   rt=\"0-FIO\"" >&5
          echo "fi" >&5
          echo "" >&5
          echo "if [ \$rt != \"$accountamount-FIO\" ] ; then" >&5
          echo "    echo \"VERIFICATION FAILURE -- $str $fioactor the amount in account $fioactor does not match the expected value. amount in account is \$rt  expected value is $accountamount-FIO\"" >&5
          echo "fi" >&5
          echo "" >&5
          if [[ $ltype = "1"  ||  $ltype = "2" || $ltype = "3" || $ltype = "4" ]] ; then
            echo "resultlocked=\$(../fio/build/bin/clio -u http://\$url get table eosio eosio lockedtokens --limit 1000 | grep -A5 $fioactor)" >&5
            echo "" >&5
            echo "ownerfound=false" >&5
            echo "label1=\"\"" >&5
            echo "for ln in \$resultlocked ; do" >&5
            echo "    if [[ \$ln = \"\\\"owner\\\":\" ||" >&5
            echo "        \$ln = \"\\\"total_grant_amount\\\":\" ||" >&5
            echo "        \$ln = \"\\\"unlocked_period_count\\\":\" ||" >&5
            echo "        \$ln = \"\\\"grant_type\\\":\" ||" >&5
            echo "        \$ln = \"\\\"inhibit_unlocking\\\":\" ||" >&5
            echo "        \$ln = \"\\\"remaining_locked_amount\\\":\" ]] ; then" >&5
            echo "        label1=\$ln" >&5
            echo "    elif [ \$label1 = \"\\\"owner\\\":\" ] ; then" >&5
            echo "       ownerfound=true" >&5
            echo "        if [ \$ln != \"\\\"$fioactor\\\",\" ] ; then" >&5
            echo "            echo \"VERIFICATION FAILURE -- $str $fioactor the owner does not match the expected value. lockedtokens value \$ln expected value \\\"$fioactor\\\",\"" >&5
            echo "        fi" >&5
            echo "    elif [ \$label1 = \"\\\"total_grant_amount\\\":\" ] ; then" >&5
            echo "        ln=\$(echo \$ln | tr -d ,)" >&5
            echo "        if [ \$ln != $lockamount ] ; then" >&5
            echo "            echo \"VERIFICATION FAILURE -- $str $fioactor the total_grant_amount does not match the expected value. lockedtokens value \$ln expected value $lockamount,\"" >&5
            echo "        fi" >&5
            echo "    elif [ \$label1 = \"\\\"unlocked_period_count\\\":\" ] ; then" >&5
            echo "        if [ \$ln != \"0,\" ] ; then" >&5
            echo "            echo \"VERIFICATION FAILURE -- $str $fioactor the unlocked_period_count does not match the expected value. lockedtokens value \$ln expected value 0,\"" >&5
            echo "       fi" >&5
            echo "    elif [ \$label1 = \"\\\"grant_type\\\":\" ] ; then" >&5
            echo "        if [ \$ln != \"$ltype,\" ] ; then" >&5
            echo "            echo \"VERIFICATION FAILURE -- $str $fioactor the grant_type does not match the expected value. lockedtokens value \$ln expected value $ltype,\"" >&5
            echo "        fi" >&5
            echo "    elif [ \$label1 = \"\\\"inhibit_unlocking\\\":\" ] ; then" >&5
            echo "        if [ \$ln != \"1,\" ] ; then" >&5
            echo "            echo \"VERIFICATION FAILURE -- $str $fioactor the inhibit_unlocking does not match the expected value. lockedtokens value \$ln expected value 1,\"" >&5
            echo "        fi" >&5
            echo "    elif [ \$label1 = \"\\\"remaining_locked_amount\\\":\" ] ; then" >&5
            echo "        ln=\$(echo \$ln | tr -d ,)" >&5
            echo "        if [ \$ln != $lockamount ] ; then" >&5
            echo "            echo \"VERIFICATION FAILURE -- $str $fioactor the remaining_locked_amount does not match the expected value. lockedtokens value \$ln expected value $lockamount\"" >&5
            echo "        fi" >&5
            echo "" >&5
            echo "    fi" >&5
            echo "done" >&5
            echo "if [ \"\$ownerfound\" = false ] ; then" >&5
            echo " echo \"VERIFICATION FAILURE -- $str $fioactor this account does not have a grant in the lockedtokens table\"" >&5
            echo "fi" >&5
          fi
        else
          #create the participant accounts
          echo "# MSIG participant" >&3
          echo "#Public key: '$str'" >&3
          echo "#FIO Public Address (actor name): '$fioactor'" >&3
#   echo "./clio -u http://$server create account eosio $fioactor $str $str" >&3
#  echo "./clio -u http://$server push action -j fio.token trnsfiopubky '{\"payee_public_key\": \"'$str'\", \"amount\": 1000000000, \"max_fee\": \"40000000000\", \"actor\": \"eosio\",\"tpid\":\"\"}' -p eosio@active" >&3
          echo "" >&3
          if [ "$countem" -gt "3" ]; then
            msigaccounts=$msigaccounts","$fioactor
          else
            msigaccounts=$msigaccounts$fioactor
          fi
        fi
      done

      countem=0
      sortedaccounts=$(echo "$msigaccounts" | tr , "\n" | sort | tr "\n" ,)
      accountspart="\"accounts\":["
      for str1 in $sortedaccounts ; do
        let countem++
        accountspart=$accountspart"{\"permission\":{\"actor\":\"$str1\",\"permission\":\"active\"},\"weight\":1}"
      done
      accountspart=$accountspart"]"
      ownerupdateauth="./clio -u http://$server push action eosio updateauth '"$owneraccountwaitspart$accountspart" } } ' -p $msigmaster@owner"
      activeupdateauth="./clio -u http://$server push action eosio updateauth '"$activeaccountwaitspart$accountspart" } } ' -p $msigmaster@active"

      echo "# owner update auth for $msigmaster" >&3
      echo $ownerupdateauth >&3
      echo "" >&3
      echo "# active update auth for $msigmaster" >&3
      echo $activeupdateauth >&3
      echo "" >&3
    fi
#######################################end msig

#######################################begin single
    if [ $type = "single" ] ; then
      fioactors=`../fio/build/bin/clio  convert fiokey_to_account $keys`
      echo "# Create locked token account " >&3
      echo "#Public key: '$keys'" >&3
      echo "#FIO Public Address (actor name): '$fioactors'" >&3
      if [ "$accountamount" -gt "0" ] ; then
      echo "./clio -u http://$server push action -j fio.token trnsfiopubky '{\"payee_public_key\": \"'$keys'\", \"amount\": $accountamount, \"max_fee\": \"40000000000\", \"actor\": \"eosio\",\"tpid\":\"\"}' -p eosio@active" >&3
      else
        echo "./clio -u http://$server create account eosio $fioactors $keys $keys" >&3
      fi
      echo "" >&3
      #put the code snippet into the txt file
      if [ "$lockamount" -gt "0" ] ; then
        if [[ $ltype = "1"  ||  $ltype = "2" || $ltype = "3" || $ltype = "4" ]] ; then
          echo "# issue locked token grant to $fioactors as lock type $ltype in the amount of $lockamount" >&4
          echo "./clio -u http://$server push action -j eosio addlocked '{\"owner\":\"$fioactors\",\"amount\":$lockamount,\"locktype\":$ltype}' -p eosio@active" >&4
          echo "" >&4
        fi
      elif [ "$lockamount" -le "0" ];then
        if [[ $ltype = "1"  ||  $ltype = "2" || $ltype = "3" || $ltype = "4" ]] ; then
          echo " WARNING!!!!!!  NO LOCKED TOKEN GRANT CREATED, NO LOCKED TOKEN GRANT FOR RECORD  found illegal suf amount '$lockamount'  -- line number $linecount"
        fi
      fi
      #add the verification script calls
      echo "#validation for SINGLE locked token holder" >&5
      echo "#pub key $keys" >&5
      echo "#account $fioactors" >&5
      echo "resulttokens=\$(../fio/build/bin/clio -u http://\$url get currency balance fio.token $fioactors)" >&5
      echo "rt=\$(echo \$resulttokens | tr \"\\\r\" \" \")" >&5
      echo "rt=\$(echo \$rt | tr \" \" \"-\")" >&5
      echo "rt=\$(echo \$rt | tr -d .)" >&5
      echo "if [ -z \"\$rt\" ] ; then" >&5
      echo "   rt=\"0-FIO\"" >&5
      echo "fi" >&5
      echo "" >&5
      echo "if [ \$rt != \"$accountamount-FIO\" ] ; then" >&5
      echo "    echo \"VERIFICATION FAILURE -- $keys $fioactors the amount in account $fioactors does not match the expected value. amount in account is \$rt  expected value is $accountamount-FIO\"" >&5
      echo "fi" >&5
      echo "" >&5
      if [[ $ltype = "1"  ||  $ltype = "2" || $ltype = "3" || $ltype = "4" ]] ; then
      echo "resultlocked=\$(../fio/build/bin/clio -u http://\$url get table eosio eosio lockedtokens --limit 1000 | grep -A5 $fioactors)" >&5
      echo "" >&5
      echo "ownerfound=false" >&5
      echo "label1=\"\"" >&5
      echo "for ln in \$resultlocked ; do" >&5
      echo "    if [[ \$ln = \"\\\"owner\\\":\" ||" >&5
      echo "        \$ln = \"\\\"total_grant_amount\\\":\" ||" >&5
      echo "        \$ln = \"\\\"unlocked_period_count\\\":\" ||" >&5
      echo "        \$ln = \"\\\"grant_type\\\":\" ||" >&5
      echo "        \$ln = \"\\\"inhibit_unlocking\\\":\" ||" >&5
      echo "        \$ln = \"\\\"remaining_locked_amount\\\":\" ]] ; then" >&5
      echo "        label1=\$ln" >&5
      echo "    elif [ \$label1 = \"\\\"owner\\\":\" ] ; then" >&5
      echo "       ownerfound=true" >&5
      echo "        if [ \$ln != \"\\\"$fioactors\\\",\" ] ; then" >&5
      echo "            echo \"VERIFICATION FAILURE -- $keys $fioactors the owner does not match the expected value. lockedtokens value \$ln expected value \\\"$fioactors\\\",\"" >&5
      echo "        fi" >&5
      echo "    elif [ \$label1 = \"\\\"total_grant_amount\\\":\" ] ; then" >&5
      echo "        ln=\$(echo \$ln | tr -d ,)" >&5
      echo "        if [ \$ln != $lockamount ] ; then" >&5
      echo "            echo \"VERIFICATION FAILURE -- $keys $fioactors the total_grant_amount does not match the expected value. lockedtokens value \$ln expected value $lockamount,\"" >&5
      echo "        fi" >&5
      echo "    elif [ \$label1 = \"\\\"unlocked_period_count\\\":\" ] ; then" >&5
      echo "        if [ \$ln != \"0,\" ] ; then" >&5
      echo "            echo \"VERIFICATION FAILURE -- $keys $fioactors the unlocked_period_count does not match the expected value. lockedtokens value \$ln expected value 0,\"" >&5
      echo "       fi" >&5
      echo "    elif [ \$label1 = \"\\\"grant_type\\\":\" ] ; then" >&5
      echo "        if [ \$ln != \"$ltype,\" ] ; then" >&5
      echo "            echo \"VERIFICATION FAILURE -- $keys $fioactors the grant_type does not match the expected value. lockedtokens value \$ln expected value $ltype,\"" >&5
      echo "        fi" >&5
      echo "    elif [ \$label1 = \"\\\"inhibit_unlocking\\\":\" ] ; then" >&5
      echo "        if [ \$ln != \"1,\" ] ; then" >&5
      echo "            echo \"VERIFICATION FAILURE -- $keys $fioactors the inhibit_unlocking does not match the expected value. lockedtokens value \$ln expected value 1,\"" >&5
      echo "        fi" >&5
      echo "    elif [ \$label1 = \"\\\"remaining_locked_amount\\\":\" ] ; then" >&5
      echo "        ln=\$(echo \$ln | tr -d ,)" >&5
      echo "        if [ \$ln != $lockamount ] ; then" >&5
      echo "            echo \"VERIFICATION FAILURE -- $keys $fioactors the remaining_locked_amount does not match the expected value. lockedtokens value \$ln expected value $lockamount\"" >&5
      echo "        fi" >&5
      echo "" >&5
      echo "    fi" >&5
      echo "done" >&5
      echo "if [ \"\$ownerfound\" = false ] ; then" >&5
      echo " echo \"VERIFICATION FAILURE -- $keys $fioactors this account does not have a grant in the lockedtokens table\"" >&5
      echo "fi" >&5
      fi
    fi
   fi
#######################################end single

#######################################begin presale
if [ $type = "presale" ] ; then
  arr=$(echo $keys | tr "|" ",")
  let  countem=0
  msigaccounts=""
  for str in $arr ; do
  let countem++
  fioactor=`../fio/build/bin/clio  convert fiokey_to_account $str`
  if [ $countem = 1 ] ; then
    #create the msig account
    echo "# import MSIG account private key" >&3
    echo "./clio wallet import --private-key $str -n fio" >&3
  elif [ $countem = 2 ] ; then
    msigmaster=$fioactor
    #create the msig account
    echo "# presale MSIG account" >&3
    echo "#Public key: '$str'" >&3
    echo "#FIO Public Address (actor name): '$fioactor'" >&3
    if [ "$accountamount" -gt "0" ] ; then
        echo "./clio -u http://$server push action -j fio.token trnsfiopubky '{\"payee_public_key\": \"'$str'\", \"amount\": $accountamount, \"max_fee\": \"40000000000\", \"actor\": \"eosio\",\"tpid\":\"\"}' -p eosio@active" >&3
    else
        echo "./clio -u http://$server create account eosio $fioactor $str $str" >&3
    fi
    echo "" >&3
    owneraccountwaitspart="{\"account\": \"$fioactor\", \"permission\": \"owner\",\"max_fee\":4000000000, \"parent\": \"\",  \"auth\": { \"threshold\": $msigthresh, \"keys\": [], \"waits\": [],"
    activeaccountwaitspart="{\"account\": \"$fioactor\", \"permission\": \"active\",\"max_fee\":4000000000, \"parent\": \"owner\",  \"auth\": { \"threshold\": $msigthresh, \"keys\": [], \"waits\": [],"
    #put the code snippet into the txt file
    if [ "$lockamount" -gt "0" ] ; then
      if [[ $ltype = "1"  ||  $ltype = "2" || $ltype = "3" || $ltype = "4" ]] ; then
        echo "# issue locked token grant to $fioactor in lock type $ltype in the amount of $lockamount" >&4
        echo "./clio -u http://$server push action -j eosio addlocked '{\"owner\":\"$fioactor\",\"amount\":$lockamount,\"locktype\":$ltype}' -p eosio@active" >&4
        echo "" >&4
      fi
    elif [ "$lockamount" -le "0" ] ; then
      if [[ $ltype = "1"  ||  $ltype = "2" || $ltype = "3" || $ltype = "4" ]] ; then
        echo " WARNING!!!!!!  NO LOCKED TOKEN GRANT CREATED, NO LOCKED TOKEN GRANT FOR RECORD  found illegal suf amount '$lockamount'  -- line number $linecount"
      fi
    fi
    #add line to validation script
    echo "#validation for presale MSIG locked token holder" >&5
    echo "#pub key $str" >&5
    echo "#account $fioactor" >&5
    echo "resulttokens=\$(../fio/build/bin/clio -u http://\$url get currency balance fio.token $fioactor)" >&5
    echo "rt=\$(echo \$resulttokens | tr \"\\\r\" \" \")" >&5
    echo "rt=\$(echo \$rt | tr \" \" \"-\")" >&5
    echo "rt=\$(echo \$rt | tr -d .)" >&5
    echo "if [ -z \"\$rt\" ] ; then" >&5
    echo "   rt=\"0-FIO\"" >&5
    echo "fi" >&5
    echo "" >&5
    echo "if [ \$rt != \"$accountamount-FIO\" ] ; then" >&5
    echo "    echo \"VERIFICATION FAILURE -- $str $fioactor the amount in account $fioactor does not match the expected value. amount in account is \$rt  expected value is $accountamount-FIO\"" >&5
    echo "fi" >&5
    echo "" >&5
    if [[ $ltype = "1"  ||  $ltype = "2" || $ltype = "3" || $ltype = "4" ]] ; then
      echo "resultlocked=\$(../fio/build/bin/clio -u http://\$url get table eosio eosio lockedtokens --limit 1000 | grep -A5 $fioactor)" >&5
      echo "" >&5
      echo "ownerfound=false" >&5
      echo "label1=\"\"" >&5
      echo "for ln in \$resultlocked ; do" >&5
      echo "    if [[ \$ln = \"\\\"owner\\\":\" ||" >&5
      echo "        \$ln = \"\\\"total_grant_amount\\\":\" ||" >&5
      echo "        \$ln = \"\\\"unlocked_period_count\\\":\" ||" >&5
      echo "        \$ln = \"\\\"grant_type\\\":\" ||" >&5
      echo "        \$ln = \"\\\"inhibit_unlocking\\\":\" ||" >&5
      echo "        \$ln = \"\\\"remaining_locked_amount\\\":\" ]] ; then" >&5
      echo "        label1=\$ln" >&5
      echo "    elif [ \$label1 = \"\\\"owner\\\":\" ] ; then" >&5
      echo "       ownerfound=true" >&5
      echo "        if [ \$ln != \"\\\"$fioactor\\\",\" ] ; then" >&5
      echo "            echo \"VERIFICATION FAILURE -- $str $fioactor the owner does not match the expected value. lockedtokens value \$ln expected value \\\"$fioactor\\\",\"" >&5
      echo "        fi" >&5
      echo "    elif [ \$label1 = \"\\\"total_grant_amount\\\":\" ] ; then" >&5
      echo "        ln=\$(echo \$ln | tr -d ,)" >&5
      echo "        if [ \$ln != $lockamount ] ; then" >&5
      echo "            echo \"VERIFICATION FAILURE -- $str $fioactor the total_grant_amount does not match the expected value. lockedtokens value \$ln expected value $lockamount,\"" >&5
      echo "        fi" >&5
      echo "    elif [ \$label1 = \"\\\"unlocked_period_count\\\":\" ] ; then" >&5
      echo "        if [ \$ln != \"0,\" ] ; then" >&5
      echo "            echo \"VERIFICATION FAILURE -- $str $fioactor the unlocked_period_count does not match the expected value. lockedtokens value \$ln expected value 0,\"" >&5
      echo "       fi" >&5
      echo "    elif [ \$label1 = \"\\\"grant_type\\\":\" ] ; then" >&5
      echo "        if [ \$ln != \"$ltype,\" ] ; then" >&5
      echo "            echo \"VERIFICATION FAILURE -- $str $fioactor the grant_type does not match the expected value. lockedtokens value \$ln expected value $ltype,\"" >&5
      echo "        fi" >&5
      echo "    elif [ \$label1 = \"\\\"inhibit_unlocking\\\":\" ] ; then" >&5
      echo "        if [ \$ln != \"1,\" ] ; then" >&5
      echo "            echo \"VERIFICATION FAILURE -- $str $fioactor the inhibit_unlocking does not match the expected value. lockedtokens value \$ln expected value 1,\"" >&5
      echo "        fi" >&5
      echo "    elif [ \$label1 = \"\\\"remaining_locked_amount\\\":\" ] ; then" >&5
      echo "        ln=\$(echo \$ln | tr -d ,)" >&5
      echo "        if [ \$ln != $lockamount ] ; then" >&5
      echo "            echo \"VERIFICATION FAILURE -- $str $fioactor the remaining_locked_amount does not match the expected value. lockedtokens value \$ln expected value $lockamount\"" >&5
      echo "        fi" >&5
      echo "" >&5
      echo "    fi" >&5
      echo "done" >&5
      echo "if [ \"\$ownerfound\" = false ] ; then" >&5
      echo " echo \"VERIFICATION FAILURE -- $str $fioactor this account does not have a grant in the lockedtokens table\"" >&5
      echo "fi" >&5
    fi
    else
      #create the participant accounts
      echo "# presale MSIG participant" >&3
      echo "#Public key: '$str'" >&3
      echo "#FIO Public Address (actor name): '$fioactor'" >&3
      echo "if [ \"\$foundationacctcreated\" = false ] ; then " >&3
      echo "./clio -u http://$server create account eosio $fioactor $str $str" >&3
      echo "foundationacctcreated=true" >&3
      echo "fi" >&3

      #we assume the account already exists! because these presale accounts use the foundations pub key
      echo "" >&3
      if [ "$countem" -gt "3" ]; then
            msigaccounts=$msigaccounts","$fioactor
      else
            msigaccounts=$msigaccounts$fioactor
      fi
    fi
  done

  countem=0
  sortedaccounts=$(echo "$msigaccounts" | tr , "\n" | sort | tr "\n" ,)
  accountspart="\"accounts\":["
  for str1 in $sortedaccounts ; do
    let countem++
    accountspart=$accountspart"{\"permission\":{\"actor\":\"$str1\",\"permission\":\"active\"},\"weight\":1}"
  done
  accountspart=$accountspart"]"
  ownerupdateauth="./clio -u http://$server push action eosio updateauth '"$owneraccountwaitspart$accountspart" } } ' -p $msigmaster@owner"
  activeupdateauth="./clio -u http://$server push action eosio updateauth '"$activeaccountwaitspart$accountspart" } } ' -p $msigmaster@active"

  echo "# owner update auth for $msigmaster" >&3
  echo $ownerupdateauth >&3
  echo "" >&3
  echo "# active update auth for $msigmaster" >&3
  echo $activeupdateauth >&3
  echo "" >&3
fi

#######################################end presale


   if [[ $type != "msig" && $type != "single" && $type != "presale" ]] ; then
     echo " WARNING!!!!!!  NO ACCOUNT CREATED, NO LOCKED TOKEN GRANT FOR RECORD  found illegal type value $type'  -- line number $linecount"
   fi
done < $INPUT
IFS=$OLDIFS
# Close fd 3
exec 3>&-
exec 4>&-
exec 5>&-
echo " processing complete output files are create_locked_token_holder_accounts.sh and emplace_grants_into_locked_tokens.txt and validate_locked_token_holders.sh "
