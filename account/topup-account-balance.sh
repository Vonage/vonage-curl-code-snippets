#!/usr/bin/env bash
source "../config.sh"

curl -X POST "https://rest.nexmo.com/account/top-up?api_key=$NEXMO_API_KEY&api_secret=$NEXMO_API_SECRET" \
     -H "Content-Type: application/x-www-form-urlencoded"
     -d $'{"trx":"TRX_ID"}'


