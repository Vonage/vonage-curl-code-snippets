#!/usr/bin/env bash
source "../../config.sh"

curl -X PUT -H "Content-Type: application/json" \
    -d '{"name": "'$SIP_DOMAIN'", "application_id": "'$VONAGE_APPLICATION_ID'", "acl": ["188.180.180.180", "77.77.77.0/24"]}' \
    https://api.nexmo.com/v1/psip/$SIP_DOMAIN -u $VONAGE_API_KEY:$VONAGE_API_SECRET
