
# Overview
## Category
Honey Pots

## T-Pot
### Overview
This allows you to setup a honeypot in your aws enviroment.

### Accessing the asset:

ssh: `ssh -i circleci_terraform ubuntu@IP -p 64295`
web: `https://IP:64297/tpotweb.html`

#### Terraform Dependencies
    - vpc
    - security group
    - 


#### cliff-notes: 
Changing the user password, first param <user>, second <passwd>: 
e.g. `htpasswd -b -c /etc/nginx/nginxpasswd tpot admin`

looking at data files `find . -name "*json" -mmin -30 -ls`