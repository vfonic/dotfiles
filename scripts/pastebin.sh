#!/bin/bash
paste_url=`pastebinit -f cpp -i $1 -t $1`
echo $paste_url
echo $paste_url | pbcopy
