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

variable "ip_list" {
  default     = "71.115.214.236/32"
  description = "private ip"
}

variable "count" {
  description = "default # of assets to create"
  default     = 1
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

variable "instance_type_tpot" {
  description = "honeypot instance type"
  default     = "t2.medium"
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

variable "instance_type_win" {
  description = "windows instance type"
  default     = "t2.large"
}

variable "tpot_root_vol_size" {
  description = "tpot root volume size"
  default     = "300"
}

variable "fbctf_root_vol_size" {
  description = "root / boot volume size"
  default     = "30"
}

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
  default     = "../../modules/infrastructure/cloud-init/windows.bootstrap.yml"
}

# setup a default user/pass
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
  default     = "../../keys/circleci_terraform"
}

//todo: set up billing alarm automatically
variable "alarms_email" {
  description = "the email to notify you of excessive aws costs"
  default     = "your.email@this.com"
}

