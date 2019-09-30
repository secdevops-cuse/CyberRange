describe aws_ec2_instance(name: "dl.logger") do it { should exist }; end
describe aws_ec2_instance(name: "FBCTF-0") do it { should exist }; end
describe aws_ec2_instance(name: "Tpot-0") do it { should exist }; end
describe aws_ec2_instance(name: "dc.windomain.local") do it { should exist }; end
describe aws_ec2_instance(name: "win10.windomain.local") do it { should exist }; end
describe aws_ec2_instance(name: "commando-0") do it { should exist }; end
describe aws_ec2_instance(name: "MetaSploitable_3_win2k8-0") do it { should exist }; end
describe aws_ec2_instance(name: "kali-linux-0") do it { should exist }; end
describe aws_ec2_instance(name: "docker-via-cloudinit-0") do it { should exist }; end
describe aws_ec2_instance(name: "MetaSploitable_3_win2k12-0") do it { should exist }; end
describe aws_ec2_instance(name: "ms3_nix-0") do it { should exist }; end
describe aws_ec2_instance(name: "wef.windomain.local") do it { should exist }; end

describe aws_security_group(group_name: "targets") do it { should exist }; end
describe aws_security_group(group_name: "FB-CTF") do it { should exist }; end
describe aws_security_group(group_name: "logger_security_group") do it { should exist }; end
describe aws_security_group(group_name: "T-Pot") do it { should exist }; end
describe aws_security_group(group_name: "windows_security_group") do it { should exist }; end
describe aws_security_group(group_name: "attackers") do it { should exist }; end
describe aws_security_group(group_name: "malware") do it { should exist }; end
describe aws_security_group(group_name: "default") do it { should exist }; end

describe aws_subnets() do
  it { should exist }
  its('cidr_blocks') {should_not cmp []} #{ should be_in ['10.0.1.0/24','10.0.2.0/24','10.0.3.0/24','10.0.4.0/24', '10.0.5.0/24'] }
  its('cidr_blocks') { should include '192.168.38.0/24'}
  its('cidr_blocks') { should include '192.168.39.0/24'}
  # its('cidr_blocks') { should include '192.168.40.0/24'}
  # its('cidr_blocks') { should include '192.168.41.0/24'}
  its('cidr_blocks') { should include '192.168.42.0/24'}
  # its('cidr_blocks') { should include '192.168.43.0/24'}
end

