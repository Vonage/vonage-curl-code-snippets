#!/usr/bin/env bash
source "../config.sh"

curl "https://rest.nexmo.com/account/get-balance?api_key=$VONAGE_API_KEY&api_secret=$VONAGE_API_SECRET"


