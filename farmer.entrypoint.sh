#!/bin/bash

REWARD_ADDRESS=${REWARD_ADDRESS}
NODE_RPC_URL=${NODE_RPC_URL}
PLOT_SIZE=${PLOT_SIZE}

sleep 15

echo "starting farmer"

exec ./farmer farm --reward-address $REWARD_ADDRESS --node-rpc-url $NODE_RPC_URL path=/app/plot,size=$PLOT_SIZE "$@"
