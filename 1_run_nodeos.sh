#!/bin/sh
echo "Starting nodeos..."
$HOME/Projects/leap/build/bin/nodeos -e -p eosio --plugin eosio::producer_plugin --plugin eosio::producer_api_plugin
echo "done"
