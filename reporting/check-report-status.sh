#!/usr/bin/env bash

source "../config.sh"

curl "https://api.nexmo.com/v1/reports/$REPORT_ID?api_key=$NEXMO_API_KEY&api_secret=$NEXMO_API_SECRET"
