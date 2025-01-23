#!/usr/bin/env bash

source "../config.sh"

curl -X "POST" "https://api.nexmo.com/accounts/$VONAGE_API_KEY/credit-transfers" -u $VONAGE_API_KEY:$VONAGE_API_SECRET   \
     -H "Content-Type: application/json"  \
     -d $'{"from":"'$VONAGE_API_KEY'", "to":"'$SUBACCOUNT_KEY'", "amount": '$AMOUNT'}'
