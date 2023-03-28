#!/usr/bin/env bash
source "../../config.sh"

curl --fail-with-body -X PUT -H "Content-Type: application/json" \
    -d '{"key": "'$SIP_USER_ID'", "secret": "SUP3R 53CUR3.P455W02D}' \
    https://api.nexmo.com/v1/psip/$SIP_DOMAIN/users/$SIP_USER_ID -u $VONAGE_API_KEY:$VONAGE_API_SECRET
