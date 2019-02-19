
# ------------------------------------------
# Credentials via API Keys
# ------------------------------------------
variable access_key {
  description = "The API Access key to AWS"
  default="xxxxx"
}

variable secret_key {
  description = "The API Secret key to AWS"
  default="xxxx"
}

# ------------------------------------------
# Testing variables
# ------------------------------------------
variable ticket {
  description = "The metadata about the item you are currently working on"
  default="xxxx"
}

variable branch {
  description = "The feature-branch metadata"
  default="xxxx"
}

variable choco_package {
  description = "The default"
  default = "skype-noupdate.6.9.0.106.nupkg"
}

variable choco_package_name {
  default = "skype-noupdate.6.9.0.106"
}

variable software {
  default = "googlechrome"
}

variable version_patched {
  default = ""
}

variable version_unpatched {
  default = ""
}


# ------------------------------------------
# Specialized windows target declarations
# ------------------------------------------

variable "windows_userdata" {
  description = "Provides the ability to change the userdata script for custom bootups"
  default = "../cloud-init/windows.setup.yml"
}

variable "instance_type" {
  description = "The default instance size"
  default = "t2.large"
}


variable "winrm_user" {
  description = "The winrm user we login as"
  default = "terraform"
}

variable "winrm_pass" {
  description = "The winrm user password"
  default = "terraform"
}

# ------------------------------------------
# Linux defaults
# ------------------------------------------
variable "linux_userdata" {
  description = "Provides the ability to change the userdata script for custom bootups"
  default = "../cloud-init/linux.setup.yml"
}



# ------------------------------------------
# AWS Facts & Data Source Declarations
# ------------------------------------------
variable vpc_id {
  description = "The VPC we are using"
  default="vpc-xxxxxx"
}

variable "subnet_id" {
  description = "The subnet we are using"
  default = "subnet-xxxxxx"
}

variable "secgroup_id" {
  description = "The security group"
  default = "sg-xxxx"
}

variable "key_name" {
  description = "Name of the SSH keypair to use in AWS."
  default = "xxxx"
}

variable "ami_win2016"{
  description = "The ami of the 2016 server asset"
  default = "ami-xxxx"
}

data "aws_ami" "ubuntu_1604" {
  most_recent = true

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical

}
# disable printing of AMI_ID
# output "AMI ID" {
#  value = "${data.aws_ami.ubuntu_1604.id}"
#}

