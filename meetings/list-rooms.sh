#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl --X GET \
  --url https://api-eu.vonage.com/meetings/rooms \
  -H "Authorization: Bearer "$JWT