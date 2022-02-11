#!/usr/bin/env bash

source "../../config.sh"
source "../../jwt.sh"

curl -X POST $MESSAGES_API_URL \
     -H 'Authorization: Bearer '$JWT \
     -H 'Content-Type: application/json' \
     -d $'{
  "to": "'$FB_RECIPIENT_ID'",
  "from": "'$FB_SENDER_ID'",
  "channel": "messenger",
  "message_type": "custom",
  "custom": {
    "attachment": {
      "type": "template",
      "payload": {
        "template_type": "airline_boardingpass",
        "intro_message": "You are checked in.",
        "locale": "en_US",
        "boarding_pass": [
          {
            "passenger_name": "OTHER/A",
            "pnr_number": "CG4X7U",
            "seat": "1A",
            "logo_image_url": "'$LOGO_IMAGE_URL'",
            "header_image_url": "'$HEADER_IMAGE_URL'",
            "qr_code": "M1OTHER/A  CG4X7U nawouehgawgnapwi3jfa0wfh",
            "above_bar_code_image_url": "'$ABOVE_BAR_CODE_IMAGE_URL'",
            "auxiliary_fields": [
              {
                "label": "Terminal",
                "value": "T1"
              },
              {
                "label": "Departure",
                "value": "30OCT 19:05"
              }
            ],
            "secondary_fields": [
              {
                "label": "Boarding",
                "value": "18:30"
              },
              {
                "label": "Gate",
                "value": "D57"
              },
              {
                "label": "Seat",
                "value": "74J"
              },
              {
                "label": "Sec.Nr.",
                "value": "003"
              }
            ],
            "flight_info": {
              "flight_number": "KL0642",
              "departure_airport": {
                "airport_code": "SFO",
                "city": "San Francisco",
                "terminal": "T1",
                "gate": "D57"
              },
              "arrival_airport": {
                "airport_code": "LHR",
                "city": "London"
              },
              "flight_schedule": {
                "departure_time": "2018-03-02T19:05",
                "arrival_time": "2018-03-05T17:30"
              }
            }
          }
        ]
      }
    }
  }
}'
