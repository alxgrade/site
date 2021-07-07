#!/bin/bash

#set -e

# delete everything in public except .git
#find public -path public/.git -prune -o -exec rm -rf {} \; 2> /dev/null

#find public -path public/.git -prune -o -print

#find public -path public/.git -prune -o -delete

#find public \! -name '.git' -delete

find public \! -name '.git' \! -name 'CNAME' \! -name 'README.md' \! -path public -delete


read  -n 1 -p "Press to exit..."