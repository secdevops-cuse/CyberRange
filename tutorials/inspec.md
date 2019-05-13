# Overview



### Inspect

```
$ inspec exec /Users/cappetta/github/SecDevOps/CyberRange/terraform/inspec/cyberRange.targets.rb  -t aws://
   Ignoring ffi-1.9.25 because its extensions are not built.  Try: gem pristine ffi --version 1.9.25
   Ignoring unf_ext-0.0.7.5 because its extensions are not built.  Try: gem pristine unf_ext --version 0.0.7.5
   Ignoring ffi-1.9.25 because its extensions are not built.  Try: gem pristine ffi --version 1.9.25
   Ignoring unf_ext-0.0.7.5 because its extensions are not built.  Try: gem pristine unf_ext --version 0.0.7.5
   
   Profile: tests from /Users/cappetta/github/SecDevOps/CyberRange/terraform/inspec/cyberRange.targets.rb (tests from .Users.cappetta.github.SecDevOps.CyberRange.terraform.inspec.cyberRange.targets.rb)
   Version: (not specified)
   Target:  aws://
   
     EC2 Instance flarevm-win7-0
        ✔  should exist
        ×  should be running
        expected that `EC2 Instance flarevm-win7-0` is running
     EC2 Instance commando-pT16-0
        ✔  should exist
        ✔  should be running
     EC2 Instance flarevm-win7-0
        ×  image_id should eq "ami-0c0c82ce58fe950e6"
   
        expected: "ami-0c0c82ce58fe950e6"
             got: "ami-02f2c19a14caca250"
   
        (compared using ==)
   
   
   Test Summary: 3 successful, 2 failures, 0 skipped
```


## Todo: Checks to build
 - Common / Mandatory Tags: 
    - Name = ""
      Auto-Off = "True",
      Auto-Delete = "True"
      Terraform = "True"
      Environment = "${var.environment}"
  - Asset Specific Services:
    - e.g. Metasploit & all associated ports are available / listening...
    - protocols 
    

### Name instance exists check
```
5uMC0mPut3R:staging cappetta$ chkaminame |awk -F"," '{print $1}' | sed 's/"//g; s/^/describe aws_ec2_instance(name: "/g; s/$/") do it { should exist }; end/g'
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
```

#### Inspec Validation
```
5uMC0mPut3R:staging cappetta$ inspec exec /Users/cappetta/github/SecDevOps/CyberRange/terraform/inspec/cyberRange.targets.created.rb -t aws://
Ignoring ffi-1.9.25 because its extensions are not built.  Try: gem pristine ffi --version 1.9.25
Ignoring unf_ext-0.0.7.5 because its extensions are not built.  Try: gem pristine unf_ext --version 0.0.7.5
Ignoring ffi-1.9.25 because its extensions are not built.  Try: gem pristine ffi --version 1.9.25
Ignoring unf_ext-0.0.7.5 because its extensions are not built.  Try: gem pristine unf_ext --version 0.0.7.5

Profile: tests from /Users/cappetta/github/SecDevOps/CyberRange/terraform/inspec/cyberRange.targets.created.rb (tests from .Users.cappetta.github.SecDevOps.CyberRange.terraform.inspec.cyberRange.targets.created.rb)
Version: (not specified)
Target:  aws://

  EC2 VPC Subnets
     ✔  should exist
     ✔  cidr_blocks should be in "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24", and "10.0.5.0/24"
  EC2 Instance CyberRange_win2012_RTM-0
     ✔  should exist
  EC2 Instance CyberRange_hackinos-0
     ✔  should exist
  EC2 Instance CyberRange_Stapler-0
     ✔  should exist
  EC2 Instance CyberRange_docker-web-apps-0
     ✔  should exist
  EC2 Instance CyberRange_myhouse7-0
     ✔  should exist
  EC2 Instance CyberRange_flarevm-win7-0
     ✔  should exist
  EC2 Instance CyberRange_nessus-0
     ✔  should exist
  EC2 Instance CyberRange_kali-0
     ✔  should exist
  EC2 Instance CyberRange_r7-0
     ✔  should exist
  EC2 Instance CyberRange_Skytower-0
     ✔  should exist
  EC2 Instance CyberRange_win2008-0
     ✔  should exist
  EC2 Instance CyberRange_win2003-0
     ✔  should exist
  EC2 Instance CyberRange_win2019-0
     ✔  should exist
  EC2 Instance CyberRange_win7-0
     ✔  should exist
  EC2 Instance CyberRange_MS3-win2k12-0
     ✔  should exist
  EC2 Instance CyberRange_defender_win2k10-0
     ✔  should exist
  EC2 Instance CyberRange_ms3_nix-0
     ✔  should exist
  EC2 Instance CyberRange_MrRobot-0
     ✔  should exist
  EC2 Instance CyberRange_win8-0
     ✔  should exist
  EC2 Instance CyberRange_bulldog-0
     ✔  should exist
  EC2 Instance CyberRange_kali-linux
     ✔  should exist
  EC2 Instance CyberRange_Vulnos-0
     ✔  should exist
  EC2 Instance CyberRange_win2012-0
     ✔  should exist
  EC2 Instance CyberRange_commando-pT16-0
     ✔  should exist
  EC2 Instance CyberRange_fristileaks-0
     ✔  should exist
  EC2 Instance CyberRange_Sickos-0
     ✔  should exist

Test Summary: 28 successful, 0 failures, 0 skipped
```
## reference links
https://www.inspec.io/docs/reference/matchers/
