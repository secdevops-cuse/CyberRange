# Overview
This will guide you through the setup of the Range in a supported AWS region. 
These AMI's are currently available in us-east-1 and eu-west-2.

First let's review the pre-requisites:

- To gain access to the Cloud Images, the Amazon AMI's, I need to share them with your AWS account. 

If you have an AWS account, go right to the registration form [CyberRange Registration Form](https://www.tfaforms.com/4729221)

If you are a new AWS user, [click here to sign-up for a free-trial](https://aws.amazon.com/free/start-your-free-trial/).

I believe research / learning should be low-cost and provide an enormous impact in one's ability to continuously improve.  If you are like me 
you will want to grab some AWS Credits off eBay to cushion your account.  
 
## Initial setup
* You will also need to install the awscli and perform `aws configure` to setup `~/.aws/credentials`
** Once done you will need to create an S3 bucket if you want to enable the remote storage of your state.  This is an advanced terraform usecase.
 
* Please ensure you have the following software: terraform, git, jq, a remote desktop client, ssh

* You will also need to expand a few services quota's in your AWS account, see: https://github.com/secdevops-cuse/CyberRange/issues/73


## Quick-Start Guide
The makefile has been created in hopes of providing users with a simple menu-driven approach towards setting up the Cyber Range.  There are a few basic pre-req's 

- Clone the repo
- go into all environment directories: `cd terraform/environments/<region>`
	- Then update the region in the following files:
		- terraform.tfvars
		- variables.tf
		- main.tf
	    - change the s3 bucket name in `terraform/environments/<region>/main.tf`
	    - Update the IP address of your system in ip_list of `secdevops/variables.tf` 
- initialize the terraform project with `terraform init`
- change directory into the project root, then perform the following make commands: 
    - `make plan` - review the output for failures, there should be none.
    - `make target-simple` - this will create a kali/commandoVM set of offensive assets, 

### Initializing your desktop
This primarily outlines a windows desktop setup.   
 
 - Linux / Mac: use your package manager for the software packages: `terraform, awscli, git, jq, awk, make`.   

 - Windows Specific Instructions:
    - [install chocolatey](https://chocolatey.org/docs/installation) 
        - search for powershell (right-click and open as admin) 
        - copy/paste: `Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))`

    - use `choco.exe` to install software:
        - terraform
        - awscli
        - git
        - jq
        - e.g.: `choco.exe install -y terraform awscli git jq`
        
    - Create AWS free trial
        - view your account
        - obtain your account number
        - obtain the access key / secret access key & perform the awscli configure step

```
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
                - `cd $env.HOMEPATH\Desktop\CyberRange\terraform\environments\eu-west-2`
                - `terraform.exe init`
            - confirm the msg `Terraform has been successfully initialized!` exists in the output
            
    - Creating the Assets in AWS:
        - By now your environment should be fully setup and initialized.
        you've created an aws account, obtained the api access keys, queried
        the aws ec2 & s3 services, cloned the CyberRange project locally, &
        created your ssh keys to gain access to the kali desktop.
        
        - To see what's going to be created, execute: `terraform plan`
        - Test creating the assets: `terraform apply --auto-approve`
    - Clean-up:    
        - destroy everything: `terraform destroy -force`
        - Suggestion: You are charged per hour by AWS, nuke your environment w [aws-nuke](https://github.com/rebuy-de/aws-nuke) 
            - e.g.:`./aws-nuke -c ./config/aws-all.yml --profile default --no-dry-run`
```

## Getting Started
- Clone the repo
- go into the environment directory: `cd terraform/environments/<region>`
	- update the region in the following files:
		- terraform.tfvars
		- variables.tf
		- main.tf
	    - change the s3 bucket name in `terraform/environments/<region>/main.tf`
	    - IP address of the system in `secdevops/variables.tf` 
- initialize the terraform project with `terraform init`
	```
	$ terraform init
		Initializing modules...
		- module.staging-state
		  Getting source "../../modules/state"
		- module.staging-infrastructure
		  Getting source "../../modules/infrastructure"
		- module.staging-infrastructure.network
		  Getting source "modules/network"
		- module.staging-infrastructure.secdevops
		  Getting source "modules/secdevops"

		Initializing the backend...

		Successfully configured the backend "s3"! Terraform will automatically
		use this backend unless the backend configuration changes.

		Initializing provider plugins...
		- Checking for available provider plugins on https://releases.hashicorp.com...
		- Downloading plugin for provider "null" (2.1.1)...
		- Downloading plugin for provider "aws" (2.7.0)...

		The following providers do not have any version constraints in configuration,
		so the latest version was installed.

		To prevent automatic upgrades to new major versions that may contain breaking
		changes, it is recommended to add version = "..." constraints to the
		corresponding provider blocks in configuration, with the constraint strings
		suggested below.

		* provider.aws: version = "~> 2.7"
		* provider.null: version = "~> 2.1"

		Terraform has been successfully initialized!

		You may now begin working with Terraform. Try running "terraform plan" to see
		any changes that are required for your infrastructure. All Terraform commands
		should now work.

		If you ever set or change modules or backend configuration for Terraform,
		rerun this command to reinitialize your working directory. If you forget, other
		commands will detect it and remind you to do so if necessary.
	```



### Teraform Init & Terraform Plan 
At this point the `terraform init` & `terraform plan` command should be completed successfully, this will provide an initial view of the assets to be created.

#### Inventory of  the Assets
```
$ terraform plan | grep -i module.staging-infrastructure

# this first section represents the modules->infrastructure->modules->network assets

  + module.staging-infrastructure.module.network.aws_eip.nat-a
  + module.staging-infrastructure.module.network.aws_eip.nat-b
  + module.staging-infrastructure.module.network.aws_internet_gateway.gw
  + module.staging-infrastructure.module.network.aws_nat_gateway.nat-a
  + module.staging-infrastructure.module.network.aws_nat_gateway.nat-b
  + module.staging-infrastructure.module.network.aws_route_table.private-a
  + module.staging-infrastructure.module.network.aws_route_table.private-b
  + module.staging-infrastructure.module.network.aws_route_table.public-a
  + module.staging-infrastructure.module.network.aws_route_table.public-b
 ++ module.staging-infrastructure.module.network.aws_route_table_association.private-a                                
  + module.staging-infrastructure.module.network.aws_route_table_association.private-b
  + module.staging-infrastructure.module.network.aws_route_table_association.public-a
  + module.staging-infrastructure.module.network.aws_route_table_association.public-b
  + module.staging-infrastructure.module.network.aws_subnet.kali_subnets_ids
  + module.staging-infrastructure.module.network.aws_subnet.private-a
  + module.staging-infrastructure.module.network.aws_subnet.private-b
  + module.staging-infrastructure.module.network.aws_subnet.public-a
  + module.staging-infrastructure.module.network.aws_subnet.public-b
  + module.staging-infrastructure.module.network.aws_vpc.main

 the Next section represents the modules->infrastructure->modules->secdevops assets

  + module.staging-infrastructure.module.secdevops.aws_ebs_volume.kali-volume
  + module.staging-infrastructure.module.secdevops.aws_ebs_volume.nessus-volume
  + module.staging-infrastructure.module.secdevops.aws_ebs_volume.nnm-volume
  + module.staging-infrastructure.module.secdevops.aws_ebs_volume.sc-volume
  + module.staging-infrastructure.module.secdevops.aws_ebs_volume.was-volume
  + module.staging-infrastructure.module.secdevops.aws_instance.ami_ms3_2k12
  + module.staging-infrastructure.module.secdevops.aws_instance.cr_bulldog
  + module.staging-infrastructure.module.secdevops.aws_instance.cr_fristileaks
  + module.staging-infrastructure.module.secdevops.aws_instance.cr_mrrobot
  + module.staging-infrastructure.module.secdevops.aws_instance.cr_ms3_2k8
  + module.staging-infrastructure.module.secdevops.aws_instance.cr_ms3_nix
  + module.staging-infrastructure.module.secdevops.aws_instance.cr_myhouse7
  + module.staging-infrastructure.module.secdevops.aws_instance.cr_sickos
  + module.staging-infrastructure.module.secdevops.aws_instance.cr_skytower
  + module.staging-infrastructure.module.secdevops.aws_instance.cr_stapler
  + module.staging-infrastructure.module.secdevops.aws_instance.cr_vulnos
  + module.staging-infrastructure.module.secdevops.aws_instance.defender_win2k10
  + module.staging-infrastructure.module.secdevops.aws_instance.docker
  + module.staging-infrastructure.module.secdevops.aws_instance.hackinos
  + module.staging-infrastructure.module.secdevops.aws_instance.kali
  + module.staging-infrastructure.module.secdevops.aws_instance.nessus
  + module.staging-infrastructure.module.secdevops.aws_instance.nnm
  + module.staging-infrastructure.module.secdevops.aws_instance.sc
  + module.staging-infrastructure.module.secdevops.aws_instance.was
  + module.staging-infrastructure.module.secdevops.aws_instance.win2003
  + module.staging-infrastructure.module.secdevops.aws_instance.win2008
  + module.staging-infrastructure.module.secdevops.aws_instance.win2012
  + module.staging-infrastructure.module.secdevops.aws_instance.win2012_RTM
  + module.staging-infrastructure.module.secdevops.aws_instance.win2016
  + module.staging-infrastructure.module.secdevops.aws_instance.win2019
  + module.staging-infrastructure.module.secdevops.aws_instance.win7
  + module.staging-infrastructure.module.secdevops.aws_instance.win8
  + module.staging-infrastructure.module.secdevops.aws_key_pair.circleci_key
  + module.staging-infrastructure.module.secdevops.aws_security_group.fbctf
  + module.staging-infrastructure.module.secdevops.aws_security_group.kali
  + module.staging-infrastructure.module.secdevops.aws_security_group.logger
  + module.staging-infrastructure.module.secdevops.aws_security_group.tpot
  + module.staging-infrastructure.module.secdevops.aws_security_group.webgoat
  + module.staging-infrastructure.module.secdevops.aws_security_group.windows
  + module.staging-infrastructure.module.secdevops.aws_security_group_rule.allow_all_between_kali_and_webgoat
  + module.staging-infrastructure.module.secdevops.aws_security_group_rule.allow_all_between_webgoat_and_kali
  + module.staging-infrastructure.module.secdevops.aws_volume_attachment.kali-volume-attachment
  + module.staging-infrastructure.module.secdevops.aws_volume_attachment.nessus-volume-attachment
  + module.staging-infrastructure.module.secdevops.aws_volume_attachment.nnm-volume-attachment
  + module.staging-infrastructure.module.secdevops.aws_volume_attachment.sc-volume-attachment
  + module.staging-infrastructure.module.secdevops.aws_volume_attachment.was-volume-attachment
  + module.staging-infrastructure.module.secdevops.null_resource.kali
```

