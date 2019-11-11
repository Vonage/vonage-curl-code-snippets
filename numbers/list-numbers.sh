#!/usr/bin/env bash

source "../config.sh"

curl "https://rest.nexmo.com/account/numbers?api_key=$NEXMO_API_KEY&api_secret=$NEXMO_API_SECRET&pattern=$NUMBER_SEARCH_CRITERIA&search_pattern=$NUMBER_SEARCH_PATTERN"