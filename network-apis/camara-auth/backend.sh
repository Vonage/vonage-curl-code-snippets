#!/usr/bin/env bash

source "../../jwt.sh"
source "oidc.sh"

curl -X POST https://api-eu.vonage.com/oauth2/token \
  -H 'Authorization: Bearer '$JWT\
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -d 'auth_req_id='"$AUTH_REQ_ID"'' \
  -d 'grant_type=urn:openid:params:grant-type:ciba'
