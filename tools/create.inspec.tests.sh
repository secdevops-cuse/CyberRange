#!/usr/bin/env bash
# create terraform/inspec/cyberRange.full.instances.rb
aws ec2 describe-instances  | jq -r '.Reservations[].Instances[] | [.InstanceId, .PrivateIpAddress, .PublicIpAddress, .Tags[].Value] | @csv' | sed 's/"/ /g; s/, True //g; s/ , development //g; s/,,/,/g' | awk '{print "describe aws_ec2_instance(name: \42"$NF"\42) do it { should exist }; end"}' | sort -u  > terraform/inspec/cyberRange.full.instances.rb

# create terraform/inspec/cyberRange.network.sg.rb
aws ec2 describe-security-groups | jq '.SecurityGroups[] | .GroupName' | awk '{print "describe aws_security_group(group_name: " $NF ") do it { should exist }; end"}' > terraform/inspec/cyberRange.network.sg.rb


@time inspec exec terraform/inspec/cyberRange.full.instances.rb -t aws:// > /tmp/inspec.results && \
   time inspec exec terraform/inspec/cyberRange.network.sg.rb -t aws:// >> /tmp/inspec.results && \
   grep -i "Test Summary" /tmp/inspec.results


getIPs: ## Show the public / private ips of running assets
    @time aws ec2 describe-instances  | \
    jq -r '.Reservations[].Instances[] | [.InstanceId, .PrivateIpAddress, .PublicIpAddress, .Tags[].Value] | @csv' | \
     sed 's/"/ /g; s/, True //g; s/ , development //g; s/,,/,/g'