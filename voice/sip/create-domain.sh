#!/usr/bin/env bash
source "../../config.sh"

MY_IP_ADDRESS=$(curl ifconfig.co)

curl --fail-with-body -X POST -H "Content-Type: application/json" \
    -d '{"name": "'$SIP_DOMAIN'", "application_id": "'$VONAGE_APPLICATION_ID'", "acl": ["'$MY_IP_ADDRESS'"], "srtp": "optional", "tls": "optional", "digest_auth": false}' \
    https://api.nexmo.com/v1/psip -u $VONAGE_API_KEY:$VONAGE_API_SECRET
