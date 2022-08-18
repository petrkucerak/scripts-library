#!/bin/bash

echo "..............."
echo "Start with software installation"

cd software
$FileSum = ls | wc -l
echo "Found ${FileSum} files"

for f in *.sh; do
   echo "$f"
   bash "$f"
done
