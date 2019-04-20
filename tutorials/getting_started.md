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


## Adding new assets




