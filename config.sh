# General
NEXMO_API_KEY=${NEXMO_API_KEY:-""}
NEXMO_API_SECRET=${NEXMO_API_SECRET:-""}

NEXMO_APPLICATION_ID=${NEXMO_APPLICATION_ID:-""}
NEXMO_PRIVATE_KEY=${NEXMO_PRIVATE_KEY:-""}

TO_NUMBER=${TO_NUMBER:-""}
RECIPIENT_NUMBER=${RECIPIENT_NUMBER:-""}
FROM_NUMBER=${FROM_NUMBER:-""}
NEXMO_NUMBER=${NEXMO_NUMBER:-""}

RECORDING_URL=${RECORDING_URL:""} # For downloading a recording

# For Facebook messaging
FB_SENDER_ID=${FB_SENDER_ID:-""}
FB_RECIPIENT_ID=${FB_RECIPIENT_ID:-""}

# For Viber messaging
VIBER_SERVICE_MESSAGE_ID=${VIBER_SERVICE_MESSAGE_ID:-""}

# For WhatsApp messaging
WHATSAPP_NUMBER=${WHATSAPP_NUMBER:-""}

ACCOUNT_ID=${ACCOUNT_ID:-""} # For APIs that allow you to access the resources of a sub account

# Account API
SECRET_ID=${SECRET_ID:-""}

# Audit API
EVENT_UUID=${EVENT_UUID:-""}  # UUID of audit event
SEARCH_TEXT=${SEARCH_TEXT:-"number"}
DATE_FROM=${DATE_FROM:-"2018-07-01"}
DATE_TO=${DATE_TO:-"2018-08-01"}

# Number Insight API
INSIGHT_NUMBER=${INSIGHT_NUMBER:-""}
WEBHOOK_URL=${WEBHOOK_URL:-""}

# MMS
US_FROM=${US_FROM:-""}
IMG_URL=${IMG_URL:-""}

# Reporting
REPORT_PRODUCT=${REPORT_PRODUCT:-""}
REPORT_ID=${REPORT_ID:-""}
REPORT=${REPORT_URL:-""}

# Verify
REQUEST_ID=${REQUEST_ID:-""}
CODE=${CODE:=""}

# If we have a local config, override using that
CONFIG_DIR=$(dirname "${BASH_SOURCE[0]}")
if [ -f "$CONFIG_DIR/config.local.sh" ]; then
    source "$CONFIG_DIR/config.local.sh"
fi
