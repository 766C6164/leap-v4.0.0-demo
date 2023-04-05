#!/bin/sh
echo "This script will request one time snapshot at any given block height"
echo "Please enter your block height:"
read HEIGHT

echo "\n\nPoosting snapshot request via API..."

curl -X POST http://127.0.0.1:8888/v1/producer/schedule_snapshot \
   -H 'Content-Type: application/json' \
   -d "{\"start_block_num\": \"$HEIGHT\"}"

echo "\n\nSnapshot scheduled, querying requests:"

curl -X POST http://127.0.0.1:8888/v1/producer/get_snapshot_requests | json_pp

echo "\n\ndone"
