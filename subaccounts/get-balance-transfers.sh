#!/usr/bin/env bash

source "../config.sh"

curl -X GET -u $API_KEY:$API_SECRET https://api.nexmo.com/accounts/$API_KEY/balance-transfers
