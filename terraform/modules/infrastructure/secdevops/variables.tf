variable "ip_list" {
  description = "Protect your research lab, use your your IP"
    default     = "71.115.213.232/32"
}

///////////////////////////////////
// Instance Type
///////////////////////////////////
variable "instance_type_tpot" {
description = "honeypot instance type"
default     = "t2.xlarge"
}

variable "instance_type_docker" {
description = "docker instance type"
  default     = "t2.medium"
}

variable "instance_type" {
description = "default instance type"
default     = "t2.micro"
}

variable "instance_type_kali" {
description = "kali instance type"
  default     = "t2.medium"
}

variable "instance_type_commandov2" {
description = "commando v2 instance type"
default     = "i3.large"
}

variable "instance_type_win" {
description = "windows instance type"
  default     = "t2.medium"
}

///////////////////////////////////
// Cloud-init
///////////////////////////////////
variable "tpot_user_data" {
description = "tpot cloud-init script"
default     = "../../modules/infrastructure/cloud-init/tpot.setup.yml"
}

variable "fbctf_user_data" {
description = "fbctf cloud-init script"
default     = "../../modules/infrastructure/cloud-init/fbctf.setup.yml"
}

variable "win_bootstrap_user_data" {
description = "win_bootstrap cloud-init script"
default     = "../../modules/infrastructure/cloud-init/bootstrap.windows.yml"
}

variable "bootstrap_commando_userdata" {
description = "commando cloud-init script"
default     = "../../modules/infrastructure/cloud-init/bootstrap.commando.yml"
}

variable "bootstrap_flarevm_userdata" {
description = "flarevm bootstrap cloud-init script"
default     = "../../modules/infrastructure/cloud-init/bootstrap.flarevm.yml"
}


variable "environment" {
  description = "the environment the deployment is running as"
}

variable "vpc-id" {
  description = "the vpc-id"
}

variable "vpc-cidr-block" {
  description = "the cidr block of the vpc"
}

variable "cidr" {
  description = "the cidr block of the vpc"
}

variable "target_subnet_id" {
  description = "target subnet"
}

variable "attacker_subnet_id" {
  description = "attacker subnet"
}

variable "malware_subnet_id" {
  description = "malware subnet"
}

variable "honeypot_subnet_id" {
  description = "honeypot subnet"
}

variable "private-a-subnet-id" {
  description = "private subnet a"
}

variable "private-b-subnet-id" {
  description = "private subnet b"
}

variable "tpot_ct" {
  description = "# of tpot assets to create"
  default     = 1
}

variable "fbctf_ct" {
  description = "# of FBCTF assets to create"
  default     = 1
}

variable "kali_ct" {
  description = "# of kali assets to create"
  default     = 1
}

variable "docker_ct" {
  description = "# of docker assets to create"
  default     = 1
}

variable "tpot_root_vol_size" {
  description = "tpot root volume size"
  default     = "200"
}

variable "fbctf_root_vol_size" {
  description = "root / boot volume size"
  default     = "40"
}

# setup a default user/pass for winrm connections
variable "winrm_user" {
  description = "The winrm user we login as"
  default = "terraform"
}

variable "winrm_pass" {
  description = "The winrm user password"
  default = "terraform"
}

variable "private_key" {
  description = "default private key"
  default     = "../../keys/<YourPrivateKeyPair>"
}

variable "external_dns_servers" {
  description = "Configure lab to allow external DNS resolution"
  type        = list(string)
default     = ["8.8.8.8"]
}
