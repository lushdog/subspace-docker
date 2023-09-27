#!/bin/bash

# Below are default values, they can be overridden by environment variables
REWARD_ADDRESS=${REWARD_ADDRESS}
NODE_RPC_URL=${NODE_RPC_URL}
PLOT_SIZE=${PLOT_SIZE}

# Execute the main command with the parameters
exec ./farmer farm --reward-address $REWARD_ADDRESS --node-rpc-url $NODE_RPC_URL path=/app/plot,size=$PLOT_SIZE "$@"
