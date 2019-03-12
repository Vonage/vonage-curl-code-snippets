#!/usr/bin/env bash
source "../../config.sh"
source "../../vbc_token.sh"

curl -H "Authorization: Bearer $VBC_TOKEN" \
  https://api.vonage.com/t/vbc.prod/provisioning/api/accounts/$VBC_ACCOUNT_ID/locations/$VBC_LOCATION_ID
