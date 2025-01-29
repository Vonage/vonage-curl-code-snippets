#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X POST "https://api.nexmo.com/v2/verify" \
  -H "Authorization: Bearer $JWT"\
  -H 'Content-Type: application/json' \
  -d $'{
	 "brand": "'$VERIFY_BRAND_NAME'",
   "workflow": [
      {
         "channel": "silent_auth",
         "to": "'$VERIFY_NUMBER'"
      },
			{
         "channel": "email",
         "to": "'$VERIFY_EMAIL_TO'"
      }
   ]
}'