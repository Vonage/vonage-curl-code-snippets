#!/usr/bin/env bash
source "../../config.sh"

curl --fail-with-body -X PUT -H "Content-Type: application/json" \
  -d '{"name": "'$SIP_DOMAIN'", "application_id": "'$VONAGE_APPLICATION_ID \
  '", "acl": ["0.0.0.0/0"], "tls": "always", "srtp": "never", "digest_auth": true}' \
  https://api.nexmo.com/v1/psip/$SIP_DOMAIN -u $VONAGE_API_KEY:$VONAGE_API_SECRET
