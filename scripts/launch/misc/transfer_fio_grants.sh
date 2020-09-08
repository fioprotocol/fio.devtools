 echo "DANGER DANGER using ed@dapix pub key for testing, replace with correct key"
 echo "reading token transfer fee from the fio blockchain"
feeresult="$(curl --header "Content-Type: application/json" --request post --data '{"end_point":"transfer_tokens_pub_key"}' http://localhost:8889/v1/chain/get_fee)"
feeresult=$(echo $feeresult | cut -d ":" -f2)
feeresult=$(echo $feeresult | cut -d "}" -f1)
echo "fee for xfer is $feeresult" all grants will have this fee deducted.
 echo "reading account balance of grant holder account euwdcp13zlrj from the fio blockchain"
result="$(curl --header "Content-Type: application/json" --request post --data '{"fio_public_key":"FIO8NToQB65dZHv28RXSBBiyMCp55M7FRFw6wf4G3GeRt1VsiknrB"}' http://localhost:8889/v1/chain/get_fio_balance)"
result=$(echo $result | cut -d ":" -f2)
result=$(echo $result | cut -d "}" -f1)
echo "amount in grant holder account is $result"
if [ "$result" -lt "174286203003210389" ] ; then
 echo "not enough funds in grant holder account!!"
  exit 99;
else
  grantamount=sufamount
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to ﻿investor"
  # Transfer grant to  ﻿investor
  #Public key: 'key'
  #FIO Public Address : 'k1wtpsbk3bxi'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'key'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=41437167594583200
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to Access Venture Partners IV L.P."
  # Transfer grant to  Access Venture Partners IV L.P.
  #Public key: 'FIO5iRWoE8ikNCspoTXm1f43QtsnDmpbafHdnhBusX5iJC6RuoUt4'
  #FIO Public Address : 'gqi5et1z1dd2'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO5iRWoE8ikNCspoTXm1f43QtsnDmpbafHdnhBusX5iJC6RuoUt4'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=29253936207100500
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to Dundee Venture Capital Fund III LP"
  # Transfer grant to  Dundee Venture Capital Fund III LP
  #Public key: 'FIO6eVttNFaphxZxe6CFonTyay4Yq4C8ggFK7AN9aQzZk5cJeYjUf'
  #FIO Public Address : 'bzfwaqgxp1io'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO6eVttNFaphxZxe6CFonTyay4Yq4C8ggFK7AN9aQzZk5cJeYjUf'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=21467507985932400
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to Binance Holdings Limited"
  # Transfer grant to  Binance Holdings Limited
  #Public key: 'FIO7xziJh1NbeztJWDyDu5CTAa6JZDvTXMWPHspEqyMtqTYS8uDEj'
  #FIO Public Address : 'plptgzakxyqp'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO7xziJh1NbeztJWDyDu5CTAa6JZDvTXMWPHspEqyMtqTYS8uDEj'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=21259561510193000
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to BOCO Investments LLC"
  # Transfer grant to  BOCO Investments LLC
  #Public key: 'FIO7n6QzEomtJDn1YjpGkihrKpVxzDLuzmUNLth1ap6JCQgZfdNyo'
  #FIO Public Address : 'wlat3kq3iihy'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO7n6QzEomtJDn1YjpGkihrKpVxzDLuzmUNLth1ap6JCQgZfdNyo'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=8408344725779240
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to Michael Perklin"
  # Transfer grant to  Michael Perklin
  #Public key: 'FIO74i39QM2hyXKdmhJzxydK7ciB2WfwKa8pi8XySsJpefKmsKFR3'
  #FIO Public Address : 'ysktedzjdzm2'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO74i39QM2hyXKdmhJzxydK7ciB2WfwKa8pi8XySsJpefKmsKFR3'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=6598657885139540
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to Erik Voorhees"
  # Transfer grant to  Erik Voorhees
  #Public key: 'FIO6TLoqdexVpJQ4CzZVErRsaeQ1RsreYN9ZoL2mQ7FxvzqeLVEu1'
  #FIO Public Address : 'ieatfql4yiwx'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO6TLoqdexVpJQ4CzZVErRsaeQ1RsreYN9ZoL2mQ7FxvzqeLVEu1'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=5366876996483100
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to Blockwall Capital I GmbH & Co. KG"
  # Transfer grant to  Blockwall Capital I GmbH & Co. KG
  #Public key: 'FIO5JggVn7q7Kv8Gn8cRNS4MHsDNabfHmivPxBTKnrZwgTEgGd3hn'
  #FIO Public Address : 'qkw4f4rxmuk3'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO5JggVn7q7Kv8Gn8cRNS4MHsDNabfHmivPxBTKnrZwgTEgGd3hn'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=4702954112102290
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to Pottle Family Partners LLC"
  # Transfer grant to  Pottle Family Partners LLC
  #Public key: 'FIO7KSoZzW6BnQ24xyFg1nnxGAbFH9oZSRZbLm57w3xfFCYi9kMXy'
  #FIO Public Address : 'iojncpmxuxhy'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO7KSoZzW6BnQ24xyFg1nnxGAbFH9oZSRZbLm57w3xfFCYi9kMXy'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=4702954112102290
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to PV Ventures II LP"
  # Transfer grant to  PV Ventures II LP
  #Public key: 'FIO7DiVw7pryiiNARyFEomSrn4CAkm2VpJjryUyMQeHtEvQPtG3ba'
  #FIO Public Address : 'ngpjeolfuiho'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO7DiVw7pryiiNARyFEomSrn4CAkm2VpJjryUyMQeHtEvQPtG3ba'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=4293479930452880
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to NCG Partners Ltd."
  # Transfer grant to  NCG Partners Ltd.
  #Public key: 'FIO7GFztVEJdUbspDqF64xTE5GPgVTf1w8QvKJruF3TMxCwC5MGfe'
  #FIO Public Address : 'smolitek4m1z'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO7GFztVEJdUbspDqF64xTE5GPgVTf1w8QvKJruF3TMxCwC5MGfe'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=3629584129489070
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to Blockchain Technology Investments LLC"
  # Transfer grant to  Blockchain Technology Investments LLC
  #Public key: 'FIO7Eyet1a547ANMzK9xdHVbQzT4ikA6DaFJ2EHTvwftL43yA53o7'
  #FIO Public Address : 'pdxoj55ad3c5'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO7Eyet1a547ANMzK9xdHVbQzT4ikA6DaFJ2EHTvwftL43yA53o7'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=3091301216579350
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to Republic Dapix A Series of Republic Master Fund LP"
  # Transfer grant to  Republic Dapix A Series of Republic Master Fund LP
  #Public key: 'FIO5ddjbS4Z7xVCDEVq2m3ArJFTU69fe1T9xXGnAydXwLwsJzui8N'
  #FIO Public Address : '1r2lq2fxouoj'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO5ddjbS4Z7xVCDEVq2m3ArJFTU69fe1T9xXGnAydXwLwsJzui8N'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=2795766970256290
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to Bnk To The Future FIO SP a Segregated Portfolio of Bnk To The Future Capital SPC"
  # Transfer grant to  Bnk To The Future FIO SP a Segregated Portfolio of Bnk To The Future Capital SPC
  #Public key: 'FIO6igsWLWxfr69HxyyDdCKsXCLEAJcKHPUzKVunX7AGMPyu5YB6Y'
  #FIO Public Address : 'l3eprgkqxwpk'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO6igsWLWxfr69HxyyDdCKsXCLEAJcKHPUzKVunX7AGMPyu5YB6Y'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=2351463514342640
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to Dalton Partners LLC"
  # Transfer grant to  Dalton Partners LLC
  #Public key: 'FIO7wyocoxdZTcTm8eSqHbaj3oDdf3fEXb42Z7JcVowfBLxxaftjZ'
  #FIO Public Address : 'n3nldablzz5y'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO7wyocoxdZTcTm8eSqHbaj3oDdf3fEXb42Z7JcVowfBLxxaftjZ'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=2146739965226440
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to LuneX Ventures LLC"
  # Transfer grant to  LuneX Ventures LLC
  #Public key: 'FIO6DTf2DdWkupDvJ8evJtAetrB1yDHMjTeca37VoScsWYDnkMD2U'
  #FIO Public Address : 'i5z2sux35veb'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO6DTf2DdWkupDvJ8evJtAetrB1yDHMjTeca37VoScsWYDnkMD2U'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=1980745702422740
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to Brian Klemsz"
  # Transfer grant to  Brian Klemsz
  #Public key: 'FIO6CyVYuiqFJdzmqRAhsm1kn2wEsQywCNovq37LCRFJMo34eoFEh'
  #FIO Public Address : 'hfyopipr4yjt'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO6CyVYuiqFJdzmqRAhsm1kn2wEsQywCNovq37LCRFJMo34eoFEh'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=1980745702422740
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to Joseph C. Zimlich"
  # Transfer grant to  Joseph C. Zimlich
  #Public key: 'FIO6c7N2TfLGLsDCyKADThsHZj82Vq2oSL9AYrNAQEPe5eWv2YGgC'
  #FIO Public Address : '2nf1br1o3muj'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO6c7N2TfLGLsDCyKADThsHZj82Vq2oSL9AYrNAQEPe5eWv2YGgC'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=1814778523036030
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to Rockies Venture Fund I L.P."
  # Transfer grant to  Rockies Venture Fund I L.P.
  #Public key: 'FIO7yWV38pTdnGtSKpVNKXpPg9E4dsMHMe86MEk2dWzxvZMFp9XSC'
  #FIO Public Address : 'qwonj3f2bfzh'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO7yWV38pTdnGtSKpVNKXpPg9E4dsMHMe86MEk2dWzxvZMFp9XSC'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=1814778523036030
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to Service Provider Capital Rocky Mountain Fund II LP"
  # Transfer grant to  Service Provider Capital Rocky Mountain Fund II LP
  #Public key: 'FIO5H3az3Jv7uyBoad4qctuZ1sYTpkAMxrdvwDYm8Xp74vDHgMhME'
  #FIO Public Address : 'nrjuozj2cgzo'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO5H3az3Jv7uyBoad4qctuZ1sYTpkAMxrdvwDYm8Xp74vDHgMhME'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=1723128239902120
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to Jon Shapiro"
  # Transfer grant to  Jon Shapiro
  #Public key: 'FIO51wUy4azrmwymzsnmJxfVhc8nVdFpGMSTNAYwZ29X41wbPLmhr'
  #FIO Public Address : 'kenxo31eeidi'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO51wUy4azrmwymzsnmJxfVhc8nVdFpGMSTNAYwZ29X41wbPLmhr'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=1175718215462820
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to Christopher Dalton"
  # Transfer grant to  Christopher Dalton
  #Public key: 'FIO55JKEvs5yquYuGAC2uyg3mmfzcQpzbsSJ38c2qxwDFdDfGPrdm'
  #FIO Public Address : 'sfmpanwi5qe5'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO55JKEvs5yquYuGAC2uyg3mmfzcQpzbsSJ38c2qxwDFdDfGPrdm'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=1175718215462820
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to Oakstwain LLC"
  # Transfer grant to  Oakstwain LLC
  #Public key: 'FIO52MidUYeGRdedgm4s6J6Rh4Bz4eKco6Jxkss4XP6SsErJnhnj9'
  #FIO Public Address : 'lxrxjuf3su1c'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO52MidUYeGRdedgm4s6J6Rh4Bz4eKco6Jxkss4XP6SsErJnhnj9'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=577608034396249
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to Patrick Kanouff"
  # Transfer grant to  Patrick Kanouff
  #Public key: 'FIO5SdjusKqLZKfFctriizuUVkEZLgabBCST4xdtzZSwN9LynB2K1'
  #FIO Public Address : 'cwymv1nrclxs'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO5SdjusKqLZKfFctriizuUVkEZLgabBCST4xdtzZSwN9LynB2K1'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
  grantamount=536684991306610
  grantamount=$(($grantamount - $feeresult ))
  echo "transferring SUF amount $grantamount to Brock Jeffrey Pierce"
  # Transfer grant to  Brock Jeffrey Pierce
  #Public key: 'FIO768m3RPvGbgTpnqxKy8jWPkxCKArwChTDnAiPVMxsQP2UPgW2P'
  #FIO Public Address : '1pxlqdoahjts'
  ./clio -u http://localhost:8889 push action -j fio.token trnsfiopubky '{"payee_public_key": "'FIO768m3RPvGbgTpnqxKy8jWPkxCKArwChTDnAiPVMxsQP2UPgW2P'", "amount": '$grantamount', "max_fee": "40000000000", "actor": "euwdcp13zlrj","tpid":""}' -p euwdcp13zlrj@active
fi
