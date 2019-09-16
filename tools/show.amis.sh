#!/usr/bin/env bash
aws ec2 describe-images --owner 588675961644| jq '.Images[]|{ami: .ImageId, name: .Tags[].Value }'|egrep -v '{|}' |sed 'N;s/,\n//;P;D'