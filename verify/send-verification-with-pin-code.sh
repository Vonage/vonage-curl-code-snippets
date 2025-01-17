#!/usr/bin/env bash
source "../config.sh"

curl -X GET "https://api.nexmo.com/verify/json?&number=$VERIFY_NUMBER&brand=AcmeInc&pin_code=$VERIFY_CODE"
