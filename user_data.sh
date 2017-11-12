#!/bin/bash


apt-get update
apt-get install -y software-properties-common
add-apt-repository -y ppa:ethereum/ethereum
apt-get update
apt-get install -y geth


echo "geth geth --networkid 3 --testnet --mine --minerthreads=1 --light --etherbase=0x9a2fda372fef222fea6b3dad2948a0d99bdc3004 > /var/log/geth.log & " > /etc/rc.local

bash /etc/rc.local
