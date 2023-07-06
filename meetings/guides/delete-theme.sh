#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl --location --request DELETE 'https://api-eu.vonage.com/meetings/themes/{THEME_ID}?force=true'