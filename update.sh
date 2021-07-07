#!/bin/bash

find public \! -name '.git' \! -name 'CNAME' \! -name 'README.md' \! -path public -delete

# If a command fails then the deploy stops
#set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Build the public and push
hugo -t hugo-coder
cd public
git add -a

msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"
git push origin main

# Push site
cd ..
git add .

msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"
git push origin main

read  -n 1 -p "Press to exit..."