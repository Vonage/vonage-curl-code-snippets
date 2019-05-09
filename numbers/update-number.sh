#!/usr/bin/env bash

source "../config.sh"

curl -X POST \
  "https://rest.nexmo.com/number/update?api_key=$NEXMO_API_KEY&api_secret=$NEXMO_API_SECRET" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "country=$COUNTRY_CODE&msisdn=$NEXMO_NUMBER&moHttpUrl=$SMS_CALLBACK_URL" \
  -d "&messagesCallbackType=app&messagesCallbackValue=$MESSAGES_APPLICATION_ID" \
  -d "&voiceCallbackType=$VOICE_CALLBACK_TYPE&voiceCallbackValue=$VOICE_CALLBACK_VALUE&voiceStatusCallback=$VOICE_STATUS_URL"