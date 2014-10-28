#!/bin/bash
for file in *; do
  convert "$file" -quality 75 -resize 1500x1500\> "$file";
done
