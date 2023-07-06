#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl --location --request PUT 'https://api-eu.vonage.com/meetings/themes/e8b1d80b-8f78-4578-94f2-328596e01387/finalizeLogos' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer $JWT' \
--data-raw '{
  "keys": [
    "{white-logo-key}",
    "{colored-logo-key}",
    "{favicon-key}"
  ]
}'