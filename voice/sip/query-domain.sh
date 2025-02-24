#!/usr/bin/env bash
source "../../config.sh"

curl --fail-with-body -X GET \
  https://api.nexmo.com/v1/psip/$SIP_DOMAIN \
  -u $VONAGE_API_KEY:$VONAGE_API_SECRET
