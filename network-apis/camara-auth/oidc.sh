#!/usr/bin/env bash

source "../../jwt.sh"

curl -X POST https://api-eu.vonage.com/oauth2/bc-authorize \
  -H 'Authorization: Bearer '$JWT\
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -d 'login_hint='"$PHONE_NUMBER"'' \
  -d 'scope='$SCOPE
