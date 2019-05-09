#!/usr/bin/env bash

source "../config.sh"

curl "https://rest.nexmo.com/number/search?api_key=$NEXMO_API_KEY&api_secret=$NEXMO_API_SECRET&country=$COUNTRY_CODE&type=$NEXMO_NUMBER_TYPE&features=$NEXMO_NUMBER_FEATURES&pattern=$NUMBER_SEARCH_CRITERIA&search_pattern=$NUMBER_SEARCH_PATTERN"