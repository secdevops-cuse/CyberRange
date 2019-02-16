#!/usr/bin/env bash

# ownerid is environmental var located in ~/.bashrc
aws ec2 describe-images --owner $ownerid | jq '.Images[]|{ami: .ImageId, name: .Tags[].Value }'

