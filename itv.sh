#!/bin/bash

read -p "Who will you be writing to?" recipient 

recipient="${recipient:-Universe}"

printf "Dear $recipient,\n\n    " > itv.txt

$EDITOR itv.txt

echo "Sending…"

sleep 3

cat itv.txt > /dev/null

rm itv.txt

echo "Sent!"