#!/bin/bash

filename=$1
cat $filename | while read LINE; do
    IFS='/data/' read -ra SOURCE <<< $LINE
    file=${SOURCE[-1]}
    data=$(curl -s $LINE)
    echo $data > ${file}.json
    echo "${file} created"
done