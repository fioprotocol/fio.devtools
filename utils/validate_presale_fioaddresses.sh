id=""
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames --limit 6 | grep -A5 '\"name\": \"0@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"0@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 0@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"oinxtaeh5emz\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7iQCoDeDdh4y5PhwQiqAQ5xo8k7Wf98KVo9qvCYH54b4v7SeXC oinxtaeh5emz coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7iQCoDeDdh4y5PhwQiqAQ5xo8k7Wf98KVo9qvCYH54b4v7SeXC oinxtaeh5emz could not find address 0@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames --limit 6 | grep -A5 '\"name\": \"0@math\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"0@math\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 0@math found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"1spv2foqa5be\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO59T6dsEkTsnXu1mqFmdQHGvroKdB4rCxXi41FwNoYmhV14A3qj 1spv2foqa5be math account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO59T6dsEkTsnXu1mqFmdQHGvroKdB4rCxXi41FwNoYmhV14A3qj 1spv2foqa5be could not find address 0@math for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames --limit 6 | grep -A5 '\"name\": \"0@mycelium\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"0@mycelium\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 0@mycelium found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"oinxtaeh5emz\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7iQCoDeDdh4y5PhwQiqAQ5xo8k7Wf98KVo9qvCYH54b4v7SeXC oinxtaeh5emz mycelium account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7iQCoDeDdh4y5PhwQiqAQ5xo8k7Wf98KVo9qvCYH54b4v7SeXC oinxtaeh5emz could not find address 0@mycelium for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames --limit 6 | grep -A5 '\"name\": \"0@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"0@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 0@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"5lpal53jdeeu\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5R5BntZLMgtzUJgqcNwDTsEoEc4cRP6H7LhDkrfZTvVzsTL83m 5lpal53jdeeu trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5R5BntZLMgtzUJgqcNwDTsEoEc4cRP6H7LhDkrfZTvVzsTL83m 5lpal53jdeeu could not find address 0@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 1 --limit 6 | grep -A5 '\"name\": \"000@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"000@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 000@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"qmrfwfon4ot1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7F3jJqbvrsR3FVkmRTAVWC8MBfQArJzgwVSWETxNhujJ4xRX2K qmrfwfon4ot1 ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7F3jJqbvrsR3FVkmRTAVWC8MBfQArJzgwVSWETxNhujJ4xRX2K qmrfwfon4ot1 could not find address 000@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 2 --limit 6 | grep -A5 '\"name\": \"001@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"001@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 001@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"l2rycgaczmeo\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7wGCe9RkUPxFYzJji27ErbkjpgmJfFnY8SSWnCExxUZs3dnWWN l2rycgaczmeo ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7wGCe9RkUPxFYzJji27ErbkjpgmJfFnY8SSWnCExxUZs3dnWWN l2rycgaczmeo could not find address 001@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 3 --limit 6 | grep -A5 '\"name\": \"007@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"007@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 007@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"mel1usgsczq5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8RjiS2AfeLJ43wAdMbKMNsPWhqAJuh6HLePJxDacCVmZAESFwQ mel1usgsczq5 coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8RjiS2AfeLJ43wAdMbKMNsPWhqAJuh6HLePJxDacCVmZAESFwQ mel1usgsczq5 could not find address 007@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 4 --limit 6 | grep -A5 '\"name\": \"007@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"007@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 007@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"tt4o2z2wwghy\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7ZZE3fmvmZGntui2trjcUTjhXrkNYCfGeecNFwCJLTzAV2Nezu tt4o2z2wwghy ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7ZZE3fmvmZGntui2trjcUTjhXrkNYCfGeecNFwCJLTzAV2Nezu tt4o2z2wwghy could not find address 007@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 5 --limit 6 | grep -A5 '\"name\": \"01@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"01@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 01@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zyiyx3fn2kgz\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6puEChjQFiDtqUnjgdTmZicsAxUQitmxpUVNHUrJio61pqpAQW zyiyx3fn2kgz infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6puEChjQFiDtqUnjgdTmZicsAxUQitmxpUVNHUrJio61pqpAQW zyiyx3fn2kgz could not find address 01@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 6 --limit 6 | grep -A5 '\"name\": \"01@puma\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"01@puma\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 01@puma found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ie4v2ibyu5hm\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7RfBGtFjVQ6KEnK8ybncm3MLeHbLnVLCky4rAdqhyRa2iw8GMb ie4v2ibyu5hm puma account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7RfBGtFjVQ6KEnK8ybncm3MLeHbLnVLCky4rAdqhyRa2iw8GMb ie4v2ibyu5hm could not find address 01@puma for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 7 --limit 6 | grep -A5 '\"name\": \"01043544037@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"01043544037@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 01043544037@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"guvjrlr51og2\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6grdw1L1VHFwUTuPh6ZaQc3ibHhni7zHB1bDfxVR7j6uPgNkCQ guvjrlr51og2 ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6grdw1L1VHFwUTuPh6ZaQc3ibHhni7zHB1bDfxVR7j6uPgNkCQ guvjrlr51og2 could not find address 01043544037@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 8 --limit 6 | grep -A5 '\"name\": \"0714@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"0714@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 0714@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"4jjnzb5aksaq\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5eZEZM84JtfLSGcRfChJLUB9LwfyuNNJd4Y3LDKGpJZfDik41D 4jjnzb5aksaq ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5eZEZM84JtfLSGcRfChJLUB9LwfyuNNJd4Y3LDKGpJZfDik41D 4jjnzb5aksaq could not find address 0714@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 9 --limit 6 | grep -A5 '\"name\": \"1@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"1@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 1@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zwdwqswlw4o5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 could not find address 1@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 10 --limit 6 | grep -A5 '\"name\": \"1@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"1@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 1@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"kzy13fcngneq\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6E7RTkEW1UJgputQ7ZXCJjpDphnDSyWB4orGfjvRRxqaSz8Vw2 kzy13fcngneq coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6E7RTkEW1UJgputQ7ZXCJjpDphnDSyWB4orGfjvRRxqaSz8Vw2 kzy13fcngneq could not find address 1@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 11 --limit 6 | grep -A5 '\"name\": \"1@edge\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"1@edge\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 1@edge found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"citnmeunzr3q\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO78vsmVxvCKpdRZZqAxndrpt5HmjxABE988r9G94jn9JH9GjxP1 citnmeunzr3q edge account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO78vsmVxvCKpdRZZqAxndrpt5HmjxABE988r9G94jn9JH9GjxP1 citnmeunzr3q could not find address 1@edge for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 12 --limit 6 | grep -A5 '\"name\": \"1@mas\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"1@mas\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 1@mas found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zdsjyyesjjib\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6LqxatGs3PTD5rw8d8S8D9FfE3iPhFL4fikqSaFDE3XXxpnfWv zdsjyyesjjib mas account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6LqxatGs3PTD5rw8d8S8D9FfE3iPhFL4fikqSaFDE3XXxpnfWv zdsjyyesjjib could not find address 1@mas for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 13 --limit 6 | grep -A5 '\"name\": \"1@math\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"1@math\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 1@math found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"u5ab2zz2zxwj\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5LGD4hTfudfEZ48fg21XEFoezGbzHE5C7KHuHqACMWMH2bAsCw u5ab2zz2zxwj math account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5LGD4hTfudfEZ48fg21XEFoezGbzHE5C7KHuHqACMWMH2bAsCw u5ab2zz2zxwj could not find address 1@math for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 14 --limit 6 | grep -A5 '\"name\": \"1@max\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"1@max\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 1@max found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"jfzfjkyyaqmm\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6i6cnNM9PsbxLn68mPXZpEcR2o75hwUpRQehMss4qGyhHyWRhQ jfzfjkyyaqmm max account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6i6cnNM9PsbxLn68mPXZpEcR2o75hwUpRQehMss4qGyhHyWRhQ jfzfjkyyaqmm could not find address 1@max for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 15 --limit 6 | grep -A5 '\"name\": \"1@qtum\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"1@qtum\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 1@qtum found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"lwfuez4ddxf1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8BTN7xJZR7SeCyCRcpuVFxuWM57M4FsV5fXnavHLpJaDhyAE1E lwfuez4ddxf1 qtum account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8BTN7xJZR7SeCyCRcpuVFxuWM57M4FsV5fXnavHLpJaDhyAE1E lwfuez4ddxf1 could not find address 1@qtum for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 16 --limit 6 | grep -A5 '\"name\": \"1@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"1@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 1@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"2e3e2olv3ugq\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO59sGuMH5VNBgCJXh4aY4DrAuSkhpQopMf6pfVk3oSCvebMFSU5 2e3e2olv3ugq ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO59sGuMH5VNBgCJXh4aY4DrAuSkhpQopMf6pfVk3oSCvebMFSU5 2e3e2olv3ugq could not find address 1@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 17 --limit 6 | grep -A5 '\"name\": \"10@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"10@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 10@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"hk5h2wkeipto\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5xteWpp3bB9q8KGEdLpEbkexq5zeq3EC6YjZ7iJLWgmJUvsX44 hk5h2wkeipto trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5xteWpp3bB9q8KGEdLpEbkexq5zeq3EC6YjZ7iJLWgmJUvsX44 hk5h2wkeipto could not find address 10@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 18 --limit 6 | grep -A5 '\"name\": \"100@math\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"100@math\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 100@math found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"kbh5nqb4wiwv\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8RBVnrfaoUJGD8SfvsCEc8gcQHyjAP3vawLt1QgVPPbbkqHDNj kbh5nqb4wiwv math account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8RBVnrfaoUJGD8SfvsCEc8gcQHyjAP3vawLt1QgVPPbbkqHDNj kbh5nqb4wiwv could not find address 100@math for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 19 --limit 6 | grep -A5 '\"name\": \"100@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"100@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 100@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"l2rycgaczmeo\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7wGCe9RkUPxFYzJji27ErbkjpgmJfFnY8SSWnCExxUZs3dnWWN l2rycgaczmeo ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7wGCe9RkUPxFYzJji27ErbkjpgmJfFnY8SSWnCExxUZs3dnWWN l2rycgaczmeo could not find address 100@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 20 --limit 6 | grep -A5 '\"name\": \"11@math\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"11@math\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 11@math found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"pd1muxgkbxsk\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5HxYEzVqJ5y91m6pfPtusWXDskbjtinjWFxdT7cUKJ6oJ3bdyZ pd1muxgkbxsk math account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5HxYEzVqJ5y91m6pfPtusWXDskbjtinjWFxdT7cUKJ6oJ3bdyZ pd1muxgkbxsk could not find address 11@math for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 21 --limit 6 | grep -A5 '\"name\": \"111@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"111@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 111@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"bq1jprgiqewv\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6A5LgRmbqAysjrvRyGZ8ePF9qaC6m1m4XfkCBnxB6nWyQTAYNK bq1jprgiqewv ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6A5LgRmbqAysjrvRyGZ8ePF9qaC6m1m4XfkCBnxB6nWyQTAYNK bq1jprgiqewv could not find address 111@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 22 --limit 6 | grep -A5 '\"name\": \"1113@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"1113@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 1113@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"qbzxyhbektzj\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5YNpTMu4pBAPS5QxohnCCZpXD2SbmMmqiHaC6vSo5c7DLcvnYk qbzxyhbektzj infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5YNpTMu4pBAPS5QxohnCCZpXD2SbmMmqiHaC6vSo5c7DLcvnYk qbzxyhbektzj could not find address 1113@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 23 --limit 6 | grep -A5 '\"name\": \"12@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"12@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 12@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"wdsh5ip2zciu\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7n2WEyVUhCz9DU5rhSZHM1fM9A9vAfiDUdUhjEa4t7oas52UEr wdsh5ip2zciu trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7n2WEyVUhCz9DU5rhSZHM1fM9A9vAfiDUdUhjEa4t7oas52UEr wdsh5ip2zciu could not find address 12@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 24 --limit 6 | grep -A5 '\"name\": \"123@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"123@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 123@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"l2rycgaczmeo\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7wGCe9RkUPxFYzJji27ErbkjpgmJfFnY8SSWnCExxUZs3dnWWN l2rycgaczmeo ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7wGCe9RkUPxFYzJji27ErbkjpgmJfFnY8SSWnCExxUZs3dnWWN l2rycgaczmeo could not find address 123@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 25 --limit 6 | grep -A5 '\"name\": \"123@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"123@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 123@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"wdsh5ip2zciu\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7n2WEyVUhCz9DU5rhSZHM1fM9A9vAfiDUdUhjEa4t7oas52UEr wdsh5ip2zciu trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7n2WEyVUhCz9DU5rhSZHM1fM9A9vAfiDUdUhjEa4t7oas52UEr wdsh5ip2zciu could not find address 123@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 26 --limit 6 | grep -A5 '\"name\": \"12308507@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"12308507@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 12308507@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"nzatg2kbtmtp\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8gRBZAbyZDumSBpkLWvD27c1TvvMKBTgh2cz976SmCaubDaU91 nzatg2kbtmtp infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8gRBZAbyZDumSBpkLWvD27c1TvvMKBTgh2cz976SmCaubDaU91 nzatg2kbtmtp could not find address 12308507@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 27 --limit 6 | grep -A5 '\"name\": \"1337@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"1337@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 1337@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"53k3wsda5ike\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6siX3W4Gt7F4NM29YKsfCrHZzS1iktvXthXi1gwqjHkTCg1UeL 53k3wsda5ike ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6siX3W4Gt7F4NM29YKsfCrHZzS1iktvXthXi1gwqjHkTCg1UeL 53k3wsda5ike could not find address 1337@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 28 --limit 6 | grep -A5 '\"name\": \"163@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"163@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 163@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"l2rycgaczmeo\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7wGCe9RkUPxFYzJji27ErbkjpgmJfFnY8SSWnCExxUZs3dnWWN l2rycgaczmeo ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7wGCe9RkUPxFYzJji27ErbkjpgmJfFnY8SSWnCExxUZs3dnWWN l2rycgaczmeo could not find address 163@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 29 --limit 6 | grep -A5 '\"name\": \"1988@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"1988@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 1988@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"r1udlax4zdqv\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7VpygBWgsfcQ5RdGRa9SyyMUi1gpjFCYyzsf762Z7h3pW1L6nf r1udlax4zdqv coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7VpygBWgsfcQ5RdGRa9SyyMUi1gpjFCYyzsf762Z7h3pW1L6nf r1udlax4zdqv could not find address 1988@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 30 --limit 6 | grep -A5 '\"name\": \"1ejioforkel2@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"1ejioforkel2@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 1ejioforkel2@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"jfzxmvmbtker\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7SKbEUoNEFPjJNL2CGL1DpNt1Zi1qCExS4FwyzzAkixb2ihjto jfzxmvmbtker trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7SKbEUoNEFPjJNL2CGL1DpNt1Zi1qCExS4FwyzzAkixb2ihjto jfzxmvmbtker could not find address 1ejioforkel2@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 31 --limit 6 | grep -A5 '\"name\": \"1os@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"1os@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 1os@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"v2h1hezqfifn\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO738RfrL3jhGnp35TyV2PtT939HjhgFECKMqENaFVcv2GK84w7S v2h1hezqfifn ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO738RfrL3jhGnp35TyV2PtT939HjhgFECKMqENaFVcv2GK84w7S v2h1hezqfifn could not find address 1os@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 32 --limit 6 | grep -A5 '\"name\": \"1pvtxda@guarda\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"1pvtxda@guarda\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 1pvtxda@guarda found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"vebmcn432s5v\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO73CTm47V4NF4evB7sKPxtdxTnyAExcdhsi1gMjPY4un3Mhhbzd vebmcn432s5v guarda account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO73CTm47V4NF4evB7sKPxtdxTnyAExcdhsi1gMjPY4un3Mhhbzd vebmcn432s5v could not find address 1pvtxda@guarda for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 33 --limit 6 | grep -A5 '\"name\": \"1speltluny1@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"1speltluny1@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 1speltluny1@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"3lk2zizcnbd2\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO68afMZKBAs3D8Q26HJPDzwWjJ6EKdtKPndNwy5BXk4jRimLtHv 3lk2zizcnbd2 ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO68afMZKBAs3D8Q26HJPDzwWjJ6EKdtKPndNwy5BXk4jRimLtHv 3lk2zizcnbd2 could not find address 1speltluny1@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 34 --limit 6 | grep -A5 '\"name\": \"1st@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"1st@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 1st@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"oxek124tbte3\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO53WjvsQnTKbC4Bs2he5RTEbZJjodyyX2T7ssVNo5NRS2Wo3pEZ oxek124tbte3 ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO53WjvsQnTKbC4Bs2he5RTEbZJjodyyX2T7ssVNo5NRS2Wo3pEZ oxek124tbte3 could not find address 1st@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 35 --limit 6 | grep -A5 '\"name\": \"2@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"2@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 2@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zwdwqswlw4o5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 could not find address 2@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 36 --limit 6 | grep -A5 '\"name\": \"2@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"2@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 2@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"2hbvvtibfrzr\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5svwoGLWtK8eQt7dG8nJt8DuNxfhDTbqMYBgBfAHzsdtYGVSWY 2hbvvtibfrzr coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5svwoGLWtK8eQt7dG8nJt8DuNxfhDTbqMYBgBfAHzsdtYGVSWY 2hbvvtibfrzr could not find address 2@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 37 --limit 6 | grep -A5 '\"name\": \"2@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"2@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 2@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"utwgiczlm3w1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 could not find address 2@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 38 --limit 6 | grep -A5 '\"name\": \"21602052017087@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"21602052017087@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 21602052017087@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"amoiodn22as4\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO86V2Dai9jwh7Ntt2j2S76tentnJk7nzs8bT1uHGJMBvTRiES4L amoiodn22as4 ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO86V2Dai9jwh7Ntt2j2S76tentnJk7nzs8bT1uHGJMBvTRiES4L amoiodn22as4 could not find address 21602052017087@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 39 --limit 6 | grep -A5 '\"name\": \"220yds@edge\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"220yds@edge\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 220yds@edge found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ir2jj5a3rtbe\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8QARVz961CzxkdtsrdWD2hUuoXsg3sDfTfeqDW2pYveFoxNvDP ir2jj5a3rtbe edge account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8QARVz961CzxkdtsrdWD2hUuoXsg3sDfTfeqDW2pYveFoxNvDP ir2jj5a3rtbe could not find address 220yds@edge for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 40 --limit 6 | grep -A5 '\"name\": \"22ndcenturycrypto@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"22ndcenturycrypto@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 22ndcenturycrypto@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"d55ltqqx1ljb\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8N3LJdxCVNokmJUn34jwDyqCkevinb4s6LPSvrKuSFxHcG2ivG d55ltqqx1ljb trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8N3LJdxCVNokmJUn34jwDyqCkevinb4s6LPSvrKuSFxHcG2ivG d55ltqqx1ljb could not find address 22ndcenturycrypto@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 41 --limit 6 | grep -A5 '\"name\": \"2bfree@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"2bfree@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 2bfree@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"35waldm2atn2\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO4v9gF5kFi6Ja54msXT49qM5rgCUjD9KNzU82BKXxB6xxPnKSLT 35waldm2atn2 ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO4v9gF5kFi6Ja54msXT49qM5rgCUjD9KNzU82BKXxB6xxPnKSLT 35waldm2atn2 could not find address 2bfree@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 42 --limit 6 | grep -A5 '\"name\": \"2infinity@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"2infinity@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 2infinity@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"3dule1ka3fm5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7auVRFHGWzR33zsZx76SrrRNFhsx72GUmQjD1xbtmcEHimNjYh 3dule1ka3fm5 infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7auVRFHGWzR33zsZx76SrrRNFhsx72GUmQjD1xbtmcEHimNjYh 3dule1ka3fm5 could not find address 2infinity@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 43 --limit 6 | grep -A5 '\"name\": \"2smart2click@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"2smart2click@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 2smart2click@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"tqqpfpzrcnh1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8j3VQvEgb7AkcH4cr3D9JvbjN6CiHaHb14ZPVXCimJQwD2zK9S tqqpfpzrcnh1 coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8j3VQvEgb7AkcH4cr3D9JvbjN6CiHaHb14ZPVXCimJQwD2zK9S tqqpfpzrcnh1 could not find address 2smart2click@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 44 --limit 6 | grep -A5 '\"name\": \"3@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"3@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 3@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zwdwqswlw4o5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 could not find address 3@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 45 --limit 6 | grep -A5 '\"name\": \"3@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"3@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 3@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"2hbvvtibfrzr\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5svwoGLWtK8eQt7dG8nJt8DuNxfhDTbqMYBgBfAHzsdtYGVSWY 2hbvvtibfrzr coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5svwoGLWtK8eQt7dG8nJt8DuNxfhDTbqMYBgBfAHzsdtYGVSWY 2hbvvtibfrzr could not find address 3@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 46 --limit 6 | grep -A5 '\"name\": \"3@math\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"3@math\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 3@math found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"xcm4qhhmd2bi\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6KxhFLUEYPNDTX4858aumfCUwTwJzi6uT6gRgagCwirymLgS1u xcm4qhhmd2bi math account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6KxhFLUEYPNDTX4858aumfCUwTwJzi6uT6gRgagCwirymLgS1u xcm4qhhmd2bi could not find address 3@math for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 47 --limit 6 | grep -A5 '\"name\": \"3@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"3@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 3@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"3zr2aznok1rm\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO85MJPY4AxjDEPtnqag6urWF3A1basZCakspX4B8sM8MZ2MjqKD 3zr2aznok1rm trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO85MJPY4AxjDEPtnqag6urWF3A1basZCakspX4B8sM8MZ2MjqKD 3zr2aznok1rm could not find address 3@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 48 --limit 6 | grep -A5 '\"name\": \"300@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"300@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 300@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ukxh5q5blghl\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO72mWskdhQ4zTUXPNc9yaj5K7y7pjkdkwcBqeHHB5BEN6JKAgwF ukxh5q5blghl atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO72mWskdhQ4zTUXPNc9yaj5K7y7pjkdkwcBqeHHB5BEN6JKAgwF ukxh5q5blghl could not find address 300@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 49 --limit 6 | grep -A5 '\"name\": \"300@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"300@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 300@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"vfe5ziduud2t\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6JvLWQRNumahaRnKZ8xTVbGm1oGBL73uWA1ucBVsPWYVYviJ9y vfe5ziduud2t ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6JvLWQRNumahaRnKZ8xTVbGm1oGBL73uWA1ucBVsPWYVYviJ9y vfe5ziduud2t could not find address 300@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 50 --limit 6 | grep -A5 '\"name\": \"360@math\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"360@math\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 360@math found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"pd1muxgkbxsk\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5HxYEzVqJ5y91m6pfPtusWXDskbjtinjWFxdT7cUKJ6oJ3bdyZ pd1muxgkbxsk math account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5HxYEzVqJ5y91m6pfPtusWXDskbjtinjWFxdT7cUKJ6oJ3bdyZ pd1muxgkbxsk could not find address 360@math for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 51 --limit 6 | grep -A5 '\"name\": \"360@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"360@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 360@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"l2rycgaczmeo\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7wGCe9RkUPxFYzJji27ErbkjpgmJfFnY8SSWnCExxUZs3dnWWN l2rycgaczmeo ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7wGCe9RkUPxFYzJji27ErbkjpgmJfFnY8SSWnCExxUZs3dnWWN l2rycgaczmeo could not find address 360@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 52 --limit 6 | grep -A5 '\"name\": \"3l8pgwe77gvxszttufw1okxn6ggmvgbstj@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"3l8pgwe77gvxszttufw1okxn6ggmvgbstj@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 3l8pgwe77gvxszttufw1okxn6ggmvgbstj@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"d51aajjwnzn1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO4xjm5MWjUG7pxPE3tnJ5MLY8deomNhMmbm9t1ZujsPNBHxiuDt d51aajjwnzn1 coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO4xjm5MWjUG7pxPE3tnJ5MLY8deomNhMmbm9t1ZujsPNBHxiuDt d51aajjwnzn1 could not find address 3l8pgwe77gvxszttufw1okxn6ggmvgbstj@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 53 --limit 6 | grep -A5 '\"name\": \"3zarr@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"3zarr@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 3zarr@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"qjirm4u2wlbd\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO62xofbLBghNWXYrpQZwezpEGnMBRUMttQv4hswhjDskPj8bnuw qjirm4u2wlbd coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO62xofbLBghNWXYrpQZwezpEGnMBRUMttQv4hswhjDskPj8bnuw qjirm4u2wlbd could not find address 3zarr@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 54 --limit 6 | grep -A5 '\"name\": \"3zveuga@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"3zveuga@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 3zveuga@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"gznotqf3ue23\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6CQMxUP7gX1XUn3WCvhNrjurYtAChrMU2HwTDo6KhTgH4jPzLN gznotqf3ue23 coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6CQMxUP7gX1XUn3WCvhNrjurYtAChrMU2HwTDo6KhTgH4jPzLN gznotqf3ue23 could not find address 3zveuga@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 55 --limit 6 | grep -A5 '\"name\": \"4@math\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"4@math\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 4@math found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"1spv2foqa5be\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO59T6dsEkTsnXu1mqFmdQHGvroKdB4rCxXi41FwNoYmhV14A3qj 1spv2foqa5be math account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO59T6dsEkTsnXu1mqFmdQHGvroKdB4rCxXi41FwNoYmhV14A3qj 1spv2foqa5be could not find address 4@math for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 56 --limit 6 | grep -A5 '\"name\": \"4@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"4@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 4@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"utwgiczlm3w1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 could not find address 4@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 57 --limit 6 | grep -A5 '\"name\": \"4000@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"4000@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 4000@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"dzoc3fshmb1s\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7su9mMLkrnDpMKA5BArkzvrJvkvq2mkvtsyXajBkquG62aqKwS dzoc3fshmb1s coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7su9mMLkrnDpMKA5BArkzvrJvkvq2mkvtsyXajBkquG62aqKwS dzoc3fshmb1s could not find address 4000@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 58 --limit 6 | grep -A5 '\"name\": \"420@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"420@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 420@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ljud2dwiqclp\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6xrkbfG6MfrZjCg35Ahchybx2sf7Xni1gY2diVUM9snXJKEvR5 ljud2dwiqclp ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6xrkbfG6MfrZjCg35Ahchybx2sf7Xni1gY2diVUM9snXJKEvR5 ljud2dwiqclp could not find address 420@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 59 --limit 6 | grep -A5 '\"name\": \"4est@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"4est@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 4est@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"vflul5y3hr55\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO64tCSaWKj8yV6XiZy6FEZfwgDNZEwSVKtpQcEHDk8C5stPCh5G vflul5y3hr55 ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO64tCSaWKj8yV6XiZy6FEZfwgDNZEwSVKtpQcEHDk8C5stPCh5G vflul5y3hr55 could not find address 4est@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 60 --limit 6 | grep -A5 '\"name\": \"4master44@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"4master44@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 4master44@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"knrsybqkf41a\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5k8Bs2pe5RF9F7Pum5qiZv3eJuDSqpG6B8vh3dFTdAXFNvMimx knrsybqkf41a ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5k8Bs2pe5RF9F7Pum5qiZv3eJuDSqpG6B8vh3dFTdAXFNvMimx knrsybqkf41a could not find address 4master44@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 61 --limit 6 | grep -A5 '\"name\": \"5@math\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"5@math\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 5@math found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"xcm4qhhmd2bi\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6KxhFLUEYPNDTX4858aumfCUwTwJzi6uT6gRgagCwirymLgS1u xcm4qhhmd2bi math account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6KxhFLUEYPNDTX4858aumfCUwTwJzi6uT6gRgagCwirymLgS1u xcm4qhhmd2bi could not find address 5@math for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 62 --limit 6 | grep -A5 '\"name\": \"5@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"5@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 5@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"utwgiczlm3w1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 could not find address 5@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 63 --limit 6 | grep -A5 '\"name\": \"513jeffsandman@edge\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"513jeffsandman@edge\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 513jeffsandman@edge found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"yqcxzyxms2yq\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO66PRjZ1fE3miXdWzz4adWugHrNFR6xnZz8EWXnnu17XW4Ver8V yqcxzyxms2yq edge account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO66PRjZ1fE3miXdWzz4adWugHrNFR6xnZz8EWXnnu17XW4Ver8V yqcxzyxms2yq could not find address 513jeffsandman@edge for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 64 --limit 6 | grep -A5 '\"name\": \"555rylawr@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"555rylawr@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 555rylawr@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"1li4dwepn2je\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO75xmFvxsahdVFM9EGjP5B7PGC7oCueTpq4KcQvC1RbSBzbEy17 1li4dwepn2je atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO75xmFvxsahdVFM9EGjP5B7PGC7oCueTpq4KcQvC1RbSBzbEy17 1li4dwepn2je could not find address 555rylawr@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 65 --limit 6 | grep -A5 '\"name\": \"5th@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"5th@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 5th@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"khh5hsseckwy\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7griEfRjVhjZ9jMdT5vttEkqR36NqWRBYSdSaJ3dgXBSGnzXQG khh5hsseckwy infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7griEfRjVhjZ9jMdT5vttEkqR36NqWRBYSdSaJ3dgXBSGnzXQG khh5hsseckwy could not find address 5th@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 66 --limit 6 | grep -A5 '\"name\": \"6@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"6@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 6@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"utwgiczlm3w1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 could not find address 6@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 67 --limit 6 | grep -A5 '\"name\": \"635389202@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"635389202@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 635389202@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"j3qvcs2dlcen\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6x1fCJDvtQGqwRYMfaHf2mK9UNJvK619haypJonBTqE3cqUssL j3qvcs2dlcen ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6x1fCJDvtQGqwRYMfaHf2mK9UNJvK619haypJonBTqE3cqUssL j3qvcs2dlcen could not find address 635389202@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 68 --limit 6 | grep -A5 '\"name\": \"66@math\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"66@math\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 66@math found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"kbh5nqb4wiwv\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8RBVnrfaoUJGD8SfvsCEc8gcQHyjAP3vawLt1QgVPPbbkqHDNj kbh5nqb4wiwv math account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8RBVnrfaoUJGD8SfvsCEc8gcQHyjAP3vawLt1QgVPPbbkqHDNj kbh5nqb4wiwv could not find address 66@math for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 69 --limit 6 | grep -A5 '\"name\": \"666@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"666@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 666@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"l2rycgaczmeo\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7wGCe9RkUPxFYzJji27ErbkjpgmJfFnY8SSWnCExxUZs3dnWWN l2rycgaczmeo ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7wGCe9RkUPxFYzJji27ErbkjpgmJfFnY8SSWnCExxUZs3dnWWN l2rycgaczmeo could not find address 666@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 70 --limit 6 | grep -A5 '\"name\": \"676@edge\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"676@edge\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 676@edge found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"lyhuhdyj3uoo\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6UrxHpGM2BL6JhBc85EdexXD39WcCR9CSCWJowX8WYNRuTkmaw lyhuhdyj3uoo edge account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6UrxHpGM2BL6JhBc85EdexXD39WcCR9CSCWJowX8WYNRuTkmaw lyhuhdyj3uoo could not find address 676@edge for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 71 --limit 6 | grep -A5 '\"name\": \"67g@edge\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"67g@edge\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 67g@edge found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"anfpkgsbome3\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6e9YHmC9gioqXtVZHwJt2UCNkVQeJmF7A4CCfTatZsdax7TB7D anfpkgsbome3 edge account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6e9YHmC9gioqXtVZHwJt2UCNkVQeJmF7A4CCfTatZsdax7TB7D anfpkgsbome3 could not find address 67g@edge for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 72 --limit 6 | grep -A5 '\"name\": \"7@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"7@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 7@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zwdwqswlw4o5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 could not find address 7@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 73 --limit 6 | grep -A5 '\"name\": \"7@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"7@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 7@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"kzy13fcngneq\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6E7RTkEW1UJgputQ7ZXCJjpDphnDSyWB4orGfjvRRxqaSz8Vw2 kzy13fcngneq coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6E7RTkEW1UJgputQ7ZXCJjpDphnDSyWB4orGfjvRRxqaSz8Vw2 kzy13fcngneq could not find address 7@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 74 --limit 6 | grep -A5 '\"name\": \"7@edge\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"7@edge\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 7@edge found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"citnmeunzr3q\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO78vsmVxvCKpdRZZqAxndrpt5HmjxABE988r9G94jn9JH9GjxP1 citnmeunzr3q edge account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO78vsmVxvCKpdRZZqAxndrpt5HmjxABE988r9G94jn9JH9GjxP1 citnmeunzr3q could not find address 7@edge for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 75 --limit 6 | grep -A5 '\"name\": \"7@math\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"7@math\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 7@math found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"xcm4qhhmd2bi\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6KxhFLUEYPNDTX4858aumfCUwTwJzi6uT6gRgagCwirymLgS1u xcm4qhhmd2bi math account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6KxhFLUEYPNDTX4858aumfCUwTwJzi6uT6gRgagCwirymLgS1u xcm4qhhmd2bi could not find address 7@math for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 76 --limit 6 | grep -A5 '\"name\": \"7@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"7@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 7@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"utwgiczlm3w1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 could not find address 7@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 77 --limit 6 | grep -A5 '\"name\": \"757609qw@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"757609qw@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 757609qw@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zm1ialkhlvg4\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8mnkpX1X3YuLRZh3RCDnPxJCnGhirnWfQFf5zK8J9qFTWxYBAL zm1ialkhlvg4 ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8mnkpX1X3YuLRZh3RCDnPxJCnGhirnWfQFf5zK8J9qFTWxYBAL zm1ialkhlvg4 could not find address 757609qw@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 78 --limit 6 | grep -A5 '\"name\": \"77@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"77@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 77@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"utwgiczlm3w1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 could not find address 77@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 79 --limit 6 | grep -A5 '\"name\": \"777@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"777@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 777@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zwdwqswlw4o5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 could not find address 777@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 80 --limit 6 | grep -A5 '\"name\": \"777@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"777@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 777@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"2hbvvtibfrzr\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5svwoGLWtK8eQt7dG8nJt8DuNxfhDTbqMYBgBfAHzsdtYGVSWY 2hbvvtibfrzr coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5svwoGLWtK8eQt7dG8nJt8DuNxfhDTbqMYBgBfAHzsdtYGVSWY 2hbvvtibfrzr could not find address 777@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 81 --limit 6 | grep -A5 '\"name\": \"777@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"777@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 777@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"lcyyj2amuqdm\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8BFoEhd1KiF9p2EpMksgwECiwWaMmNT1xQqTXq5uqJM8TheBSo lcyyj2amuqdm ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8BFoEhd1KiF9p2EpMksgwECiwWaMmNT1xQqTXq5uqJM8TheBSo lcyyj2amuqdm could not find address 777@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 82 --limit 6 | grep -A5 '\"name\": \"777@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"777@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 777@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"utwgiczlm3w1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 could not find address 777@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 83 --limit 6 | grep -A5 '\"name\": \"777mikelee@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"777mikelee@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 777mikelee@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"xwukxtrv3wjw\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7nZ8yMvJp7aCKZVZmPcuNraEp8u19y4swGDN7LADPeMpeMnysX xwukxtrv3wjw infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7nZ8yMvJp7aCKZVZmPcuNraEp8u19y4swGDN7LADPeMpeMnysX xwukxtrv3wjw could not find address 777mikelee@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 84 --limit 6 | grep -A5 '\"name\": \"8@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"8@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 8@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zwdwqswlw4o5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 could not find address 8@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 85 --limit 6 | grep -A5 '\"name\": \"8@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"8@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 8@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"r1udlax4zdqv\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7VpygBWgsfcQ5RdGRa9SyyMUi1gpjFCYyzsf762Z7h3pW1L6nf r1udlax4zdqv coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7VpygBWgsfcQ5RdGRa9SyyMUi1gpjFCYyzsf762Z7h3pW1L6nf r1udlax4zdqv could not find address 8@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 86 --limit 6 | grep -A5 '\"name\": \"8@edge\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"8@edge\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 8@edge found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"citnmeunzr3q\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO78vsmVxvCKpdRZZqAxndrpt5HmjxABE988r9G94jn9JH9GjxP1 citnmeunzr3q edge account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO78vsmVxvCKpdRZZqAxndrpt5HmjxABE988r9G94jn9JH9GjxP1 citnmeunzr3q could not find address 8@edge for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 87 --limit 6 | grep -A5 '\"name\": \"8@qtum\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"8@qtum\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 8@qtum found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"hunu4lispbko\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5Umzwm4igYCsAdGvpWPHjpp63NnL52suNLHfjncL1ZkFczeku5 hunu4lispbko qtum account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5Umzwm4igYCsAdGvpWPHjpp63NnL52suNLHfjncL1ZkFczeku5 hunu4lispbko could not find address 8@qtum for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 88 --limit 6 | grep -A5 '\"name\": \"8@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"8@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 8@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"utwgiczlm3w1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 could not find address 8@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 89 --limit 6 | grep -A5 '\"name\": \"88@math\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"88@math\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 88@math found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zyovbnyxc4cm\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8XfM2DiFhogXAtRFvgUBzUPpf6AyszNaWD7xT9PnH7WyXMZ5aD zyovbnyxc4cm math account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8XfM2DiFhogXAtRFvgUBzUPpf6AyszNaWD7xT9PnH7WyXMZ5aD zyovbnyxc4cm could not find address 88@math for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 90 --limit 6 | grep -A5 '\"name\": \"88@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"88@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 88@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"utwgiczlm3w1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 could not find address 88@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 91 --limit 6 | grep -A5 '\"name\": \"888@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"888@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 888@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zwdwqswlw4o5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 could not find address 888@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 92 --limit 6 | grep -A5 '\"name\": \"888@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"888@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 888@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"2hbvvtibfrzr\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5svwoGLWtK8eQt7dG8nJt8DuNxfhDTbqMYBgBfAHzsdtYGVSWY 2hbvvtibfrzr coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5svwoGLWtK8eQt7dG8nJt8DuNxfhDTbqMYBgBfAHzsdtYGVSWY 2hbvvtibfrzr could not find address 888@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 93 --limit 6 | grep -A5 '\"name\": \"888@edge\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"888@edge\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 888@edge found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"citnmeunzr3q\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO78vsmVxvCKpdRZZqAxndrpt5HmjxABE988r9G94jn9JH9GjxP1 citnmeunzr3q edge account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO78vsmVxvCKpdRZZqAxndrpt5HmjxABE988r9G94jn9JH9GjxP1 citnmeunzr3q could not find address 888@edge for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 94 --limit 6 | grep -A5 '\"name\": \"888@math\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"888@math\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 888@math found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"1spv2foqa5be\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO59T6dsEkTsnXu1mqFmdQHGvroKdB4rCxXi41FwNoYmhV14A3qj 1spv2foqa5be math account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO59T6dsEkTsnXu1mqFmdQHGvroKdB4rCxXi41FwNoYmhV14A3qj 1spv2foqa5be could not find address 888@math for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 95 --limit 6 | grep -A5 '\"name\": \"888@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"888@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 888@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"l2rycgaczmeo\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7wGCe9RkUPxFYzJji27ErbkjpgmJfFnY8SSWnCExxUZs3dnWWN l2rycgaczmeo ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7wGCe9RkUPxFYzJji27ErbkjpgmJfFnY8SSWnCExxUZs3dnWWN l2rycgaczmeo could not find address 888@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 96 --limit 6 | grep -A5 '\"name\": \"888@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"888@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 888@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"utwgiczlm3w1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 could not find address 888@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 97 --limit 6 | grep -A5 '\"name\": \"8888@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"8888@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 8888@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"2ifjoolejolr\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8K5n14gdysdKoT3rUzcZA8wco7nKCEXMhTCkHmnx69G8ahyEsi 2ifjoolejolr ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8K5n14gdysdKoT3rUzcZA8wco7nKCEXMhTCkHmnx69G8ahyEsi 2ifjoolejolr could not find address 8888@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 98 --limit 6 | grep -A5 '\"name\": \"8888888@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"8888888@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 8888888@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"fm352tkxmtus\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7Qa6zHx81ohpW3SRFNwf7d49wB6YFkVUpRUHDfCgFABjFMqBWF fm352tkxmtus ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7Qa6zHx81ohpW3SRFNwf7d49wB6YFkVUpRUHDfCgFABjFMqBWF fm352tkxmtus could not find address 8888888@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 99 --limit 6 | grep -A5 '\"name\": \"88888888@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"88888888@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 88888888@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"tqkdj12lbp2y\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO55kx3F4mmEskWo9TU1Q3Qg8zQhdUGA3TGVhTV3VF8wUh5aPEgy tqkdj12lbp2y ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO55kx3F4mmEskWo9TU1Q3Qg8zQhdUGA3TGVhTV3VF8wUh5aPEgy tqkdj12lbp2y could not find address 88888888@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 100 --limit 6 | grep -A5 '\"name\": \"8btc@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"8btc@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 8btc@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"53ug1chmsah3\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5AxNQKUQsKUtbXjRq4nFXZ86D4zr7z3zLkyUCCyBf5uFpNck29 53ug1chmsah3 ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5AxNQKUQsKUtbXjRq4nFXZ86D4zr7z3zLkyUCCyBf5uFpNck29 53ug1chmsah3 could not find address 8btc@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 101 --limit 6 | grep -A5 '\"name\": \"9@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"9@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 9@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zwdwqswlw4o5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 could not find address 9@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 102 --limit 6 | grep -A5 '\"name\": \"9@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"9@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 9@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"2hbvvtibfrzr\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5svwoGLWtK8eQt7dG8nJt8DuNxfhDTbqMYBgBfAHzsdtYGVSWY 2hbvvtibfrzr coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5svwoGLWtK8eQt7dG8nJt8DuNxfhDTbqMYBgBfAHzsdtYGVSWY 2hbvvtibfrzr could not find address 9@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 103 --limit 6 | grep -A5 '\"name\": \"9@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"9@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 9@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"utwgiczlm3w1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 could not find address 9@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 104 --limit 6 | grep -A5 '\"name\": \"911@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"911@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 911@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"l2rycgaczmeo\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7wGCe9RkUPxFYzJji27ErbkjpgmJfFnY8SSWnCExxUZs3dnWWN l2rycgaczmeo ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7wGCe9RkUPxFYzJji27ErbkjpgmJfFnY8SSWnCExxUZs3dnWWN l2rycgaczmeo could not find address 911@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 105 --limit 6 | grep -A5 '\"name\": \"999@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"999@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 999@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"l2rycgaczmeo\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7wGCe9RkUPxFYzJji27ErbkjpgmJfFnY8SSWnCExxUZs3dnWWN l2rycgaczmeo ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7wGCe9RkUPxFYzJji27ErbkjpgmJfFnY8SSWnCExxUZs3dnWWN l2rycgaczmeo could not find address 999@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 106 --limit 6 | grep -A5 '\"name\": \"9rap@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"9rap@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " 9rap@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"k1o2zlwmopd4\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5FgncTmKbycsnud78ncGCjXvfWWDjw9LJob3vi2dUGifirEiU2 k1o2zlwmopd4 infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5FgncTmKbycsnud78ncGCjXvfWWDjw9LJob3vi2dUGifirEiU2 k1o2zlwmopd4 could not find address 9rap@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 107 --limit 6 | grep -A5 '\"name\": \"a@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"a@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " a@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zwdwqswlw4o5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 could not find address a@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 108 --limit 6 | grep -A5 '\"name\": \"a@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"a@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " a@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"kzy13fcngneq\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6E7RTkEW1UJgputQ7ZXCJjpDphnDSyWB4orGfjvRRxqaSz8Vw2 kzy13fcngneq coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6E7RTkEW1UJgputQ7ZXCJjpDphnDSyWB4orGfjvRRxqaSz8Vw2 kzy13fcngneq could not find address a@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 109 --limit 6 | grep -A5 '\"name\": \"a@edge\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"a@edge\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " a@edge found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"citnmeunzr3q\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO78vsmVxvCKpdRZZqAxndrpt5HmjxABE988r9G94jn9JH9GjxP1 citnmeunzr3q edge account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO78vsmVxvCKpdRZZqAxndrpt5HmjxABE988r9G94jn9JH9GjxP1 citnmeunzr3q could not find address a@edge for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 110 --limit 6 | grep -A5 '\"name\": \"a@mas\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"a@mas\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " a@mas found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zdsjyyesjjib\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6LqxatGs3PTD5rw8d8S8D9FfE3iPhFL4fikqSaFDE3XXxpnfWv zdsjyyesjjib mas account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6LqxatGs3PTD5rw8d8S8D9FfE3iPhFL4fikqSaFDE3XXxpnfWv zdsjyyesjjib could not find address a@mas for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 111 --limit 6 | grep -A5 '\"name\": \"a@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"a@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " a@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"5lpal53jdeeu\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5R5BntZLMgtzUJgqcNwDTsEoEc4cRP6H7LhDkrfZTvVzsTL83m 5lpal53jdeeu trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5R5BntZLMgtzUJgqcNwDTsEoEc4cRP6H7LhDkrfZTvVzsTL83m 5lpal53jdeeu could not find address a@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 112 --limit 6 | grep -A5 '\"name\": \"a2reload@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"a2reload@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " a2reload@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"knkns4vt1frt\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7gkwP2GaBq2wdmhcoQN4JcbCqbaMKuzy2YvaBbuqrwpK5EpywS knkns4vt1frt coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7gkwP2GaBq2wdmhcoQN4JcbCqbaMKuzy2YvaBbuqrwpK5EpywS knkns4vt1frt could not find address a2reload@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 113 --limit 6 | grep -A5 '\"name\": \"aa@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aa@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aa@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zyiyx3fn2kgz\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6puEChjQFiDtqUnjgdTmZicsAxUQitmxpUVNHUrJio61pqpAQW zyiyx3fn2kgz infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6puEChjQFiDtqUnjgdTmZicsAxUQitmxpUVNHUrJio61pqpAQW zyiyx3fn2kgz could not find address aa@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 114 --limit 6 | grep -A5 '\"name\": \"aaa@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aaa@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aaa@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"rcelmzudb2ta\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6XMhLFTftwh4rVjWHdZZkrvrkxgQyHaccxaiW3Wh6AbXqx9A23 rcelmzudb2ta ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6XMhLFTftwh4rVjWHdZZkrvrkxgQyHaccxaiW3Wh6AbXqx9A23 rcelmzudb2ta could not find address aaa@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 115 --limit 6 | grep -A5 '\"name\": \"aaa1@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aaa1@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aaa1@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"bpsvws4dpfwc\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6ATdwGhwJJBXR5Ew6qB7tpouBLaAAMaZPG7d3oZPoM6N3NunpL bpsvws4dpfwc ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6ATdwGhwJJBXR5Ew6qB7tpouBLaAAMaZPG7d3oZPoM6N3NunpL bpsvws4dpfwc could not find address aaa1@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 116 --limit 6 | grep -A5 '\"name\": \"aaadilalfez@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aaadilalfez@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aaadilalfez@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"2axeuygf2m1f\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6NKo9TzXQfnZoU1gHLfY6Qy5dNBkhZktCDVbd42SUDhhj2eGhL 2axeuygf2m1f infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6NKo9TzXQfnZoU1gHLfY6Qy5dNBkhZktCDVbd42SUDhhj2eGhL 2axeuygf2m1f could not find address aaadilalfez@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 117 --limit 6 | grep -A5 '\"name\": \"aaaedu@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aaaedu@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aaaedu@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"kqulzetfcvd5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8eyGwm4uMLnc9RrhHmEd4WDR29MbzomUgnturQCN4K9bLc3cP7 kqulzetfcvd5 ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8eyGwm4uMLnc9RrhHmEd4WDR29MbzomUgnturQCN4K9bLc3cP7 kqulzetfcvd5 could not find address aaaedu@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 118 --limit 6 | grep -A5 '\"name\": \"aaatish@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aaatish@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aaatish@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ucyam4zuhz5k\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5LKfHExx1LmxkgES5cf5L2JevMJdZ1x615c5G7yhddSAXmFiDa ucyam4zuhz5k coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5LKfHExx1LmxkgES5cf5L2JevMJdZ1x615c5G7yhddSAXmFiDa ucyam4zuhz5k could not find address aaatish@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 119 --limit 6 | grep -A5 '\"name\": \"aabranches@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aabranches@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aabranches@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"f2ifxzrofqtz\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5DhuvVRHhAjxAHVLefA3gnw4LueCXNJDvsM6UCKxmqFMQYHNvU f2ifxzrofqtz trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5DhuvVRHhAjxAHVLefA3gnw4LueCXNJDvsM6UCKxmqFMQYHNvU f2ifxzrofqtz could not find address aabranches@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 120 --limit 6 | grep -A5 '\"name\": \"aagun08@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aagun08@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aagun08@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"sbhk5wxc2o33\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO63cMop3DgSiEqtfYCW9261v9trMEvFnoerpP8LoTM7cqxHreSk sbhk5wxc2o33 infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO63cMop3DgSiEqtfYCW9261v9trMEvFnoerpP8LoTM7cqxHreSk sbhk5wxc2o33 could not find address aagun08@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 121 --limit 6 | grep -A5 '\"name\": \"aahunter@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aahunter@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aahunter@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"mc3uwnopd4zl\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7DNz91jdrCCMhFvyiHXQVnffKsd2FxNwdySrue6ZbRVq8sTspu mc3uwnopd4zl coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7DNz91jdrCCMhFvyiHXQVnffKsd2FxNwdySrue6ZbRVq8sTspu mc3uwnopd4zl could not find address aahunter@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 122 --limit 6 | grep -A5 '\"name\": \"aaleksander@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aaleksander@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aaleksander@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"raxxwrainfvc\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7FoFQMaffxnxqyzuU1MVBeorxpEY8y4AJhk5iqDyQvMXnkHJdN raxxwrainfvc infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7FoFQMaffxnxqyzuU1MVBeorxpEY8y4AJhk5iqDyQvMXnkHJdN raxxwrainfvc could not find address aaleksander@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 123 --limit 6 | grep -A5 '\"name\": \"aap08@guarda\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aap08@guarda\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aap08@guarda found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"bfe3g4vmswdd\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6tSsaqME8PbyW9bLEPvmRaSUDagX7oBWZ4aRmwi3YiBZmwUbxs bfe3g4vmswdd guarda account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6tSsaqME8PbyW9bLEPvmRaSUDagX7oBWZ4aRmwi3YiBZmwUbxs bfe3g4vmswdd could not find address aap08@guarda for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 124 --limit 6 | grep -A5 '\"name\": \"aaron@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aaron@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aaron@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"1swehbfmuwna\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8YRWmdx9jTKrWF5Gt6H9vbk97A4KfpLhqNJAuCPzz15p25yZQD 1swehbfmuwna ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8YRWmdx9jTKrWF5Gt6H9vbk97A4KfpLhqNJAuCPzz15p25yZQD 1swehbfmuwna could not find address aaron@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 125 --limit 6 | grep -A5 '\"name\": \"aaron@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aaron@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aaron@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"wdsh5ip2zciu\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7n2WEyVUhCz9DU5rhSZHM1fM9A9vAfiDUdUhjEa4t7oas52UEr wdsh5ip2zciu trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7n2WEyVUhCz9DU5rhSZHM1fM9A9vAfiDUdUhjEa4t7oas52UEr wdsh5ip2zciu could not find address aaron@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 126 --limit 6 | grep -A5 '\"name\": \"abasfathi@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abasfathi@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abasfathi@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"omqezwm4bfud\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8CpDjUurN3GGZ8wEQkYotffkbHqr2xeUgaEzXCWpAraPFf6QRS omqezwm4bfud infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8CpDjUurN3GGZ8wEQkYotffkbHqr2xeUgaEzXCWpAraPFf6QRS omqezwm4bfud could not find address abasfathi@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 127 --limit 6 | grep -A5 '\"name\": \"abasi@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abasi@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abasi@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"s3vkpapq4afc\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7kURss5L9qwzXVVAVoS4zb5ucbJPfqU8oGZiueSkBfkvK1njjW s3vkpapq4afc coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7kURss5L9qwzXVVAVoS4zb5ucbJPfqU8oGZiueSkBfkvK1njjW s3vkpapq4afc could not find address abasi@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 128 --limit 6 | grep -A5 '\"name\": \"abbag@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abbag@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abbag@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"bstcemwio3dw\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8b4j235LLAhyyL4Ena6J3YgCQNAx5vx5FgLGLhDt9akdJpUDb5 bstcemwio3dw coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8b4j235LLAhyyL4Ena6J3YgCQNAx5vx5FgLGLhDt9akdJpUDb5 bstcemwio3dw could not find address abbag@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 129 --limit 6 | grep -A5 '\"name\": \"abc@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abc@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abc@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zwdwqswlw4o5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 could not find address abc@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 130 --limit 6 | grep -A5 '\"name\": \"abc@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abc@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abc@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"wshhsicpbmeu\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8kNLqPzh9JjQDEicGKSRm9szx4JRMyuzmV7dY8WzkAB7tV6nbJ wshhsicpbmeu coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8kNLqPzh9JjQDEicGKSRm9szx4JRMyuzmV7dY8WzkAB7tV6nbJ wshhsicpbmeu could not find address abc@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 131 --limit 6 | grep -A5 '\"name\": \"abc@edge\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abc@edge\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abc@edge found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"citnmeunzr3q\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO78vsmVxvCKpdRZZqAxndrpt5HmjxABE988r9G94jn9JH9GjxP1 citnmeunzr3q edge account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO78vsmVxvCKpdRZZqAxndrpt5HmjxABE988r9G94jn9JH9GjxP1 citnmeunzr3q could not find address abc@edge for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 132 --limit 6 | grep -A5 '\"name\": \"abc@math\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abc@math\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abc@math found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"tj4mwjg2lkpr\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO72bpDj7H2tvR5EfPghTVSw3Y51toRNEEbDZ2KnQVnm2QNfvunU tj4mwjg2lkpr math account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO72bpDj7H2tvR5EfPghTVSw3Y51toRNEEbDZ2KnQVnm2QNfvunU tj4mwjg2lkpr could not find address abc@math for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 133 --limit 6 | grep -A5 '\"name\": \"abc@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abc@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abc@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"i5nmvy2lsmvc\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6hUrX94k3FBrqLwkR2ogHFzspLu7JdWNmGU84mHujHJJfcrDLU i5nmvy2lsmvc ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6hUrX94k3FBrqLwkR2ogHFzspLu7JdWNmGU84mHujHJJfcrDLU i5nmvy2lsmvc could not find address abc@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 134 --limit 6 | grep -A5 '\"name\": \"abc@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abc@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abc@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"utwgiczlm3w1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 could not find address abc@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 135 --limit 6 | grep -A5 '\"name\": \"abcedu@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abcedu@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abcedu@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"osfc3nf4zo4a\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7xnaCPrzZPwuGqaq3mPgKxx9kNe2PTa3LkkaAxiB3quKTfLvNE osfc3nf4zo4a ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7xnaCPrzZPwuGqaq3mPgKxx9kNe2PTa3LkkaAxiB3quKTfLvNE osfc3nf4zo4a could not find address abcedu@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 136 --limit 6 | grep -A5 '\"name\": \"abcxyz@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abcxyz@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abcxyz@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"r1gx3bcocwbi\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8U2xTFKmFCUq4ZiDqQiRzPeRJHdqrTAohhBTaisypvNtwiHcMg r1gx3bcocwbi ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8U2xTFKmFCUq4ZiDqQiRzPeRJHdqrTAohhBTaisypvNtwiHcMg r1gx3bcocwbi could not find address abcxyz@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 137 --limit 6 | grep -A5 '\"name\": \"abdostach@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abdostach@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abdostach@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"xamik3ebwscw\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6pFkSjiFWrvFuGxRL9KWTQjhFBBfXwYxK5mQvyqG3smu8hbU9p xamik3ebwscw coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6pFkSjiFWrvFuGxRL9KWTQjhFBBfXwYxK5mQvyqG3smu8hbU9p xamik3ebwscw could not find address abdostach@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 138 --limit 6 | grep -A5 '\"name\": \"abdullah@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abdullah@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abdullah@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"pouke15uh52b\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6zjoKDrrm1oB1NJMwHioPXUv4dnFp4EgY5gzM4gxoshP6w2aBA pouke15uh52b ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6zjoKDrrm1oB1NJMwHioPXUv4dnFp4EgY5gzM4gxoshP6w2aBA pouke15uh52b could not find address abdullah@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 139 --limit 6 | grep -A5 '\"name\": \"abdullatif@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abdullatif@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abdullatif@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"f1varymkljzy\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7APs6xu3i7KkxRntCofoLjw9NiLQZyVkXMA7TcLQAbqZBvTRZh f1varymkljzy infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7APs6xu3i7KkxRntCofoLjw9NiLQZyVkXMA7TcLQAbqZBvTRZh f1varymkljzy could not find address abdullatif@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 140 --limit 6 | grep -A5 '\"name\": \"abdurrahman@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abdurrahman@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abdurrahman@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"fpkaomzj2nlb\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6vSrfjQU8n1V187z6JYsYVGgpnXkn9ntFeaQDWLmXf4De9Wmt3 fpkaomzj2nlb infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6vSrfjQU8n1V187z6JYsYVGgpnXkn9ntFeaQDWLmXf4De9Wmt3 fpkaomzj2nlb could not find address abdurrahman@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 141 --limit 6 | grep -A5 '\"name\": \"abdwaris@edge\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abdwaris@edge\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abdwaris@edge found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"1f2tj3wuwmzl\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8YTRc42dJqd576jeAo3xCLNdb4u7irS9o8q8iikUS3j9nkuBVB 1f2tj3wuwmzl edge account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8YTRc42dJqd576jeAo3xCLNdb4u7irS9o8q8iikUS3j9nkuBVB 1f2tj3wuwmzl could not find address abdwaris@edge for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 142 --limit 6 | grep -A5 '\"name\": \"abexolalekan@edge\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abexolalekan@edge\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abexolalekan@edge found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ycuogruysdrh\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6LTUKG5dDBK7JfQY9AigpCRViFvKM5LFmUxXZTEP6rU3yKVwDp ycuogruysdrh edge account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6LTUKG5dDBK7JfQY9AigpCRViFvKM5LFmUxXZTEP6rU3yKVwDp ycuogruysdrh could not find address abexolalekan@edge for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 143 --limit 6 | grep -A5 '\"name\": \"abidanker@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abidanker@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abidanker@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"epk3ickjuvbb\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5hGGxYnHhFXVxK3ck1Cd4ikexnaE8NHkBiPgCBNLzfZR3Dyw37 epk3ickjuvbb atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5hGGxYnHhFXVxK3ck1Cd4ikexnaE8NHkBiPgCBNLzfZR3Dyw37 epk3ickjuvbb could not find address abidanker@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 144 --limit 6 | grep -A5 '\"name\": \"abidanker12@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abidanker12@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abidanker12@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"1jr3qcxculka\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8YWzxKphaE6b8YiEutW9GbkbFFmMtYwMgD5kq4mYZqrgGLoDas 1jr3qcxculka infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8YWzxKphaE6b8YiEutW9GbkbFFmMtYwMgD5kq4mYZqrgGLoDas 1jr3qcxculka could not find address abidanker12@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 145 --limit 6 | grep -A5 '\"name\": \"abigtree@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abigtree@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abigtree@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"xrbdzn5b1wd3\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6a2R6KYFDBVfuMkwJ21Fs1bDckhKSkMGMawq3fCXPjUdCT24R9 xrbdzn5b1wd3 ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6a2R6KYFDBVfuMkwJ21Fs1bDckhKSkMGMawq3fCXPjUdCT24R9 xrbdzn5b1wd3 could not find address abigtree@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 146 --limit 6 | grep -A5 '\"name\": \"aboudabi@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aboudabi@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aboudabi@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"gov5jto2qvh5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5iCXJmLkHLPgbMrZWRFbUUtQYH3nzffbs5PHYcbtjcruE4PLSB gov5jto2qvh5 ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5iCXJmLkHLPgbMrZWRFbUUtQYH3nzffbs5PHYcbtjcruE4PLSB gov5jto2qvh5 could not find address aboudabi@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 147 --limit 6 | grep -A5 '\"name\": \"aboutkab@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aboutkab@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aboutkab@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"g34rqatwmtzu\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8dLnfj3xbmsRBLhx6pPXH4gm1qYEPyvuSzsJ59S1JQ5XGd4wdi g34rqatwmtzu coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8dLnfj3xbmsRBLhx6pPXH4gm1qYEPyvuSzsJ59S1JQ5XGd4wdi g34rqatwmtzu could not find address aboutkab@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 148 --limit 6 | grep -A5 '\"name\": \"absolutefive@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"absolutefive@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " absolutefive@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"vvmtge2pjx4f\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6oMVPiYWM2dzHrpnRQTiFoX6DVc446QeBwV8bzAY3AzmHn81cQ vvmtge2pjx4f ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6oMVPiYWM2dzHrpnRQTiFoX6DVc446QeBwV8bzAY3AzmHn81cQ vvmtge2pjx4f could not find address absolutefive@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 149 --limit 6 | grep -A5 '\"name\": \"abucryptos@qtum\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"abucryptos@qtum\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " abucryptos@qtum found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"hdipdym25xwk\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6gt7iSG6XCPncq2WPkhZDudiBZ5RfCSpHZSb1c5Y17qAxebxQm hdipdym25xwk qtum account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6gt7iSG6XCPncq2WPkhZDudiBZ5RfCSpHZSb1c5Y17qAxebxQm hdipdym25xwk could not find address abucryptos@qtum for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 150 --limit 6 | grep -A5 '\"name\": \"acaele@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"acaele@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " acaele@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"2d2buivnjaar\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7LhkNeBnFzpeR5pinCYiPAaM4APLzRPKyuAfzzKuctFJmbsL9R 2d2buivnjaar ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7LhkNeBnFzpeR5pinCYiPAaM4APLzRPKyuAfzzKuctFJmbsL9R 2d2buivnjaar could not find address acaele@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 151 --limit 6 | grep -A5 '\"name\": \"acanthus@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"acanthus@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " acanthus@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"rmflir45pu1l\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8UB5NBFv3cXRkqvmT9HUR58cgfr2o7X7KEaNxf58SzwSkdhqNC rmflir45pu1l coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8UB5NBFv3cXRkqvmT9HUR58cgfr2o7X7KEaNxf58SzwSkdhqNC rmflir45pu1l could not find address acanthus@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 152 --limit 6 | grep -A5 '\"name\": \"acb8668@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"acb8668@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " acb8668@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"hneo5oclkzdn\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6hHXU9QeSNfRZaCYEsvqAHxPw2r831hJ4RZmq1uLoKHKAo6kQ4 hneo5oclkzdn infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6hHXU9QeSNfRZaCYEsvqAHxPw2r831hJ4RZmq1uLoKHKAo6kQ4 hneo5oclkzdn could not find address acb8668@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 153 --limit 6 | grep -A5 '\"name\": \"acc@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"acc@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " acc@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"hlnuwxotnde5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6SuyqZGdNxy4BYEaJYfXpHC8PQFzW3RJVCE2LrbuaCVBqjQSCi hlnuwxotnde5 coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6SuyqZGdNxy4BYEaJYfXpHC8PQFzW3RJVCE2LrbuaCVBqjQSCi hlnuwxotnde5 could not find address acc@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 154 --limit 6 | grep -A5 '\"name\": \"accarezzare@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"accarezzare@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " accarezzare@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"f33qbh1w4yrj\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7ALrwd9aKKiXhzhUH96yiy6ryAmTtJ2nVimUpzmEWMNsP42PLP f33qbh1w4yrj ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7ALrwd9aKKiXhzhUH96yiy6ryAmTtJ2nVimUpzmEWMNsP42PLP f33qbh1w4yrj could not find address accarezzare@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 155 --limit 6 | grep -A5 '\"name\": \"accarezzarfe@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"accarezzarfe@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " accarezzarfe@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"iajufew3kzky\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6TDxspJ3MWAm184hZZJjiB5Tv8XkW6CpVkhL29PPoLVDwsuEqb iajufew3kzky ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6TDxspJ3MWAm184hZZJjiB5Tv8XkW6CpVkhL29PPoLVDwsuEqb iajufew3kzky could not find address accarezzarfe@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 156 --limit 6 | grep -A5 '\"name\": \"ace@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ace@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ace@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"rkf31gdvlscg\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6maEAW3WpiQaBnyvXauiSphSTithGDUtsztxVY9WaKU77An1mR rkf31gdvlscg ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6maEAW3WpiQaBnyvXauiSphSTithGDUtsztxVY9WaKU77An1mR rkf31gdvlscg could not find address ace@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 157 --limit 6 | grep -A5 '\"name\": \"acey@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"acey@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " acey@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"hv2uly45254n\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5EdWqyLuD9W4HBq98BGGuF1JEmv8VQSFVvdtEja7GC7eAMjWUT hv2uly45254n coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5EdWqyLuD9W4HBq98BGGuF1JEmv8VQSFVvdtEja7GC7eAMjWUT hv2uly45254n could not find address acey@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 158 --limit 6 | grep -A5 '\"name\": \"achazia@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"achazia@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " achazia@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"wbgkx2ra4ke3\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5M37US2gcunSSdm7zncSzp8qHj7XwWamdn2kEYZKXLexu6twDu wbgkx2ra4ke3 infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5M37US2gcunSSdm7zncSzp8qHj7XwWamdn2kEYZKXLexu6twDu wbgkx2ra4ke3 could not find address achazia@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 159 --limit 6 | grep -A5 '\"name\": \"achsyarif@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"achsyarif@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " achsyarif@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"qpcfjgojmkhn\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8htPuCiqoANY59XWgf6hT9b2JQ7HLcrUxCiGkmrUJg5W3dVB1o qpcfjgojmkhn coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8htPuCiqoANY59XWgf6hT9b2JQ7HLcrUxCiGkmrUJg5W3dVB1o qpcfjgojmkhn could not find address achsyarif@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 160 --limit 6 | grep -A5 '\"name\": \"acivsile94@guarda\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"acivsile94@guarda\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " acivsile94@guarda found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"uk2zgaudobp3\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7XB4MxFBd9tYZCbfwe7RKxsnXRZnbYJo5psLW8KNiMP2K5nqon uk2zgaudobp3 guarda account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7XB4MxFBd9tYZCbfwe7RKxsnXRZnbYJo5psLW8KNiMP2K5nqon uk2zgaudobp3 could not find address acivsile94@guarda for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 161 --limit 6 | grep -A5 '\"name\": \"acme@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"acme@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " acme@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"hlnuwxotnde5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6SuyqZGdNxy4BYEaJYfXpHC8PQFzW3RJVCE2LrbuaCVBqjQSCi hlnuwxotnde5 coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6SuyqZGdNxy4BYEaJYfXpHC8PQFzW3RJVCE2LrbuaCVBqjQSCi hlnuwxotnde5 could not find address acme@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 162 --limit 6 | grep -A5 '\"name\": \"acoldwall@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"acoldwall@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " acoldwall@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"m4ar1rduntvx\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7DeXYmZbCvzBx9focLaProYhDvrFFgwvZL6pvQDYAnuUSk8NAv m4ar1rduntvx ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7DeXYmZbCvzBx9focLaProYhDvrFFgwvZL6pvQDYAnuUSk8NAv m4ar1rduntvx could not find address acoldwall@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 163 --limit 6 | grep -A5 '\"name\": \"acowcom@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"acowcom@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " acowcom@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"rfj2r5o2isbh\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6HGcVyyn9FTbVTjYFWKrGeH8T35aP9ecyQyFY1hx6GVREfEAYo rfj2r5o2isbh ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6HGcVyyn9FTbVTjYFWKrGeH8T35aP9ecyQyFY1hx6GVREfEAYo rfj2r5o2isbh could not find address acowcom@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 164 --limit 6 | grep -A5 '\"name\": \"acp@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"acp@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " acp@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"kuvpev3ageup\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5VpjNaGj69r1YkenDz8Z8ziJ5dnxNbVj16W9JgaTCQmbjS2Rjo kuvpev3ageup infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5VpjNaGj69r1YkenDz8Z8ziJ5dnxNbVj16W9JgaTCQmbjS2Rjo kuvpev3ageup could not find address acp@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 165 --limit 6 | grep -A5 '\"name\": \"acroeos@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"acroeos@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " acroeos@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"d1t3qxg3dk42\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5CiNZ8HB86zdWHJJJxdE65a2ZMnvi8rtHbVtUEMUEXkeCK32Ya d1t3qxg3dk42 ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5CiNZ8HB86zdWHJJJxdE65a2ZMnvi8rtHbVtUEMUEXkeCK32Ya d1t3qxg3dk42 could not find address acroeos@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 166 --limit 6 | grep -A5 '\"name\": \"actionboy@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"actionboy@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " actionboy@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"3iwhwkhx43iv\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5QF1S8f7D9B2ZZkLrDJirMyhvKH9PX6XRhFDzh2VDryuv23iTd 3iwhwkhx43iv coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5QF1S8f7D9B2ZZkLrDJirMyhvKH9PX6XRhFDzh2VDryuv23iTd 3iwhwkhx43iv could not find address actionboy@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 167 --limit 6 | grep -A5 '\"name\": \"active@qtum\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"active@qtum\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " active@qtum found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"eoazkzstgg4f\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5DEzeuPDMEMJaaJDABUFNWv5gqWfkhDbWR4hCwrQoAPEu21ybS eoazkzstgg4f qtum account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5DEzeuPDMEMJaaJDABUFNWv5gqWfkhDbWR4hCwrQoAPEu21ybS eoazkzstgg4f could not find address active@qtum for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 168 --limit 6 | grep -A5 '\"name\": \"activetools@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"activetools@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " activetools@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"21jxnfbvb1gl\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO59oBu99B1bKWToQabJQi5YX9RHyGGvapnzh5FgeJby1nmWhgds 21jxnfbvb1gl ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO59oBu99B1bKWToQabJQi5YX9RHyGGvapnzh5FgeJby1nmWhgds 21jxnfbvb1gl could not find address activetools@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 169 --limit 6 | grep -A5 '\"name\": \"ada@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ada@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ada@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"kzkqzf3ypv4x\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5W7C1zc81sLhkkdr1om5mu2VyXDaqHCUaqvAkQVWP2FYao8KQy kzkqzf3ypv4x atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5W7C1zc81sLhkkdr1om5mu2VyXDaqHCUaqvAkQVWP2FYao8KQy kzkqzf3ypv4x could not find address ada@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 170 --limit 6 | grep -A5 '\"name\": \"ada@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ada@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ada@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"luc14ftsp2bf\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5zfpaFxmwSgk3WrtvKwPEJENZapeYH3wen9T9awNkgdpPaXcAa luc14ftsp2bf infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5zfpaFxmwSgk3WrtvKwPEJENZapeYH3wen9T9awNkgdpPaXcAa luc14ftsp2bf could not find address ada@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 171 --limit 6 | grep -A5 '\"name\": \"ada@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ada@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ada@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"322zc54wkyeu\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7q3NbMC5ARqHDK3VKNAhbXsRzPtYgRaPHMkux2udZp8Bn7HBXT 322zc54wkyeu ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7q3NbMC5ARqHDK3VKNAhbXsRzPtYgRaPHMkux2udZp8Bn7HBXT 322zc54wkyeu could not find address ada@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 172 --limit 6 | grep -A5 '\"name\": \"adaamirm@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adaamirm@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adaamirm@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"lfpi4ajcc4yt\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6UtGRwUKb13zksdWdKkVwVMf6XpuyBfQjSY5QduDtCisFcg67r lfpi4ajcc4yt infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6UtGRwUKb13zksdWdKkVwVMf6XpuyBfQjSY5QduDtCisFcg67r lfpi4ajcc4yt could not find address adaamirm@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 173 --limit 6 | grep -A5 '\"name\": \"adadam16@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adadam16@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adadam16@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ssjzilspusyk\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7kTQHChzeYBJUwHoMfrDKYvae2FafpLXVvz2H6nwEfemPyUhtT ssjzilspusyk infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7kTQHChzeYBJUwHoMfrDKYvae2FafpLXVvz2H6nwEfemPyUhtT ssjzilspusyk could not find address adadam16@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 174 --limit 6 | grep -A5 '\"name\": \"adadam160480@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adadam160480@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adadam160480@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ssjzilspusyk\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7kTQHChzeYBJUwHoMfrDKYvae2FafpLXVvz2H6nwEfemPyUhtT ssjzilspusyk infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7kTQHChzeYBJUwHoMfrDKYvae2FafpLXVvz2H6nwEfemPyUhtT ssjzilspusyk could not find address adadam160480@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 175 --limit 6 | grep -A5 '\"name\": \"adade@qtum\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adade@qtum\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adade@qtum found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"5ncjptaz25so\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8LJZyxwzaqDTfteEZNjmGayEYLbxLseD1jPvpeo2o88WEqYahz 5ncjptaz25so qtum account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8LJZyxwzaqDTfteEZNjmGayEYLbxLseD1jPvpeo2o88WEqYahz 5ncjptaz25so could not find address adade@qtum for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 176 --limit 6 | grep -A5 '\"name\": \"adadelbtc@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adadelbtc@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adadelbtc@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"rnh3qige4xeg\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6qc4itkZoEvT7ciUJP6mGaxJDHH3EGB9wPywnpWtmorcKdP49X rnh3qige4xeg trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6qc4itkZoEvT7ciUJP6mGaxJDHH3EGB9wPywnpWtmorcKdP49X rnh3qige4xeg could not find address adadelbtc@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 177 --limit 6 | grep -A5 '\"name\": \"adam@edge\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adam@edge\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adam@edge found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"wgtvzhvyz4fu\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO57B1sgBbmHq4AgFMcQVWjDpYYrNGrjqiUftH5MHfMfN1XsLzH6 wgtvzhvyz4fu edge account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO57B1sgBbmHq4AgFMcQVWjDpYYrNGrjqiUftH5MHfMfN1XsLzH6 wgtvzhvyz4fu could not find address adam@edge for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 178 --limit 6 | grep -A5 '\"name\": \"adam@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adam@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adam@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"k1qcenzj2juo\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5yxwacakLSmZEoopX75QFoAAgTkraeUqxx5yPrXY6QfZprWRyC k1qcenzj2juo ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5yxwacakLSmZEoopX75QFoAAgTkraeUqxx5yPrXY6QfZprWRyC k1qcenzj2juo could not find address adam@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 179 --limit 6 | grep -A5 '\"name\": \"adam@shapeshift\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adam@shapeshift\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adam@shapeshift found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"wgtvzhvyz4fu\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO57B1sgBbmHq4AgFMcQVWjDpYYrNGrjqiUftH5MHfMfN1XsLzH6 wgtvzhvyz4fu shapeshift account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO57B1sgBbmHq4AgFMcQVWjDpYYrNGrjqiUftH5MHfMfN1XsLzH6 wgtvzhvyz4fu could not find address adam@shapeshift for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 180 --limit 6 | grep -A5 '\"name\": \"adam16@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adam16@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adam16@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ssjzilspusyk\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7kTQHChzeYBJUwHoMfrDKYvae2FafpLXVvz2H6nwEfemPyUhtT ssjzilspusyk infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7kTQHChzeYBJUwHoMfrDKYvae2FafpLXVvz2H6nwEfemPyUhtT ssjzilspusyk could not find address adam16@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 181 --limit 6 | grep -A5 '\"name\": \"adam160480@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adam160480@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adam160480@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ssjzilspusyk\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7kTQHChzeYBJUwHoMfrDKYvae2FafpLXVvz2H6nwEfemPyUhtT ssjzilspusyk infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7kTQHChzeYBJUwHoMfrDKYvae2FafpLXVvz2H6nwEfemPyUhtT ssjzilspusyk could not find address adam160480@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 182 --limit 6 | grep -A5 '\"name\": \"adamf@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adamf@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adamf@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"sumsdl4xpeq5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO721o6qTWHXNfT4KDWMXtok5zGNQSorKkjkg4wK8yi1J1JaiMmF sumsdl4xpeq5 ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO721o6qTWHXNfT4KDWMXtok5zGNQSorKkjkg4wK8yi1J1JaiMmF sumsdl4xpeq5 could not find address adamf@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 183 --limit 6 | grep -A5 '\"name\": \"adamj5@qtum\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adamj5@qtum\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adamj5@qtum found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"w5fgzx1rlq4e\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5sBnmmiKyMaZ3EUV3H22Wympqet3GVJTTiiDjb6DAD5aNta5RA w5fgzx1rlq4e qtum account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5sBnmmiKyMaZ3EUV3H22Wympqet3GVJTTiiDjb6DAD5aNta5RA w5fgzx1rlq4e could not find address adamj5@qtum for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 184 --limit 6 | grep -A5 '\"name\": \"adamkapa12@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adamkapa12@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adamkapa12@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"mky2rekabwf5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5zsZ6GFLtr5mv5W3LTwCKMCNiEBPcgbmBb5tbHiZBXtZSVFinb mky2rekabwf5 coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5zsZ6GFLtr5mv5W3LTwCKMCNiEBPcgbmBb5tbHiZBXtZSVFinb mky2rekabwf5 could not find address adamkapa12@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 185 --limit 6 | grep -A5 '\"name\": \"adamski@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adamski@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adamski@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"2ac4d1bvwm5m\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8Z43BaoP7zuPSjCAV6ndcTSWrNukCr8sjj4ZpNtZJ2F4L21ZhY 2ac4d1bvwm5m ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8Z43BaoP7zuPSjCAV6ndcTSWrNukCr8sjj4ZpNtZJ2F4L21ZhY 2ac4d1bvwm5m could not find address adamski@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 186 --limit 6 | grep -A5 '\"name\": \"adamswe@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adamswe@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adamswe@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"vs5iyc2qz1fl\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5acG5w4UtR7m62vCCJHTstdvkvMwcGLjaykc2UGNBHMHra78ZM vs5iyc2qz1fl coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5acG5w4UtR7m62vCCJHTstdvkvMwcGLjaykc2UGNBHMHra78ZM vs5iyc2qz1fl could not find address adamswe@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 187 --limit 6 | grep -A5 '\"name\": \"adanh@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adanh@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adanh@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"amlvawpn4ukt\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8Lgp2HwGo7W7M4oWLMgSgYCWATwEa7ZuntbXRoVVNfua6w7ch2 amlvawpn4ukt ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8Lgp2HwGo7W7M4oWLMgSgYCWATwEa7ZuntbXRoVVNfua6w7ch2 amlvawpn4ukt could not find address adanh@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 188 --limit 6 | grep -A5 '\"name\": \"adhan94@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adhan94@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adhan94@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"iwe44v3nauex\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5jK8t3NummV9WwhcZeiEUVfkhQK4G2aFT5a3EiF3489zBeFS4h iwe44v3nauex trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5jK8t3NummV9WwhcZeiEUVfkhQK4G2aFT5a3EiF3489zBeFS4h iwe44v3nauex could not find address adhan94@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 189 --limit 6 | grep -A5 '\"name\": \"adheindra@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adheindra@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adheindra@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"5nfklawuyhwf\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7MvyD4HwqeDUaVkP74uV9DsNwpmQEHXpobQoQsLvRgmshe14VW 5nfklawuyhwf coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7MvyD4HwqeDUaVkP74uV9DsNwpmQEHXpobQoQsLvRgmshe14VW 5nfklawuyhwf could not find address adheindra@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 190 --limit 6 | grep -A5 '\"name\": \"adi@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adi@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adi@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"wwxvisvbfdng\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5MEq81HvKovoiQd8zkMKLW5kJZg1NCm35DBvkU7mrcfRC5aB1D wwxvisvbfdng ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5MEq81HvKovoiQd8zkMKLW5kJZg1NCm35DBvkU7mrcfRC5aB1D wwxvisvbfdng could not find address adi@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 191 --limit 6 | grep -A5 '\"name\": \"adidas@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adidas@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adidas@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"sre4brafu2y1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5oYZJrYa2z4TGPftMLyJVHdiJqL7ZypEtseL5v4mNWF8yPX2EX sre4brafu2y1 ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5oYZJrYa2z4TGPftMLyJVHdiJqL7ZypEtseL5v4mNWF8yPX2EX sre4brafu2y1 could not find address adidas@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 192 --limit 6 | grep -A5 '\"name\": \"adiedr066@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adiedr066@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adiedr066@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"u2q4ciwbh2cm\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8jLfYExAjHjeY5E3HD26L9EQHbxGXGmSVaaAo1Nkma324vV7VW u2q4ciwbh2cm ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8jLfYExAjHjeY5E3HD26L9EQHbxGXGmSVaaAo1Nkma324vV7VW u2q4ciwbh2cm could not find address adiedr066@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 193 --limit 6 | grep -A5 '\"name\": \"adiez@edge\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adiez@edge\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adiez@edge found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"1f2tj3wuwmzl\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8YTRc42dJqd576jeAo3xCLNdb4u7irS9o8q8iikUS3j9nkuBVB 1f2tj3wuwmzl edge account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8YTRc42dJqd576jeAo3xCLNdb4u7irS9o8q8iikUS3j9nkuBVB 1f2tj3wuwmzl could not find address adiez@edge for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 194 --limit 6 | grep -A5 '\"name\": \"adil@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adil@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adil@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"sab4hamrkiyx\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8YK9LUbJUQjVeNSZvu4cgRKVKPHEaAUWGKYENEWFpitixLkU9y sab4hamrkiyx ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8YK9LUbJUQjVeNSZvu4cgRKVKPHEaAUWGKYENEWFpitixLkU9y sab4hamrkiyx could not find address adil@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 195 --limit 6 | grep -A5 '\"name\": \"aditfikram@qtum\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aditfikram@qtum\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aditfikram@qtum found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"eqibjyz4bnjd\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7Q2ZjdoGmFpU2dWLZYNM6WCTNAj3RKRM23xpnP2jkwViszHHnW eqibjyz4bnjd qtum account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7Q2ZjdoGmFpU2dWLZYNM6WCTNAj3RKRM23xpnP2jkwViszHHnW eqibjyz4bnjd could not find address aditfikram@qtum for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 196 --limit 6 | grep -A5 '\"name\": \"admin@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"admin@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " admin@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"2qe4yasmxwgf\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO84nTNgx3iFTXQSNem6FoJ97kGrJvHs3fmmzkukc3qFiPdXdkEU 2qe4yasmxwgf ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO84nTNgx3iFTXQSNem6FoJ97kGrJvHs3fmmzkukc3qFiPdXdkEU 2qe4yasmxwgf could not find address admin@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 197 --limit 6 | grep -A5 '\"name\": \"admin01@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"admin01@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " admin01@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"cotbuy31ibbk\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7sL7b6Ug8mavnARKFgXSjeYXL1eigTR9cC6syLzqxX1UgxoRrc cotbuy31ibbk coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7sL7b6Ug8mavnARKFgXSjeYXL1eigTR9cC6syLzqxX1UgxoRrc cotbuy31ibbk could not find address admin01@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 198 --limit 6 | grep -A5 '\"name\": \"adrian@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adrian@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adrian@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ghjewab24q4z\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6vYPqZ5zxHenSfWbSF2fxmMf3GeqefZD44ZHrhuNyDWJb2CPr3 ghjewab24q4z coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6vYPqZ5zxHenSfWbSF2fxmMf3GeqefZD44ZHrhuNyDWJb2CPr3 ghjewab24q4z could not find address adrian@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 199 --limit 6 | grep -A5 '\"name\": \"adrian@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adrian@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adrian@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ns5a3xuauqjf\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5cribok3UKDaL5Lp9eVrjS3WTzCEroK7DdHjdnnJsBn779ALBN ns5a3xuauqjf ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5cribok3UKDaL5Lp9eVrjS3WTzCEroK7DdHjdnnJsBn779ALBN ns5a3xuauqjf could not find address adrian@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 200 --limit 6 | grep -A5 '\"name\": \"adrian5640@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adrian5640@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adrian5640@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"44gnrgqdepig\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8ZexoHR49ifWqviyzupJqo8A3zUdgfpwDJ7nCSUnoAr4G3hqtF 44gnrgqdepig trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8ZexoHR49ifWqviyzupJqo8A3zUdgfpwDJ7nCSUnoAr4G3hqtF 44gnrgqdepig could not find address adrian5640@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 201 --limit 6 | grep -A5 '\"name\": \"ads@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ads@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ads@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"k12n3dvffcyv\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5z8aL3exrMiy524BMvKvhU5kv2czXdnKhDp8dpaPLDuWpJ7TYY k12n3dvffcyv ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5z8aL3exrMiy524BMvKvhU5kv2czXdnKhDp8dpaPLDuWpJ7TYY k12n3dvffcyv could not find address ads@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 202 --limit 6 | grep -A5 '\"name\": \"adventure@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adventure@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adventure@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ucbphedxghzn\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8VK3NabSa86UA68FfcBdYsT4ncfgSWB7AZjP3XfNbiQitucK1Y ucbphedxghzn ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8VK3NabSa86UA68FfcBdYsT4ncfgSWB7AZjP3XfNbiQitucK1Y ucbphedxghzn could not find address adventure@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 203 --limit 6 | grep -A5 '\"name\": \"adypranata@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adypranata@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adypranata@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"py5hhfierilf\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO53nrSfsCMr1zqUWgQpkPbWbhqjzTMzMYVsSXTugub5tN3Undz7 py5hhfierilf ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO53nrSfsCMr1zqUWgQpkPbWbhqjzTMzMYVsSXTugub5tN3Undz7 py5hhfierilf could not find address adypranata@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 204 --limit 6 | grep -A5 '\"name\": \"adyy48@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"adyy48@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " adyy48@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"anbex5ae4pjo\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8LgqxodtfBEG8yTFSEoDucAcGn244aD9RUwP5pRp8ZQAxGADk8 anbex5ae4pjo coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8LgqxodtfBEG8yTFSEoDucAcGn244aD9RUwP5pRp8ZQAxGADk8 anbex5ae4pjo could not find address adyy48@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 205 --limit 6 | grep -A5 '\"name\": \"aegrosko@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aegrosko@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aegrosko@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"nazw3zuzvlgd\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5H8HLs5262QiwNvBzrAheDd4CbwZAPQSh7LiWygxrMY9cVUWeq nazw3zuzvlgd ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5H8HLs5262QiwNvBzrAheDd4CbwZAPQSh7LiWygxrMY9cVUWeq nazw3zuzvlgd could not find address aegrosko@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 206 --limit 6 | grep -A5 '\"name\": \"aep@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aep@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aep@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"usmemplt3spa\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO72j5ZHAAUEwrryiqGNszwjvG9zNjQQcrVZiSubyS4ZvRHCxbLU usmemplt3spa ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO72j5ZHAAUEwrryiqGNszwjvG9zNjQQcrVZiSubyS4ZvRHCxbLU usmemplt3spa could not find address aep@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 207 --limit 6 | grep -A5 '\"name\": \"aero79@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aero79@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aero79@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"orm4bd5sy2hn\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8SkYkf2i542mNUtoHX8o3uBGLiBSGCoX6UQjtLvcCeFGDFDySB orm4bd5sy2hn ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8SkYkf2i542mNUtoHX8o3uBGLiBSGCoX6UQjtLvcCeFGDFDySB orm4bd5sy2hn could not find address aero79@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 208 --limit 6 | grep -A5 '\"name\": \"aex@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aex@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aex@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"l2rycgaczmeo\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7wGCe9RkUPxFYzJji27ErbkjpgmJfFnY8SSWnCExxUZs3dnWWN l2rycgaczmeo ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7wGCe9RkUPxFYzJji27ErbkjpgmJfFnY8SSWnCExxUZs3dnWWN l2rycgaczmeo could not find address aex@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 209 --limit 6 | grep -A5 '\"name\": \"afl@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"afl@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " afl@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"srmfegi1xowo\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6XiLjdteCT8gpZo9LKPRFUyJ81DYXWve6ukLVkWiW36ofNBjLS srmfegi1xowo ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6XiLjdteCT8gpZo9LKPRFUyJ81DYXWve6ukLVkWiW36ofNBjLS srmfegi1xowo could not find address afl@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 210 --limit 6 | grep -A5 '\"name\": \"africa@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"africa@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " africa@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"oikwg1hkzm24\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8gmsCEzKKQsyJ7jHAFcueGV9evwn2phThYjfHgX2GhZYAPx1qY oikwg1hkzm24 infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8gmsCEzKKQsyJ7jHAFcueGV9evwn2phThYjfHgX2GhZYAPx1qY oikwg1hkzm24 could not find address africa@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 211 --limit 6 | grep -A5 '\"name\": \"africa@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"africa@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " africa@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"4poxw1n5b2ee\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5QroRnJWN4VevJTnhn2UZjeQyz7NfdTSkdBPUPxY2oYHNToH8c 4poxw1n5b2ee ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5QroRnJWN4VevJTnhn2UZjeQyz7NfdTSkdBPUPxY2oYHNToH8c 4poxw1n5b2ee could not find address africa@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 212 --limit 6 | grep -A5 '\"name\": \"afrizaannas@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"afrizaannas@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " afrizaannas@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"hl4fravuapym\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6h7ktjHdHY1cvEpQ7MhLKPEPcEPjpwKA76ET69mFWn6EzdDUFT hl4fravuapym coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6h7ktjHdHY1cvEpQ7MhLKPEPcEPjpwKA76ET69mFWn6EzdDUFT hl4fravuapym could not find address afrizaannas@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 213 --limit 6 | grep -A5 '\"name\": \"afropunk@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"afropunk@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " afropunk@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"3lbnxe3cc5yq\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO85DTjCgRZQaiXytLKzz4hTTTCZLSb7zhXwQqq7FWwaFMM1EHsz 3lbnxe3cc5yq ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO85DTjCgRZQaiXytLKzz4hTTTCZLSb7zhXwQqq7FWwaFMM1EHsz 3lbnxe3cc5yq could not find address afropunk@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 214 --limit 6 | grep -A5 '\"name\": \"agah@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"agah@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " agah@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"psfrok2az5o3\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO53qT3jpK3ENGzEvz8aTndSL5uDwbZY8zimpkdiASBdipTEXbe8 psfrok2az5o3 ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO53qT3jpK3ENGzEvz8aTndSL5uDwbZY8zimpkdiASBdipTEXbe8 psfrok2az5o3 could not find address agah@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 215 --limit 6 | grep -A5 '\"name\": \"agan@guarda\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"agan@guarda\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " agan@guarda found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"sggn4qttj3qy\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO558rn822GP7sTi1ViaCz11MxUpwjDMSGDrCjYaw5kpNxyW4ap8 sggn4qttj3qy guarda account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO558rn822GP7sTi1ViaCz11MxUpwjDMSGDrCjYaw5kpNxyW4ap8 sggn4qttj3qy could not find address agan@guarda for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 216 --limit 6 | grep -A5 '\"name\": \"aganakata@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aganakata@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aganakata@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"mnil1v22h3vd\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6yFSvrv4f2D2TCd2MtmddGgz1fEM7RaC7cs7hJ8ErCvRR1ik8A mnil1v22h3vd trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6yFSvrv4f2D2TCd2MtmddGgz1fEM7RaC7cs7hJ8ErCvRR1ik8A mnil1v22h3vd could not find address aganakata@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 217 --limit 6 | grep -A5 '\"name\": \"aghazimoradi@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aghazimoradi@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aghazimoradi@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"qg4lqem3ohjd\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5YPLwuZfjUn5tNEKd73YuhQnAMLS6zZSnr5bwVUCptbCTBgFrc qg4lqem3ohjd coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5YPLwuZfjUn5tNEKd73YuhQnAMLS6zZSnr5bwVUCptbCTBgFrc qg4lqem3ohjd could not find address aghazimoradi@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 218 --limit 6 | grep -A5 '\"name\": \"aghoezuchiha@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aghoezuchiha@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aghoezuchiha@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"dvb2h5zammr5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO79LbGZVMQewvAwrATE6C7qL4K4ZJdp8wYFtazaBXJwFzkSTTMJ dvb2h5zammr5 infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO79LbGZVMQewvAwrATE6C7qL4K4ZJdp8wYFtazaBXJwFzkSTTMJ dvb2h5zammr5 could not find address aghoezuchiha@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 219 --limit 6 | grep -A5 '\"name\": \"agkhader@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"agkhader@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " agkhader@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"i5epiu2pjxvg\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5V1v48AppkC9ptaeJtzvuFm3RLkMi16LUfgdBWuzKfCiiHNqEA i5epiu2pjxvg coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5V1v48AppkC9ptaeJtzvuFm3RLkMi16LUfgdBWuzKfCiiHNqEA i5epiu2pjxvg could not find address agkhader@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 220 --limit 6 | grep -A5 '\"name\": \"agkhader@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"agkhader@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " agkhader@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"iv1heohc3jad\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6DPR8BhztstERaruv5NenTbCgvGpm5EhLWnKPAKfdPfLNeeoUe iv1heohc3jad infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6DPR8BhztstERaruv5NenTbCgvGpm5EhLWnKPAKfdPfLNeeoUe iv1heohc3jad could not find address agkhader@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 221 --limit 6 | grep -A5 '\"name\": \"agungvg@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"agungvg@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " agungvg@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"oqctlz54lf1t\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8CbsFp8xdULF8pikUkKcfgurd87mz39Vkn8TxRTSkm99Aaye2P oqctlz54lf1t coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8CbsFp8xdULF8pikUkKcfgurd87mz39Vkn8TxRTSkm99Aaye2P oqctlz54lf1t could not find address agungvg@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 222 --limit 6 | grep -A5 '\"name\": \"agus25@qtum\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"agus25@qtum\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " agus25@qtum found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"j35fvticrglk\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6TzSKiweZfmLFTfS5hwPptNmV45bHCaTZZQ2WqR9iSTK15P8US j35fvticrglk qtum account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6TzSKiweZfmLFTfS5hwPptNmV45bHCaTZZQ2WqR9iSTK15P8US j35fvticrglk could not find address agus25@qtum for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 223 --limit 6 | grep -A5 '\"name\": \"agusdly85@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"agusdly85@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " agusdly85@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"lyvs1iwi5xcf\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6igR8i6QJN1p67hnzaWyrYwCRJHbC8bvzE2rWYqm9X45pZV12g lyvs1iwi5xcf infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6igR8i6QJN1p67hnzaWyrYwCRJHbC8bvzE2rWYqm9X45pZV12g lyvs1iwi5xcf could not find address agusdly85@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 224 --limit 6 | grep -A5 '\"name\": \"ahazmi69@qtum\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ahazmi69@qtum\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ahazmi69@qtum found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"un1axiuqrhwe\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7mAPogrzah1KFyTWFJwTgTZKjSiMPMFzPJEb5u4scCGrCJq5rU un1axiuqrhwe qtum account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7mAPogrzah1KFyTWFJwTgTZKjSiMPMFzPJEb5u4scCGrCJq5rU un1axiuqrhwe could not find address ahazmi69@qtum for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 225 --limit 6 | grep -A5 '\"name\": \"ahiles@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ahiles@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ahiles@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"mzrlvym2cgop\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO4trMfPNFLTJpbFQroChztMFeGLD4oVWQQTcwGM7bUXqgma7bXc mzrlvym2cgop infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO4trMfPNFLTJpbFQroChztMFeGLD4oVWQQTcwGM7bUXqgma7bXc mzrlvym2cgop could not find address ahiles@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 226 --limit 6 | grep -A5 '\"name\": \"ahmad@abudhabi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ahmad@abudhabi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ahmad@abudhabi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"gk2gxzagoacc\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5iFFtLV4upkxNtdMNk5cN9w8QTx5hMkAe9VgT3RrwGQQJkZ9HD gk2gxzagoacc abudhabi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5iFFtLV4upkxNtdMNk5cN9w8QTx5hMkAe9VgT3RrwGQQJkZ9HD gk2gxzagoacc could not find address ahmad@abudhabi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 227 --limit 6 | grep -A5 '\"name\": \"ahmad@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ahmad@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ahmad@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ln2tw2s4bxd3\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7TGcyLCQnNSL7BQnRxhtgHj4oDqfFAByPprZtibpGrJ2NQymKq ln2tw2s4bxd3 coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7TGcyLCQnNSL7BQnRxhtgHj4oDqfFAByPprZtibpGrJ2NQymKq ln2tw2s4bxd3 could not find address ahmad@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 228 --limit 6 | grep -A5 '\"name\": \"ahmad@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ahmad@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ahmad@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"gg5k3hgpxm1a\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6STt9fVJgKZBTXmwFXgy4Fkx7PfEQ2RQLibtoWs3iKvgycsEJe gg5k3hgpxm1a infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6STt9fVJgKZBTXmwFXgy4Fkx7PfEQ2RQLibtoWs3iKvgycsEJe gg5k3hgpxm1a could not find address ahmad@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 229 --limit 6 | grep -A5 '\"name\": \"ahmad@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ahmad@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ahmad@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"bq1jprgiqewv\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6A5LgRmbqAysjrvRyGZ8ePF9qaC6m1m4XfkCBnxB6nWyQTAYNK bq1jprgiqewv ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6A5LgRmbqAysjrvRyGZ8ePF9qaC6m1m4XfkCBnxB6nWyQTAYNK bq1jprgiqewv could not find address ahmad@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 230 --limit 6 | grep -A5 '\"name\": \"ahmadameer105@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ahmadameer105@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ahmadameer105@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"1psx1rzgpzky\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO75v34pFyhXtatHWvda8ohzTgKF2iv7XyYLsE6kQ3xnuhfdpEgx 1psx1rzgpzky coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO75v34pFyhXtatHWvda8ohzTgKF2iv7XyYLsE6kQ3xnuhfdpEgx 1psx1rzgpzky could not find address ahmadameer105@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 231 --limit 6 | grep -A5 '\"name\": \"ahmadameer105@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ahmadameer105@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ahmadameer105@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"wd3dhpbjsmsp\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7mv7PKdTJGhp4vxAhgb6MqYnqdq9qq9znAVvTpNbWcZ32XGx4h wd3dhpbjsmsp infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7mv7PKdTJGhp4vxAhgb6MqYnqdq9qq9znAVvTpNbWcZ32XGx4h wd3dhpbjsmsp could not find address ahmadameer105@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 232 --limit 6 | grep -A5 '\"name\": \"ahmadfawaz@qtum\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ahmadfawaz@qtum\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ahmadfawaz@qtum found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"yyaanxztmjfy\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8XAfbtu8SuK9HWxxMRjF4sHPRoPLWNTMLw6dE6B4BytUqsAp9b yyaanxztmjfy qtum account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8XAfbtu8SuK9HWxxMRjF4sHPRoPLWNTMLw6dE6B4BytUqsAp9b yyaanxztmjfy could not find address ahmadfawaz@qtum for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 233 --limit 6 | grep -A5 '\"name\": \"ahmadghasemiian@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ahmadghasemiian@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ahmadghasemiian@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"yk4uyoa34zcz\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7o5qVQnVMth15MedGxFurXDMvYWbaoBrgmyDLjFJLoXmfHkNmD yk4uyoa34zcz infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7o5qVQnVMth15MedGxFurXDMvYWbaoBrgmyDLjFJLoXmfHkNmD yk4uyoa34zcz could not find address ahmadghasemiian@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 234 --limit 6 | grep -A5 '\"name\": \"ahmadny@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ahmadny@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ahmadny@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"otmjvsm4ke2m\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7xngAFrqqb4xraLLmPkrfDPjjWU2nJoV2QLoHd2Tqh2oiB8GhM otmjvsm4ke2m infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7xngAFrqqb4xraLLmPkrfDPjjWU2nJoV2QLoHd2Tqh2oiB8GhM otmjvsm4ke2m could not find address ahmadny@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 235 --limit 6 | grep -A5 '\"name\": \"ahmadusman@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ahmadusman@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ahmadusman@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"hyoo4guhseoi\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8PnkdijJjtfefkxNDV14HDqkkuDPA2jkbCr4kwH5nVJasRt4Kc hyoo4guhseoi trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8PnkdijJjtfefkxNDV14HDqkkuDPA2jkbCr4kwH5nVJasRt4Kc hyoo4guhseoi could not find address ahmadusman@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 236 --limit 6 | grep -A5 '\"name\": \"ahmadusman1@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ahmadusman1@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ahmadusman1@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"hyoo4guhseoi\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8PnkdijJjtfefkxNDV14HDqkkuDPA2jkbCr4kwH5nVJasRt4Kc hyoo4guhseoi trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8PnkdijJjtfefkxNDV14HDqkkuDPA2jkbCr4kwH5nVJasRt4Kc hyoo4guhseoi could not find address ahmadusman1@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 237 --limit 6 | grep -A5 '\"name\": \"ahmed@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ahmed@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ahmed@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"tfatwj4yzioe\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5ZhuyYFkmoE3Qwr3UNEPFEnGheLJ9Vtvnp9eDVN8YzHg1F5H7w tfatwj4yzioe coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5ZhuyYFkmoE3Qwr3UNEPFEnGheLJ9Vtvnp9eDVN8YzHg1F5H7w tfatwj4yzioe could not find address ahmed@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 238 --limit 6 | grep -A5 '\"name\": \"ahmet@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ahmet@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ahmet@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"aclnxy5xgi3s\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5BQS8n7coDH5Z3Ys45n5UCY9ex8j2KfCFzjD53inN8yGuySvrC aclnxy5xgi3s infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5BQS8n7coDH5Z3Ys45n5UCY9ex8j2KfCFzjD53inN8yGuySvrC aclnxy5xgi3s could not find address ahmet@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 239 --limit 6 | grep -A5 '\"name\": \"ahn@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ahn@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ahn@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"shlcihhlpgjo\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8EYXt1PVXENECpUV9eeJ4HzDpeCDf8nEwLZSC9dZf3UYfyV6Ky shlcihhlpgjo ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8EYXt1PVXENECpUV9eeJ4HzDpeCDf8nEwLZSC9dZf3UYfyV6Ky shlcihhlpgjo could not find address ahn@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 240 --limit 6 | grep -A5 '\"name\": \"ahsia0z@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ahsia0z@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ahsia0z@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"bt1ykd2ho54p\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5vGJ3rt8guRg3YUgY75sNwk87bGwcwF692iMnwKUc7GPRG3BrM bt1ykd2ho54p ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5vGJ3rt8guRg3YUgY75sNwk87bGwcwF692iMnwKUc7GPRG3BrM bt1ykd2ho54p could not find address ahsia0z@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 241 --limit 6 | grep -A5 '\"name\": \"ahuomega5696@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ahuomega5696@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ahuomega5696@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"a4xvcamyutij\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5BESweowwkqzGJJNjX1Yk2Godh4ydLdCLXueNamruGcXoEPpWw a4xvcamyutij infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5BESweowwkqzGJJNjX1Yk2Godh4ydLdCLXueNamruGcXoEPpWw a4xvcamyutij could not find address ahuomega5696@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 242 --limit 6 | grep -A5 '\"name\": \"ahyangoh@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ahyangoh@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ahyangoh@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"vllv4sxsmpl1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5asVd8U9nR6uHXVgsnvtbrccWoGDrAvwDhxQ9ThRRJdseCNkSQ vllv4sxsmpl1 infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5asVd8U9nR6uHXVgsnvtbrccWoGDrAvwDhxQ9ThRRJdseCNkSQ vllv4sxsmpl1 could not find address ahyangoh@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 243 --limit 6 | grep -A5 '\"name\": \"ai@math\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ai@math\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ai@math found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ias445zttvze\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO83zv93tvr7ryvSPGhJtp4UtCHvrph2rjybJi8AsfoQcMpU3hF1 ias445zttvze math account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO83zv93tvr7ryvSPGhJtp4UtCHvrph2rjybJi8AsfoQcMpU3hF1 ias445zttvze could not find address ai@math for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 244 --limit 6 | grep -A5 '\"name\": \"ai@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ai@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ai@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"r314flegncic\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6mSEH7MRc6yrLNJMWxRAQy9Lc3v4BwKYkVjNTaeL8TCkCF9pvy r314flegncic trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6mSEH7MRc6yrLNJMWxRAQy9Lc3v4BwKYkVjNTaeL8TCkCF9pvy r314flegncic could not find address ai@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 245 --limit 6 | grep -A5 '\"name\": \"aicarus@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aicarus@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aicarus@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"nfu2f51fmx12\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5mNq34d2joacgagdL2wmFxwhxLZj3hSqczpeovBRfJoLff3a5y nfu2f51fmx12 infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5mNq34d2joacgagdL2wmFxwhxLZj3hSqczpeovBRfJoLff3a5y nfu2f51fmx12 could not find address aicarus@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 246 --limit 6 | grep -A5 '\"name\": \"aicoin@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aicoin@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aicoin@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"irc2xqy1onls\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5yFPx8nmkUTWLKjfRirLcLtRYmhucPg2FTeGqmdnfzrQAMn7vq irc2xqy1onls ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5yFPx8nmkUTWLKjfRirLcLtRYmhucPg2FTeGqmdnfzrQAMn7vq irc2xqy1onls could not find address aicoin@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 247 --limit 6 | grep -A5 '\"name\": \"aidropster@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aidropster@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aidropster@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zagymeaan2hh\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8XfaSyaT4Sniw6kwVA8UAxgPuyQ71rbQs5FSJsNPty9xehiTyL zagymeaan2hh coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8XfaSyaT4Sniw6kwVA8UAxgPuyQ71rbQs5FSJsNPty9xehiTyL zagymeaan2hh could not find address aidropster@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 248 --limit 6 | grep -A5 '\"name\": \"ailinjuly@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ailinjuly@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ailinjuly@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"nkzazptmn11m\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5mSUPDHVzU2zHAJm38vcaZVcpNxqLvQayph3fCwi9MoFWDCRkv nkzazptmn11m ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5mSUPDHVzU2zHAJm38vcaZVcpNxqLvQayph3fCwi9MoFWDCRkv nkzazptmn11m could not find address ailinjuly@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 249 --limit 6 | grep -A5 '\"name\": \"ainkmacan@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ainkmacan@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ainkmacan@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"lijp3oujz3ey\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8RgyydnsJ9sgg2kU8HEjDscRUMhQdeQSZFbGRsB8ARKDQXb8xe lijp3oujz3ey atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8RgyydnsJ9sgg2kU8HEjDscRUMhQdeQSZFbGRsB8ARKDQXb8xe lijp3oujz3ey could not find address ainkmacan@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 250 --limit 6 | grep -A5 '\"name\": \"aion@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aion@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aion@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"dmqdugma3usz\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5vuqxQXxqtfHHkUegVGMUXTcqHtkbcdi6mHRbJMYVp1oTpmipg dmqdugma3usz coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5vuqxQXxqtfHHkUegVGMUXTcqHtkbcdi6mHRbJMYVp1oTpmipg dmqdugma3usz could not find address aion@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 251 --limit 6 | grep -A5 '\"name\": \"airbnb@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"airbnb@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " airbnb@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"wbx2rdaq1a4j\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5b5KgZp52zxSy4gJBTTkjw31LKHEjXqnYPn4DVBxsZg1tMePev wbx2rdaq1a4j ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5b5KgZp52zxSy4gJBTTkjw31LKHEjXqnYPn4DVBxsZg1tMePev wbx2rdaq1a4j could not find address airbnb@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 252 --limit 6 | grep -A5 '\"name\": \"aircrypto@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aircrypto@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aircrypto@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ojj2h1zggh4r\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5Hdz8jkeN8uqwTWqMaB8xTuCL3ESP2VrU6H1dQkEqkr7EMpTNV ojj2h1zggh4r ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5Hdz8jkeN8uqwTWqMaB8xTuCL3ESP2VrU6H1dQkEqkr7EMpTNV ojj2h1zggh4r could not find address aircrypto@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 253 --limit 6 | grep -A5 '\"name\": \"airdrop@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"airdrop@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " airdrop@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"3swm3onev4vr\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5ALDJon4az1QEwmef2hioNW7CHtjC8bmkSQyTgHxj9Ko8BjxKP 3swm3onev4vr coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5ALDJon4az1QEwmef2hioNW7CHtjC8bmkSQyTgHxj9Ko8BjxKP 3swm3onev4vr could not find address airdrop@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 254 --limit 6 | grep -A5 '\"name\": \"airdrop@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"airdrop@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " airdrop@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"nknrj551t2bh\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5mDftjBeMXW6h35pLYQ8C9m6QhLPu33qTGnywxXBY4VcV4GSB7 nknrj551t2bh ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5mDftjBeMXW6h35pLYQ8C9m6QhLPu33qTGnywxXBY4VcV4GSB7 nknrj551t2bh could not find address airdrop@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 255 --limit 6 | grep -A5 '\"name\": \"airdrop@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"airdrop@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " airdrop@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"mprfxaieutsn\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5kxEQFtYYwnJcxse8R9ibBiLx8skpDaQAjT24cYjXD1fviD6BM mprfxaieutsn trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5kxEQFtYYwnJcxse8R9ibBiLx8skpDaQAjT24cYjXD1fviD6BM mprfxaieutsn could not find address airdrop@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 256 --limit 6 | grep -A5 '\"name\": \"airdropradio@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"airdropradio@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " airdropradio@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"bnoz4yjelua1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5RxV8iKDrPrC1kY5N1aHA71uYgGseyE95Ft9bxhWR2MXA1ZpPP bnoz4yjelua1 coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5RxV8iKDrPrC1kY5N1aHA71uYgGseyE95Ft9bxhWR2MXA1ZpPP bnoz4yjelua1 could not find address airdropradio@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 257 --limit 6 | grep -A5 '\"name\": \"airdrops@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"airdrops@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " airdrops@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"qekkndptqyls\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6m4vGwodxnuTVfXUqh5yfBuCbawcaa9qWj4rZaRSiV5AkWJgSj qekkndptqyls coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6m4vGwodxnuTVfXUqh5yfBuCbawcaa9qWj4rZaRSiV5AkWJgSj qekkndptqyls could not find address airdrops@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 258 --limit 6 | grep -A5 '\"name\": \"airdropterm@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"airdropterm@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " airdropterm@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"bcbnaeru5e3w\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7ccN9h2jzpA7qHG9TPKhq5NrPpWoYr3U5NxC5pATbctfWgoYgm bcbnaeru5e3w trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7ccN9h2jzpA7qHG9TPKhq5NrPpWoYr3U5NxC5pATbctfWgoYgm bcbnaeru5e3w could not find address airdropterm@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 259 --limit 6 | grep -A5 '\"name\": \"airdroptern@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"airdroptern@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " airdroptern@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zcfic1f2gilz\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO58NnHFUr7NT6Deh9QN3AXBfvyfhj4psrbbMTViu8bw1Qw8YsHw zcfic1f2gilz atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO58NnHFUr7NT6Deh9QN3AXBfvyfhj4psrbbMTViu8bw1Qw8YsHw zcfic1f2gilz could not find address airdroptern@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 260 --limit 6 | grep -A5 '\"name\": \"airmarga@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"airmarga@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " airmarga@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"kqrcjd31xe1x\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8B7fR9RZrjboJ8Sj6Ab5cr1dgmCy4skkd3jSaUs8Fer67cgoVx kqrcjd31xe1x coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8B7fR9RZrjboJ8Sj6Ab5cr1dgmCy4skkd3jSaUs8Fer67cgoVx kqrcjd31xe1x could not find address airmarga@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 261 --limit 6 | grep -A5 '\"name\": \"airtiger@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"airtiger@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " airtiger@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"gq2rxuzsdy2e\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO4z2uc5Y7csuAhvzYA8srvZukZ2Fzr5jgSU82AFGrkP7jo4Q4fc gq2rxuzsdy2e atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO4z2uc5Y7csuAhvzYA8srvZukZ2Fzr5jgSU82AFGrkP7jo4Q4fc gq2rxuzsdy2e could not find address airtiger@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 262 --limit 6 | grep -A5 '\"name\": \"airvel@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"airvel@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " airvel@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"nax4ffi4h1f1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5mXrr3D89fF9GqQYi3pbiGyF5nNus9gHo7HFmZiMP4AKa7RjX2 nax4ffi4h1f1 ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5mXrr3D89fF9GqQYi3pbiGyF5nNus9gHo7HFmZiMP4AKa7RjX2 nax4ffi4h1f1 could not find address airvel@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 263 --limit 6 | grep -A5 '\"name\": \"aizensama@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aizensama@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aizensama@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"m2jma35vvm4p\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8BjvBBw7RGa7fxNTYEPTXpKu3JGeXMVdtfAV1vXCSNtbi8LHc7 m2jma35vvm4p trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8BjvBBw7RGa7fxNTYEPTXpKu3JGeXMVdtfAV1vXCSNtbi8LHc7 m2jma35vvm4p could not find address aizensama@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 264 --limit 6 | grep -A5 '\"name\": \"ajadiahmed@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ajadiahmed@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ajadiahmed@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"odctlpkgro4i\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7xpGX6GQ9EDAxr5myhde2acLoeiebT8FtZcrxXtnkmzGLmRyaF odctlpkgro4i coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7xpGX6GQ9EDAxr5myhde2acLoeiebT8FtZcrxXtnkmzGLmRyaF odctlpkgro4i could not find address ajadiahmed@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 265 --limit 6 | grep -A5 '\"name\": \"ajdani@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ajdani@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ajdani@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"5mtbygtoy1u2\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO69F4wXq5bo9SydbrAbWxE99CjKAv7bszrMn753oVQC8ArqTrXh 5mtbygtoy1u2 coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO69F4wXq5bo9SydbrAbWxE99CjKAv7bszrMn753oVQC8ArqTrXh 5mtbygtoy1u2 could not find address ajdani@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 266 --limit 6 | grep -A5 '\"name\": \"ajguille@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ajguille@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ajguille@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"vyhqq12im3aj\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO73BDi6mQqU9sdcRX6NyCFdy5FcCnWAcyhbdoCUM7RkP7rbDZXj vyhqq12im3aj coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO73BDi6mQqU9sdcRX6NyCFdy5FcCnWAcyhbdoCUM7RkP7rbDZXj vyhqq12im3aj could not find address ajguille@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 267 --limit 6 | grep -A5 '\"name\": \"ajibon16@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ajibon16@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ajibon16@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"a22b3lhykv4z\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO77yTtbcxnen5bDjWauwzJCe7KorydczzP5BWHWEmPvwDz6jNa7 a22b3lhykv4z coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO77yTtbcxnen5bDjWauwzJCe7KorydczzP5BWHWEmPvwDz6jNa7 a22b3lhykv4z could not find address ajibon16@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 268 --limit 6 | grep -A5 '\"name\": \"ajmoron69@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ajmoron69@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ajmoron69@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zvtsk1uv5ib5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8me59CiN58o45xMob2GajBepX4utAxXovb9dmA44nhKE8yyWAn zvtsk1uv5ib5 coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8me59CiN58o45xMob2GajBepX4utAxXovb9dmA44nhKE8yyWAn zvtsk1uv5ib5 could not find address ajmoron69@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 269 --limit 6 | grep -A5 '\"name\": \"akagi201@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"akagi201@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " akagi201@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"oxiiblpfohrh\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5mgXGMnSH84wm5EiAPC4GUeEVJ922oDZ9UZQR3GCkiBCxDWCLw oxiiblpfohrh ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5mgXGMnSH84wm5EiAPC4GUeEVJ922oDZ9UZQR3GCkiBCxDWCLw oxiiblpfohrh could not find address akagi201@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 270 --limit 6 | grep -A5 '\"name\": \"akangsia@qtum\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"akangsia@qtum\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " akangsia@qtum found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"wx44g2gvxjdy\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO829pDLgXo8AZ5HgfnCoNPAuGFXoR1cXTZNvxiBe7oMtAQoKsZj wx44g2gvxjdy qtum account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO829pDLgXo8AZ5HgfnCoNPAuGFXoR1cXTZNvxiBe7oMtAQoKsZj wx44g2gvxjdy could not find address akangsia@qtum for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 271 --limit 6 | grep -A5 '\"name\": \"akangsulim@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"akangsulim@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " akangsulim@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"nmyzw5fceudc\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6yueLybasXgczxk9Abg4ci9T5WnJhzDojwiN42dCHYonvJP5PU nmyzw5fceudc coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6yueLybasXgczxk9Abg4ci9T5WnJhzDojwiN42dCHYonvJP5PU nmyzw5fceudc could not find address akangsulim@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 272 --limit 6 | grep -A5 '\"name\": \"akasha@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"akasha@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " akasha@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ddbegae2xmq1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6uNxCcxs84rv28B2DBL7Bz6gM4bY6cFC9goZ93sg6iHzL5DhxD ddbegae2xmq1 ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6uNxCcxs84rv28B2DBL7Bz6gM4bY6cFC9goZ93sg6iHzL5DhxD ddbegae2xmq1 could not find address akasha@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 273 --limit 6 | grep -A5 '\"name\": \"akecew@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"akecew@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " akecew@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"xy4gnspgylny\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5qp8MssL1XFTeckbbH6EfBmjtqYSLsrxpeVRispBpmCkggX9Tr xy4gnspgylny coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5qp8MssL1XFTeckbbH6EfBmjtqYSLsrxpeVRispBpmCkggX9Tr xy4gnspgylny could not find address akecew@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 274 --limit 6 | grep -A5 '\"name\": \"akhil@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"akhil@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " akhil@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"fwd31buclgtr\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5hpzJGMAKS8beZp1Q9tHHY9D5xVZ4AgVSfNygGaRRpTbKWirtA fwd31buclgtr coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5hpzJGMAKS8beZp1Q9tHHY9D5xVZ4AgVSfNygGaRRpTbKWirtA fwd31buclgtr could not find address akhil@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 275 --limit 6 | grep -A5 '\"name\": \"akhil@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"akhil@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " akhil@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"hkb5tyfyfxy5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8PiFBnttAeMHAXkEX4LmewECz9mEniY2sSEspCJhiawiMMiFfQ hkb5tyfyfxy5 infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8PiFBnttAeMHAXkEX4LmewECz9mEniY2sSEspCJhiawiMMiFfQ hkb5tyfyfxy5 could not find address akhil@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 276 --limit 6 | grep -A5 '\"name\": \"akin@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"akin@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " akin@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"uzcjdpirydsu\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8jfX2GRoP8jRJ8ZnxKvARniwgbb9pVbc5wFRWwqz1ZDRXxFg6m uzcjdpirydsu trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8jfX2GRoP8jRJ8ZnxKvARniwgbb9pVbc5wFRWwqz1ZDRXxFg6m uzcjdpirydsu could not find address akin@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 277 --limit 6 | grep -A5 '\"name\": \"akinyazici@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"akinyazici@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " akinyazici@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"n11d4ytszuuy\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7TxRKge1SAQd8LA8mDS1DT8HFEkRWjiqJetvLz3DYAeNKdwvpD n11d4ytszuuy infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7TxRKge1SAQd8LA8mDS1DT8HFEkRWjiqJetvLz3DYAeNKdwvpD n11d4ytszuuy could not find address akinyazici@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 278 --limit 6 | grep -A5 '\"name\": \"akira@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"akira@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " akira@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"qjvjygmibstk\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7yNnsCPJqWAniPD3vQdHerGiqH7UX7pCtxUmaQoZs2CXhMP3oC qjvjygmibstk infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7yNnsCPJqWAniPD3vQdHerGiqH7UX7pCtxUmaQoZs2CXhMP3oC qjvjygmibstk could not find address akira@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 279 --limit 6 | grep -A5 '\"name\": \"akishi51@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"akishi51@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " akishi51@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"vk3ibk1i5mb5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8ViCeJ3HVdqepRvKr9dNYSbKJMXeBFtDVXZRrQRzPsXzZ1LDch vk3ibk1i5mb5 infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8ViCeJ3HVdqepRvKr9dNYSbKJMXeBFtDVXZRrQRzPsXzZ1LDch vk3ibk1i5mb5 could not find address akishi51@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 280 --limit 6 | grep -A5 '\"name\": \"akitatrump@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"akitatrump@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " akitatrump@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"atgzpuen5my1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO4wWLPtjNo58yrqpqysps2ctpqLXKAHAeVqELLHSqhJ1cprAe4v atgzpuen5my1 infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO4wWLPtjNo58yrqpqysps2ctpqLXKAHAeVqELLHSqhJ1cprAe4v atgzpuen5my1 could not find address akitatrump@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 281 --limit 6 | grep -A5 '\"name\": \"akitesurfer@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"akitesurfer@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " akitesurfer@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"2anjy5jjpido\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6rBUjjvsZCN1sCGuQTE2XWm8QZz8GU3Lhu5C8gUYHz9pawERSb 2anjy5jjpido ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6rBUjjvsZCN1sCGuQTE2XWm8QZz8GU3Lhu5C8gUYHz9pawERSb 2anjy5jjpido could not find address akitesurfer@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 282 --limit 6 | grep -A5 '\"name\": \"akmam86@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"akmam86@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " akmam86@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"uaambxxneunm\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8FGgq2fpbHtZT2PGuHxcoMjZ5kmaVCLVKvKcPuXp1r4NfK3SBr uaambxxneunm infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8FGgq2fpbHtZT2PGuHxcoMjZ5kmaVCLVKvKcPuXp1r4NfK3SBr uaambxxneunm could not find address akmam86@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 283 --limit 6 | grep -A5 '\"name\": \"akmoriarity@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"akmoriarity@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " akmoriarity@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ou3o533luhhn\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7ETPKJKiG32pcrFGuPjByKWQhdLzNLJbBKnawiFyFhCCvwGQyC ou3o533luhhn ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7ETPKJKiG32pcrFGuPjByKWQhdLzNLJbBKnawiFyFhCCvwGQyC ou3o533luhhn could not find address akmoriarity@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 284 --limit 6 | grep -A5 '\"name\": \"aknot@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aknot@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aknot@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"agelfeh54mmh\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5BSrMkx49DipSkrdR96Q9e2rwPGNByAbPgPLk61QvkyjvFCtu6 agelfeh54mmh coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5BSrMkx49DipSkrdR96Q9e2rwPGNByAbPgPLk61QvkyjvFCtu6 agelfeh54mmh could not find address aknot@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 285 --limit 6 | grep -A5 '\"name\": \"akothan@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"akothan@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " akothan@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"dzvb5rd2r4zq\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7su72CUTbUEcBUXwMxL9aTqEfv2kZ68ZUKYifHvAsvSNs6VLFm dzvb5rd2r4zq coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7su72CUTbUEcBUXwMxL9aTqEfv2kZ68ZUKYifHvAsvSNs6VLFm dzvb5rd2r4zq could not find address akothan@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 286 --limit 6 | grep -A5 '\"name\": \"akucintakamu@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"akucintakamu@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " akucintakamu@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"aak2sq1w2l43\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO69cGX3rmkzcGZgD4nKLwASqoS9jU7GS6qFWqzRD5wz6HoScL4P aak2sq1w2l43 infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO69cGX3rmkzcGZgD4nKLwASqoS9jU7GS6qFWqzRD5wz6HoScL4P aak2sq1w2l43 could not find address akucintakamu@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 287 --limit 6 | grep -A5 '\"name\": \"akurapopo@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"akurapopo@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " akurapopo@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"katzk2chtguf\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6iN4EaxEfvDUMG4wpK1LHeURyguXWTuQgKqru4ZJymbk79ycjx katzk2chtguf trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6iN4EaxEfvDUMG4wpK1LHeURyguXWTuQgKqru4ZJymbk79ycjx katzk2chtguf could not find address akurapopo@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 288 --limit 6 | grep -A5 '\"name\": \"al@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"al@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " al@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"xyznccqt24dn\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6ZyyrBLX4S7ha2riJX5wz1fFgdJxESDnCWSqZcEErn3KPcMjqW xyznccqt24dn coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6ZyyrBLX4S7ha2riJX5wz1fFgdJxESDnCWSqZcEErn3KPcMjqW xyznccqt24dn could not find address al@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 289 --limit 6 | grep -A5 '\"name\": \"alan@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alan@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alan@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"vlt2lkmo3woj\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6713GMXHjN64Ssqu8oPzHbVkaqqPLMnk6W2fq8hpgp4t5S5Uyo vlt2lkmo3woj ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6713GMXHjN64Ssqu8oPzHbVkaqqPLMnk6W2fq8hpgp4t5S5Uyo vlt2lkmo3woj could not find address alan@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 290 --limit 6 | grep -A5 '\"name\": \"alancwchoi@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alancwchoi@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alancwchoi@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"tc2gnj1i1ejz\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5oxZgB8H4WD1qy1nX5m59P7by2voyinPH1q7Ha2Lz2t7b69xy9 tc2gnj1i1ejz ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5oxZgB8H4WD1qy1nX5m59P7by2voyinPH1q7Ha2Lz2t7b69xy9 tc2gnj1i1ejz could not find address alancwchoi@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 291 --limit 6 | grep -A5 '\"name\": \"alandaeta@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alandaeta@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alandaeta@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"xgwent4bsej5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7nait9LPGujm8h8ezzhd3eU2mWGMLjQxFfTsenB1MJ3TKQ7bLH xgwent4bsej5 coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7nait9LPGujm8h8ezzhd3eU2mWGMLjQxFfTsenB1MJ3TKQ7bLH xgwent4bsej5 could not find address alandaeta@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 292 --limit 6 | grep -A5 '\"name\": \"alanfinke@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alanfinke@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alanfinke@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"pcae3l4pnivb\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8DBXfxE6EiKzp7KD1LYTENbvZtVZMHPhc91ehYEDxKhMFeMpdV pcae3l4pnivb ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8DBXfxE6EiKzp7KD1LYTENbvZtVZMHPhc91ehYEDxKhMFeMpdV pcae3l4pnivb could not find address alanfinke@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 293 --limit 6 | grep -A5 '\"name\": \"alanloureiro@edge\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alanloureiro@edge\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alanloureiro@edge found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"peijl2fn4ewy\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7j47rEXpSgueU2LZ3aUTp5vD5GQ2rHvgFu56KfzVmpeUh8Zk7R peijl2fn4ewy edge account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7j47rEXpSgueU2LZ3aUTp5vD5GQ2rHvgFu56KfzVmpeUh8Zk7R peijl2fn4ewy could not find address alanloureiro@edge for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 294 --limit 6 | grep -A5 '\"name\": \"albar@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"albar@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " albar@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"s4pcpxdmyla4\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7FxaK7dJ3orxPGzkmwYnQA53XzfYBGtCTNGUVMwz21aq11sYjy s4pcpxdmyla4 infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7FxaK7dJ3orxPGzkmwYnQA53XzfYBGtCTNGUVMwz21aq11sYjy s4pcpxdmyla4 could not find address albar@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 295 --limit 6 | grep -A5 '\"name\": \"albarnessr@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"albarnessr@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " albarnessr@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"qmqsj5i3zgbr\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8De94usJzGth6nmwo5pn4DYQJD5zdYoFF2cC6NeY3ZQ9D9nczo qmqsj5i3zgbr trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8De94usJzGth6nmwo5pn4DYQJD5zdYoFF2cC6NeY3ZQ9D9nczo qmqsj5i3zgbr could not find address albarnessr@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 296 --limit 6 | grep -A5 '\"name\": \"albejane@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"albejane@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " albejane@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"b31yqvfjmzml\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5g5RS3KWMKF6CgcBNErVvMMGjErp8un4nZmWyPurQ8jdAh5paS b31yqvfjmzml coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5g5RS3KWMKF6CgcBNErVvMMGjErp8un4nZmWyPurQ8jdAh5paS b31yqvfjmzml could not find address albejane@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 297 --limit 6 | grep -A5 '\"name\": \"albert@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"albert@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " albert@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"pouke15uh52b\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6zjoKDrrm1oB1NJMwHioPXUv4dnFp4EgY5gzM4gxoshP6w2aBA pouke15uh52b ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6zjoKDrrm1oB1NJMwHioPXUv4dnFp4EgY5gzM4gxoshP6w2aBA pouke15uh52b could not find address albert@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 298 --limit 6 | grep -A5 '\"name\": \"albertnomtag@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"albertnomtag@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " albertnomtag@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"kxk1zqkvd4rw\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5FgNeT6KoKaeWWcVoFRYkqGhwZMCkwNNcEYW9hUGGmC3dQRbLD kxk1zqkvd4rw coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5FgNeT6KoKaeWWcVoFRYkqGhwZMCkwNNcEYW9hUGGmC3dQRbLD kxk1zqkvd4rw could not find address albertnomtag@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 299 --limit 6 | grep -A5 '\"name\": \"albeyi297@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"albeyi297@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " albeyi297@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"f5u24iu2jiso\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO4ycrhqnksMN6h4JxBAmYRTuwA51tRf2YmUQZeptzGtauvAgVyE f5u24iu2jiso infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO4ycrhqnksMN6h4JxBAmYRTuwA51tRf2YmUQZeptzGtauvAgVyE f5u24iu2jiso could not find address albeyi297@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 300 --limit 6 | grep -A5 '\"name\": \"albi@qtum\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"albi@qtum\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " albi@qtum found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"v14y2eghklgv\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO81q4w6HMpC7KkP2X7JpYkjq5qf4aAJeZTaHvX7smJ2UiR8TGR9 v14y2eghklgv qtum account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO81q4w6HMpC7KkP2X7JpYkjq5qf4aAJeZTaHvX7smJ2UiR8TGR9 v14y2eghklgv could not find address albi@qtum for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 301 --limit 6 | grep -A5 '\"name\": \"albitcoin01@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"albitcoin01@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " albitcoin01@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"xea4vkolthkm\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8GmHRhf6Z1JVbQiKvHih5AsafbDNQRBnTAb1gTUrfoPQfXxpSY xea4vkolthkm coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8GmHRhf6Z1JVbQiKvHih5AsafbDNQRBnTAb1gTUrfoPQfXxpSY xea4vkolthkm could not find address albitcoin01@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 302 --limit 6 | grep -A5 '\"name\": \"alcaso@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alcaso@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alcaso@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"jlsijrp5tlbf\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6hwdnAPkTfPTDhbMr1Fx65cJRKYbRTyapCSfob8bBswCwkxak4 jlsijrp5tlbf coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6hwdnAPkTfPTDhbMr1Fx65cJRKYbRTyapCSfob8bBswCwkxak4 jlsijrp5tlbf could not find address alcaso@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 303 --limit 6 | grep -A5 '\"name\": \"aldmconsulting@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aldmconsulting@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aldmconsulting@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"l5na4u11x4it\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8fVXm9RbB4gJ344rhwRPqkFiFaE3LdU21nZEeDFehJ9KdYNk3e l5na4u11x4it ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8fVXm9RbB4gJ344rhwRPqkFiFaE3LdU21nZEeDFehJ9KdYNk3e l5na4u11x4it could not find address aldmconsulting@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 304 --limit 6 | grep -A5 '\"name\": \"ale@xa\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ale@xa\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ale@xa found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"oinxtaeh5emz\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7iQCoDeDdh4y5PhwQiqAQ5xo8k7Wf98KVo9qvCYH54b4v7SeXC oinxtaeh5emz xa account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7iQCoDeDdh4y5PhwQiqAQ5xo8k7Wf98KVo9qvCYH54b4v7SeXC oinxtaeh5emz could not find address ale@xa for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 305 --limit 6 | grep -A5 '\"name\": \"alee@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alee@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alee@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"cirlinoq5q1c\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8betMh9CKg5cUNiSJGzkhye9smxnGsKcSNvSmt6GGXFmuC7goT cirlinoq5q1c coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8betMh9CKg5cUNiSJGzkhye9smxnGsKcSNvSmt6GGXFmuC7goT cirlinoq5q1c could not find address alee@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 306 --limit 6 | grep -A5 '\"name\": \"alejandro@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alejandro@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alejandro@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"gov5jto2qvh5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5iCXJmLkHLPgbMrZWRFbUUtQYH3nzffbs5PHYcbtjcruE4PLSB gov5jto2qvh5 ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5iCXJmLkHLPgbMrZWRFbUUtQYH3nzffbs5PHYcbtjcruE4PLSB gov5jto2qvh5 could not find address alejandro@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 307 --limit 6 | grep -A5 '\"name\": \"alek@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alek@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alek@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"xaheue42jnzo\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7na5eeL3QhRjxU26oqstfTv3R6cZSJSwXPRA82ei4diqQAULVW xaheue42jnzo coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7na5eeL3QhRjxU26oqstfTv3R6cZSJSwXPRA82ei4diqQAULVW xaheue42jnzo could not find address alek@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 308 --limit 6 | grep -A5 '\"name\": \"aleksandr@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aleksandr@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aleksandr@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"1wk2drcgjlo5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8JHL9WMb47YQqD1h6facXYtidkUixVTjnZD1RUm4ASYDTeeMBC 1wk2drcgjlo5 coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8JHL9WMb47YQqD1h6facXYtidkUixVTjnZD1RUm4ASYDTeeMBC 1wk2drcgjlo5 could not find address aleksandr@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 309 --limit 6 | grep -A5 '\"name\": \"alera@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alera@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alera@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ctpnj15kvxdt\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6eyxmhmNhqJGmhkTYNbiPWVy4y3VtexcBPXv4PPUrXHjRCfCWY ctpnj15kvxdt ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6eyxmhmNhqJGmhkTYNbiPWVy4y3VtexcBPXv4PPUrXHjRCfCWY ctpnj15kvxdt could not find address alera@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 310 --limit 6 | grep -A5 '\"name\": \"alessandro12@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alessandro12@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alessandro12@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"dypftk2ctt2u\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7styfS8spW8ZZDe69E7pm2rrQmN7cjSaBX8XkEo5zHJwwZE29a dypftk2ctt2u trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7styfS8spW8ZZDe69E7pm2rrQmN7cjSaBX8XkEo5zHJwwZE29a dypftk2ctt2u could not find address alessandro12@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 311 --limit 6 | grep -A5 '\"name\": \"alevader@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alevader@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alevader@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"hoiuqfg4y2vn\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7ukZbf1jxAuXgemKhMc99D8d9mBf3ofm6PJTi1JiknZQdJzboT hoiuqfg4y2vn coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7ukZbf1jxAuXgemKhMc99D8d9mBf3ofm6PJTi1JiknZQdJzboT hoiuqfg4y2vn could not find address alevader@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 312 --limit 6 | grep -A5 '\"name\": \"alex@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alex@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alex@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"1emylvna3ikz\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5sKYJAPaHMfc6w6SyL4Qx4Ct335Mzv3WKkr32owDYMuoHS88Dw 1emylvna3ikz atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5sKYJAPaHMfc6w6SyL4Qx4Ct335Mzv3WKkr32owDYMuoHS88Dw 1emylvna3ikz could not find address alex@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 313 --limit 6 | grep -A5 '\"name\": \"alex@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alex@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alex@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zcbstyoi2eqq\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7ZJp7JpUUzRbxrtRPn7wg3rFovWPbJgGHEvnVGkmsYFDQcm78S zcbstyoi2eqq infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7ZJp7JpUUzRbxrtRPn7wg3rFovWPbJgGHEvnVGkmsYFDQcm78S zcbstyoi2eqq could not find address alex@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 314 --limit 6 | grep -A5 '\"name\": \"alex@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alex@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alex@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"reu255ld1maj\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8iRBga8hefLaz4cRGKg8Cn6dwKy4mPBw6bWDk1yhuTshQEekLE reu255ld1maj ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8iRBga8hefLaz4cRGKg8Cn6dwKy4mPBw6bWDk1yhuTshQEekLE reu255ld1maj could not find address alex@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 315 --limit 6 | grep -A5 '\"name\": \"alex@textile\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alex@textile\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alex@textile found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"px2j52kjjyum\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7EjfLw3jFEBvykfFK1NFtKAxNQN8nutK1EJb8K5D2wYNx8irvx px2j52kjjyum textile account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7EjfLw3jFEBvykfFK1NFtKAxNQN8nutK1EJb8K5D2wYNx8irvx px2j52kjjyum could not find address alex@textile for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 316 --limit 6 | grep -A5 '\"name\": \"alex1304@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alex1304@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alex1304@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"to4ozpmt1oth\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7WrKsF2D5PcRakrWVgaBxJngC4shVbgTHC3A7ydMdNathNQB8x to4ozpmt1oth coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7WrKsF2D5PcRakrWVgaBxJngC4shVbgTHC3A7ydMdNathNQB8x to4ozpmt1oth could not find address alex1304@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 317 --limit 6 | grep -A5 '\"name\": \"alexa@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alexa@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alexa@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"oinxtaeh5emz\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7iQCoDeDdh4y5PhwQiqAQ5xo8k7Wf98KVo9qvCYH54b4v7SeXC oinxtaeh5emz coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7iQCoDeDdh4y5PhwQiqAQ5xo8k7Wf98KVo9qvCYH54b4v7SeXC oinxtaeh5emz could not find address alexa@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 318 --limit 6 | grep -A5 '\"name\": \"alexa@mycelium\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alexa@mycelium\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alexa@mycelium found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"oinxtaeh5emz\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7iQCoDeDdh4y5PhwQiqAQ5xo8k7Wf98KVo9qvCYH54b4v7SeXC oinxtaeh5emz mycelium account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7iQCoDeDdh4y5PhwQiqAQ5xo8k7Wf98KVo9qvCYH54b4v7SeXC oinxtaeh5emz could not find address alexa@mycelium for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 319 --limit 6 | grep -A5 '\"name\": \"alexa@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alexa@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alexa@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"tbji3buha5kd\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8iuh8wvJULg3cBSkJEaPqAvTiDW83Vs3T3gKoZzQpHuU4qyLVA tbji3buha5kd ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8iuh8wvJULg3cBSkJEaPqAvTiDW83Vs3T3gKoZzQpHuU4qyLVA tbji3buha5kd could not find address alexa@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 320 --limit 6 | grep -A5 '\"name\": \"alexander@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alexander@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alexander@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"w2cbivwnr21u\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO576n63PcMwkuKqtTU5gPNq569X6EB82vYzbraAN3cgj2avWAym w2cbivwnr21u atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO576n63PcMwkuKqtTU5gPNq569X6EB82vYzbraAN3cgj2avWAym w2cbivwnr21u could not find address alexander@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 321 --limit 6 | grep -A5 '\"name\": \"alexander@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alexander@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alexander@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"nwaodneiziiq\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6FRgZMD32notadQ3TWybzyhEqYiyEmbk8TVwhUYueQMDwWEV83 nwaodneiziiq infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6FRgZMD32notadQ3TWybzyhEqYiyEmbk8TVwhUYueQMDwWEV83 nwaodneiziiq could not find address alexander@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 322 --limit 6 | grep -A5 '\"name\": \"alexander@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alexander@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alexander@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"g2tgfo1a5rzc\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5i4LhmNWwCMA8pAGf5R5B6EV1fgrSkmFv8f2kkrgtNPXTgmDfy g2tgfo1a5rzc ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5i4LhmNWwCMA8pAGf5R5B6EV1fgrSkmFv8f2kkrgtNPXTgmDfy g2tgfo1a5rzc could not find address alexander@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 323 --limit 6 | grep -A5 '\"name\": \"alexanders@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alexanders@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alexanders@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"5sv2yck15kpc\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8LRQqpehVpBXn573t4F6S5JAaR1RMm1wxZbfRrwxdqYZ46P2ud 5sv2yck15kpc ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8LRQqpehVpBXn573t4F6S5JAaR1RMm1wxZbfRrwxdqYZ46P2ud 5sv2yck15kpc could not find address alexanders@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 324 --limit 6 | grep -A5 '\"name\": \"alexandr@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alexandr@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alexandr@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"brmefcrsdbsz\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5RrXJyq3nTFu5fS8HJrYnk2qn1gfW4CWCL37Lq1PThtvdrybkG brmefcrsdbsz infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5RrXJyq3nTFu5fS8HJrYnk2qn1gfW4CWCL37Lq1PThtvdrybkG brmefcrsdbsz could not find address alexandr@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 325 --limit 6 | grep -A5 '\"name\": \"alexandre@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alexandre@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alexandre@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"wy3bxykhfgw2\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5bHB4hCYh3nX4sLFiryXghUtnjPSnyJ9wo5v7boQHPQJbt7P2c wy3bxykhfgw2 ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5bHB4hCYh3nX4sLFiryXghUtnjPSnyJ9wo5v7boQHPQJbt7P2c wy3bxykhfgw2 could not find address alexandre@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 326 --limit 6 | grep -A5 '\"name\": \"alexandriapdx@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alexandriapdx@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alexandriapdx@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"tcxbto3hehfc\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7GgV9ThVifXRaVDYWdYFjLErPW4PmypBUb5ErNtLUAiTi8g8Wy tcxbto3hehfc coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7GgV9ThVifXRaVDYWdYFjLErPW4PmypBUb5ErNtLUAiTi8g8Wy tcxbto3hehfc could not find address alexandriapdx@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 327 --limit 6 | grep -A5 '\"name\": \"alexane@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alexane@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alexane@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"wfcsnd2rkyec\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO65DKEh2B5THm8jSd7aA7x2JoSzw1UEB23e8Sx42SEk6KpS1jcf wfcsnd2rkyec infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO65DKEh2B5THm8jSd7aA7x2JoSzw1UEB23e8Sx42SEk6KpS1jcf wfcsnd2rkyec could not find address alexane@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 328 --limit 6 | grep -A5 '\"name\": \"alexatomic@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alexatomic@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alexatomic@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"jwudoy1nqn3d\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5VSWFqYqEfBmiHmTpYKK12ymTwAkwG3mFxkzhc8Cp55tpavz5V jwudoy1nqn3d atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5VSWFqYqEfBmiHmTpYKK12ymTwAkwG3mFxkzhc8Cp55tpavz5V jwudoy1nqn3d could not find address alexatomic@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 329 --limit 6 | grep -A5 '\"name\": \"alexi@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alexi@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alexi@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"5to4y2i4zlnr\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8649UvmCwaXsoKcoVd4WQdj4eWRhtui6tgYMHp4BtdKautUkrK 5to4y2i4zlnr trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8649UvmCwaXsoKcoVd4WQdj4eWRhtui6tgYMHp4BtdKautUkrK 5to4y2i4zlnr could not find address alexi@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 330 --limit 6 | grep -A5 '\"name\": \"alexisq@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alexisq@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alexisq@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"qrg2kpbj41fw\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8DhoWXHzZm8tqgZAoK3X5GLaZhw6pRiBnzRvGewh5Ckot55gf6 qrg2kpbj41fw coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8DhoWXHzZm8tqgZAoK3X5GLaZhw6pRiBnzRvGewh5Ckot55gf6 qrg2kpbj41fw could not find address alexisq@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 331 --limit 6 | grep -A5 '\"name\": \"alexisq@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alexisq@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alexisq@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"tlppxgm1uqo3\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7kuktNF1TP9D1zE67mHt7wdEaPVMy7zWzw6PkKBYFxEE5SBo32 tlppxgm1uqo3 infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7kuktNF1TP9D1zE67mHt7wdEaPVMy7zWzw6PkKBYFxEE5SBo32 tlppxgm1uqo3 could not find address alexisq@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 332 --limit 6 | grep -A5 '\"name\": \"alexkinomi@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alexkinomi@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alexkinomi@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"44arttdbtjmn\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7bSu6FisYpaSrix2m9UwLR5npLViUUzKqwRkL9DiGDVUKiqWVr 44arttdbtjmn trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7bSu6FisYpaSrix2m9UwLR5npLViUUzKqwRkL9DiGDVUKiqWVr 44arttdbtjmn could not find address alexkinomi@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 333 --limit 6 | grep -A5 '\"name\": \"alexlebrun@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alexlebrun@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alexlebrun@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"xqbm1xrlkt4r\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO57ghAmd6RChAzDuJpab9zwfmQzRgmyF186iAczvFR1BwstCsQd xqbm1xrlkt4r ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO57ghAmd6RChAzDuJpab9zwfmQzRgmyF186iAczvFR1BwstCsQd xqbm1xrlkt4r could not find address alexlebrun@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 334 --limit 6 | grep -A5 '\"name\": \"alexluchini@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alexluchini@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alexluchini@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"hodu3x3s5yzw\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7RQBqbUSwzxa8fDSGMYhSH7hoqc6GXVjLyFxZ1UBmULjaA3c8o hodu3x3s5yzw ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7RQBqbUSwzxa8fDSGMYhSH7hoqc6GXVjLyFxZ1UBmULjaA3c8o hodu3x3s5yzw could not find address alexluchini@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 335 --limit 6 | grep -A5 '\"name\": \"alexsey@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alexsey@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alexsey@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"yw5drjx4kiwc\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5rJhhNYMHKo6vxcdL3FjwwSMWC4i5AwqyKCV3aWQxJbmbZHS5E yw5drjx4kiwc coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5rJhhNYMHKo6vxcdL3FjwwSMWC4i5AwqyKCV3aWQxJbmbZHS5E yw5drjx4kiwc could not find address alexsey@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 336 --limit 6 | grep -A5 '\"name\": \"alfindi@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alfindi@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alfindi@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"xwqkdkgq4nig\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO65gZTS2m9JRGtrSSqydj5jGVc3cKTGYESyt1WYKEbqBLEAF1bD xwqkdkgq4nig coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO65gZTS2m9JRGtrSSqydj5jGVc3cKTGYESyt1WYKEbqBLEAF1bD xwqkdkgq4nig could not find address alfindi@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 337 --limit 6 | grep -A5 '\"name\": \"algo@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"algo@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " algo@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"dmqdugma3usz\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5vuqxQXxqtfHHkUegVGMUXTcqHtkbcdi6mHRbJMYVp1oTpmipg dmqdugma3usz coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5vuqxQXxqtfHHkUegVGMUXTcqHtkbcdi6mHRbJMYVp1oTpmipg dmqdugma3usz could not find address algo@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 338 --limit 6 | grep -A5 '\"name\": \"algo@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"algo@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " algo@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"4bf3hybjhiqs\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO77A5tWDhjxLGc3M7vEkXEenaMvkBNKmZobVLypZtevgVptwPCR 4bf3hybjhiqs trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO77A5tWDhjxLGc3M7vEkXEenaMvkBNKmZobVLypZtevgVptwPCR 4bf3hybjhiqs could not find address algo@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 339 --limit 6 | grep -A5 '\"name\": \"algunnombre@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"algunnombre@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " algunnombre@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"mmjcmnjjmces\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7wg9uZENH9oorRC1UnSokWAkBAWQ6eW7ZM1tpdG3HsDvnnh5qH mmjcmnjjmces coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7wg9uZENH9oorRC1UnSokWAkBAWQ6eW7ZM1tpdG3HsDvnnh5qH mmjcmnjjmces could not find address algunnombre@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 340 --limit 6 | grep -A5 '\"name\": \"alhasan@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alhasan@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alhasan@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ukfudd1hyknz\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO64ZXP4WjocJ2Lo1yBt3YkwkQ4iPTec2MQgKcMvMy5ANWjAzmLs ukfudd1hyknz coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO64ZXP4WjocJ2Lo1yBt3YkwkQ4iPTec2MQgKcMvMy5ANWjAzmLs ukfudd1hyknz could not find address alhasan@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 341 --limit 6 | grep -A5 '\"name\": \"alhilmi@qtum\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alhilmi@qtum\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alhilmi@qtum found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"q2kiqvbyqzal\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7FEssy3rYGitQoArGYY1Mh73ump5C3hpBfsTaHk6p6BpZuJ3AQ q2kiqvbyqzal qtum account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7FEssy3rYGitQoArGYY1Mh73ump5C3hpBfsTaHk6p6BpZuJ3AQ q2kiqvbyqzal could not find address alhilmi@qtum for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 342 --limit 6 | grep -A5 '\"name\": \"ali@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ali@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ali@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"mmo21tsspx3n\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6yFKqErbjSpaohMB94UPTa1G5KbnMmuWtuMZCSo6HRXirQ7wTN mmo21tsspx3n infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6yFKqErbjSpaohMB94UPTa1G5KbnMmuWtuMZCSo6HRXirQ7wTN mmo21tsspx3n could not find address ali@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 343 --limit 6 | grep -A5 '\"name\": \"ali@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"ali@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " ali@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"pouke15uh52b\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6zjoKDrrm1oB1NJMwHioPXUv4dnFp4EgY5gzM4gxoshP6w2aBA pouke15uh52b ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6zjoKDrrm1oB1NJMwHioPXUv4dnFp4EgY5gzM4gxoshP6w2aBA pouke15uh52b could not find address ali@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 344 --limit 6 | grep -A5 '\"name\": \"alias1995@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alias1995@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alias1995@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"mz3thbyqhy2h\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7TWceQzt3soDgpuSjQv2XEaP5XYnhVDFsoasXPtUA3AKBvKQmj mz3thbyqhy2h infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7TWceQzt3soDgpuSjQv2XEaP5XYnhVDFsoasXPtUA3AKBvKQmj mz3thbyqhy2h could not find address alias1995@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 345 --limit 6 | grep -A5 '\"name\": \"aliasgharghezel@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aliasgharghezel@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aliasgharghezel@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"lrisohww5pzc\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7D26fYEgHvQBhBS5kUjERCmRwHGxLkrhEcPjT3UyUB5Mt5kvM9 lrisohww5pzc coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7D26fYEgHvQBhBS5kUjERCmRwHGxLkrhEcPjT3UyUB5Mt5kvM9 lrisohww5pzc could not find address aliasgharghezel@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 346 --limit 6 | grep -A5 '\"name\": \"alibaba@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alibaba@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alibaba@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"g32n2ofpwxwr\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7Qz7WpnUrSvsFJc7rr4QiBVEwqnWxRjGDKWLrZ56VtK2zsK1is g32n2ofpwxwr ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7Qz7WpnUrSvsFJc7rr4QiBVEwqnWxRjGDKWLrZ56VtK2zsK1is g32n2ofpwxwr could not find address alibaba@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 347 --limit 6 | grep -A5 '\"name\": \"alibozdag83@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alibozdag83@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alibozdag83@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"klqa1jkfh2v5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7w4sZag7stNAszy9yRV4UzKcvGQWJrZCuS6nqkN68niXrH8Vty klqa1jkfh2v5 infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7w4sZag7stNAszy9yRV4UzKcvGQWJrZCuS6nqkN68niXrH8Vty klqa1jkfh2v5 could not find address alibozdag83@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 348 --limit 6 | grep -A5 '\"name\": \"alicardano@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alicardano@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alicardano@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"gsztzslsgvs5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7AsiYeNNMVuoX7JAUrTEe7qL7siWyhLRPh4eES1K1gCibgaSWw gsztzslsgvs5 infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7AsiYeNNMVuoX7JAUrTEe7qL7siWyhLRPh4eES1K1gCibgaSWw gsztzslsgvs5 could not find address alicardano@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 349 --limit 6 | grep -A5 '\"name\": \"alicardanoi@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alicardanoi@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alicardanoi@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"gsztzslsgvs5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7AsiYeNNMVuoX7JAUrTEe7qL7siWyhLRPh4eES1K1gCibgaSWw gsztzslsgvs5 infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7AsiYeNNMVuoX7JAUrTEe7qL7siWyhLRPh4eES1K1gCibgaSWw gsztzslsgvs5 could not find address alicardanoi@infinito for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 350 --limit 6 | grep -A5 '\"name\": \"alice@atomic\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alice@atomic\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alice@atomic found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"zwdwqswlw4o5\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 atomic account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8mopUUy3JPX6EXmovhp9E1jXMHosAL7MeBDcbYi382QQLsjZas zwdwqswlw4o5 could not find address alice@atomic for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 351 --limit 6 | grep -A5 '\"name\": \"alice@trust\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alice@trust\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alice@trust found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"utwgiczlm3w1\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 trust account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO734QLzWtYCSRceRD96o1UqELF8wuC77mK1mYCjVhWptnBcYzAj utwgiczlm3w1 could not find address alice@trust for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 352 --limit 6 | grep -A5 '\"name\": \"aliexpress@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aliexpress@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aliexpress@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"l3kkiyv3bb1r\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO5WZ5p8KjPoU8vHj15xyEsaMvoKMmH3UkZ16ja6Ej9viqVsdFmm l3kkiyv3bb1r ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO5WZ5p8KjPoU8vHj15xyEsaMvoKMmH3UkZ16ja6Ej9viqVsdFmm l3kkiyv3bb1r could not find address aliexpress@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 353 --limit 6 | grep -A5 '\"name\": \"alifrm@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alifrm@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alifrm@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"ei4mzo1mzlif\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO6BMrb5TEfwq426gW57dEsJVasqyons8GXjL2296B2oYnRswxvJ ei4mzo1mzlif coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO6BMrb5TEfwq426gW57dEsJVasqyons8GXjL2296B2oYnRswxvJ ei4mzo1mzlif could not find address alifrm@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 354 --limit 6 | grep -A5 '\"name\": \"aligned@ridl\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aligned@ridl\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aligned@ridl found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"jksmiw4deuvn\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7CBWWYfNBKaE2QmGGcsgpz1VzngXHmKcjVV2e7YSGrEtLnMyin jksmiw4deuvn ridl account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7CBWWYfNBKaE2QmGGcsgpz1VzngXHmKcjVV2e7YSGrEtLnMyin jksmiw4deuvn could not find address aligned@ridl for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 355 --limit 6 | grep -A5 '\"name\": \"aliishaan37@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"aliishaan37@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " aliishaan37@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"qxynmrbdfjzw\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7jURPNWE1tmhg7szKvao2D27reQmR9j1VsLDNSpyCkb1fnWumA qxynmrbdfjzw coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7jURPNWE1tmhg7szKvao2D27reQmR9j1VsLDNSpyCkb1fnWumA qxynmrbdfjzw could not find address aliishaan37@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 356 --limit 6 | grep -A5 '\"name\": \"alikroshati@coinomi\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alikroshati@coinomi\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alikroshati@coinomi found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"o425gnzc5dkj\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO7UEfDaTxMvg7u7bZyaADgpZCZrU38yHS7XdAxQryFNYzmgw4ed o425gnzc5dkj coinomi account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO7UEfDaTxMvg7u7bZyaADgpZCZrU38yHS7XdAxQryFNYzmgw4ed o425gnzc5dkj could not find address alikroshati@coinomi for this account"
fi
count=0
url=200.201.191.227:58888
addrfound=false
while [[ $addrfound = false && $count -le 10 ]] ; do
let count++
           if [ $count -gt 1 ] ; then
               sleep 1
           fi
resultlocked=$(../fio/build/bin/clio -u http://$url get table fio.address fio.address fionames -L 357 --limit 6 | grep -A5 '\"name\": \"alilarrys@infinito\"')

addrfound=false
label1=""
for ln in $resultlocked ; do
    if [[ $ln = "\"name\":" ||
        $ln = "\"namehash\":" ||
        $ln = "\"domain\":" ||
        $ln = "\"domainhash\":" ||
        $ln = "\"expiration\":" ||
        $ln = "\"owner_account\":" ]] ; then
        label1=$ln
    elif [ $label1 = "\"name\":" ] ; then
        if [ $ln == "\"alilarrys@infinito\"," ] ; then
           if [ $count -gt 1 ] ; then
               echo " alilarrys@infinito found on retry"
           fi
           addrfound=true
        fi
    elif [ $label1 = "\"owner_account\":" ] ; then
        if [ $ln != "\"wdmsgpcwpjbb\"," ] ; then
            echo "VERIFICATION FAILURE -- FIO8G3h9cf9ksVSJbVL6DApsQ8NDX9ysr6PDqiFwrqi7Q3h5TqnG6 wdmsgpcwpjbb infinito account not found for this actor "
        fi

    fi
done
done
if [ "$addrfound" = false ] ; then
 echo "VERIFICATION FAILURE --FIO8G3h9cf9ksVSJbVL6DApsQ8NDX9ysr6PDqiFwrqi7Q3h5TqnG6 wdmsgpcwpjbb could not find address alilarrys@infinito for this account"
fi
