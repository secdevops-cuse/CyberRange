
## Getting Access
[Alpha Sign-Up Form](https://www.tfaforms.com/4729221) or [Connect on Cyber Range Slack Channel](https://join.slack.com/t/acsaws/shared_invite/enQtNTg0NjU1NDY3MTQwLWU4MDc2ZDUyYjg4OTMxNTJkMDljMDM2NzRhOTQzZjQ3MTk1NTFkMmE4OTc2MGRiM2U4NzIwNTVkNmIzYWY0YmY") 

the `user/pass` for the win7/8 box is `IEUser/Passw0rd!`
some of the other systems are `vagrant/vagrant` &/or `terraform/terraform`

### tpot
web ui: <ip>:64297
ssh: <ip>:64295
the t-pot webuser: 
`
myCONF_WEB_USER='webuser'
myCONF_WEB_PW='w3b$ecret'
tsec/tsec
`

### FBCTF
`admin/password`

### detection lab
credentials are documented on Chris Long's github: `https://github.com/clong/DetectionLab#lab-information`
    - splunk: `admin:changeme`
    - fleet: `admin:admin123#`
```
    Domain Name: windomain.local
    Admininstrator login: vagrant:vagrant
    (dl.log) Fleet login: https://192.168.38.105:8412 - admin:admin123#
    (dl.log) Splunk login: https://192.168.38.105:8000 - admin:changeme
    (dl.wef) MS ATA login: https://192.168.38.103 - wef\vagrant:vagrant
```

The passwords to the rest of the instances should be figured out via research, hacking, bruteforce attempts, etc.

# Available AMI's 
to see all the available systems / images - you must be registered to use the range.  

Once your AWS account has  use the following command: 

`aws ec2 describe-images --owner 588675961644| jq '.Images[]|{ami: .ImageId, name: .Tags[].Value }'|egrep -v '{|}' |sed 'N;s/,\n//;P;D'`

example output: 
```
your-machine-prompt$ aws ec2 describe-images --owner 588675961644| jq '.Images[]|{ami: .ImageId, name: .Tags[].Value }'|egrep -v '{|}' |sed 'N;s/,\n//;P;D'
  "ami": "ami-002879b276fe74fb1"  "name": "Win7"
  "ami": "ami-012d8ca6c1e439af0"  "name": "r7vm"
  "ami": "ami-020ba764325882e99"  "name": "myhouse7"
  "ami": "ami-0235e9ee7208642ca"  "name": "flarevm-win7"
  "ami": "ami-027108d04f522e918"  "name": "FristiLeaks_1.3"
  "ami": "ami-02894fd4c954c4086"  "name": "Tenable-Core-WAS-20190308"
  "ami": "ami-02eed730d6bce04da"  "name": "commandov2 w/ kali"
  "ami": "ami-0314956475d044306"  "name": "Stapler"
  "ami": "ami-03abe2b016a2baa7e"  "name": "metasploitable3-ubuntu-1404"
  "ami": "ami-03da31d388948fe9f"  "name": "seed-ubuntu-1604"
  "ami": "ami-03ddf41b9922ea5e9"  "name": "win2010"
  "ami": "ami-043fa44369e3f0d8f"  "name": "metasploitable3-win2k12"
  "ami": "ami-045bc51b0fb48d1bc"  "name": "VulnOSv2"
  "ami": "ami-05090a4247b814222"  "name": "Tenable-Core-SecurityCenter-20190308"
  "ami": "ami-0536510a0ebfcb2fa"  "name": "metasploitable3-win2k8"
  "ami": "ami-056192c010f963e95"  "name": "dl-logger"
  "ami": "ami-0586680984a6e2b2b"  "name": "bulldog"
  "ami": "ami-059741ce6a16476de"  "name": "remnux 6.0"
  "ami": "ami-05af869c6544c46a9"  "name": "kali-2019.1"
  "ami": "ami-08c4e612bd43fe1e6"  "name": "Tenable-Core-Nessus-20190308"
  "ami": "ami-08cf53c862d2f6620"  "name": "mrRobot"
  "ami": "ami-09be2a4ad52467752"  "name": "detection_lab_win10"
  "ami": "ami-09deb65b83306c9c5"  "name": "kali-2019.4 v2"
  "ami": "ami-0a97a668479ca94bf"  "name": "detection_lab_dc"
  "ami": "ami-0b1f02a9e91addfd7"  "name": "Tenable-Core-NNM-20190308"
  "ami": "ami-0bd92f288f54757d7"  "name": "Sick0s1.2"
  "ami": "ami-0c86082c1fe1787f4"  "name": "Win8"
  "ami": "ami-0cdbd52916df9a59e"  "name": "hack-in-os"
  "ami": "ami-0d2a586073da61262"  "name": "SkyTower"
  "ami": "ami-0df0d4b79a21cd652"  "name": "remnux"
  "ami": "ami-0e9c45059c7ada9fc"  "name": "commandoVM"
  "ami": "ami-0f2a48487bc85e67c"  "name": "detection_lab_wef"
  "ami": "ami-0f934459fe7c79e17"  "name": "tpot"
```


### Software License Keys
To use this project you need license keys for any products which require one.  

To obtain an AWS free-tier account: [Amazon Free-Trial Sign-up](https://portal.aws.amazon.com/billing/signup?refid=em_127222) Note: The default configuration uses under-powered t2.micro assets.&nbsp;&nbsp;</div>
To obtain a Nessus Essentials license, e.g. for academic purposes, [Nessus Essentials License](https://www.tenable.com/products/nessus/nessus-essentials)

To obtain access to the private amazon images, simply enter a name, email, and AWS Account Number. 
The account number enables the images to be shared across accounts.<br></div>

Please Use the [FormAssembly.com](http://www.formassembly.com) Form below to Sign-Up to support the project and gain access to the private AMI's located: [In the Asset Inventory page](https://github.com/secdevops-cuse/CyberRange/blob/master/asset-inventory.md")

[Alpha Sign-Up Form](https://www.tfaforms.com/4729221)
 
![alt text](https://raw.githubusercontent.com/secdevops-cuse/CyberRange/master/CyberRange.png "Cyber Range")



The ultimate goal is to provide a full-spectrum opensource hostile 
training environment with known vulnerable assets & configurations.  The goal is to create small 
hubs of skilled professionals which deploy these ranges into local communities.  The adoption of DevOps 
framework by businesses in combination with a skilled workforce of open-source bounty hunters 
will address the skills gap while providing the all parties with a value-added result. 

For Cyber Rangers - the users of the cyber range for training, testing, and task automation - the framework
providest them with a reliable way to create assets and 

This project leverages opensource assets to inspire the end user with
researchable problems / solutions.  Ultimately, 
providing the broader technology community with a low-cost bootstrap 
red/blue team training environment to inspire independent learning, 
and the personal ownership of development for building the most in-demand 
technical skills using the world's largetst and best cloud computing platform.
