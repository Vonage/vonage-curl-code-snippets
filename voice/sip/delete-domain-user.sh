#!/usr/bin/env bash
source "../../config.sh"

curl --fail-with-body -X DELETE \
  https://api.nexmo.com/v1/psip/$SIP_DOMAIN/users/$SIP_USER_ID \
  -u $VONAGE_API_KEY:$VONAGE_API_SECRET
