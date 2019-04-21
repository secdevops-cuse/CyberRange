# Overview

This is built using the the `hashicorp/terraform:light` image which is 
an alpine linux container. 

This contains multiple steps, jobs, and a workflow to control the build
logic.

The workflow performs the build, plan, then apply jobs.  
 
 
Common Errors: 
 - AWS keys 
 - ssh private keys