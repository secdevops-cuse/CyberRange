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
    
      

## reference links
https://www.inspec.io/docs/reference/matchers/
