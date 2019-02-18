variable "environment" {}

variable "vpc-id" {}
variable "vpc-cidr-block" {}

variable "public-a-subnet-id" {}
variable "public-b-subnet-id" {}

variable "count" { default = 2 }
variable "web_count" { default = 2 }
variable "kali_ct" { default = 1 }
variable "docker_ct" { default = 1 }

variable "kali_instance_type" { default = "t2.micro" }
variable "web_instance_type" { default = "t2.micro" }
variable "docker_instance_type" { default = "t2.micro" }
variable "tpot_instance_type" { default = "t2.large" }

variable "kali_root_vol_size" { default = "80" }
variable "web_root_vol_size" { default = "8" }
variable "docker_root_vol_size" { default = "10" }
variable "tpot_root_vol_size" { default = "300" }
variable "windows_root_vol_size" { default = "300" }

variable "private_key" { default = "../../keys/circleci_terraform"}


variable "db_endpoint" {}

variable "alb_arn" {
  description = "The Amazon Resource Name (ARN) of the ALB that this ECS Service will use as its load balancer."
  default = ""
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
variable "ami_vunos"
{
  default = "ami-0b5b15c7c25534a9c"
  description = "VulnOSv2"
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