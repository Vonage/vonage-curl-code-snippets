#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X PATCH "${GEOSPECIFIC_MESSAGES_API_URL}/${MESSAGES_MESSAGE_ID}" \
  -H "Authorization: Bearer ${JWT}"\
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{"status": "read"}'
