#!/usr/bin/env bash

source "../config.sh"

curl "https://api.nexmo.com/beta/audit/events?search_text=$SEARCH_TEXT&date_from=$DATE_FROM&date_to=$DATE_TO" \
     -u "$VONAGE_API_KEY:$VONAGE_API_SECRET"
