#!/usr/bin/env bash
source "../config.sh"

curl -X POST "https://rest.nexmo.com/account/settings?api_key=$NEXMO_API_KEY&api_secret=$NEXMO_API_SECRET" \
    -d moCallBackUrl=$SMS_CALLBACK_URL


