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
docker build -t history . || exit 1
popd

echo "HOST=${IP}" > .env
echo "running docker-compose down to ensure no leftovers from earlier runs... please wait"
docker-compose down >/dev/null 2>&1
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
echo -e "Done.\n\tdocker compose launched from ./scripts/launch/history/, \n\tto view logs run: 'cd scripts/launch/history; docker-compose logs -f --tail 10'\n"
echo "   ******************************************"
echo "   * History API is available at port 8080  *"
echo "   ******************************************"
echo
