[![CircleCI](https://circleci.com/gh/cappetta/CyberRange.svg?style=svg)](https://circleci.com/gh/cappetta/CyberRange)

![alt text](https://github.com/cappetta/CyberRange/blob/feature/kali-setup/cyberRange_logo.png "Cyber Range")
## Overview

<div class="htmlSection" id="tfa_1"><div class="htmlContent" id="tfa_1-HTML"><div>The SecDevOps@Cuse Cyber Range Project is currently in alpha-invite mode.&nbsp; <br></div><div><br></div><div>The goal of the Cyber Range project is to provide&nbsp; Offensive / Defensive Cyber Security researchers a safe, controlled, elastic compute framework.&nbsp; <br></div><div><br></div><div>This project aims to support an NSF Advancing Informal STEM Learning, <a href="https://www.nsf.gov/pubs/2017/nsf17573/nsf17573.htm" target="_blank">Program Solicitation NSF 17-573.</a><br></div><div><br></div><div>To obtain full access to the private amazon images, simply enter a name, email, and AWS Account Number. The account number is will enable the images to be shared across accounts.<br></div><div><br></div><div>To obtain an AWS free-tier account,&nbsp; <a href="https://portal.aws.amazon.com/billing/signup?refid=em_127222&amp;redirect_url=https%3A%2F%2Faws.amazon.com%2Fregistration-confirmation#/start" target="_blank">Click Here.</a> Note: The default configuration uses under-powered t2.micro assets.&nbsp;&nbsp;</div><div><br></div><div>Please Use the <a href="http://www.formassembly.com" target="_blank">FormAssembly.com</a> Form below to Sign-Up to support the project, then use these private images<br></div></div></div>

[Alpha Sign-Up Form](https://www.tfaforms.com/4729221) 

### Purpose
It enables researchers to setup assets quickly, maintain manifests of common
setups, and deploy locally or to the AWS cloud with the flip of a configuration
setup.

This is simply an AWS-based solution for a PenTester.  The goal is to
provide a sterile cloud penTesting environment with the attacker machine
and multiple targets within minutes.

To date this project provides access to 11 AMI's in us-east-1.

Note: use aws-nuke carefully to and successfully purge all resources from
your aws environment as there are occassional times when `terraform destroy` 
leaves lingering assets.  You will see conflicts on `terraform apply` when
applicable.



