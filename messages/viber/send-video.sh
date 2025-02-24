#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST "${MESSAGES_API_URL}" \
  -H "Authorization: Bearer ${JWT}"\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
    "to": "'${MESSAGES_TO_NUMBER}'",
    "from": "'${VIBER_SENDER_ID}'",
    "channel": "viber_service",
    "message_type": "video",
    "video": {
      "url": "'${MESSAGES_VIDEO_URL}'",
      "thumb_url": "'${MESSAGES_IMAGE_URL}'"
    },
    "viber_service": {
      "duration": "'${MESSAGES_VIDEO_DURATION}'",
      "file_size": "'${MESSAGES_VIDEO_FILE_SIZE}'"
    }
  }'
