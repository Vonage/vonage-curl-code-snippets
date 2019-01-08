#!/usr/bin/env bash
source "../config.sh"

curl "https://rest.nexmo.com/account/get-balance?api_key=$NEXMO_API_KEY&api_secret=$NEXMO_API_SECRET"


