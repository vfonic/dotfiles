#!/bin/bash
for file in *; do
  convert "$file" -quality 75 -resize 1000x1000\> "$file";
done
