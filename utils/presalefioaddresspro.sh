#!/bin/sh

#  presalefioaddresspro.sh
#  this shell script will process the contents of a comma delimited pre sale fio addresses file
#  containing the following columns
#   fioaddress  (the fio address to create)
#   public key  (the key associated with the fio address
#   This  generate 2 files.
#
#     the first file will be a shell script file that can be used to generate the accounts
#     and associated fiuo addresses on the fio protocol.
#
#     the second file is a script that can be run to validate the created fio addresses
#
# to run this, first go to the fio.devtools dir then run this in the following way.
#       ./utils/presalefioaddresspro.sh /users/edr/downloads/m4.csv
#
#
#  Created by Edward Rotthoff on 01/22/19.
#

INPUT="$1"
OLDIFS=$IFS
IFS=','
countem=0
FILE="./create_presale_fioaddresses.sh"
FILE2="./validate_presale_fioaddresses.sh"
server="200.201.191.227:58888"

exec 3<> $FILE
exec 5<> $FILE2
linecount=0
echo "id=\"\"" >&5
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
#the || ensures you get the last row in the file.
while read -r fioaddress pubkey || [ -n "$fioaddress" ]
do
  let linecount++
pubkey=$(echo $pubkey | tr -d '\r')
#######################################begin line processing
if [ $fioaddress != "address" ] ; then
          #create the presale domain account
          fioactor=`../fio/build/bin/clio  convert fiokey_to_account $pubkey`
          echo "presale fioaddress " $fioaddress
          echo "# Creating presale fioaddress " $fioaddress >&3
          echo "#Public key: '$pubkey'" >&3
          echo "#FIO Public Address (actor name): '$fioactor'" >&3
          echo "" >&3

          #get the domain from the address.
          domain=$(echo $fioaddress | cut -d "@" -f2)

          echo "./clio -u http://$server push action -j fio.address regaddress '{\"fio_address\":\"$fioaddress\",\"owner_fio_public_key\":\"$pubkey\",\"max_fee\":\"40000000000\",\"actor\":\"eosio\",\"tpid\":\"\"}' --permission eosio@active" >&3

echo "count=0" >&5
echo "url=$server" >&5
echo "addrfound=false" >&5
echo "while [[ \$addrfound = false && \$count -le "10" ]] ; do" >&5
echo "let count++" >&5
echo "           if [ \$count -gt "1" ] ; then" >&5
echo "               sleep 1" >&5
echo "           fi" >&5

if [ $linecount -gt "5" ] ; then
   lower=$(($linecount - 5))
   echo "resultlocked=\$(../fio/build/bin/clio -u http://\$url get table fio.address fio.address fionames -L $lower --limit 6 | grep -A5 '\\\"name\\\": \\\"$fioaddress\\\"')" >&5
else
   echo "resultlocked=\$(../fio/build/bin/clio -u http://\$url get table fio.address fio.address fionames --limit 6 | grep -A5 '\\\"name\\\": \\\"$fioaddress\\\"')" >&5
fi



            echo "" >&5
            echo "addrfound=false" >&5
            echo "label1=\"\"" >&5
            echo "for ln in \$resultlocked ; do" >&5
            echo "    if [[ \$ln = \"\\\"name\\\":\" ||" >&5
            echo "        \$ln = \"\\\"namehash\\\":\" ||" >&5
            echo "        \$ln = \"\\\"domain\\\":\" ||" >&5
            echo "        \$ln = \"\\\"domainhash\\\":\" ||" >&5
            echo "        \$ln = \"\\\"expiration\\\":\" ||" >&5
            echo "        \$ln = \"\\\"owner_account\\\":\" ]] ; then" >&5
            echo "        label1=\$ln" >&5
            echo "    elif [ \$label1 = \"\\\"name\\\":\" ] ; then" >&5
            echo "        if [ \$ln == \"\\\"$fioaddress\\\",\" ] ; then" >&5
echo "           if [ \$count -gt "1" ] ; then" >&5
echo "               echo \" $fioaddress found on retry\"" >&5
echo "           fi" >&5
            echo "           addrfound=true" >&5
            echo "        fi" >&5
            echo "    elif [ \$label1 = \"\\\"owner_account\\\":\" ] ; then" >&5
            echo "        if [ \$ln != \"\\\"$fioactor\\\",\" ] ; then" >&5
            echo "            echo \"VERIFICATION FAILURE -- $pubkey $fioactor $domain account not found for this actor \"" >&5
            echo "        fi" >&5
            echo "" >&5
            echo "    fi" >&5
            echo "done" >&5
            echo "done" >&5
            echo "if [ \"\$addrfound\" = false ] ; then" >&5
            echo " echo \"VERIFICATION FAILURE --$pubkey $fioactor could not find address $fioaddress for this account\"" >&5
            echo "fi" >&5
       fi
#######################################end line processing

done < $INPUT
IFS=$OLDIFS
# Close fd 3
exec 3>&-
exec 5>&-
echo " processing complete output files are create_presale_fioadddresses.sh and validate_presale_fioaddresses.sh "
