#!/bin/sh

echo "This script will convert snapshots to a json format"

echo "\n\nProcessing snapshots..."

LEAP_UTIL="leap-util"
SNAPSHOTS="$HOME/.local/share/eosio/nodeos/data/snapshots"

for snap in $SNAPSHOTS/*.bin 
do
    $LEAP_UTIL snapshot to-json -i "$snap"
done

echo "\n\ndone"
