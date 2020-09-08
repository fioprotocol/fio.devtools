#!/usr/bin/env bash

cd $(dirname $0)

# should be set by caller to allow connecting to different machine, but assume it's the local system if that doesn't work ....
IP=$1
[ -z $IP ] && IP=$(curl --connect-timeout=1 -s 169.254.169.254/latest/meta-data/local-ipv4) # get ip from aws metadata
[ -z $IP ] && IP=$(ip route |grep default |head -1 |cut -d' ' -f9) # get first local interface base on default route
[ -z $IP ] && echo "*** could not determine IP address to provide for p2p networking for containers. This is probably an error in the script. ***" && exit 1

PORT=$2
[ -z $PORT ] && PORT=8889
clio="$HOME/fio/$vChoice/bin/clio -u http://${IP}:${PORT}"

$clio get info >/dev/null || exit 1
[ -f $HOME/fio/$vChoice/bin/nodeos ] || { echo "did not find nodeos binarys, giving up" ; kill 0; }

cp $HOME/fio/$vChoice/bin/* ./container/bin/

# create a genesis.json from on-chain data
echo "building genesis.json..."
echo '{"initial_timestamp":'$($clio get block 1 | jq .timestamp)',"initial_key":"'$($clio get account eosio |grep owner |awk '{print $NF}')'","initial_configuration":'$($clio get table eosio eosio global |jq .rows[0] |egrep -v 'last|vote|paid')'}' \
  | sed 's/, }}/}}/g' | jq . > ./container/etc/genesis.json || exit 1

echo "generated the following genesis.json:"
cat ./container/etc/genesis.json

pushd container
docker build -t producer-swarm . || exit 1
popd

# create compose .env file:
LOOP=1
echo "HOST=${IP}" > .env
cat keys.csv | while read key; do
  PRIV=$(echo $key| awk -F, '{print $2}')
  PUB=$(echo $key| awk -F, '{print $3}')
  ACT=$(echo $key| awk -F, '{print $4}')
  AMT=$(echo $key| awk -F, '{print $5}')

  echo "PUB${LOOP}=${PUB}" >> .env
  echo "ACT${LOOP}=${ACT}" >> .env
  echo "PRIV${LOOP}=${PRIV}" >> .env
  LOOP=$(expr $LOOP + 1)
done

echo "running docker-compose down to ensure no leftovers from earlier runs... please wait"
docker-compose down >/dev/null 2>&1

echo
echo "*************************************************************************"
echo "starting 21 producer nodes in 15 seconds, press CTRL-C CTRL-C to abort!!!"
echo "                Press Enter to continue without waiting.                 "
echo "*************************************************************************"
echo
read -t 15
docker-compose up -d || exit 1

echo "waiting for sync to begin"
waiting=0
failed=0
while true; do
  sleep 2
  docker-compose logs --tail 50 |grep -q on_incoming_block && break
  echo "not syncing, continuing to wait"
  waiting=$(expr ${waiting} + 1)
  if [ $waiting -ge 30 ]; then
    [ $failed -ge 3 ] && { echo "containers failed to synchronize. cleaning up and exiting."; docker-compose down; kill 0;}
    echo "*** failed. retrying. ***"
    docker-compose down
    docker-compose up -d
    waiting=0
    failed=$(expr failed + 1)
  fi
done
echo "Started containers:"
echo
docker ps
echo

echo "registering producers:"
sleep 1

keos_pass="$HOME/fio.devtools/walletkey.ini"
if [ ! -f "$keos_pass" ]; then
  echo "Couldn't find keos password!"
  read -p "Please enter path to file with keos password: " keos_pass
  [ -f "$keos_pass" ] || { echo "file not found"; kill 0; }
fi
$clio wallet unlock -n fio --password $(cat $keos_pass)

faucet_wif=5JBbUG5SDpLWxvBKihMeXLENinUzdNKNeozLas23Mj6ZNhz3hLS
pub=""
actor=""
function wif_to_actor() {
  $clio wallet import -n fio --private-key "$faucet_wif"
  pub=$($clio wallet private_keys -n fio --password $(cat $keos_pass) |grep -B 1 $faucet_wif | head -1 | sed 's/\W//g')
  actor=$($clio convert fiokey_to_account $pub)
}

wif_to_actor

if [ -z "$($clio get currency balance fio.token "$actor" FIO)" ] ; then
  echo "default account does not seem to exist!"
  read -p "Please provide a WIF for the account that will initially fund the producers: " faucet_wif
  wif_to_actor
  $clio get currency balance fio.token "$actor" FIO | grep -q FIO || { echo "still no balance found, giving up."; kill 0; }
fi

cat keys.csv | while read key; do
  FIO=$(echo $key| awk -F, '{print $1}')
  PRIV=$(echo $key| awk -F, '{print $2}')
  PUB=$(echo $key| awk -F, '{print $3}')
  ACT=$(echo $key| awk -F, '{print $4}')
  AMT=$(echo $key| awk -F, '{print $5}')
  sleep 0.5

  $clio push action fio.token trnsfiopubky '{"payee_public_key": "'${PUB}'","amount": '${AMT}',"max_fee": 25000000000,"actor": "'${actor}'","tpid": ""}' -p "${actor}"
  $clio push action fio.address regaddress '{"fio_address":"'${FIO}'","owner_fio_public_key":"'${PUB}'","max_fee":"200000000000","actor":"'${actor}'","tpid":""}' -p "${actor}"
  $clio wallet import -n fio --private-key ${PRIV}
  $clio push action eosio regproxy '{"fio_address":"'${FIO}'","actor":"'${ACT}'","max_fee":"4000000000000"}' -p ${ACT}
  $clio push action eosio regproducer '{"fio_address":"'${FIO}'","fio_pub_key":"'${PUB}'","url":"https://dapix.io","location":10,"actor":"'${ACT}'","max_fee":"4000000000000"}' -p ${ACT}
  $clio push action eosio voteproducer '{"producers": ["'${FIO}'"],"fio_address": "'${FIO}'","actor": "'${ACT}'","max_fee": 1000000000}' -p ${ACT}
done

echo
echo -e "Done. docker compose launched from ./scripts/launch/producers/, \nto view logs run: 'cd scripts/launch/producers; docker-compose logs -f --tail 10'"
echo
