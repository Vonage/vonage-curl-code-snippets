#!/usr/bin/env bash

source "../config.sh"

curl "https://rest.nexmo.com/account/numbers?api_key=$VONAGE_API_KEY&api_secret=$VONAGE_API_SECRET&pattern=$NUMBER_SEARCH_CRITERIA&search_pattern=$NUMBER_SEARCH_PATTERN"