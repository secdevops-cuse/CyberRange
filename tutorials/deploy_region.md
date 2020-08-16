# overview

The goal of this is to outline the specific steps needed to deploy the cyber range to a new, unsupported region.

## Step 1 - Deploy AMI's to region
Copy the images from region to region using the following command:

<!--todo: add ami copy command-->
`something great goes here `

## Step 2 - Create region-specific terraform folder
Duplicate the `terraform/environments/us-east-1` folder.  Name the folder to the desired region (e.g. us-west-1)

## Step 3 - Update region-specific terraform manifests
Update the following files with the statically defined region name
 ```
 main.tf
 variables.tf
 terraform.tfvars (if it exists)
 ```

## Step 4 - Configure Makefile
Update the makefile settings
``` 
S3_BUCKET=
REGION=
```

## Step 5 - Initialize the project in the region

Perform the initialization of the region
`AWS_PROFILE=whatever ENV=demo REGION=me-south-1 make init`

```
<SHELLPROMPT> AWS_PROFILE=whatever ENV=demo REGION=me-south-1 make init
Configuring the terraform backend
Upgrading modules...
- range-infra in ../../modules/infrastructure
- range-infra.network in ../../modules/infrastructure/assets/network
- range-infra.secdevops in ../../modules/infrastructure/assets/secdevops
- staging-state in ../../modules/state

Initializing the backend...

Initializing provider plugins...
- Checking for available provider plugins...
- Downloading plugin for provider "aws" (hashicorp/aws) 2.57.0...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.aws: version = "~> 2.57"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
Switching to workspace demo-me-south-1

Workspace "demo-me-south-1" doesn't exist.

You can create this workspace with the "new" subcommand.
Created and switched to workspace "demo-me-south-1"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.
```
 
## Step 6 - Update your aws credentials file
 In the projects main.tf there is a `provider "aws"` statement which points to a specific profile. Update this
 if you use something beyond the `default` profile. 
 
## Step 7 - Make the Network
Perform a `make network` command to perform a secondary sanity check of the project in the new region.  
The output of this command provides 3 bits of information which allows you to confirm it has been successful.

```
Apply complete! Resources: 9 added, 0 changed, 0 destroyed.
   
   Outputs:
   
   attacker_subnet = subnet-xxxxx
   secgroup = sg-xxxxx
   vpc = vpc-xxxxx
```

The above information is available for use in vagrant-scenarios.

## Step 8 - Deploy the Instances
Now we need to create the new instances and Update the instance types if the region does not support the exist


## Step 
## Step 
## Step 
## Step 