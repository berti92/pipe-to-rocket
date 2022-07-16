#!/bin/bash
cat > /tmp/rocketchat.msg
ROCKMSG=$(cat /tmp/rocketchat.msg)
CHAT_URL=https://your.rocket.chat/hooks/XXXX/XXX
BODY=$(jq --null-input \
  --arg text "$ROCKMSG" \
  '{"text": $text}')
curl -X POST -H 'Content-Type: application/json' -d "${BODY}" $CHAT_URL
rm /tmp/rocketchat.msg