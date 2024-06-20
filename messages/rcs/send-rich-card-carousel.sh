#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST $MESSAGES_API_URL \
     -H "Authorization: Bearer "$JWT \
     -H "Content-Type: application/json" \
     -H "Accept: application/json" \
     -d $'{
  "message_type": "custom",
  "custom": {
    "contentMessage": {
      "richCard": {
        "carouselCard": {
          "cardWidth": "MEDIUM",
          "cardContents": [
            {
              "title": "Option 1: Photo",
              "description": "Do you prefer this photo?",
              "suggestions": [
                {
                  "reply": {
                    "text": "Option 1",
                    "postbackData":"card_1"
                  }
                }
              ],
              "media": {
                "height": "MEDIUM",
                "contentInfo": {
                  "fileUrl": "'$IMAGE_URL'",
                  "forceRefresh": "false"
                }
              }
            },
            {
              "title": "Option 2: Video",
              "description": "Or this video?",
              "suggestions": [
                {
                  "reply": {
                    "text": "Option 2",
                    "postbackData": "card_2"
                  }
                }
              ],
              "media": {
                "height": "MEDIUM",
                "contentInfo": {
                  "fileUrl": "'$VIDEO_URL'",
                  "forceRefresh": "false"
                }
              }
            }
          ]
        }
      }
    }
  },
  "to": "'$TO_NUMBER'",
  "from": "'$RCS_SENDER_ID'",
  "channel": "rcs"
}'
