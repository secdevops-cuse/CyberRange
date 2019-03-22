[![CircleCI](https://circleci.com/gh/cappetta/CyberRange.svg?style=svg)](https://circleci.com/gh/cappetta/CyberRange)

![alt text](https://github.com/cappetta/CyberRange/blob/feature/kali-setup/cyberRange_logo.png "Cyber Range")
## Overview

<div class="htmlSection" id="tfa_1">
<div class="htmlContent" id="tfa_1-HTML">
<div>The SecDevOps@Cuse Cyber Range Project is currently in hacker-invite mode.&nbsp; 
<br>
Simply read the info below, follow the form link, and I'll add the 
 
<br>
The only request is to open github issues if you have any questions or issues.  
This will simply improve the project over time.<br></div>

<div><br></div>

<div>The goal of the Cyber Range project is to provide&nbsp; Offensive / Defensive Cyber Security researchers a safe & controlled environment 
while leveraging the elastic scalability of the cloud using common DevOps tooling to
create a reproducable framework.&nbsp; <br></div>

<div><br></div>
<div>This project's idea originated in a garage in 2014 & was formed
 on a now depreciated OpenStack-based <a href="https://github.com/cappetta/CyberCloud">
CyberCloud</a> project. 
<div><br></div>

The goal of this initiative is to help individuals get up & running quickly.  
<br>
Minimizing what you need to know to get started & maximizing your ability to learn over time.    
<br>
CyberRange simply combines the best practices by using a CI/CD tool [CircleCI](https://circleci.com/)
  to continuously test every change sent into this project.
 <br> 
This tooling aims to provide a cloud-based learning platform for individuals
working in IT.  From Auditing to Operations to Cyber Security.  Across 
Vulnerability Mgmt, DevOps, Cloud Computing, Offensive Security, 
Quality Assurance, & Configuration Mgmt domains.  
<br>
This toolkit create a vulnerable enviroment from 10+ vulnerable virtual
machines, 3 of which are windows.  
<br>
You can break everything, destroy anything, and rebuild it all when you
want to start fresh and master a concept.

  <br>
The deeper you go the more interest in customization
(e.g. install software, update licenses, download, etc).  Learn how to 
automate those tasks so you don't have to waste time repeating them. 
  <br>
The next phase of the project aims to evolve this project further with a
 project proposal being drafted for an NSF Advancing Informal STEM Learning grant, using <a href="https://www.nsf.gov/pubs/2017/nsf17573/nsf17573.htm" target="_blank">Program Solicitation NSF 17-573.</a><br></div>
<div><br></div>
<div>To obtain access to the private amazon images, simply enter a name, email, and AWS Account Number. The account number enables the images to be shared across accounts.<br></div>
<div><br></div>
<div>To obtain an AWS free-tier account,&nbsp; <a href="https://portal.aws.amazon.com/billing/signup?refid=em_127222&amp;redirect_url=https%3A%2F%2Faws.amazon.com%2Fregistration-confirmation#/start" target="_blank">Click Here.</a> Note: The default configuration uses under-powered t2.micro assets.&nbsp;&nbsp;</div>
<div><br></div>
<div>Please Use the <a href="http://www.formassembly.com" target="_blank">FormAssembly.com</a> Form below to Sign-Up to support the project, then use the private AMI's located: <a href="https://github.com/secdevops-cuse/CyberRange/blob/master/asset-inventory.md">In the Asset Inventory page</a><br></div>
</div>
</div>

<br>
[Alpha Sign-Up Form](https://www.tfaforms.com/4729221) 

### Purpose
It enables researchers to setup assets quickly, maintain manifests of common
setups, and deploy locally or to the AWS cloud with the flip of a configuration
setup.

This is simply an AWS-based solution for a PenTester.  The goal is to
provide a sterile cloud penTesting environment with the attacker machine
and multiple targets within minutes.

To date this project provides access to 14 AMI's, 3 Windows boxes, 2 Offensive
 Security desktops in us-east-1.

```
  "ami": "ami-0539fa87bb2306efe"  "name": "FristiLeaks_1.3"
  "ami": "ami-0af37127c6324f3f4"  "name": "Sick0s1.2"
  "ami": "ami-0edaa47a082e55340"  "name": "SkyTower"
  "ami": "ami-0cbf02480a95b6edd"  "name": "Stapler"
  "ami": "ami-0b5b15c7c25534a9c"  "name": "VulnOSv2"
  "ami": "ami-02f2c19a14caca250"  "name": "Win7"
  "ami": "ami-0de7687b932832df7"  "name": "Win8"
  "ami": "ami-0d3b2e68e1701a861"  "name": "hack-in-os"
  "ami": "ami-0e13b2fb6e590fc77"  "name": "kali-2019.1"
  "ami": "ami-05056794734905857"  "name": "metasploitable3-ubuntu-1404"
  "ami": "ami-0da37791afc9aea77"  "name": "metasploitable3-win2k8"
  "ami": "ami-067d428e8151617b0"  "name": "mrRobot"
  "ami": "ami-016b701c461d2f341"  "name": "myhouse7"
  "ami": "ami-0ebb80088327d57fc"  "name": "seed-ubuntu-1604"
```


### Protect your AWS keys
Once you start developing and using git to commit changes to a project
you will need to protect your AWS keys.  Use [Git-Secrets](https://github.com/cappetta/SecDevOps-Toolkit/blob/master/SecDevOps-Toolkit.wiki/git-secrets.md)

