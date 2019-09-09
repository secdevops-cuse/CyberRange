![alt text](https://github.com/cappetta/CyberRange/blob/master/CyberRangev2.png "Cyber Range")
[![CircleCI](https://circleci.com/gh/cappetta/CyberRange.svg?style=svg)](https://circleci.com/gh/cappetta/CyberRange)

# Overview: 
This CyberRange project represents the first open-source Cyber Range blueprint in the world.

This project provides a bootstrap framework for a complete  offensive, defensive, reverse engineering, & security intelligence  
 tooling in a private research lab using the AWS Cloud. This project contains vulnerable systems, open-source tools, . It simply provides a researcher with a disposable offensive / defensive 
AWS-based environment in less than 10 minutes.


# Get Started
To gain access you must send me your AWS account number so I can share the 30+ Amazon Machine Images (AMIs).  

Simply - Fill out the [Alpha Sign-Up Form](https://www.tfaforms.com/4729221) 


[Read the Getting Started Guide](tutorials/getting_started.md)
<br/>

[Program Solicitation NSF 17-573](https://www.nsf.gov/pubs/2017/nsf17573/nsf17573.htm) aims to make advancements in informal STEM learning.  



## Range History
### Release Notes: 
 
<b>v2</b> - released on Sept 6, 2019 
    <br/>- features include: makefile, inspec tests, detection lab integration, commandoVM v2, 
     kali 2019.4 w/ xx opensource github tools: CyberRange, DetectionLab, IntruderPayloads, 
     aws-credential-compromise-detection, aws-nuke, blast-radius, cloudgoat, cloudmapper, packer-windows, 
     pacu, security-monkey-terraform, security_monkey, sites-using-cloudflare, 
     net-creds, Reconnoitre, shell_generator.sh, msploitego, awesome-nodejs-pentest, 
     cloudgoat, hammer, joomscan, learning-tools, LetsMapYourNetwork, 
     php-webshells, PowerHub, PowerSploit, snmpwn, vulhub, ScoutSuite, prowler, 
     pacbot, terraform-aws-secure-baseline, gitleaks, my-arsenal-of-aws-security-tools   

[v2 PR\#57](https://github.com/secdevops-cuse/CyberRange/pull/57)
[v2 PR\#58](https://github.com/secdevops-cuse/CyberRange/pull/58)
[v2 PR\#59](https://github.com/secdevops-cuse/CyberRange/pull/59)

[v1](https://github.com/secdevops-cuse/CyberRange/pull/3/files) - initial release on Feb 18th, 2019  
    CircleCi integration w/ testing, aws inspector automated setup, FB CTF, kali, docker,
    webgoat, dvwa, 8 vulnerable AMIs, + more over the next 8 months.

This project was conceptualized and drafted on a MDF board screwed into the side of a wall in my garage in 2014. 
It sysmbolizes an early interest in the most emerging trends within technology.  

The first iteration is a now depreciated OpenStack-based [CyberCloud](https://github.com/cappetta/CyberCloud) project with vagrant.
Having an Ops background, tooling enables us to do more, quicker, faster, and with less.  I've Collected the best-in-class tools,
solutions, and bootstrap frameworks to create an integrated solution capable of enormous growth.

## Range Technology  
- Terraform is a tool that performs at a much better scale and contains more functionality.  This project is based off the [fedekau/terraform-with-circleci-example](https://github.com/fedekau/terraform-with-circleci-example)
framework.
- Docker is another standard virtualization platform
- Kali is the go-to system of penetration testers
- Metasplotiable 2/3 & other open-source vuln vms provide foundational stability and future growth.
- Commando-VM is a newly released windows-based penetration testing VM
- DetectionLab is a bootstrap framework by Chris Long which is actively being integrated into this project
- Inspec provides a way to test the state of your environment, application, system, processes, configurations, plus more.
- Vagrant is an awesome tool for smaller virtual environments both locally and in the cloud - checkout 
[SecDevOps Toolkit - vagrant](https://github.com/cappetta/SecDevOps-Toolkit/tree/master/vagrant) for advanced yaml setups for 
multi-instance scenarios.
- Plus Much more... 

CyberRange combines best practices with emerging technologies.
 - Amazon Web Services
 - Kali/Nessus/Burpsuite
 - Terraform
 - OpenSourced Vulnerable VM's [See Asset Inventory](asset-inventory.md)
 - using a CI/CD tool to verify builds [CircleCI](https://circleci.com/)

## Domains of knowledge
This open-source research lab provides a bootstrap learning platform for 
Technologists studying any one of the "Big-3" technology sectors.  

1. Cyber Security
2. Cloud Computing
3. DevOps
 
This project covers 7 gigantically broad domains of technical knowledge.

1. Offensive Security
2. SecDevOps
3. Architecture & Engineering
4. Vulnerability, Change, & Configuration Management
5. Quality Assurance
6. Auditing - Processing, Systems, Applications
7. Development - Infrastructure / Web Applications

# Mission Statement
 
The ultimate expectation is to emulate the quality, format, and presentation of 
the [Syracuse University Cyber SEED Labs](http://www.cis.syr.edu/~wedu/seed/Labs_16.04/) while 
creating strategic hubs of Cyber Security Center-of-Excellence Partnerships where the gap
between enterprise experience & academic learning is addressed by focusing on 
people, products, and process. 

### Protect your AWS keys
Once you start developing and using git to commit changes to a project
you will need to protect your AWS keys.  Use [Git-Secrets](https://github.com/cappetta/SecDevOps-Toolkit/blob/master/SecDevOps-Toolkit.wiki/git-secrets.md)

### Other Environments to Perform Cyber Research in
Naturally folks will ask, what other learning environments exist.  There are many so consider:
 - www.hackthebox.eu
 - www.hacking-lab.com
 - www.vulnhub.com