#!/bin/bash

NODE_NAME=${NODE_NAME}

exec ./node run --name $NODE_NAME "$@"
