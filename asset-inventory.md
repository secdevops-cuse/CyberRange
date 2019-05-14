# Overview:

 Only few solutions help an individual construct a full penTest 
 environment, targets & all, in the AWS.  Most say, use a site like
 hackTheBox.eu - for all practical purposes a fine idea.
 
 Yet vulnhub.com has a ton of vm's we can setup locally, so why not
 deploy them to the cloud & leverage it to host a dedicated set of 
 training assets for other security professionals.

## Getting Access
[Alpha Sign-Up Form](https://www.tfaforms.com/4729221) or [Connect on Cyber Range Slack Channel](https://join.slack.com/t/acsaws/shared_invite/enQtNTg0NjU1NDY3MTQwLWU4MDc2ZDUyYjg4OTMxNTJkMDljMDM2NzRhOTQzZjQ3MTk1NTFkMmE4OTc2MGRiM2U4NzIwNTVkNmIzYWY0YmY") 

the `user/pass` for the win7/8 box is `IEUser/Passw0rd!` - all others you must research & there is some low-hanging fruit.  Good Luck!
```
  # 10 Linux Assets
  "ami": "ami-016b701c461d2f341"  "name": "myhouse7"
  "ami": "ami-0539fa87bb2306efe"  "name": "FristiLeaks_1.3"
  "ami": "ami-067d428e8151617b0"  "name": "mrRobot"
  "ami": "ami-088907da57ded04b2"  "name": "bulldog"
  "ami": "ami-0af37127c6324f3f4"  "name": "Sick0s1.2"
  "ami": "ami-0b5b15c7c25534a9c"  "name": "VulnOSv2"
  "ami": "ami-0edaa47a082e55340"  "name": "SkyTower"
  "ami": "ami-0cbf02480a95b6edd"  "name": "Stapler"
  "ami": "ami-0d3b2e68e1701a861"  "name": "hack-in-os"
  "ami": "ami-05056794734905857"  "name": "metasploitable3-ubuntu-1404"
  
  # 5 Windows Assets
  "ami": "ami-0370dcc12619f05e1"  "name": "metasploitable3-win2k12"
  "ami": "ami-0da37791afc9aea77"  "name": "metasploitable3-win2k8"
  "ami": "ami-0ba457e31b3666965"  "name": "defender-win2010"
  "ami": "ami-0de7687b932832df7"  "name": "Win8"
  "ami": "ami-02f2c19a14caca250"  "name": "Win7"
  
  # 10.0.5.0/24 - RedTeam Subnet
  "ami": "ami-0e13b2fb6e590fc77"  "name": "kali-2019.1"
  "ami": "ami-0ebb80088327d57fc"  "name": "seed-ubuntu-1604"
  "ami": "ami-0bd120b2cee2fe956"  "name": "Tenable-Core-NNM-20190308"
  "ami": "ami-08eacb613e5117551"  "name": "Tenable-Core-Nessus-20190308"
  "ami": "ami-0278263968295c6e8"  "name": "Tenable-Core-SecurityCenter-20190308"
  "ami": "ami-082347635d1dcc9fa"  "name": "Tenable-Core-WAS-20190308"
```
