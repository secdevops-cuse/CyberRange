variable "environment" {
  description = "the environment the deployment is running as"
}

variable "vpc-id" {
  description = "the vpc-id"
}
variable "vpc-cidr-block" {
  description = "the cidr block of the vpc"
}

variable "public-a-subnet-id" {
  description = "public subnet a"
}

variable "public-b-subnet-id" {
  description = "public subnet b"
}

variable "private-a-subnet-id" {
  description = "private subnet a"
}

variable "private-b-subnet-id" {
  description = "private subnet b"
}


variable "count" {
  description = "default # of assets to create"
  default = 2
}

variable "tpot_ct" {
  description = "# of tpot assets to create"
  default = 1
}

variable "fbctf_ct" {
  description = "# of FBCTF assets to create"
  default = 1
}
variable "kali_ct" {
  description = "# of kali assets to create"
  default = 1
}
variable "docker_ct" {
  description = "# of docker assets to create"
  default = 1
}


variable "tpot_instance_type" {
  description = "tpot instance type"
  default = "t2.small"
}

variable "docker_instance_type" {
  description = "tpot instance type"
  default = "t2.small"
}

variable "tpot_root_vol_size" {
  description = "tpot root volume size"
  default = "300"
}

variable "fbctf_root_vol_size" {
  description = "root / boot volume size"
  default = "30"
}

variable "tpot_user_data"{
  description = "tpot cloud-init script"
  default = "../../modules/infrastructure/cloud-init/tpot.setup.yml"
}

variable "fbctf_user_data"{
  description = "fbctf cloud-init script"
  default = "../../modules/infrastructure/cloud-init/fbctf.setup.yml"
}

variable "private_key" {
  description = "default private key"
  default = "../../keys/circleci_terraform"
}

variable "alarms_email" {
  description = ""
  default = "your"
}


variable "ami_win2016"{
  description = "The ami of the 2016 server asset"
  default = "ami-xxxx"
}

variable "ami_ms3_nix" {
  default = "ami-05056794734905857"
  description = "metasploitable3-ubuntu-1404"
}

variable "ami_fristileaks" {
  default = "ami-0539fa87bb2306efe"
  description = "FristiLeaks_1.3"
}

variable "ami_mrrobot" {
  default = "ami-067d428e8151617b0"
  description = "mrRobot"
}
variable "ami_sickos"
{
  default = "ami-0af37127c6324f3f4"
  description = "Sick0s1.2"
}
variable "ami_vulnos"
{
  default = "ami-0b5b15c7c25534a9c"
  description = " q qVulnOSv2"
}
variable "ami_stapler"
{
  default = "ami-0cbf02480a95b6edd"
  description = "Stapler"
}
variable "ami_ms3_2k8"
{
  default = "ami-0da37791afc9aea77"
  description = "metasploitable3-win2k8"
}
variable "ami_skytower"
{
  default = "ami-0edaa47a082e55340"
  description = "SkyTower"
}

variable "ip_list"
{
  default = "71.115.214.236/32"
  description = "private ip"
}
