# Overview:

 Only few solutions help an individual construct a full penTest 
 environment, targets & all, in the AWS.  Most say, use a site like
 hackTheBox.eu - for all practical purposes a fine idea.
 
 Yet vulnhub.com has a ton of vm's we can setup locally, so why not
 deploy them to the cloud & leverage it to host a dedicated set of 
 training assets for other security professionals.

 This ultimate goal is to share knowledge about how I 
 converted the vulnhub asset into a local ova/vmdk uploaded it into S3, 
 then created the ami's from the ova's.  From there I will have ami ids
 available for terraform deployment.  

 Given this is now the XXth iteration of this Cyber-Cloud project, 
 it is very likely it will continue to evolve.
 
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

## Vulnerable machine (OVA) inventory
Many of these ova's were created by other individuals.  Check out VulnHub, Google Search them, the name of the asset is 
descriptively significant.
 
With plans to expand this list into the hundreds the specific reference URLS will be updated in bulk moving forward.

Ref: Medium Article:            https://medium.com/@andr3w_hilton/oscp-training-vms-hosted-on-vulnhub-com-22fa061bf6a1
[aws][x] FristiLeaks: 1.3       https://www.vulnhub.com/entry/fristileaks-13,133/
[aws][x] Stapler: 1             https://www.vulnhub.com/entry/stapler-1,150/
[aws][~] VulnOS: 2              https://www.vulnhub.com/entry/vulnos-2,147/
[aws][x] SickOs: 1.2            https://www.vulnhub.com/entry/sickos-12,144/
[aws][~] SkyTower: 1            https://www.vulnhub.com/entry/skytower-1,96/
[aws][x] mrRobot:               https://www.vulnhub.com/entry/mr-robot-1,151/
[aws][x] Metasploitable3 
     [aws][x] win2k8 :          https://github.com/rapid7/metasploitable3
     [aws][x] ubuntu1404 :      https://github.com/rapid7/metasploitable3
[aws][x] Kali - 2019.1 & Metasploit v5
[aws][x] Windows 7              
[aws][x] Windows 8.1

### In-Progress
[ ][x] pwnlab_init:             https://www.vulnhub.com/entry/pwnlab-init,158/
[ ][x] Metasploitable2 (nix):             
[ ][~] Docker Assets:         
[ ][~] Kioptrix:                https://www.vulnhub.com/entry/kioptrix-2014-5,62/
[ ][~] Samuraiwtf               https://github.com/SamuraiWTF/samuraiwtf `"StatusMessage": "ClientError: Unsupported kernel version 4.9.0-8-amd64"`


### Future Targets: 
[] Docker Assets: https://github.com/vulhub/vulhub
[] Generate vulnerable virtual machines on the fly:  https://github.com/SecGen/SecGen
[] Vulnix:                https://www.vulnhub.com/entry/hacklab-vulnix,48/
[] pWnOS: 2.0             https://www.vulnhub.com/entry/pwnos-20-pre-release,34/
[] scream.exe             https://www.vulnhub.com/entry/devrandom-scream,47/



## Technical Write-Ups
 Other OSCP attempt: https://github.com/ferreirasc/oscp