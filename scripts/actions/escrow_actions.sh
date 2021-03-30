#!/usr/bin/env bash

choice=0

clio wallet unlock -n fio --password PW5JqoYaBm2Xsv7VNwXLR3ArpycLYWiTo2vNC2vXcM3reL5Xnue4B

while [ $choice -ne "99" ]; do
  read -p $'
1. Set Holder Account
2. Set Marketplace Config
3. Remove Marketplace Config
4. Change Settings
5. List Domains
6. Remove Domains
7. Buy Domains
8. Cancel All Domain Sales
9. Toggle E-Break
10. Run Suite
99. Quit
Choose(#):' choice

# clio -u http://localhost:8889 push action eosio addaction '{"action":"setmkpebreak","contract":"fio.escrow","actor":"eosio"}' --permission eosio

  if [ $choice == 1 ]; then
    # region Set holder account
    clio -u http://localhost:8889 push action fio.escrow sethldacct '{
		"public_key":"FIO6WTy7KBarFzVbhmwDuR1BbV33QVpuEZirvfwsHBUZ1b4aGrJNm",
		"actor": "fio.escrow"
    "max_fee": 1000000000,
    "tpid": ""
		}' -p fio.escrow@active
		# endregion
  elif [ $choice == 2 ]; then
    # region set initial marketplace config
    # echo 'Creating marketplace called "marketplace" with a commission fee of 15% and a flat 5FIO listing fee'
    clio -u http://localhost:8889 push action fio.escrow setmrkplcfg '{
      "marketplace": "eosblocksmith",
      "owner": "5ufabtv13hv4",
      "owner_public_key": "FIO77rFFByyLycsrbC5tH1CXqddZdgkDuTYDbCc2BoGp5hdnU59f7",
      "commissionfee": 22,
      "listingfee": 15,
      "e_break": "0",
      "actor": "5ufabtv13hv4",
      "max_fee": 20000000,
      "tpid": ""
    }' -p 5ufabtv13hv4@active
    # endregion
  elif [ $choice == 3 ]; then
    # region remove marketplace
    clio -u http://localhost:8889 push action fio.escrow rmmrkplcfg '{
      "actor":"5ufabtv13hv4",
      "marketplace":"eosblocksmith",
      "max_fee": 1000000000,
      "tpid": ""
		}' -p 5ufabtv13hv4@active
		# endregion
  elif [ $choice == 4 ]; then
    # region Change Settings
    clio -u http://localhost:8889 push action fio.escrow setmkpcomfee '{
      "actor":"5ufabtv13hv4",
      "fee": 3,
      "max_fee": "1000000000",
      "tpid": ""
		}' -p 5ufabtv13hv4@active

    clio -u http://localhost:8889 push action fio.escrow setmkplstfee '{
      "actor":"5ufabtv13hv4",
      "fee": "5000000000",
      "max_fee": "1000000000",
      "tpid": ""
		}' -p 5ufabtv13hv4@active

		# endregion
  elif [ $choice == 5 ]; then
    # region list domains for sale
    echo 'listing domains for sale'
    clio -u http://localhost:8889 push action fio.escrow listdomain '{
      "actor": "wjeo4abnk4c2",
      "fio_domain": "awesome",
      "sale_price": "300000000000",
      "max_fee": 1,
      "tpid": ""
    }' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow listdomain '{
      "actor": "wjeo4abnk4c2",
      "fio_domain": "thomas",
      "sale_price": "49000000000",
      "max_fee": 1,
      "tpid": ""
    }' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow listdomain '{
      "actor":"wjeo4abnk4c2",
      "fio_domain":"blah",
      "sale_price":"88000000000",
      "max_fee":1,
      "tpid":""
    }' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow listdomain '{
      "actor":"wjeo4abnk4c2",
      "fio_domain":"doctor",
      "sale_price":"444000000000",
      "max_fee":1,
      "tpid":""
    }' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow listdomain '{
      "actor":"wjeo4abnk4c2",
      "fio_domain":"anchor",
      "sale_price":"180000000000",
      "max_fee":1,
      "tpid":""
    }' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow listdomain '{
      "actor":"wjeo4abnk4c2",
      "fio_domain":"le",
      "sale_price":"100000000000",
      "max_fee":1,
      "tpid":""
    }' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow listdomain '{
      "actor":"wjeo4abnk4c2",
      "fio_domain":"thor",
      "sale_price":"186000000000",
      "max_fee":1,
      "tpid":""
    }' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow listdomain '{
      "actor":"wjeo4abnk4c2",
      "fio_domain":"marvel",
      "sale_price":"256000000000",
      "max_fee":1,
      "tpid":""
    }' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow listdomain '{
      "actor":"wjeo4abnk4c2",
      "fio_domain":"google",
      "sale_price":"123000000000",
      "max_fee":1,
      "tpid":""
    }' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow listdomain '{
      "actor":"wjeo4abnk4c2",
      "fio_domain":"domain1",
      "sale_price":"3000000000000",
      "max_fee":1,
      "tpid":""
    }' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow listdomain '{
      "actor":"wjeo4abnk4c2",
      "fio_domain":"domain2",
      "sale_price":"3000000000000",
      "max_fee":1,
      "tpid":""
    }' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow listdomain '{
      "actor":"wjeo4abnk4c2",
      "fio_domain":"domain3",
      "sale_price":"3000000000000",
      "max_fee":1,
      "tpid":""
    }' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow listdomain '{
      "actor":"wjeo4abnk4c2",
      "fio_domain":"domain4",
      "sale_price":"3000000000000",
      "max_fee":1,
      "tpid":""
    }' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow listdomain '{
      "actor":"wjeo4abnk4c2",
      "fio_domain":"domain5",
      "sale_price":"3000000000000",
      "max_fee":1,
      "tpid":""
    }' -p wjeo4abnk4c2@active
    #endregion
  elif [ $choice == 6 ]; then
    #region  'removing listings'
    clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{
      "actor":"wjeo4abnk4c2",
      "fio_domain":"thomas"
      "max_fee":1,
      "tpid":""
    }' -p wjeo4abnk4c2@active
    #endregion
  elif [ $choice == 7 ]; then
    #region 'buying domain'
    clio -u http://localhost:8889 push action fio.escrow buydomain '{
      "actor":"g4oc1qkysew2",
      "sale_id": 1,
      "fio_domain":"anchor",
      "buy_price":180000000000,
      "max_fee":1,
      "tpid":""
     }' -p g4oc1qkysew2@active
    #endregion
  elif [ $choice == 8 ]; then
    # region Cancel All Domain
    clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"awesome"}' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"thomas"}' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"blah"}' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"doctor"}' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"anchor"}' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"domain1"}' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"domain2"}' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"domain3"}' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{"actor":"wjeo4abnk4c2", "fio_domain":"domain4"}' -p wjeo4abnk4c2@active
    # endregion
  elif [ $choice == 9 ]; then
    #region set ebreak
    clio -u http://localhost:8889 push action fio.escrow setmkpebreak '{
      "actor":"5ufabtv13hv4",
      "max_fee": "1000000000",
      "tpid": ""
		}' -p fio.escrow@active
		#endregion
  elif [ $choice == 10 ]; then
    # region Test Suite
    # Set Holder Account
    clio -u http://localhost:8889 push action fio.escrow sethldacct '{
		"public_key":"FIO6WTy7KBarFzVbhmwDuR1BbV33QVpuEZirvfwsHBUZ1b4aGrJNm",
		"actor": "fio.escrow"
    "max_fee": 1000000000,
    "tpid": ""
		}' -p fio.escrow@active
    # Set Config
    clio -u http://localhost:8889 push action fio.escrow setmkpcomfee '{
      "actor":"5ufabtv13hv4",
      "fee": 6,
      "max_fee": "1000000000",
      "tpid": ""
		}' -p 5ufabtv13hv4@active
    clio -u http://localhost:8889 push action fio.escrow setmkplstfee '{
      "actor":"5ufabtv13hv4",
      "fee": "3000000000",
      "max_fee": "1000000000",
      "tpid": ""
		}' -p 5ufabtv13hv4@active
    # List 3 Domains
        clio -u http://localhost:8889 push action fio.escrow listdomain '{
      "actor":"wjeo4abnk4c2",
      "fio_domain":"domain3",
      "sale_price":"3000000000000",
      "max_fee":1,
      "tpid":""
    }' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow listdomain '{
      "actor":"wjeo4abnk4c2",
      "fio_domain":"domain4",
      "sale_price":"3000000000000",
      "max_fee":1,
      "tpid":""
    }' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow listdomain '{
      "actor":"wjeo4abnk4c2",
      "fio_domain":"domain5",
      "sale_price":"3000000000000",
      "max_fee":1,
      "tpid":""
    }' -p wjeo4abnk4c2@active
    # Cancel 2 domains
    clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{
      "actor":"wjeo4abnk4c2",
      "fio_domain":"domain3"
      "max_fee":1,
      "tpid":""
    }' -p wjeo4abnk4c2@active
    clio -u http://localhost:8889 push action fio.escrow cxlistdomain '{
      "actor":"wjeo4abnk4c2",
      "fio_domain":"domain5"
      "max_fee":1,
      "tpid":""
    }' -p wjeo4abnk4c2@active
    # Purchase 1 Domain
    clio -u http://localhost:8889 push action fio.escrow buydomain '{
      "actor":"g4oc1qkysew2",
      "sale_id": 2,
      "fio_domain":"domain4",
      "buy_price":3000000000000,
      "max_fee":1,
      "tpid":""
     }' -p g4oc1qkysew2@active
    #endregion
  fi
done

exit 1
