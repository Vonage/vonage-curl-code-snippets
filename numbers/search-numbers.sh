#!/usr/bin/env bash

source "../config.sh"

curl \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  "https://rest.nexmo.com/number/search?country=$COUNTRY_CODE&type=$VONAGE_NUMBER_TYPE&features=$VONAGE_NUMBER_FEATURES&pattern=$NUMBER_SEARCH_CRITERIA&search_pattern=$NUMBER_SEARCH_PATTERN"