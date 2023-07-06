#!/usr/bin/env bash
source "../config.sh"
source "../jwt.sh"

curl --location --request POST 'https://s3.amazonaws.com/roomservice-whitelabel-logos-prod' \
  --header 'Content-Type: multipart/form-data' \
  --form 'Content-Type="image/png"' \
  --form 'key="auto-expiring-temp/logos/white/a2ef0569-7d2c-4297-b0dd-1af6d8b61be6"' \
  --form 'logoType="white"' \
  --form 'bucket="roomservice-whitelabel-logos-prod"' \
  --form 'X-Amz-Algorithm="AWS4-HMAC-SHA256"' \
  --form 'X-Amz-Credential="ASIA5NAYMMB6AP63DGBW/20220410/us-east-1/s3/aws4_request"' \
  --form 'X-Amz-Date="20220410T194523Z"' \
  --form 'X-Amz-Security-Token="XXXXX"' \
  --form 'Policy="XXXXX"' \
  --form 'X-Amz-Signature="fcb46c1adfa98836f0533aadebedc6fb1edbd90aa583f3264c0ae5bb63d83123"' \
  --form 'file=@"{PATH_TO_FILE}"'