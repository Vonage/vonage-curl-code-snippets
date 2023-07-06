#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl --location --request PUT 'https://api-eu.vonage.com/meetings/themes/{THEME_ID}/finalizeLogos' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer $JWT' \
--data-raw '{
  "keys": [
    "{white-logo-key}",
    "{colored-logo-key}",
    "{favicon-key}"
  ]
}'