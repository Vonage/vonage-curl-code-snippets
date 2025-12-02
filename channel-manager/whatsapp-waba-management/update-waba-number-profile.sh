#!/usr/bin/env bash

source "../../config.sh"

curl -X PATCH https://api.nexmo.com/v1/channel-manager/whatsapp/wabas/${CHANNEL_MANAGER_WABA_ID}/numbers/${CHANNEL_MANAGER_WABA_NUMBER}/profile \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "about": "About my business",
    "address": "123 Main Street, Anytown, USA",
    "description": "Description of my business",
    "email": "bob@example.com",
    "profile_picture_url": "https://example.com/profile.png",
    "websites": [
        "https://example.com",
        "https://example.org"
    ],
    "vertical": "OTHER"
    }'
