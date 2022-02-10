#!/bin/bash

../fio/build/bin/clio -u http://localhost:8889 push action -f fio.fee createfee '{"end_point":"list_domain","type":"0","suf_amount":"321768535"}' --permission fio.fee@active

../fio/build/bin/clio -u http://localhost:8889 push action -f fio.fee createfee '{"end_point":"cancel_list_domain","type":"0","suf_amount":"162975491"}' --permission fio.fee@active

../fio/build/bin/clio -u http://localhost:8889 push action -f fio.fee createfee '{"end_point":"buy_domain","type":"0","suf_amount":"162975491"}' --permission fio.fee@active

../fio/build/bin/clio -u http://localhost:8889 push action -f fio.fee createfee '{"end_point":"set_marketplace_config","type":"0","suf_amount":"162975491"}' --permission fio.fee@active

