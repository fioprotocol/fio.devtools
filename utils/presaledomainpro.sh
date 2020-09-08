#!/bin/sh

#  presaledomainpro.sh
#  this shell script will process the contents of a comma delimited pre sale domains file
#  containing the following columns
#   domainname  (name of the domain)
#   public key  (the key associated with the domain
#   This  generate 2 files.
#
#     the first file will be a shell script file that can be used to generate the accounts
#     and associated domains on the fio protocol.
#
#     the second file is a script that can be run to validate the created domains
#
# to run this, first go to the fio.devtools dir then run this in the following way.
#       ./utils/presaledomainpro.sh /users/edr/downloads/m2.csv
#
#
#  Created by Edward Rotthoff on 01/20/19.
#

INPUT="$1"
OLDIFS=$IFS
IFS=','
countem=0
FILE="./create_presale_domains.sh"
FILE2="./validate_presale_domains.sh"
FILE3="./make_presale_domains_private.sh"
server="200.201.191.227:58888"

exec 3<> $FILE
exec 5<> $FILE2
exec 7<> $FILE3
linecount=0
echo "url=$server" >&5
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
#the || ensures you get the last row in the file.
while read -r domain pubkey || [ -n "$domain" ]
do

pubkey=$(echo $pubkey | tr -d '\r')
#######################################begin line processing
if [ $domain != "domainname" ] ; then
          #create the presale domain account
          fioactor=`../fio/build/bin/clio  convert fiokey_to_account $pubkey`
          echo "presale domain " $domain
          echo "# Creating presale domain " $domain >&3
          echo "#Public key: '$pubkey'" >&3
          echo "#FIO Public Address (actor name): '$fioactor'" >&3
          echo "" >&3


          echo "./clio -u http://$server push action -j fio.address regdomain '{\"fio_domain\":\"$domain\",\"owner_fio_public_key\":\"$pubkey\",\"max_fee\":\"40000000000\",\"actor\":\"eosio\",\"tpid\":\"\"}' --permission eosio@active" >&3
          echo "./clio -u http://$server push action -j fio.address setdomainpub '{\"fio_domain\":\"$domain\",\"is_public\":1,\"max_fee\":\"40000000000\",\"actor\":\"eosio\",\"tpid\":\"\"}' --permission eosio@active" >&3

          echo "./clio -u http://$server push action -j fio.address setdomainpub '{\"fio_domain\":\"$domain\",\"is_public\":0,\"max_fee\":\"40000000000\",\"actor\":\"eosio\",\"tpid\":\"\"}' --permission eosio@active" >&7

          #add line to validation script

echo "count=0" >&5
echo "domainfound=false" >&5
echo "while [[ \$domainfound = false && \$count -le "4" ]] ; do" >&5
echo "let count++" >&5
echo "           if [ \$count -gt "1" ] ; then" >&5
echo "               sleep .5" >&5
echo "           fi" >&5

if [ $linecount -gt "10" ] ; then
     lower=$(($linecount - 10))
     echo "resultlocked=\$(../fio/build/bin/clio -u http://\$url get table fio.address fio.address domains -L $lower --limit 16 | grep -A4 -B1 '\\\"name\\\": \\\"$domain\\\"')" >&5
else
     echo "resultlocked=\$(../fio/build/bin/clio -u http://\$url get table fio.address fio.address domains --limit 16 | grep -A4 -B1 '\\\"name\\\": \\\"$domain\\\"')" >&5
fi


            echo "" >&5
            echo "label1=\"\"" >&5
            echo "for ln in \$resultlocked ; do" >&5
            echo "    if [[ \$ln = \"\\\"id\\\":\" ||" >&5
            echo "        \$ln = \"\\\"name\\\":\" ||" >&5
            echo "        \$ln = \"\\\"domainhash\\\":\" ||" >&5
            echo "        \$ln = \"\\\"account\\\":\" ||" >&5
            echo "        \$ln = \"\\\"is_public\\\":\" ||" >&5
            echo "        \$ln = \"\\\"expiration\\\":\" ]] ; then" >&5
            echo "        label1=\$ln" >&5
            echo "    elif [ \$label1 = \"\\\"name\\\":\" ] ; then" >&5
            echo "        if [ \$ln == \"\\\"$domain\\\",\" ] ; then" >&5
#echo "           if [ \$count -gt "1" ] ; then" >&5
#echo "               echo \" $domain found on retry\"" >&5
#echo "           fi" >&5
            echo "           domainfound=true" >&5
            echo "        fi" >&5
            echo "    elif [ \$label1 = \"\\\"account\\\":\" ] ; then" >&5
            echo "        if [ \$ln != \"\\\"$fioactor\\\",\" ] ; then" >&5
            echo "            echo \"VERIFICATION FAILURE -- $pubkey $fioactor $domain account not found for this actor \"" >&5
            echo "        fi" >&5
            echo "" >&5
echo "    elif [ \$label1 = \"\\\"is_public\\\":\" ] ; then" >&5
echo "        if [ \$ln != \"0,\" ] ; then" >&5
echo "            echo \"VERIFICATION FAILURE -- $pubkey $fioactor $domain this domain is public, presale domains should be private \"" >&5
echo "        fi" >&5
echo "" >&5
            echo "    fi" >&5
            echo "done" >&5
            echo "done" >&5
            echo "if [ \"\$domainfound\" = false ] ; then" >&5
            echo " echo \"VERIFICATION FAILURE -- $str $fioactor could not find domain $domain for this account\"" >&5
            echo "fi" >&5
       fi
#######################################end line processing
 let linecount++
done < $INPUT
IFS=$OLDIFS
# Close fd 3
exec 3>&-
exec 5>&-
exec 7>&-
echo " processing complete output files are create_presale_domains.sh, make_presale_domains_private.sh and validate_presale_domains.sh "
