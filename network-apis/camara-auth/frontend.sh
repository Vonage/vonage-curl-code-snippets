#!/usr/bin/env bash

source "../../jwt.sh"

curl -X POST https://api-eu.vonage.com/oauth2/token \
  -H 'Authorization: Bearer '$JWT\
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -d 'code='$AUTH_CODE \
  -d 'redirect_uri='$REDIRECT_URI \
  -d 'grant_type: authorization_code'
