#!/bin/bash

#set -e

# delete everything in public except .git
#find public -path public/.git -prune -o -exec rm -rf {} \; 2> /dev/null

#find public -path public/.git -prune -o -print

#find public -path public/.git -prune -o -delete

find public \! -name '.git' -delete

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

read  -n 1 -p "Press to exit..."