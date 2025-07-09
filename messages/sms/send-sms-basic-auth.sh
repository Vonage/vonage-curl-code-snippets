#!/usr/bin/env bash

source "../../config.sh"

curl -X POST https://api.nexmo.com/v1/messages \
	-u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
	-H 'Content-Type: application/json' \
	-H 'Accept: application/json' \
	-d $'{
		"to": "'${MESSAGES_TO_NUMBER}'",
		"from": "'${SMS_SENDER_ID}'",
		"channel": "sms",
		"message_type": "text",
		"text": "This is an SMS sent using the Vonage Messages API."
	}'
