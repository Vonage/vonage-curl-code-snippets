#!/usr/bin/env bash

source "../config.sh"

curl -o ./report.zip "$REPORT_URL?api_key=$NEXMO_API_KEY&api_secret=$NEXMO_API_SECRET"
