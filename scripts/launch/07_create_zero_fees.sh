#!/usr/bin/env bash

#echo setting all fees to zero.
./clio -u http://localhost:8879 push action fio.fee createfee '{"end_point":"register_fio_domain","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action fio.fee createfee '{"end_point":"register_fio_address","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action fio.fee createfee '{"end_point":"renew_fio_domain","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action fio.fee createfee '{"end_point":"renew_fio_address","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action fio.fee createfee '{"end_point":"add_pub_address","type":"1","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action fio.fee createfee '{"end_point":"burn_fio_address","type":"1","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action fio.fee createfee '{"end_point":"transfer_fio_domain","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action fio.fee createfee '{"end_point":"transfer_fio_address","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action fio.fee createfee '{"end_point":"transfer_tokens_pub_key","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action fio.fee createfee '{"end_point":"new_funds_request","type":"1","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action fio.fee createfee '{"end_point":"reject_funds_request","type":"1","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action fio.fee createfee '{"end_point":"record_obt_data","type":"1","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"set_fio_domain_public","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"register_producer","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"register_proxy","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"unregister_proxy","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"unregister_producer","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"proxy_vote","type":"1","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"vote_producer","type":"1","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"submit_bundled_transaction","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"auth_delete","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"auth_link","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"auth_update","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"msig_propose","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"msig_approve","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"msig_unapprove","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"msig_cancel","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"msig_exec","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"msig_invalidate","type":"0","suf_amount":"0"}' --permission fio.fee@active

./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"list_domain","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"cancel_list_domain","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"buy_domain","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"set_marketplace_config","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"remove_marketplace_config","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"set_holder_account","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"set_marketplace_commission_fee","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action fio.fee createfee '{"end_point":"set_marketplace_listing_fee","type":"0","suf_amount":"0"}' --permission fio.fee@active
