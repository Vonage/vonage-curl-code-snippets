#!/usr/bin/env bash

source "../config.sh"

curl -X POST -u $NEXMO_API_KEY:$NEXMO_API_SECRET https://api.nexmo.com/accounts/$NEXMO_API_KEY/balance-transfers  \
     -H "Content-Type: application/json"  \
     -d $'{"from":"'$NEXMO_API_KEY'", "to":"'$SUBACCOUNT_KEY'", "amount": '$AMOUNT'}'
