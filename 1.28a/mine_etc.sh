#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=etchash.unmineable.com:3333
WALLET=BTT:TLzdLSXnrZrBWu2R5CWpatknLbW2w6Q6tR.lolMinerWorker

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETCHASH --pool $POOL --user $WALLET $@
