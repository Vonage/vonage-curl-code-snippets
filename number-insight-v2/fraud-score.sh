#!/usr/bin/env bash
source "../config.sh"

curl "https://api.nexmo.com/v2/ni" \
    -u "$VONAGE_API_KEY:$VONAGE_API_SECRET"\
    -H 'Content-Type: application/json' \
    -d '{
        "type": "phone",
        "phone": "'$INSIGHT_NUMBER'",
        "insights": [
            "fraud_score"
        ]
    }'
