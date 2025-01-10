#!/bin/bash

start=$1
end=$2

if [ -z "$start" ] || [ -z "$end" ]; then
  echo "Usage: $0 <start_index> <end_index>"
  exit 1
fi

> inputFile  # Create or clear inputFile

for i in $(seq $start $end); do
  echo "$i, $RANDOM" >> inputFile
done

