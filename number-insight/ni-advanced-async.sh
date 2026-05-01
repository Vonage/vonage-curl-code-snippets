#!/usr/bin/env bash

source "../config.sh"

curl \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  "https://api.nexmo.com/ni/advanced/async/json?number=$INSIGHT_NUMBER&callback=$INSIGHT_CALLBACK_URL"
