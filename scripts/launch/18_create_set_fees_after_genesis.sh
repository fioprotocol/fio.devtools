#!/usr/bin/env bash
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"register_fio_domain","type":"0","suf_amount":"800000000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"register_fio_address","type":"0","suf_amount":"40000000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"renew_fio_domain","type":"0","suf_amount":"800000000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"renew_fio_address","type":"0","suf_amount":"40000000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"submit_fee_ratios","type":"0","suf_amount":"1000000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"submit_fee_multiplier","type":"0","suf_amount":"1000000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"submit_bundled_transaction","type":"0","suf_amount":"1000000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"add_bundled_transactions","type":"0","suf_amount":"40000000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"transfer_tokens_fio_add","type":"1","suf_amount":"3000000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"add_pub_address","type":"1","suf_amount":"600000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"transfer_locked_tokens","type":"0","suf_amount":"2000000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"remove_pub_address","type":"1","suf_amount":"600000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"remove_all_pub_addresses","type":"1","suf_amount":"600000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"transfer_tokens_pub_key","type":"0","suf_amount":"2000000000"}' --permission fio.fee@active
#FIP-38 begin new_fio_chain_account
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"new_fio_chain_account","type":"0","suf_amount":"2000000000"}' --permission fio.fee@active
#FIP-38 end
#FIP-39 begin update_encrypt_key
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"update_encrypt_key","type":"1","suf_amount":"40000000000"}' --permission fio.fee@active
#FIP-39 end
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"new_funds_request","type":"1","suf_amount":"1200000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"reject_funds_request","type":"1","suf_amount":"600000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"cancel_funds_request","type":"1","suf_amount":"600000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"record_obt_data","type":"1","suf_amount":"1200000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"set_fio_domain_public","type":"0","suf_amount":"600000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"register_producer","type":"0","suf_amount":"200000000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"register_proxy","type":"0","suf_amount":"20000000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"unregister_proxy","type":"0","suf_amount":"400000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"burn_fio_address","type":"1","suf_amount":"400000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"transfer_fio_domain","type":"0","suf_amount":"1000000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"transfer_fio_address","type":"0","suf_amount":"1000000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"unregister_producer","type":"0","suf_amount":"400000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"proxy_vote","type":"1","suf_amount":"600000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"vote_producer","type":"1","suf_amount":"600000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"auth_delete","type":"0","suf_amount":"400000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"auth_link","type":"0","suf_amount":"400000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"auth_update","type":"0","suf_amount":"1000000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"msig_propose","type":"0","suf_amount":"1000000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"msig_approve","type":"0","suf_amount":"400000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"msig_unapprove","type":"0","suf_amount":"400000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"msig_cancel","type":"0","suf_amount":"400000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"msig_exec","type":"0","suf_amount":"400000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"msig_invalidate","type":"0","suf_amount":"400000000"}' --permission fio.fee@active

./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"wrap_fio_tokens","type":"0","suf_amount":"304804402"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"wrap_fio_domain","type":"0","suf_amount":"304804402"}' --permission fio.fee@active

./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"add_nft","type":"1","suf_amount":"600000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"remove_nft","type":"1","suf_amount":"600000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"remove_all_nfts","type":"1","suf_amount":"1200000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"stake_fio_tokens","type":"1","suf_amount":"3000000000"}' --permission fio.fee@active
./clio -u http://localhost:8879 push action -f fio.fee createfee '{"end_point":"unstake_fio_tokens","type":"1","suf_amount":"3000000000"}' --permission fio.fee@active

./clio -u http://localhost:8889 push action -f fio.fee createfee '{"end_point":"list_domain","type":"0","suf_amount":"2000000000"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action -f fio.fee createfee '{"end_point":"cancel_list_domain","type":"0","suf_amount":"1000000000"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action -f fio.fee createfee '{"end_point":"buy_domain","type":"0","suf_amount":"2000000000"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action -f fio.fee createfee '{"end_point":"set_marketplace_config","type":"0","suf_amount":"500000000"}' --permission fio.fee@active

./clio -u http://localhost:8889 push action -f fio.fee createfee '{"end_point":"register_fio_domain_address","type":"0","suf_amount":"800000000000"}' --permission fio.fee@active
#FIP-40 fees
./clio -u http://localhost:8889 push action -f fio.fee createfee '{"end_point":"add_fio_permission","type":"0","suf_amount":"514287432"}' --permission fio.fee@active
# for perf testing only ./clio -u http://localhost:8889 push action -f fio.fee createfee '{"end_point":"add_fio_permission","type":"0","suf_amount":"0"}' --permission fio.fee@active
./clio -u http://localhost:8889 push action -f fio.fee createfee '{"end_point":"remove_fio_permission","type":"0","suf_amount":"212354321"}' --permission fio.fee@active

