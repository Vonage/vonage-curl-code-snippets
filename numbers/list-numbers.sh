#!/usr/bin/env bash

source "../config.sh"

curl \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  "https://rest.nexmo.com/account/numbers?pattern=$NUMBER_SEARCH_CRITERIA&search_pattern=$NUMBER_SEARCH_PATTERN"