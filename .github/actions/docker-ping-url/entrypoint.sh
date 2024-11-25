#!/bin/sh

URL=$1
MAX_TRIALS=$2
DELAYS=$3

if [ -z "$URL" ]; then
  echo "Error: URL is required"
  exit 1
fi

for i in $(seq 1 "$MAX_TRIALS"); do
  echo "Pinging $URL (attempt $i)..."
  curl -s "$URL" && exit 0
  sleep "$DELAYS"
done

echo "Failed to ping $URL after $MAX_TRIALS attempts"
exit 1

