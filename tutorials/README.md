# Overview

The goal of this initiative is to help individuals get up & running quickly.  
Let's minimizing what you need to know & maximize how much time you spend
 learning.    

CyberRange simply combines the best practices by using a CI/CD tool [CircleCI](https://circleci.com/)
  to continuously test every change sent into this project.
  
This tooling aims to provide a cloud-based learning platform for individuals
working in IT.  From Auditing to Operations to Cyber Security.  Across 
Vulnerability Mgmt, DevOps, Cloud Computing, Offensive Security, 
Quality Assurance, & Configuration Mgmt domains.  

This toolkit create a vulnerable enviroment from 10+ vulnerable virtual
machines, 3 of which are windows.  

You can break everything, destroy anything, and rebuild it all when you
want to start fresh and master a concept.

The deeper you go the more interest in customization
(e.g. install software, update licenses, download, etc).  Learn how to 
automate those tasks so you don't have to waste time repeating them.  

  
## Low-Cost
The goal is to make this project 'free tier' compatible, yet it might not be.  
Just in case obtain an AWS edu gift-card of Amazon, [$150 of credit for $30](https://www.ebay.com/itm/150-Amazon-Web-Services-AWS-Credit-Code/153384276906).

Destroy assets often. Terraform does a great job at creating assets, sometimes 
it's destruction is not perfect.  Consider learning how to wipe-out
your entire cloud account with `https://github.com/rebuy-de/aws-nuke`

This will help constantly minimize your bill and force you to learn how to use the basic AWS services.  
There are many training guides outlining the services, their purpose, and how-to connect things. 

[Monitor your AWS billing and find out how to set billing alerts](http://lmgtfy.com/?q=aws+billing+alert) 

This project leverages [Terraform](http://lmgtfy.com/?q=aws+billing+alert) to automate the creation and 
linking of services & assets in the cloud.  

## How-to Get Started
Assuming you are new to all technologies is the best approach. The first bit of advice is Google them, 
learn about them & gain a competitive edge in the enterprise.  As one of the biggest challenges is 
ensuring accurate architecture blueprints of systems. 

### Setting up
 - Linux / Mac: use your package manager for the software install steps.  If you can't figure out the conversion
    then `try harder`.
 - Specifically For windows:  
    - [install chocolatey](https://chocolatey.org/docs/installation) 
        - search for powershell (right-click and open as admin) 
        - copy/paste: `Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))`
    - use `choco.exe` to install software:
        - terraform
        - awscli
        - git
        - e.g.: `choco.exe install -y terraform awscli git`
    - Create AWS free trial
        - view your account
        - obtain your account number
        - obtain the access key
        - Sign-up for the CyberRange for automated access to future images: [Alpha Sign-Up Form](https://www.tfaforms.com/4729221)
    - In powershell:
        - cd $env.USERPROFILE
        - mkdir .aws; 
        - type `aws configure` 
            - enter access key
            - enter secret access key
            - enter us-east-1 as default region
            - enter (no default format)
        - perform a few AWS command-line checks:
            - type: `aws s3 ls` 
            - type: `aws ec2 describe-instances`
        - Clone the repository:
            - type: `cd $env.HOMEPATH\Desktop; git clone https://github.com/secdevops-cuse/CyberRange.git`
        - create ssh keys:
            - move to keys directory: `cd $env.HOMEPATH\Desktop\CyberRange\terraform\keys\`
            - execute `ssh-keygen.exe` 
                - enter file location: `$env.HOMEPATH\Desktop\CyberRange\terraform\keys\circleci_terraform`
            - type `ls`
                - confirm 2 files now exist, same name but 1 without the .pub extension
        - Initialize terraform:
            - execute: 
                - `cd $env.HOMEPATH\Desktop\CyberRange\terraform\environments\development`
                - `terraform.exe init`
            - confirm the msg `Terraform has been successfully initialized!` exists in the output
    - Creating the Assets in AWS:
        - By now your environment should be fully setup and initialized.
        you've created an aws account, obtained the api access keys, queried
        the aws ec2 & s3 services, cloned the CyberRange project locally, &
        created your ssh keys which give you access to the kali penTester 
        desktop.
        - To see what's going to be created, execute: `terraform plan`
        - Test creating the assets: `terraform apply --auto-approve`
    - Clean-up:    
        - destroy everything: `terraform destroy -force`
        - Suggestion: You are charged per hour by AWS, nuke your environment w [aws-nuke](https://github.com/rebuy-de/aws-nuke) 
            - e.g.:`./aws-nuke -c ./config/aws-all.yml --profile default --no-dry-run`