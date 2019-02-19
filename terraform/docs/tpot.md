
# Overview

## T-Pot
### Overview
This allows you to setup a honeypot in your aws enviroment.

### Accessing the asset:

ssh: `ssh -i circleci_terraform ubuntu@13.210.14.38 -p 64295`
web: `https://13.210.14.38:64297/tpotweb.html`

#### Terraform Dependencies
    - vpc
    - security group
    - 
### Category
Honey Pots

### Inspect File
#### cliff-notes: 
Changing the user password, first param <user>, second <passwd>: 
e.g. `htpasswd -b -c /etc/nginx/nginxpasswd tpot admin`
