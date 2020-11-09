#!/usr/bin/env bash

source "../config.sh"

curl -X POST -u $VONAGE_API_KEY:$VONAGE_API_SECRET https://api.nexmo.com/accounts/$VONAGE_API_KEY/balance-transfers  \
     -H "Content-Type: application/json"  \
     -d $'{"from":"'$VONAGE_API_KEY'", "to":"'$SUBACCOUNT_KEY'", "amount": '$AMOUNT'}'
