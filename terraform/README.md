<!--Development - [![CircleCI](https://circleci.com/gh/cappetta/cyberRange/tree/development.svg?style=svg)](https://circleci.com/gh/cappetta/cyberRange/tree/development)  -->

<!--Stage - [![CircleCI](https://circleci.com/gh/cappetta/cyberRange/tree/stage.svg?style=svg)](https://circleci.com/gh/cappetta/cyberRange/tree/stage)-->

[![CircleCI](https://circleci.com/gh/cappetta/cyberRange/tree/master.svg?style=svg)](https://circleci.com/gh/cappetta/cyberRange/tree/master)


# CyberRange Terraform 

## Booting up
To bootup the range you need to perform the following steps:
1 - clone the project & perform the [basic setup guide]():
2 - terraform apply
3 - awsnuke to destroy


##  Overview 
This started as an unofficial fork of the [terraform-with-circleci-example](https://github.com/fedekau/terraform-with-circleci-example).  Then quickly evolved into a cloud-based SecDevOps penTesting lab.

The simple goal is to create an open-source repository of vulernable targets which 
provide the security researcher with the scalability, performance, and 
elastic compute of the cloud.

If you don't know how to use terraform, consider: [this udemy terraform course content on github to learn the basics](https://github.com/wardviaene/terraform-course)


## Setting the project
The range is primarily setup for us-east-1.  This is a simple reminder that I'm plan to 
create regional ami manifests for simple copy/pasta simplication of setup. 

### Setting up AWS

Create a location for all the terraform state files.  These are the files which
hold the 
Let's create a bucket to store our terraform data in & a few folders within.

```
aws s3 mb s3://secdevops-cuse
aws s3api put-object --bucket secdevops-cuse --key us-east-1
aws s3api put-object --bucket secdevops-cuse --key eu-west-2
aws s3api put-object --bucket secdevops-cuse --key ap-south-1
```

then let's initialize terraform in the desired aws region 
`cd ./terraform/environments/<aws-region>; terraform init; terraform plan`



## Terraform folder layout
```
 - docs
 - environments
 - keys
 - modules
    - infrastructure
        - cloud-init
        - config
        - assets
        
    - state
 - tutorials            
```

### Terraform subnets

The only assets which obtain public IPs are configured for the kali subnet.  That subnet has the very 
specific `map_public_ip_on_launch = true` configuration.  Add this configuration to other subnets before
creating the subnet.
  
### Default Users / Passwords
`IEUser / Passw0rd!` - win7 / FlareVM
<br/>
`terraform / terraform`
<br/>
`administrator / terraform` - CommandoVM
<br/>
`nxadmin / nxpassword`
</br>
`remnux / malware`

### Ports:
8000 - Nessus Network Monitor
443 - Tenable.SC
8834 - Nessus
3780 - R7 Insight VM
3389 - CommandoVM  / Flare VM
