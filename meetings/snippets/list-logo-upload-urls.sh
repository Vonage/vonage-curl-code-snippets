#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X GET https://api-eu.vonage.com/meetings/themes/logos-upload-urls \
  -H "Authorization: Bearer "$JWT