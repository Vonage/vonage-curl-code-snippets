#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST https://api-eu.vonage.com/oauth2/token \
  --header "Authorization: Bearer $JWT" \
  --header "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "auth_req_id=$VNA_AUTH_REQ_ID" \
  --data-urlencode "grant_type=urn:openid:params:grant-type:ciba"
