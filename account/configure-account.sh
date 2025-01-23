#!/usr/bin/env bash
source "../config.sh"

curl -X POST "https://rest.nexmo.com/account/settings" -u "$VONAGE_API_KEY:$VONAGE_API_SECRET" \
    -d "moCallBackUrl=$ACCOUNT_SMS_CALLBACK_URL"
