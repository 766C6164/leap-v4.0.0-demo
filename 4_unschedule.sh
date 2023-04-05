#!/bin/sh

echo "This script will unschedule snapshot request"

echo "\n\nSnapshot scheduled, querying requests:"

curl -X POST http://127.0.0.1:8888/v1/producer/get_snapshot_requests | json_pp

echo "Please enter snapshot ID to unschedule:"
read SID

echo "\n\nPoosting unschedule request via API..."

curl -X POST http://127.0.0.1:8888/v1/producer/unschedule_snapshot \
   -H 'Content-Type: application/json' \
   -d "{\"snapshot_request_id\": \"$SID\"}"

echo "\n\nSnapshot unscheduled, querying requests:"

curl -X POST http://127.0.0.1:8888/v1/producer/get_snapshot_requests | json_pp

echo "\n\ndone"
