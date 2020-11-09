#!/usr/bin/env bash

source "../config.sh"

curl -X GET -u $VONAGE_API_KEY:$VONAGE_API_SECRET https://api.nexmo.com/accounts/$VONAGE_API_KEY/subaccounts
