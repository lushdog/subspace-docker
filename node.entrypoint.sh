#!/bin/bash

NODE_NAME=${NODE_NAME}

exec ./node --name $NODE_NAME "$@"
