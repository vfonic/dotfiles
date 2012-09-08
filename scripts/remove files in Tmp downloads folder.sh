#!/bin/bash
find ~/Downloads/Tmp\ downloads/ -atime +1d -exec rm {} \;
find ~/Downloads/Tmp\ downloads/ -depth -empty -delete
