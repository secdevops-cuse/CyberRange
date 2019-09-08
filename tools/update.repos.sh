#!/usr/bin/env bash
for repo in $(ls -d */); do echo "refreshing " $repo; cd $repo; git pull ; cd ..; echo "--- git pull complete ---" ;done