#!/usr/bin/env bash
source "../../config.sh"
source "../../vbc_token.sh"

curl -H "Authorization: Bearer $VBC_TOKEN" \
  https://api.entva0.qa.vonagenetworks.net/t/carbon.qa7/provisioning/developer/1.10.1/api/accounts/$VBC_ACCOUNT_ID/extensions/$VBC_EXTENSION
