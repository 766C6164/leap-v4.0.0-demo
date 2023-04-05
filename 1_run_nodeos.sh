#!/bin/sh
echo "Starting nodeos..."
nodeos -e -p eosio --plugin eosio::producer_plugin --plugin eosio::producer_api_plugin
echo "done"
