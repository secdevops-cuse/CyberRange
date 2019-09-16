#!/usr/bin/env bash

aws ec2 describe-instances --filters "Name=instance-state-name,Values=running"   |  jq -r   '.Reservations[] | .Instances[] | [ .PublicIpAddress, (.Tags[]|select(.Key=="Name")|.Value)]|@csv'
