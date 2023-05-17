#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl --X POST \
  --url https://api.nexmo.com/v2/verify \
  -H "Authorization: Bearer "$JWT\
  -H 'Content-Type: application/json' \
  -d '{
	 "brand": "ACME, Inc",
   "workflow": [
      {
         "channel": "silent_auth",
         "to": 447738066610
      },
			{
         "channel": "email",
         "to": "alice@company.com"
		 		 "from": "bob@company.com"
      }
   ]
}'