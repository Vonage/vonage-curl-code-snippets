#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl -X POST 'https://s3.amazonaws.com/roomservice-whitelabel-logos-prod' \
  --H 'Content-Type: multipart/form-data' \
  -F 'Content-Type="image/png"' \
  -F 'key="auto-expiring-temp/logos/white/a2ef0569-7d2c-4297-b0dd-1af6d8b61be6"' \
  -F 'logoType="white"' \
  -F 'bucket="roomservice-whitelabel-logos-prod"' \
  -F 'X-Amz-Algorithm="AWS4-HMAC-SHA256"' \
  -F 'X-Amz-Credential="ASIA5NAYMMB6AP63DGBW/20220410/us-east-1/s3/aws4_request"' \
  -F 'X-Amz-Date="20220410T194523Z"' \
  -F 'X-Amz-Security-Token="XXXXX"' \
  -F 'Policy="XXXXX"' \
  -F 'X-Amz-Signature="fcb46c1adfa98836f0533aadebedc6fb1edbd90aa583f3264c0ae5bb63d83123"' \
  -F 'file=@"{PATH_TO_FILE}"'