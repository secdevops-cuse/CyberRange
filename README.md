[![CircleCI](https://circleci.com/gh/cappetta/CyberRange.svg?style=svg)](https://circleci.com/gh/cappetta/CyberRange)

![alt text](https://github.com/cappetta/CyberRange/blob/feature/kali-setup/cyberRange_logo.png "Cyber Range")
# Get Started
To get started - [Go here](https://github.com/secdevops-cuse/CyberRange/tree/master/tutorials#how-to-get-started)
On BlackDuck: [Code Analysis](https://www.openhub.net/p/CyberRange)

[Program Solicitation NSF 17-573](https://www.nsf.gov/pubs/2017/nsf17573/nsf17573.htm) aims to make advancements in informal STEM learning.


# Mission Statement

The Cyber Range has 22 AMI's available.  The ultimate goal is to provide an opensource hostile environment leveraging hundreds of known vulnerable assets & configurations. 
 from  minimize the effort needed to create a maximum  goal is to emulate the quality in the [Syracuse University Cyber SEED Labs](http://www.cis.syr.edu/~wedu/seed/Labs_16.04/)


This open-source research lab provides a bootstrap learning platform for Technologists studying any one of the "Big-3" technology domains.  

1. Cyber Security
2. Cloud Computing
3. DevOps

  
The ultimate vision enables the community to build an extensive 
open-source bootstrap red/blue team training environment leveraging 
the largest cloud environment to help individuals develop the most 
in-demand skillsets in the technology industry. 

The virtual machines are mostly found on vulnhub.com, built locally, then converted into private 
amazon machine images (ami's) as they are uploaded into S3 and imported into EC2.

Outlining the process of conversion is outside of this project's goal but I did include a tools directory to help you gain 
some insight into reproducing the AMI's.  Building AMI's is one of the many learning opportunities you can tackle throughout
this project.

## 3 Reasons for the cloud-based Cyber Range
1. Cloud adoption is enormous, learning how to use it sooner than later is a competitive advantage as a professional.
2. Most seasoned researchers leverage virtualization, whether virtualbox, vmware, or docker.  
    Yet VM's, especially windows consume precious SSD / RAM on local laptops.  
3. A laptop w/ 10 virtual machines is pushing its limit and minimizing battery life making deep-broad-isolated 
    research difficult without a form of elastic compute. 


## Domains of knowledge
This project covers 7 gigantically broad domains of knowledge.  Subdomains 
can be expanded upon and broken down by difficulty & supplemental training/tooling.

1. Offensive Security
2. SecDevOps
3. Architecture & Engineering
4. Vulnerability, Change, & Configuration Management
5. Quality Assurance
6. Auditing - Processing, Systems, Applications
7. Development - Infrastructure / Web Applications

Ultimately, how-to's & tutorials will be crafted to supplement many of the technologies, processes, and tools leveraged here.

# Joining the Range
Simply read the info below, add your contact info via the form link or join the slack group.

Ping `@Cappetta` and I'll share the private amazon images with your aws account. Why require sign-up?  
There are a couple of windows machines and I'm paranoid about a window license issues.  All of these
machines leverage evaluation edition licenses & I'll need to account for it's usage at some point.

[Join the Cyber Range Slack Channel](https://join.slack.com/t/acsaws/shared_invite/enQtNTg0NjU1NDY3MTQwLWU4MDc2ZDUyYjg4OTMxNTJkMDljMDM2NzRhOTQzZjQ3MTk1NTFkMmE4OTc2MGRiM2U4NzIwNTVkNmIzYWY0YmY") 


## Range History
This project originated on a MDF board screwed into the side of a wall in my garage in 2014. The board is still there.  It represents
one of the most emerging trends within the industry and the first public Cyber Range known of in NYS, one of a handful across the country.

The first iteration is a now depreciated OpenStack-based [CyberCloud](https://github.com/cappetta/CyberCloud) project with vagrant.
Having an Ops background, tooling enables us to do more, quicker, faster, and with less.  I've Collected the best-in-class tools,
solutions, and bootstrap frameworks to create an integrated solution capable of enormous growth.

## Range Technology  
- Vagrant is an awesome tool for smaller virtual environments both locally and in the cloud.
- Terraform is a tool that performs at a much better scale and contains more functionality.  This project is based off the [fedekau/terraform-with-circleci-example](https://github.com/fedekau/terraform-with-circleci-example)
framework.
- Docker is another standard virtualization platform
- Kali is the go-to system of penetration testers
- Metasplotiable 2/3 & other open-source vuln vms provide foundational stability and future growth.
- Commando-VM is a newly released windows-based penetration testing VM
- DetectionLab is a bootstrap framework by Chris Long which is actively being integrated into this project
- Inspec provides a way to test the state of your environment, application, system, processes, configurations, plus more.
- Plus Much more... 

    
CyberRange combines best practices with emerging technologies.
 - Amazon Web Services
 - Kali/Nessus/Burpsuite
 - Terraform
 - OpenSourced Vulnerable VM's [See Asset Inventory](asset-inventory.md)
 - using a CI/CD tool to verify builds [CircleCI](https://circleci.com/)

### License Keys
To use this project you need an AWS account and license keys for any products which require one.  Learning how to access & use the individual
tools is placed on the individual researcher and a holistic guide outlining every single step is best preserved outside of this project,
google the info for Open-Source Intelligence (OSINT)

To obtain an AWS free-tier account: [Amazon Free-Trial Sign-up](https://portal.aws.amazon.com/billing/signup?refid=em_127222) Note: The default configuration uses under-powered t2.micro assets.&nbsp;&nbsp;</div>
To obtain a Nessus Home license, e.g. for academic purposes, [Nessus Home License](https://www.tenable.com/products/nessus-home)


To obtain access to the private amazon images, simply enter a name, email, and AWS Account Number. 
The account number enables the images to be shared across accounts.<br></div>

Please Use the [FormAssembly.com](http://www.formassembly.com) Form below to Sign-Up to support the project and gain access to the private AMI's located: [In the Asset Inventory page](https://github.com/secdevops-cuse/CyberRange/blob/master/asset-inventory.md")

[Alpha Sign-Up Form](https://www.tfaforms.com/4729221)
 
![alt text](https://raw.githubusercontent.com/secdevops-cuse/CyberRange/master/CyberRange.png "Cyber Range")

### Purpose
It enables researchers to setup assets quickly, maintain manifests of common
setups, and deploy locally or to the AWS cloud with the flip of a configuration
setup.

This is simply an AWS-based solution for a PenTester.  The goal is to
provide a sterile cloud penTesting environment with the attacker machine
and multiple targets within minutes.

To date this project provides access to 14 AMI's, 3 Windows boxes, 2 Offensive
 Security desktops in us-east-1. All are freely available on the internet.

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



### Protect your AWS keys
Once you start developing and using git to commit changes to a project
you will need to protect your AWS keys.  Use [Git-Secrets](https://github.com/cappetta/SecDevOps-Toolkit/blob/master/SecDevOps-Toolkit.wiki/git-secrets.md)

### Other Environments to Perform Cyber Research in
Naturally folks will ask, what other learning environments exist.  There are many so consider:
 - www.hackthebox.eu
 - www.hacking-lab.com
 - www.vulnhub.com