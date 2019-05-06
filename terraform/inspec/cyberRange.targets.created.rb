

describe aws_subnets() do
  it { should exist }
  its('cidr_blocks') {should_not cmp []} #{ should be_in ['10.0.1.0/24','10.0.2.0/24','10.0.3.0/24','10.0.4.0/24', '10.0.5.0/24'] }
  its('cidr_blocks') { should include '10.0.1.0/24'}
  its('cidr_blocks') { should include '10.0.2.0/24'}
  its('cidr_blocks') { should include '10.0.3.0/24'}
  its('cidr_blocks') { should include '10.0.4.0/24'}
  its('cidr_blocks') { should include '10.0.5.0/24'}
end

describe aws_ec2_instance(name: "CyberRange-win2012_RTM-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-hackinos-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-Stapler-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-docker-web-apps-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-myhouse7-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-flarevm-win7-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-nessus-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-kali-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-r7-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-Skytower-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-win2008-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-win2003-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-win2019-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-win7-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-MS3-win2k12-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-win2k10-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-ms3_nix-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-MrRobot-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-win8-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-bulldog-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-kali-linux") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-Vulnos-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-win2012-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-commando-pT16-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-fristileaks-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange-Sickos-0") do it { should exist }; end
