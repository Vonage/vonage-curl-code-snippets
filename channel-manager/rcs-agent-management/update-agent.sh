#!/usr/bin/env bash

source "../../config.sh"

curl -X PUT https://api.nexmo.com/v1/channel-manager/rcs/agents/${CHANNEL_MANAGER_RCS_AGENT_ID} \
  -u "${VONAGE_API_KEY}:${VONAGE_API_SECRET}" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -d $'{
		"basic_info": {
    "display_name": "'${CHANNEL_MANAGER_RCS_AGENT_DISPLAY_NAME}'",
    "sender_id": "'${CHANNEL_MANAGER_RCS_AGENT_SENDER_ID}'",
    "hosting_region": "'${CHANNEL_MANAGER_RCS_AGENT_HOSTING_REGION}'",
    "agent_purpose": "'${CHANNEL_MANAGER_RCS_AGENT_PURPOSE}'",
    "billing_category": "'${CHANNEL_MANAGER_RCS_AGENT_BILLING_CATEGORY}'",
    "brand_id": "'${CHANNEL_MANAGER_RCS_BRAND_ID}'"
  },
  "visual_design": {
    "tagline": "'${CHANNEL_MANAGER_RCS_AGENT_TAGLINE}'",
    "brand_color": "'${CHANNEL_MANAGER_RCS_AGENT_BRAND_COLOR}'",
    "phone": [
      {
        "number": "'${CHANNEL_MANAGER_RCS_AGENT_PHONE_NUMBER}'"
      }
    ],
    "email": [
      {
        "address": "'${CHANNEL_MANAGER_RCS_AGENT_EMAIL_ADDRESS}'"
      }
    ],
    "website": [
      {
        "url": "'${CHANNEL_MANAGER_RCS_AGENT_WEBSITE_ADDRESS}'"
      }
    ]
  },
  "application_settings": {
    "application_id": "'${VONAGE_APPLICATION_ID}'"
  },
  "representative": {
      "first_name": "John",
      "last_name": "Doe",
      "email": "john.doe@example.com"
  },
  "carrier_requirements": {
      "agent_preview": {
        "agent_access_instructions": "Provide a method for reviewers to trigger the agent, such as a website where reviewers can invite and add phone numbers."
      },
      "points_of_contact": [
        {
            "first_name": "Jane",
            "last_name": "Smith",
            "email": "jane.smith@example.com",
            "job_title": "Technical Support"
        }
      ],
      "traffic_estimates": {
        "average_global_traffic": "THOUSAND",
        "average_message_rate_per_user": "ONCE_PER_MONTH",
        "users_targeted": "HUNDRED"
      },
      "user_experience": {
        "interactions_description": "This agent handles customer support inquiries and provides product information.",
        "optin_description": "This is a test environment.",
        "optout_description": "Customers can unsubscribe from receiving messages by replying 'STOP' to any message. They can also contact us by email at support@company.com. Users will receive a confirmation message when successfully unsubscribed, and can re-subscribe at any time by replying 'START'.",
        "trigger_description": "This account is used exclusively for sending test messages to introduce RCS capabilities to customers."
      }
    }
  }'