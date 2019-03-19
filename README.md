[![CircleCI](https://circleci.com/gh/cappetta/CyberRange.svg?style=svg)](https://circleci.com/gh/cappetta/CyberRange)

# Cyber Range
## Overview
This aims to provide a simple setup for a reproducible offensive security lab.

To gain access to these Private Amazon images please submit your AWS account number on the [FormAssembly](http://FormAssembly.com) sign-up form below.

<div class="htmlSection" id="tfa_1"><div class="htmlContent" id="tfa_1-HTML"><div>The SecDevOps@Cuse Cyber Range Project is currently in private alpha.<br></div><div><br></div><div>To participate and obtain access to the private images, you simply need to enter a name, email, and AWS Account Number to share the images with.<br></div><div><br></div><div>To obtain an AWS free-tier account,&nbsp; <a target="_blank" href="https://portal.aws.amazon.com/billing/signup?refid=em_127222&amp;redirect_url=https%3A%2F%2Faws.amazon.com%2Fregistration-confirmation#/start">Click Here.</a></div><div><br></div><div>Note: The default configuration uses t2.micro assets.&nbsp;&nbsp;</div><div><br></div></div></div>

https://www.tfaforms.com/4729221 

It enables researchers to setup assets quickly, maintain manifests of common
setups, and deploy locally or to the AWS cloud with the flip of a configuration
setup.

The goal here is to run terraform/vagrant/docker and automate the
provisioning of assets for a penetration tester, ethical hacker, &
aspiring cyber security engineers.

Recognition is key for community success therefore all credit to tools,
influencer's, and forks were added to the credits.md and will be updated 
as often as possible.

##
This is simply an AWS-based solution for a PenTester.  The goal is to
provide a sterile cloud penTesting environment with the attacker machine
and multiple targets within minutes.

To date this project provides access to 11 AMI's in us-east-1.

Note: use aws-nuke carefully to and successfully purge all resources from
your aws environment as there are occassional times when `terraform destroy` 
leaves lingering assets.  You will see conflicts on `terraform apply` when
applicable.



