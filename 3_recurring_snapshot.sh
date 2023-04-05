#!/bin/sh
echo "This script will request recurring snapshot(s) creation starting immediately"
echo "Please enter your block spacing:"
read SPACING

echo "\n\nPoosting snapshot request via API..."

curl -X POST http://127.0.0.1:8888/v1/producer/schedule_snapshot \
   -H 'Content-Type: application/json' \
   -d "{\"block_spacing\": \"$SPACING\"}"

echo "\n\nSnapshot scheduled, querying requests:"

curl -X POST http://127.0.0.1:8888/v1/producer/get_snapshot_requests | json_pp

echo "\n\ndone"
