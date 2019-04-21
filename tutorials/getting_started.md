# Overview
This will guide you through the setup of the Range in a new AWS region.

First let's start off with some basics, the pre-requisites:
- an AWS account with access keys setup in `~/.aws/credentials`
- An S3 bucket 
- terraform (downloaded / installed)
- git (to clone the repo)

## Getting Started
- Clone the repo
- go into the environment directory: `cd terraform/environments/staging/`
	- this is the main directory you will perform terraform commands from
	- update the region in the following files:
		- terraform.tfvars
		- variables.tf
		- main.tf
	- update the s3 bucket name on Line 13 of `main.tf`
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
 + module.staging-infrastructure.module.network.aws_route_table_association.private-a                                
  + module.staging-infrastructure.module.network.aws_route_table_association.private-b
  + module.staging-infrastructure.module.network.aws_route_table_association.public-a
  + module.staging-infrastructure.module.network.aws_route_table_association.public-b
  + module.staging-infrastructure.module.network.aws_subnet.kali_subnets_ids
  + module.staging-infrastructure.module.network.aws_subnet.private-a
  + module.staging-infrastructure.module.network.aws_subnet.private-b
  + module.staging-infrastructure.module.network.aws_subnet.public-a
  + module.staging-infrastructure.module.network.aws_subnet.public-b
  + module.staging-infrastructure.module.network.aws_vpc.main

# this first section represents the modules->infrastructure->modules->secdevops assets

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




