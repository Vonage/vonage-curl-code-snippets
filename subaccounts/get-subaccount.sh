#!/usr/bin/env bash

source "../config.sh"

curl "https://api.nexmo.com/accounts/$VONAGE_API_KEY/subaccounts/$SUBACCOUNT_KEY" -u $VONAGE_API_KEY:$VONAGE_API_SECRET
