#!/usr/bin/env bash

source "../config.sh"

curl -X POST -u $API_KEY:$API_SECRET https://api.nexmo.com/accounts/$API_KEY/credit-transfers  \
     -H "Content-Type: application/json"  \
     -d $'{"from":"'$API_KEY'", "to":"'$SUBACCOUNT_KEY'", "amount": '$AMOUNT'}'
