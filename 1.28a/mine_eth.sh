#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=ethash.unmineable.com:3333
WALLET=BTT:TLzdLSXnrZrBWu2R5CWpatknLbW2w6Q6tR.lolMinerWorker

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
done
