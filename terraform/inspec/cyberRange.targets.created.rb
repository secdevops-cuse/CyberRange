

describe aws_subnets() do
  it { should exist }
  its('cidr_blocks') {should_not cmp []} #{ should be_in ['10.0.1.0/24','10.0.2.0/24','10.0.3.0/24','10.0.4.0/24', '10.0.5.0/24'] }
  its('cidr_blocks') { should cmp ['10.0.1.0/24','10.0.2.0/24','10.0.3.0/24','10.0.4.0/24','10.0.5.0/24'] }
end

describe aws_ec2_instance(name: "CyberRange_win2012_RTM-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_hackinos-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_Stapler-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_docker-web-apps-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_myhouse7-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_flarevm-win7-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_nessus-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_kali-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_r7-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_Skytower-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_win2008-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_win2003-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_win2019-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_win7-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_MS3-win2k12-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_defender_win2k10-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_ms3_nix-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_MrRobot-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_win8-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_bulldog-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_kali-linux") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_Vulnos-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_win2012-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_commando-pT16-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_fristileaks-0") do it { should exist }; end
describe aws_ec2_instance(name: "CyberRange_Sickos-0") do it { should exist }; end
