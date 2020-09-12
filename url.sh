#!/bin/bash

if [[ $1 != http?(s)://* ]]; then
    echo "denied"
else
    curl $1 | jq '.'
fi