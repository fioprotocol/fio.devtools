#!/bin/sh

#  finallocktokenvalidationpro.sh
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
#   This script will generate 1 file.
#
#     the file is a script that can be run to validate the chains locked token holders
#     once the transfer from prime trust is completed.
#
# to run this, first go to the fio.devtools dir then run this in the following way.
#       ./utils/finallocktokenvalidationpro.sh /users/edr/downloads/m1.csv
#
#
#  Created by Edward Rotthoff on 2/1/2020
#

INPUT="$1"
OLDIFS=$IFS
IFS=','
countem=0
FILE2="./final_validation_locked_token_holders.sh"
hostname="35.166.53.205:8889"

exec 5<> $FILE2
linecount=0
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }

echo "url=$hostname" >&5
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

#the || ensures you get the last row in the file.
while read -r type keys msigthresh lockamount accountamount locktype || [ -n "$type" ]
#type can be msig fio single
do
  let linecount++

  ltype=$(echo $locktype | tr -d '\r')
if [[ $ltype = "0"  || $ltype = "1"   ||  $ltype = "2" || $ltype = "3" || $ltype = "4" ]] ; then
#######################################begin msig
    if [[ $type = "msig" || $type = "presale" ]] ; then
      arr=$(echo $keys | tr "|" ",")
      let  countem=0
      msigaccounts=""
      for str in $arr ; do
        let countem++
        fioactor=`../fio/build/bin/clio  convert fiokey_to_account $str`
        if [ $countem = 2 ] ; then
          msigmaster=$fioactor

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
 if [ $accountamount = "0" ] ; then
#           feeresult="$(curl --header "Content-Type: application/json" --request post --data '{"end_point":"transfer_tokens_pub_key"}' http://$hostname/v1/chain/get_fee)"
#           feeresult=$(echo $feeresult | cut -d ":" -f2)
#           feeresult=$(echo $feeresult | cut -d "}" -f1)
           accountamount=$lockamount
fi
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
        fi
      done
    fi
#######################################end msig

#######################################begin single
    if [ $type = "single" ] ; then
      fioactors=`../fio/build/bin/clio  convert fiokey_to_account $keys`
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
#if account amount is 0 then go get the fee for pub key transfer, subtract that from the
# amount, and check for that resulting amount in the account.
 if [ $accountamount = "0" ] ; then
#        feeresult="$(curl --header "Content-Type: application/json" --request post --data '{"end_point":"transfer_tokens_pub_key"}' http://$hostname/v1/chain/get_fee)"
#       feeresult=$(echo $feeresult | cut -d ":" -f2)
#        feeresult=$(echo $feeresult | cut -d "}" -f1)
       accountamount=$lockamount
fi

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

   if [[ $type != "msig" && $type != "single" && $type != "presale" ]] ; then
     echo " WARNING!!!!!!  NO ACCOUNT CREATED, NO LOCKED TOKEN GRANT FOR RECORD  found illegal type value $type'  -- line number $linecount"
   fi
done < $INPUT
IFS=$OLDIFS
# Close fd 3
exec 3>&-
exec 4>&-
exec 5>&-
echo " processing complete output file is final_validation_locked_token_holders.sh  "
