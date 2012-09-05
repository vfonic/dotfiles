#!/bin/bash
IFS_BAK=$IFS
IFS="
"

for i in `ls`;
do
    echo "$i";
done

IFS=$IFS_BAK
IFS_BAK=
