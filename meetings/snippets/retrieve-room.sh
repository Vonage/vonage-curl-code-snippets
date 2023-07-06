#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl --X GET \
  --url "https://api-eu.vonage.com/meetings/rooms/"$ROOM_ID \
  -H "Authorization: Bearer "$JWT