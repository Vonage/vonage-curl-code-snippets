#!/usr/bin/env bash

source "../config.sh"

curl "https://rest.nexmo.com/number/search?api_key=$VONAGE_API_KEY&api_secret=$VONAGE_API_SECRET&country=$COUNTRY_CODE&type=$VONAGE_NUMBER_TYPE&features=$VONAGE_NUMBER_FEATURES&pattern=$NUMBER_SEARCH_CRITERIA&search_pattern=$NUMBER_SEARCH_PATTERN"